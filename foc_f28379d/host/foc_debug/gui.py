"""gui.py - point-and-click control panel for the FOC debug link.

Everything is done from the window: pick a port and Connect, read/write
parameters in a table, drive the state machine with buttons, and watch a
selectable set of scope channels live. No CLI flags, no typed commands.

    python -m foc_debug            # launches this GUI (default)
    python -m foc_debug gui
    python -m foc_debug.gui

Needs PySide6 + pyqtgraph + numpy (pip install -r requirements.txt).

Threading note: the GUI thread NEVER touches the serial port. A single
SerialWorker thread owns the link and drains a job queue; the window enqueues
work (button clicks, table edits, periodic polls, scope captures) and gets
results back via Qt signals whose slots run on the GUI thread. A slow, timing
out, or disconnected link therefore can no longer stall the event loop — the
window stays live while errors log in the background. The scope keeps a rolling
per-channel ring buffer and is redrawn on its own ~30 FPS timer, independent of
when (or whether) captures arrive, so history persists across stalls.
"""

from __future__ import annotations

import collections
import json
import logging
import pathlib
import queue
import sys
import threading
from dataclasses import dataclass

from . import autotune, proto
from .api import FocDebug, ParamInfo, fault_reason
from .link import SerialLink, LinkError, NackError, autodetect_port
from .log import setup_logging

log = logging.getLogger(__name__)


@dataclass
class Job:
    """A unit of serial work handed to the SerialWorker.

    ``fn(dbg) -> result`` runs on the worker thread. ``on_done(result)`` /
    ``on_fail(msg)`` run on the GUI thread (delivered via a queued signal), so
    they may touch widgets. ``arg`` carries the port for a "connect" job.
    """

    kind: str
    fn: object = None
    arg: object = None
    on_done: object = None
    on_fail: object = None


def _require_qt():
    try:
        import numpy  # noqa: F401
        import pyqtgraph as pg
        from pyqtgraph.Qt import QtCore, QtGui, QtWidgets
        return pg, QtCore, QtGui, QtWidgets
    except ImportError as e:
        raise SystemExit(
            "The GUI needs PySide6 + pyqtgraph + numpy.\n"
            "  pip install -r requirements.txt\n"
            f"(import failed: {e})"
        )


def list_serial_ports():
    from serial.tools import list_ports

    return [(p.device, p.description) for p in list_ports.comports()]


def build(pg, QtCore, QtGui, QtWidgets):
    import numpy as np
    import time

    Signal = QtCore.Signal

    class SerialWorker(QtCore.QThread):
        """Owns the SerialLink/FocDebug and serializes all I/O on one thread.

        User jobs are processed as soon as they arrive; scope captures run only
        when the queue is idle and the configured interval has elapsed, so
        button presses always take priority over the scope.
        """

        done = Signal(object, object)        # (job, result)
        failed = Signal(object, str)         # (job, message)
        scope_captured = Signal(object)      # ScopeCapture
        scope_error = Signal(str)
        connected = Signal(bool, str)        # (ok, msg)  -- msg is port or error

        def __init__(self, scope_timeout=1.0, scope_retries=1):
            super().__init__()
            self._q = queue.Queue()
            self._stop = threading.Event()
            self.link: SerialLink | None = None
            self.dbg: FocDebug | None = None
            self._scope_on = False
            self._scope_interval = 0.25            # seconds
            self._scope_timeout = scope_timeout
            self._scope_retries = scope_retries

        # ---- public API (call from the GUI thread) ----------------------
        def submit(self, kind, fn=None, arg=None, on_done=None, on_fail=None) -> Job:
            job = Job(kind, fn, arg, on_done, on_fail)
            self._q.put(job)
            return job

        def connect_port(self, port):
            return self.submit("connect", arg=port)

        def disconnect_port(self):
            return self.submit("disconnect")

        def set_scope(self, on: bool):
            # Plain bool write; read by the worker loop. GIL-atomic, no lock.
            self._scope_on = bool(on)

        def set_interval(self, interval_s: float):
            self._scope_interval = max(0.02, float(interval_s))

        def set_scope_config(self, mask: int, decim: int):
            # Always send mask + decim together so neither clobbers the other
            # (d.scope_config defaults the unspecified one back to V1 / 1).
            self.submit(
                "scope_config",
                fn=lambda d, m=int(mask), v=int(decim): d.scope_config(decim=v, mask=m),
            )

        def stop(self):
            self._stop.set()
            self._q.put(Job("__wake__"))   # unblock a blocking get()
            self.wait(4000)

        # ---- worker thread ----------------------------------------------
        def run(self):
            last_cap = 0.0
            while not self._stop.is_set():
                if self._scope_on and self.dbg is not None:
                    due_in = (last_cap + self._scope_interval) - time.monotonic()
                    wait = min(max(due_in, 0.0), 0.1)
                else:
                    wait = 0.1
                try:
                    job = self._q.get(timeout=wait)
                except queue.Empty:
                    job = None
                if self._stop.is_set():
                    break
                if job is not None:
                    if job.kind != "__wake__":
                        self._dispatch(job)
                    continue
                if (self._scope_on and self.dbg is not None
                        and (time.monotonic() - last_cap) >= self._scope_interval):
                    self._do_scope()
                    last_cap = time.monotonic()
            # Close the port on the thread that owns it.
            if self.link is not None:
                self.link.close()
                self.link = None
                self.dbg = None

        def _dispatch(self, job: Job):
            if job.kind == "connect":
                try:
                    self.link = SerialLink(port=job.arg, timeout=1.0)
                    self.dbg = FocDebug(self.link)
                    self.connected.emit(True, self.link.port)
                except Exception as e:  # noqa: BLE001
                    self.link = None
                    self.dbg = None
                    self.connected.emit(False, str(e))
                return
            if job.kind == "disconnect":
                self._scope_on = False
                if self.link is not None:
                    self.link.close()
                self.link = None
                self.dbg = None
                self.connected.emit(False, "")
                return
            if self.dbg is None:
                self.failed.emit(job, "not connected")
                return
            try:
                result = job.fn(self.dbg)
                self.done.emit(job, result)
            except NackError as e:
                self.failed.emit(job, f"NACK: {e}")
            except (LinkError, KeyError, ValueError, RuntimeError, IndexError) as e:
                self.failed.emit(job, f"error: {e}")

        def _do_scope(self):
            try:
                cap = self.dbg.capture_scope(
                    timeout=self._scope_timeout, retries=self._scope_retries
                )
                self.scope_captured.emit(cap)
            except Exception as e:  # noqa: BLE001
                self.scope_error.emit(str(e))

    COL_ID, COL_NAME, COL_TYPE, COL_FLAGS, COL_VALUE, COL_STATUS = range(6)

    # Enum-style params are rendered as labeled dropdowns (instead of plain
    # numeric cells). Labels are positional: index == firmware value.
    ENUM_PARAMS = {
        # KCL-reconstructed phase. On 2-channel hardware (Control_V2) this is
        # derived from isense_map by the firmware and writes are ignored.
        "isense_recon": ["none", "U", "V", "W"],
        # Current-sense channel->phase map: which motor phase each physical
        # sense channel (A/B = the two LEM inputs, C = the third slot on
        # 3-channel hardware) is hooked to. Parenthesised C = the phase that is
        # KCL-reconstructed on 2-channel boards. Auto-detected by the ALIGN
        # phase-ID stage when phase_id_en=1.
        "isense_map": [
            "A=U  B=V  (C=W)",
            "A=U  B=W  (C=V)",
            "A=V  B=U  (C=W)",
            "A=V  B=W  (C=U)",
            "A=W  B=U  (C=V)",
            "A=W  B=V  (C=U)",
        ],
    }

    # Scope signal → firmware reference param that should be overlaid in red.
    _SCOPE_TO_REF = {
        "Id":         "id_ref",
        "Iq":         "iq_ref",
        "omega_elec": "omega_ref",
    }
    _REF_TO_SCOPE = {v: k for k, v in _SCOPE_TO_REF.items()}

    # Firmware state codes (api.STATE_NAMES).
    ST_IDLE, ST_RUN, ST_FAULT = 0, 3, 4

    # Fallback motor/loop constants used when the firmware predates the
    # read-only autotune params (host degrades gracefully; fields stay editable).
    MC_DEFAULTS = {
        "rs_ohm": 0.36, "ld_h": 235e-6, "lq_h": 235e-6, "flux_vs": 0.0046,
        "i_peak_a": 7.1, "vbus": 24.0, "isr_freq_hz": 10000.0,
        "speed_loop_ts": 1e-3, "fw_vmax_frac": 0.70, "pole_pairs": 4,
    }

    # Editable motor/loop constants for the "Motor" tab. Each field is shown in a
    # human-friendly unit; ``scale`` converts the stored SI value to the spinbox
    # display value (display = SI * scale), so the autotuner keeps working in SI.
    #   (name, label, scale, decimals, disp_min, disp_max, disp_step)
    MC_FIELDS = [
        ("rs_ohm",        "Rs (Ω)",             1.0,   4, 0.0,    100.0,  0.01),
        ("ld_h",          "Ld (µH)",            1e6,   1, 0.0,    1e6,    1.0),
        ("lq_h",          "Lq (µH)",            1e6,   1, 0.0,    1e6,    1.0),
        ("flux_vs",       "λpm (mV·s)",         1e3,   4, 0.0,    1e4,    0.1),
        ("i_peak_a",      "I_peak (A)",         1.0,   2, 0.0,    1000.0, 0.5),
        ("vbus",          "Vbus (V)",           1.0,   2, 0.0,    1000.0, 1.0),
        ("isr_freq_hz",   "ISR freq (Hz)",      1.0,   0, 1.0,    1e6,    1000.0),
        ("speed_loop_ts", "Speed-loop Ts (ms)", 1e3,   4, 1e-3,   1000.0, 0.1),
        ("fw_vmax_frac",  "FW Vmax fraction",   1.0,   2, 0.05,   1.0,    0.05),
        ("pole_pairs",    "Pole pairs",         1.0,   0, 1.0,    50.0,   1.0),
    ]

    # ---- worker-thread experiment helpers (touch only dbg/time) ------------
    def at_wait_state(dbg, target, timeout):
        """Poll sm_state until it equals target. Raises on FAULT or timeout."""
        t0 = time.monotonic()
        while time.monotonic() - t0 < timeout:
            st = dbg.sm_state()
            if st == target:
                return
            if st == ST_FAULT and target != ST_FAULT:
                raise RuntimeError("device entered FAULT during the experiment")
            time.sleep(0.1)
        raise RuntimeError(f"timed out waiting for state {target}")

    def at_ensure_idle(dbg):
        """Bring the device to IDLE so NEEDS_IDLE params can be written.

        Stops a run *and* auto-clears a latched fault, so applying gains or
        running a verify is genuinely one-click. Returns a short note describing
        what it had to do (for the status bar), e.g. "cleared fault; ".
        """
        st = dbg.sm_state()
        if st == ST_IDLE:
            return ""
        if st == ST_FAULT:
            dbg.clear_fault()
            note = "cleared fault; "
        else:
            dbg.request_stop()
            note = "stopped run; "
        # Poll for IDLE with a tolerant loop. Unlike at_wait_state we do NOT treat
        # a FAULT/RUN reading as fatal here: we just issued stop/clear, so a
        # lingering non-IDLE state is the pre-transition state settling (the 1 kHz
        # SM tick + serial round-trip lag the request). A genuinely stuck fault
        # (HW condition still asserted) simply times out below.
        t0 = time.monotonic()
        while time.monotonic() - t0 < 3.0:
            if dbg.sm_state() == ST_IDLE:
                return note
            time.sleep(0.05)
        raise RuntimeError("device did not return to IDLE (fault still asserted?)")

    def at_apply_gains(dbg, gains):
        """Ensure IDLE (stopping a run / clearing a fault as needed) then write
        the NEEDS_IDLE gains. ``gains`` is name->float. Returns
        ``(note, name->write-status)``.
        """
        note = at_ensure_idle(dbg)
        statuses = {name: dbg.write_param(name, float(val))
                    for name, val in gains.items()}
        return note, statuses

    # Firmware one-shot trigger states, mirrors DL_TRIG_* in debug_hooks.h.
    TRIG_OFF, TRIG_ARMED, TRIG_DONE = 0, 1, 2

    def at_run_step(dbg, *, mode, ref_param, ref_value, mask, decim, isr_freq,
                    axis=None, pre_gains=None, pretrig=32, run_timeout=8.0):
        """Apply optional gains, RUN, step a reference, and return the one-shot
        capture. Returns ``(capture, dt, i_step)``.

        The step and the capture trigger are fired by the *firmware*, in the same
        ISR tick (see the step injector in foc_pipeline.c), so ``i_step`` is the
        exact index of the first stepped sample. Timing this from the host cannot
        work: a PARAM_WRITE lands with milliseconds of serial + scheduler jitter
        against a 12.8 ms window at decim=1.

        ``axis`` 0/1 uses the firmware injector for a d/q current step -- required
        in RUN, where the ISR owns id_ref and the 1 kHz tick owns iq_ref, so a
        host write to either is overwritten before it takes effect. ``axis=None``
        writes ``ref_param`` directly (speed steps, whose accel ramp is orders of
        magnitude slower than the write jitter) and fires a trigger-only capture.

        Leaves the device stopped (IDLE), the reference at 0, and the scope
        released back to free-running.
        """
        if pre_gains:
            at_apply_gains(dbg, pre_gains)
        else:
            at_ensure_idle(dbg)
        dbg.write_param("control_mode", int(mode))
        dbg.write_param(ref_param, 0.0)
        dbg.scope_config(decim=int(decim), mask=int(mask))
        dbg.write_param("step_go", 0)          # release any stale frozen buffer
        dbg.write_param("step_pre", int(pretrig))
        dbg.request_run()
        try:
            at_wait_state(dbg, ST_RUN, run_timeout)   # may align (~3 s) first
            time.sleep(0.05)                          # let the loop settle at ref=0
            if axis is None:
                dbg.write_param(ref_param, float(ref_value))
                dbg.write_param("step_go", 2)         # trigger only
            else:
                dbg.write_param("step_axis", int(axis))
                dbg.write_param("step_a", float(ref_value))
                dbg.write_param("step_go", 1)         # step + trigger, atomic
            # Wait for the post-trigger window to fill. Budget the true window
            # plus slack for the RUN-state serial round trips.
            window = 128.0 * decim / isr_freq
            deadline = time.monotonic() + window * 2.0 + 1.0
            while time.monotonic() < deadline:
                if dbg.read_param("trig_state") == TRIG_DONE:
                    break
                time.sleep(min(0.05, max(0.005, window / 8.0)))
            else:
                raise RuntimeError("capture trigger did not complete "
                                   "(device left RUN, or no samples logged?)")
            cap = dbg.capture_scope(timeout=2.0, retries=1)
            i_step = int(dbg.read_param("trig_idx"))
        finally:
            # Always relax the command, release the frozen buffer and stop the
            # motor, even if the run never reached RUN (timeout/FAULT) or the
            # capture failed -- otherwise the live scope stays frozen.
            ops = [lambda: dbg.write_param(ref_param, 0.0)]
            if axis is not None:
                # The injector owns the stepped axis (a plain "id_ref"/"iq_ref"
                # write would be overwritten), so step it back to 0 the same way.
                # Only when we actually used it: in speed mode this would fight
                # the speed PI for a tick.
                ops += [lambda: dbg.write_param("step_a", 0.0),
                        lambda: dbg.write_param("step_go", 1)]
            ops += [lambda: dbg.write_param("step_go", 0),   # release the freeze
                    dbg.request_stop]
            for op in ops:
                try:
                    op()
                except Exception:   # noqa: BLE001 - best-effort safe-down
                    pass
        return cap, decim / isr_freq, i_step

    class MainWindow(QtWidgets.QMainWindow):
        def __init__(self, initial_port=None):
            super().__init__()
            self.setWindowTitle("UFPR Formula - Inverter Manager")
            self.resize(1100, 760)

            self.params: list[ParamInfo] = []
            self.row_of_id: dict[int, int] = {}
            # Advanced-table enum dropdowns: param name -> (QComboBox, row).
            self.enum_combos: dict = {}
            # One entry per tab; each dict holds the table and its per-tab
            # row<->id maps, enum widgets, and the name filter (None = all).
            self._all_tables: list = []
            self._connected = False
            self._conn_port = ""
            self._programmatic = False
            self._last_scope_err = None
            self._last_cap = None
            self._state_pending = False
            self._refresh_pending = False
            # Motor pole-pairs for RPM <-> electrical-rad/s conversion; replaced by
            # the device's read-only "pole_pairs" param once values are refreshed.
            self._pole_pairs = 4
            self._omega_meas_elec = 0.0   # latest omega_meas [elec rad/s] for bumpless switch
            self._pct_mode = False        # True = spinboxes show % of rated value
            # Motor/loop constants for the autotuner. `_motor_const` caches the
            # latest *device* value of each (fallback to MC_DEFAULTS); the Motor
            # tab exposes them as editable spinboxes. `_mc()` returns the spinbox
            # value (user override) when present, else the cached device value.
            self._motor_const = dict(MC_DEFAULTS)
            self._mc_spins = {}            # name -> QDoubleSpinBox (Motor tab)
            self._mc_scale = {}            # name -> display scale (display = SI*scale)
            self._mc_user_override = set() # fields the user edited locally
            self._at_measured_km = None    # last measured speed-plant gain
            self._at_last_cap = None       # last verify ScopeCapture (for CSV)
            # Manual-gain editors on the Autotune page: name -> QDoubleSpinBox.
            # `_at_gain_dirty` holds the names the user typed into; those stop
            # tracking the device on refresh so an edit-in-progress is never
            # overwritten. `_at_gain_prog` guards programmatic setValue().
            self._at_gain_spins = {}
            self._at_gain_dirty = set()
            self._at_gain_prog = False

            # Rolling scope buffers (one deque per channel) + dirty flag. The
            # deques are (re)created by _rebuild_plots to match the currently
            # selected signal set.
            self._history = 8000
            self._scope_mask = proto.SCOPE_MASK_V1
            self._ring: list = []
            self._scope_dirty = False
            # Reference tracking: current value + per-channel history buffer.
            # _ref_values holds the latest setpoint; _ref_rings mirrors _ring
            # (None for channels without a reference). Each capture appends the
            # current setpoint repeated N times so the red trace stays in sync.
            self._ref_values: dict = {}   # scope_name -> current float value
            self._ref_rings: list = []    # parallel to _ring; None if no ref
            self._ref_curves: dict = {}   # scope_name -> red pg.PlotDataItem
            self._plot_names: list = []   # channel name by ring index

            # One serial worker for the whole app lifetime (idles when not
            # connected). The GUI thread never touches the port directly.
            self.worker = SerialWorker()
            self.worker.done.connect(self._job_done)
            self.worker.failed.connect(self._job_failed)
            self.worker.scope_captured.connect(self._on_capture)
            self.worker.scope_error.connect(self._scope_failed)
            self.worker.connected.connect(self._on_connected)
            self.worker.start()

            self._build_ui()
            self._set_connected(False)
            self._refresh_ports(select=initial_port)

            self.state_timer = QtCore.QTimer(self)
            self.state_timer.timeout.connect(self._tick)
            self.state_timer.start(500)

            # Redraw the scope from the ring buffers independently of capture
            # arrival, so the trace stays smooth and survives link stalls.
            self.render_timer = QtCore.QTimer(self)
            self.render_timer.timeout.connect(self._render_scope)
            self.render_timer.start(33)

        # ---- UI construction --------------------------------------------
        def _build_ui(self):
            central = QtWidgets.QWidget()
            self.setCentralWidget(central)
            outer = QtWidgets.QVBoxLayout(central)

            # Menu bar
            _file_menu = self.menuBar().addMenu("File")
            _save_act = _file_menu.addAction("Save Parameters…")
            _save_act.triggered.connect(self._save_params_json)
            _load_act = _file_menu.addAction("Load Parameters…")
            _load_act.triggered.connect(self._load_params_json)

            # Connection bar
            bar = QtWidgets.QHBoxLayout()
            self.port_combo = QtWidgets.QComboBox()
            self.port_combo.setMinimumWidth(260)
            self.refresh_ports_btn = QtWidgets.QPushButton("↻ Ports")
            self.refresh_ports_btn.clicked.connect(lambda: self._refresh_ports())
            self.connect_btn = QtWidgets.QPushButton("Connect")
            self.connect_btn.clicked.connect(self._toggle_connect)
            self.ping_btn = QtWidgets.QPushButton("Ping")
            self.ping_btn.clicked.connect(self._do_ping)
            self.conn_label = QtWidgets.QLabel("disconnected")
            bar.addWidget(QtWidgets.QLabel("Port:"))
            bar.addWidget(self.port_combo)
            bar.addWidget(self.refresh_ports_btn)
            bar.addWidget(self.connect_btn)
            bar.addWidget(self.ping_btn)
            bar.addWidget(self.conn_label, 1)
            # Logo top-right: drop your image at foc_debug/assets/logo.png
            _logo_path = pathlib.Path(__file__).parent / "assets" / "logo.png"
            if _logo_path.exists():
                _pix = QtGui.QPixmap(str(_logo_path))
                _pix = _pix.scaledToHeight(36, QtCore.Qt.SmoothTransformation)
                _logo_lbl = QtWidgets.QLabel()
                _logo_lbl.setPixmap(_pix)
                _logo_lbl.setContentsMargins(8, 0, 4, 0)
                bar.addWidget(_logo_lbl)
            outer.addLayout(bar)

            split = QtWidgets.QSplitter(QtCore.Qt.Horizontal)
            outer.addWidget(split, 1)

            # ---- Left: params + state machine ----
            left = QtWidgets.QWidget()
            lv = QtWidgets.QVBoxLayout(left)

            sm_box = QtWidgets.QGroupBox("State machine")
            sm_v = QtWidgets.QVBoxLayout(sm_box)
            smh = QtWidgets.QHBoxLayout()
            self.state_label = QtWidgets.QLabel("—")
            f = self.state_label.font()
            f.setBold(True)
            self.state_label.setFont(f)
            self.run_btn = QtWidgets.QPushButton("Run")
            self.calibrate_btn = QtWidgets.QPushButton("Calibrate")
            self.calibrate_btn.setToolTip(
                "Re-run offset calibration + rotor alignment, then return to IDLE"
            )
            self.stop_btn = QtWidgets.QPushButton("Stop")
            self.clear_btn = QtWidgets.QPushButton("Clear fault")
            self.run_btn.clicked.connect(lambda: self._sm("run"))
            self.calibrate_btn.clicked.connect(lambda: self._sm("calibrate"))
            self.stop_btn.clicked.connect(lambda: self._sm("stop"))
            self.clear_btn.clicked.connect(lambda: self._sm("clear"))
            smh.addWidget(QtWidgets.QLabel("State:"))
            smh.addWidget(self.state_label, 1)
            smh.addWidget(self.run_btn)
            smh.addWidget(self.calibrate_btn)
            smh.addWidget(self.stop_btn)
            smh.addWidget(self.clear_btn)
            sm_v.addLayout(smh)

            # Control-mode + speed row. Speed is shown/entered in shaft RPM; the
            # firmware speed loop works in electrical rad/s, so we convert with the
            # motor pole-pairs reported by the device (self._pole_pairs).
            modeh = QtWidgets.QHBoxLayout()
            modeh.addWidget(QtWidgets.QLabel("Mode:"))
            self.mode_combo = QtWidgets.QComboBox()
            self.mode_combo.addItems(["Torque", "Speed"])
            self.mode_combo.setToolTip(
                "Torque: iq_ref commanded directly.  Speed: speed PI drives iq_ref "
                "from the RPM setpoint. Switchable live (bumpless)."
            )
            self.mode_combo.activated.connect(self._on_mode_changed)
            modeh.addWidget(self.mode_combo)
            modeh.addSpacing(12)
            self.ref_label = QtWidgets.QLabel("Torque (Nm):")
            modeh.addWidget(self.ref_label)
            self.speed_spin = QtWidgets.QDoubleSpinBox()
            self.speed_spin.setRange(-20000.0, 20000.0)
            self.speed_spin.setDecimals(0)
            self.speed_spin.setSingleStep(50.0)
            self.speed_spin.hide()   # hidden in default torque mode
            modeh.addWidget(self.speed_spin)
            self.torque_spin = QtWidgets.QDoubleSpinBox()
            self.torque_spin.setRange(-500.0, 500.0)
            self.torque_spin.setDecimals(3)
            self.torque_spin.setSingleStep(0.01)
            modeh.addWidget(self.torque_spin)
            self.pct_chk = QtWidgets.QCheckBox("%")
            self.pct_chk.setToolTip(
                "Percentage mode — Speed: % of rated RPM; "
                "Torque: % of peak torque (i_peak × Kt)"
            )
            self.pct_chk.toggled.connect(self._on_pct_toggled)
            modeh.addWidget(self.pct_chk)
            self.rated_rpm_lbl = QtWidgets.QLabel("Rated:")
            modeh.addWidget(self.rated_rpm_lbl)
            self.rated_rpm_spin = QtWidgets.QDoubleSpinBox()
            self.rated_rpm_spin.setRange(1.0, 100000.0)
            self.rated_rpm_spin.setDecimals(0)
            self.rated_rpm_spin.setSingleStep(100.0)
            self.rated_rpm_spin.setValue(6000.0)
            self.rated_rpm_spin.setSuffix(" rpm")
            modeh.addWidget(self.rated_rpm_spin)
            # only visible in speed mode with % checked
            self.rated_rpm_lbl.hide()
            self.rated_rpm_spin.hide()
            self.speed_apply_btn = QtWidgets.QPushButton("Apply")
            self.speed_apply_btn.setToolTip("Torque mode: write iq_ref (Nm / Kt → A)")
            self.speed_apply_btn.clicked.connect(self._apply_ref)
            modeh.addWidget(self.speed_apply_btn)
            modeh.addStretch(1)
            modeh.addWidget(QtWidgets.QLabel("Measured:"))
            self.speed_meas_label = QtWidgets.QLabel("— rpm")
            mf = self.speed_meas_label.font()
            mf.setBold(True)
            self.speed_meas_label.setFont(mf)
            modeh.addWidget(self.speed_meas_label)
            # Live DC-bus voltage, polled every state tick (read-only "vbus" param).
            modeh.addSpacing(16)
            modeh.addWidget(QtWidgets.QLabel("Vbus:"))
            self.vbus_label = QtWidgets.QLabel("— V")
            vf = self.vbus_label.font()
            vf.setBold(True)
            self.vbus_label.setFont(vf)
            self.vbus_label.setToolTip(
                "Live DC-bus voltage from the device (read-only 'vbus' param)"
            )
            modeh.addWidget(self.vbus_label)
            sm_v.addLayout(modeh)
            lv.addWidget(sm_box)

            ph = QtWidgets.QHBoxLayout()
            ph.addStretch(1)
            self.autoread_chk = QtWidgets.QCheckBox("Auto-refresh values")
            self.refresh_vals_btn = QtWidgets.QPushButton("Refresh values")
            self.refresh_vals_btn.clicked.connect(self._refresh_values)
            ph.addWidget(self.autoread_chk)
            ph.addWidget(self.refresh_vals_btn)
            lv.addLayout(ph)

            # Parameter filter — hides non-matching rows across every param tab so
            # finding a setting by name is quick. Ctrl+F focuses this box (see the
            # QShortcut below). Matches name / id / type, case-insensitive.
            filt_h = QtWidgets.QHBoxLayout()
            filt_h.addWidget(QtWidgets.QLabel("Filter:"))
            self.param_filter = QtWidgets.QLineEdit()
            self.param_filter.setPlaceholderText(
                "Type to filter parameters by name…  (Ctrl+F)"
            )
            self.param_filter.setClearButtonEnabled(True)
            self.param_filter.textChanged.connect(self._apply_param_filter)
            filt_h.addWidget(self.param_filter, 1)
            lv.addLayout(filt_h)

            # Ctrl+F from anywhere in the window jumps to the filter box.
            _find_sc = QtGui.QShortcut(QtGui.QKeySequence.Find, self)
            _find_sc.activated.connect(self._focus_param_filter)

            # Tab definitions: (label, name_filter_set or None=all)
            _TAB_DEFS = [
                ("References", {"id_ref", "iq_ref", "omega_ref"}),
                ("Gains",      {"kp_d", "ki_d", "kp_q", "ki_q", "kp_w", "ki_w"}),
                ("Config",     {"isense_recon", "isense_map", "isense_inv",
                                "phase_id_en", "phase_id_a", "phase_id_mod",
                                "phase_id_status"}),
                ("Advanced",   None),
            ]
            self.tab_widget = QtWidgets.QTabWidget()
            self._all_tables = []
            for tab_label, fset in _TAB_DEFS:
                page = QtWidgets.QWidget()
                page_lv = QtWidgets.QVBoxLayout(page)
                page_lv.setContentsMargins(4, 4, 4, 4)

                if tab_label == "Gains":
                    tune_box = QtWidgets.QGroupBox("Tune D & Q together (current loop — needs IDLE)")
                    tune_grid = QtWidgets.QGridLayout(tune_box)
                    tune_grid.addWidget(QtWidgets.QLabel("kp  (D = Q):"), 0, 0)
                    self.kp_dq_spin = QtWidgets.QDoubleSpinBox()
                    self.kp_dq_spin.setRange(0.0, 1e6)
                    self.kp_dq_spin.setDecimals(6)
                    self.kp_dq_spin.setSingleStep(0.01)
                    tune_grid.addWidget(self.kp_dq_spin, 0, 1)
                    _kp_btn = QtWidgets.QPushButton("Apply")
                    _kp_btn.clicked.connect(self._apply_kp_dq)
                    tune_grid.addWidget(_kp_btn, 0, 2)
                    tune_grid.addWidget(QtWidgets.QLabel("ki   (D = Q):"), 1, 0)
                    self.ki_dq_spin = QtWidgets.QDoubleSpinBox()
                    self.ki_dq_spin.setRange(0.0, 1e6)
                    self.ki_dq_spin.setDecimals(6)
                    self.ki_dq_spin.setSingleStep(0.01)
                    tune_grid.addWidget(self.ki_dq_spin, 1, 1)
                    _ki_btn = QtWidgets.QPushButton("Apply")
                    _ki_btn.clicked.connect(self._apply_ki_dq)
                    tune_grid.addWidget(_ki_btn, 1, 2)
                    tune_grid.setColumnStretch(1, 1)
                    page_lv.addWidget(tune_box)

                table = self._make_param_table()
                treg = {"table": table, "row_of_id": {}, "id_of_row": {},
                        "enum_combos": {}, "filter_set": fset}
                table.itemChanged.connect(
                    lambda item, t=treg: self._on_table_item_changed(t, item)
                )
                self._all_tables.append(treg)
                if tab_label == "Advanced":
                    self.table = table   # backward compat for save/load JSON
                page_lv.addWidget(table, 1)
                self.tab_widget.addTab(page, tab_label)

            self.tab_widget.addTab(self._build_motor_page(), "Motor")
            self.tab_widget.addTab(self._build_autotune_page(), "Autotune")

            lv.addWidget(self.tab_widget, 1)

            hint = QtWidgets.QLabel(
                "Double-click a writable value and press Enter to write. "
                "needs_idle params only accepted in IDLE state."
            )
            hint.setWordWrap(True)
            hint.setStyleSheet("color: gray;")
            lv.addWidget(hint)

            split.addWidget(left)

            # ---- Right: scope ----
            right = QtWidgets.QWidget()
            rv = QtWidgets.QVBoxLayout(right)
            sc = QtWidgets.QHBoxLayout()
            self.scope_btn = QtWidgets.QPushButton("Start scope")
            self.scope_btn.setCheckable(True)
            self.scope_btn.clicked.connect(self._toggle_scope)
            sc.addWidget(self.scope_btn)
            sc.addWidget(QtWidgets.QLabel("decim:"))
            self.decim_spin = QtWidgets.QSpinBox()
            self.decim_spin.setRange(1, 1000)
            self.decim_spin.setValue(1)
            self.decim_spin.valueChanged.connect(self._apply_decim)
            sc.addWidget(self.decim_spin)
            sc.addWidget(QtWidgets.QLabel("interval ms:"))
            self.interval_spin = QtWidgets.QSpinBox()
            self.interval_spin.setRange(50, 5000)
            self.interval_spin.setValue(250)
            self.interval_spin.valueChanged.connect(self._apply_interval)
            sc.addWidget(self.interval_spin)
            sc.addWidget(QtWidgets.QLabel("history:"))
            self.history_spin = QtWidgets.QSpinBox()
            self.history_spin.setRange(256, 200000)
            self.history_spin.setSingleStep(1000)
            self.history_spin.setValue(self._history)
            self.history_spin.valueChanged.connect(self._apply_history)
            sc.addWidget(self.history_spin)
            self.clear_buf_btn = QtWidgets.QPushButton("Clear")
            self.clear_buf_btn.clicked.connect(self._clear_scope)
            sc.addWidget(self.clear_buf_btn)
            self.save_csv_btn = QtWidgets.QPushButton("Save last to CSV…")
            self.save_csv_btn.clicked.connect(self._save_csv)
            sc.addWidget(self.save_csv_btn)
            sc.addStretch(1)
            rv.addLayout(sc)

            # Signal selector: one checkbox per catalog signal (V1 four default).
            sigrow = QtWidgets.QHBoxLayout()
            sigrow.addWidget(QtWidgets.QLabel("Signals:"))
            self.sig_checks = {}
            default_on = set(proto.mask_to_names(self._scope_mask))
            for _bit, name in proto.SCOPE_CATALOG:
                cb = QtWidgets.QCheckBox(name)
                cb.setChecked(name in default_on)
                cb.toggled.connect(self._on_signal_toggled)
                self.sig_checks[name] = cb
                sigrow.addWidget(cb)
            sigrow.addStretch(1)
            rv.addLayout(sigrow)

            self.glw = pg.GraphicsLayoutWidget()
            self.curves = []
            self.plots = []
            rv.addWidget(self.glw, 1)
            self._rebuild_plots(self._selected_names())

            split.addWidget(right)
            split.setSizes([520, 580])

            self.statusBar().showMessage("Ready. Pick a port and Connect.")
            _jab = QtWidgets.QLabel(
                '<a href="https://github.com/josearistidesbail" style="color:gray;">'
                "Made by Jose Aristides Bail</a>"
            )
            _jab.setOpenExternalLinks(True)
            _jab.setToolTip("Jose Aristides Bail")
            self.statusBar().addPermanentWidget(_jab)

        # ---- parameter filter -------------------------------------------
        def _focus_param_filter(self):
            """Ctrl+F handler: focus + select the filter box for quick typing.

            If the user is parked on a non-param tab (Motor/Autotune), hop to the
            Advanced tab first so the filtered results are actually visible.
            """
            page = self.tab_widget.currentWidget()
            if not any(t["table"].parentWidget() is page for t in self._all_tables):
                for i in range(self.tab_widget.count()):
                    if self.tab_widget.tabText(i) == "Advanced":
                        self.tab_widget.setCurrentIndex(i)
                        break
            self.param_filter.setFocus(QtCore.Qt.ShortcutFocusReason)
            self.param_filter.selectAll()

        def _apply_param_filter(self, _text=None):
            """Show only rows whose name / id / type contains the filter text.

            Applied to every param tab's table (case-insensitive substring) so the
            filter persists when switching tabs. Empty text shows everything.
            """
            needle = self.param_filter.text().strip().lower()
            info_by_id = {p.id: p for p in self.params}
            for treg in self._all_tables:
                table = treg["table"]
                id_of_row = treg["id_of_row"]
                for row in range(table.rowCount()):
                    if not needle:
                        table.setRowHidden(row, False)
                        continue
                    info = info_by_id.get(id_of_row.get(row))
                    hay = (
                        f"{info.name} 0x{info.id:04x} {info.type_str}".lower()
                        if info is not None else ""
                    )
                    table.setRowHidden(row, needle not in hay)

        # ---- helpers -----------------------------------------------------
        def _make_param_table(self):
            t = QtWidgets.QTableWidget(0, 6)
            t.setHorizontalHeaderLabels(
                ["id", "name", "type", "flags", "value (edit + Enter)", "status"]
            )
            t.horizontalHeader().setStretchLastSection(True)
            t.setEditTriggers(
                QtWidgets.QAbstractItemView.DoubleClicked
                | QtWidgets.QAbstractItemView.EditKeyPressed
            )
            return t

        def _report(self, msg, level=logging.INFO):
            """Show a message in the status bar and mirror it to the console log."""
            self.statusBar().showMessage(msg)
            log.log(level, "%s", msg)

        # ---- job result routing (slots run on the GUI thread) -----------
        def _job_done(self, job, result):
            if job.on_done is not None:
                job.on_done(result)

        def _job_failed(self, job, msg):
            if job.on_fail is not None:
                job.on_fail(msg)
            else:
                self._report(msg, logging.ERROR)

        # ---- ports / connection -----------------------------------------
        def _refresh_ports(self, select=None):
            self.port_combo.clear()
            ports = list_serial_ports()
            for dev, desc in ports:
                self.port_combo.addItem(f"{dev}  —  {desc}", dev)
            guess = select or autodetect_port()
            if guess:
                for i in range(self.port_combo.count()):
                    if self.port_combo.itemData(i) == guess:
                        self.port_combo.setCurrentIndex(i)
                        break
            if not ports:
                self.port_combo.addItem("(no serial ports found)", None)

        def _toggle_connect(self):
            if not self._connected:
                port = self.port_combo.currentData()
                self._report(f"connecting to {port}…")
                self.worker.connect_port(port)
            else:
                self._disconnect()

        def _disconnect(self):
            self._stop_scope()
            self.worker.disconnect_port()
            self._set_connected(False)
            self._report("disconnected")

        def _on_connected(self, ok, msg):
            if ok:
                self._conn_port = msg
                self._set_connected(True)
                self._report(f"connected to {msg}")
                self._load_params()
            else:
                was = self._connected
                self._set_connected(False)
                if msg:
                    self._report(f"connect failed: {msg}", logging.ERROR)
                elif was:
                    self._report("disconnected")

        def _set_connected(self, on):
            self._connected = on
            self.connect_btn.setText("Disconnect" if on else "Connect")
            self.conn_label.setText(
                f"connected: {self._conn_port}" if on else "disconnected"
            )
            for w in (
                self.ping_btn, self.run_btn, self.calibrate_btn,
                self.stop_btn, self.clear_btn,
                self.refresh_vals_btn, self.scope_btn, self.autoread_chk,
                self.decim_spin, self.interval_spin,
                self.mode_combo, self.speed_spin, self.torque_spin,
                self.pct_chk, self.rated_rpm_spin, self.speed_apply_btn,
                self.at_cur_apply_btn, self.at_cur_verify_btn,
                self.at_spd_apply_btn, self.at_spd_verify_btn,
                self.at_spd_measure_btn, self.at_fw_apply_btn,
                self.at_man_cur_apply_btn, self.at_man_cur_verify_btn,
                self.at_man_spd_apply_btn, self.at_man_spd_verify_btn,
                self.at_man_fw_apply_btn, self.at_man_load_btn,
            ):
                w.setEnabled(on)
            for treg in self._all_tables:
                treg["table"].setEnabled(on)
            self.port_combo.setEnabled(not on)
            self.refresh_ports_btn.setEnabled(not on)
            if not on:
                self.state_label.setText("—")

        # ---- params ------------------------------------------------------
        def _load_params(self):
            self.worker.submit(
                "list", fn=lambda d: d.list_params(),
                on_done=self._apply_params,
                on_fail=lambda m: self._report(f"param list failed: {m}", logging.ERROR),
            )

        def _apply_params(self, params):
            self.params = params
            self._programmatic = True
            for treg in self._all_tables:
                self._populate_table(treg, params)
            self._programmatic = False
            for treg in self._all_tables:
                treg["table"].resizeColumnsToContents()
            self._apply_param_filter()   # re-apply any active filter to fresh rows
            self._refresh_values()

        def _populate_table(self, treg, params):
            """Fill a tab's QTableWidget with the subset of params it tracks."""
            table = treg["table"]
            fset = treg["filter_set"]
            visible = [p for p in params if fset is None or p.name in fset]
            treg["row_of_id"] = {}
            treg["id_of_row"] = {}
            treg["enum_combos"] = {}
            table.setRowCount(len(visible))
            for row, info in enumerate(visible):
                treg["row_of_id"][info.id] = row
                treg["id_of_row"][row] = info.id
                self._fill_cell(table, row, COL_ID, f"0x{info.id:04X}", editable=False)
                self._fill_cell(table, row, COL_NAME, info.name, editable=False)
                self._fill_cell(table, row, COL_TYPE, info.type_str, editable=False)
                self._fill_cell(table, row, COL_FLAGS, info.flags_str, editable=False)
                labels = ENUM_PARAMS.get(info.name)
                if labels is not None and not info.read_only:
                    combo = QtWidgets.QComboBox()
                    combo.addItems(labels)
                    combo.activated.connect(
                        lambda idx, i=info, r=row, t=treg: self._on_enum_changed(i, r, idx, t)
                    )
                    table.setCellWidget(row, COL_VALUE, combo)
                    treg["enum_combos"][info.name] = (combo, row)
                else:
                    self._fill_cell(table, row, COL_VALUE, "", editable=not info.read_only)
                self._fill_cell(table, row, COL_STATUS, "", editable=False)
            # Keep canonical shortcuts pointing at the Advanced table's widgets
            if table is self.table:
                self.row_of_id = treg["row_of_id"]
                self.enum_combos = treg["enum_combos"]

        def _fill_cell(self, table, row, col, text, editable):
            item = QtWidgets.QTableWidgetItem(text)
            if not editable:
                item.setFlags(item.flags() & ~QtCore.Qt.ItemIsEditable)
            table.setItem(row, col, item)

        def _fmt(self, info: ParamInfo, val):
            if val is None:
                return "?"
            if info.type == proto.PARAM_TYPE_F32:
                return f"{val:.6g}"
            return str(val)

        def _refresh_values(self):
            """Read all params in one worker job and apply them in a single pass.

            Coalesced via ``_refresh_pending`` so auto-refresh / the 500 ms tick
            can never pile reads up on a slow link.
            """
            if not self._connected or self._refresh_pending or not self.params:
                return
            ids = [info.id for info in self.params]

            def read_all(dbg, ids=ids):
                out = {}
                for pid in ids:
                    try:
                        out[pid] = dbg.read_param(pid)
                    except Exception:  # noqa: BLE001
                        out[pid] = None
                return out

            self._refresh_pending = True
            self.worker.submit("refresh", fn=read_all,
                               on_done=self._apply_values, on_fail=self._refresh_failed)

        def _apply_values(self, out):
            self._refresh_pending = False
            self._programmatic = True
            try:
                for info in self.params:
                    val = out.get(info.id)
                    if val is None:
                        continue
                    fmt_val = self._fmt(info, val)
                    for treg in self._all_tables:
                        row = treg["row_of_id"].get(info.id)
                        if row is None:
                            continue
                        ec = treg["enum_combos"].get(info.name)
                        if ec is not None and row == ec[1]:
                            self._set_enum_combo(ec[0], int(val))
                        else:
                            item = treg["table"].item(row, COL_VALUE)
                            if item:
                                item.setText(fmt_val)
            finally:
                self._programmatic = False
            # Update current reference values (used by the next capture fill).
            for info in self.params:
                val = out.get(info.id)
                if val is None:
                    continue
                scope_name = _REF_TO_SCOPE.get(info.name)
                if scope_name:
                    self._ref_values[scope_name] = float(val)

            val_by_name = {info.name: out.get(info.id) for info in self.params}

            # Autotune-page manual gain boxes track the device until edited.
            self._at_gains_from_device(val_by_name)

            # Motor/loop constants -> Motor tab spinboxes + autotuner cache. Each
            # device value pre-fills its spinbox unless the user has overridden it
            # locally; vbus is live so it keeps tracking the bus until edited.
            mc_changed = False
            for name in MC_DEFAULTS:
                v = val_by_name.get(name)
                if v is not None:
                    self._mc_set_from_device(name, v)
                    mc_changed = True
            # Pole-pairs drives the RPM<->electrical conversion (honor any override).
            self._pole_pairs = int(self._mc("pole_pairs")) or 4
            if mc_changed:
                self._at_refresh_all_previews()

            # Measured speed (electrical rad/s shown as shaft RPM) + live mode.
            we_meas = val_by_name.get("omega_meas")
            if we_meas is not None:
                self._omega_meas_elec = float(we_meas)
                self.speed_meas_label.setText(f"{self._elec_to_rpm(we_meas):.0f} rpm")
            mode = val_by_name.get("control_mode")
            if mode is not None:
                self._set_mode_combo(int(mode))

        def _set_enum_combo(self, combo, val):
            """Set an enum dropdown without triggering a write signal."""
            idx = val if 0 <= val < combo.count() else 0
            combo.blockSignals(True)
            combo.setCurrentIndex(idx)
            combo.blockSignals(False)

        def _refresh_failed(self, msg):
            self._refresh_pending = False
            log.debug("refresh failed: %s", msg)

        def _on_table_item_changed(self, treg, item):
            if self._programmatic or item.column() != COL_VALUE or not self._connected:
                return
            row = item.row()
            param_id = treg["id_of_row"].get(row)
            if param_id is None:
                return
            info = next((p for p in self.params if p.id == param_id), None)
            if info is None:
                return
            text = item.text().strip()
            if text == "":
                return

            def do_write(dbg, info=info, text=text):
                status = dbg.write_param(info.id, text)
                val = None
                try:
                    val = dbg.read_param(info.id)
                except Exception:  # noqa: BLE001
                    pass
                return status, val

            self.worker.submit(
                "write", fn=do_write,
                on_done=lambda res, info=info, text=text: self._write_done(info, text, res),
                on_fail=lambda m: self._report(m, logging.ERROR),
            )

        def _write_done(self, info, text, res):
            status, val = res
            sstr = proto.PARAM_WR_STR.get(status, f"status{status}")
            self._report(f"write {info.name} = {text} → {sstr}")
            self._programmatic = True
            for treg in self._all_tables:
                row = treg["row_of_id"].get(info.id)
                if row is None:
                    continue
                si = treg["table"].item(row, COL_STATUS)
                if si:
                    si.setText(sstr)
                if val is not None:
                    vi = treg["table"].item(row, COL_VALUE)
                    if vi:
                        vi.setText(self._fmt(info, val))
            self._programmatic = False
            # Record new reference value; the next capture fill picks it up.
            if val is not None:
                scope_name = _REF_TO_SCOPE.get(info.name)
                if scope_name:
                    self._ref_values[scope_name] = float(val)

        def _on_enum_changed(self, info, row, idx, treg=None):
            if not self._connected:
                return

            def do_write(dbg, pid=info.id, val=idx):
                status = dbg.write_param(pid, val)
                rb = None
                try:
                    rb = dbg.read_param(pid)
                except Exception:  # noqa: BLE001
                    pass
                return status, rb

            self.worker.submit(
                "write", fn=do_write,
                on_done=lambda res, info=info, idx=idx: self._enum_write_done(info, idx, res),
                on_fail=lambda m: self._report(m, logging.ERROR),
            )

        def _enum_write_done(self, info, idx, res):
            status, rb = res
            sstr = proto.PARAM_WR_STR.get(status, f"status{status}")
            labels = ENUM_PARAMS.get(info.name, [])
            label = labels[idx] if 0 <= idx < len(labels) else str(idx)
            self._report(f"write {info.name} = {label} → {sstr}")
            self._programmatic = True
            for treg in self._all_tables:
                row = treg["row_of_id"].get(info.id)
                if row is None:
                    continue
                si = treg["table"].item(row, COL_STATUS)
                if si:
                    si.setText(sstr)
                ec = treg["enum_combos"].get(info.name)
                if rb is not None and ec is not None:
                    self._set_enum_combo(ec[0], int(rb))
            self._programmatic = False

        # ---- tune-both gain helpers -------------------------------------
        def _apply_kp_dq(self):
            self._apply_gain_pair("kp_d", "kp_q", self.kp_dq_spin.value())

        def _apply_ki_dq(self):
            self._apply_gain_pair("ki_d", "ki_q", self.ki_dq_spin.value())

        def _apply_gain_pair(self, name_a, name_b, val):
            if not self._connected:
                self._report("not connected")
                return
            val_str = f"{val:.6g}"
            for name in (name_a, name_b):
                info = next((p for p in self.params if p.name == name), None)
                if info is None:
                    self._report(f"param '{name}' not found", logging.WARNING)
                    continue

                def do_write(dbg, pid=info.id, v=val_str):
                    st = dbg.write_param(pid, v)
                    rb = None
                    try:
                        rb = dbg.read_param(pid)
                    except Exception:  # noqa: BLE001
                        pass
                    return st, rb

                self.worker.submit(
                    "write", fn=do_write,
                    on_done=lambda res, i=info, v=val_str: self._write_done(i, v, res),
                    on_fail=lambda m: self._report(m, logging.ERROR),
                )

        # ---- state machine ----------------------------------------------
        def _sm(self, op):
            if not self._connected:
                return
            fn = {"run": lambda d: d.request_run(),
                  "calibrate": lambda d: d.request_align(),
                  "stop": lambda d: d.request_stop(),
                  "clear": lambda d: d.clear_fault()}[op]
            self.worker.submit(
                "sm", fn=fn,
                on_done=lambda st, op=op: self._sm_done(op, st),
                on_fail=lambda m: self._report(m, logging.ERROR),
            )

        def _sm_done(self, op, st):
            name = FocDebug.state_name(st)
            # Clear the red fault styling immediately on a successful clear/stop;
            # the 500 ms poll will re-decorate (with the reason) if still faulted.
            self.state_label.setStyleSheet("color: #d33;" if st == ST_FAULT else "")
            self.state_label.setText(name)
            self._report(f"{op} → {name}")

        def _do_ping(self):
            if not self._connected:
                return
            self.worker.submit(
                "ping", fn=lambda d: d.ping_latency(b"foc-ping"),
                on_done=lambda dt: self._report(f"ping ok: {dt * 1e3:.2f} ms round-trip"),
                on_fail=lambda m: self._report(m, logging.ERROR),
            )

        # ---- control mode + speed (RPM) ----------------------------------
        def _elec_to_rpm(self, we):
            """Electrical rad/s -> shaft RPM using the reported pole-pairs."""
            pp = self._pole_pairs if self._pole_pairs else 4
            return float(we) * 60.0 / (2.0 * np.pi) / pp

        def _rpm_to_elec(self, rpm):
            """Shaft RPM -> electrical rad/s using the reported pole-pairs."""
            pp = self._pole_pairs if self._pole_pairs else 4
            return float(rpm) * (2.0 * np.pi) / 60.0 * pp

        def _set_mode_combo(self, val):
            """Reflect the device control_mode (0=torque,1=speed) without a write."""
            idx = 1 if int(val) == 1 else 0
            self.mode_combo.blockSignals(True)
            self.mode_combo.setCurrentIndex(idx)
            self.mode_combo.blockSignals(False)
            self._update_ref_ui(idx)

        def _on_mode_changed(self, idx):
            if not self._connected:
                return
            # Bumpless pre-fill: seed the incoming reference spinbox from current state.
            if idx == 1:  # → Speed: pre-fill with current measured shaft speed
                rpm = self._elec_to_rpm(self._omega_meas_elec)
                if self._pct_mode:
                    rated = self.rated_rpm_spin.value() or 1.0
                    seed = rpm / rated * 100.0
                else:
                    seed = rpm
                self.speed_spin.blockSignals(True)
                self.speed_spin.setValue(seed)
                self.speed_spin.blockSignals(False)
            else:  # → Torque: pre-fill with iq_ref * Kt
                iq_now = float(self._ref_values.get("Iq", 0.0))
                torque_nm = iq_now * self._kt()
                if self._pct_mode:
                    rated_nm = self._mc("i_peak_a") * self._kt()
                    seed = (torque_nm / rated_nm * 100.0) if rated_nm else 0.0
                else:
                    seed = torque_nm
                self.torque_spin.blockSignals(True)
                self.torque_spin.setValue(seed)
                self.torque_spin.blockSignals(False)
            self._update_ref_ui(idx)
            info = next((p for p in self.params if p.name == "control_mode"), None)
            if info is None:
                self._report("control_mode param not found", logging.WARNING)
                return
            val = 1 if idx == 1 else 0

            def do_write(dbg, pid=info.id, v=val):
                st = dbg.write_param(pid, v)
                rb = None
                try:
                    rb = dbg.read_param(pid)
                except Exception:  # noqa: BLE001
                    pass
                return st, rb

            self.worker.submit(
                "write", fn=do_write,
                on_done=lambda res: self._mode_write_done(res),
                on_fail=lambda m: self._report(m, logging.ERROR),
            )

        def _mode_write_done(self, res):
            status, rb = res
            sstr = proto.PARAM_WR_STR.get(status, f"status{status}")
            label = "Speed" if (rb == 1) else "Torque"
            self._report(f"control mode → {label} ({sstr})")
            if rb is not None:
                self._set_mode_combo(int(rb))

        def _apply_speed_rpm(self):
            if not self._connected:
                self._report("not connected")
                return
            info = next((p for p in self.params if p.name == "omega_ref"), None)
            if info is None:
                self._report("omega_ref param not found", logging.WARNING)
                return
            val = self.speed_spin.value()
            if self._pct_mode:
                rated = self.rated_rpm_spin.value() or 1.0
                rpm = val / 100.0 * rated
                disp = f"{val:.1f}% ({rpm:.0f} rpm)"
            else:
                rpm = val
                disp = f"{rpm:.0f} rpm"
            we = self._rpm_to_elec(rpm)
            val_str = f"{we:.6g}"

            def do_write(dbg, pid=info.id, v=val_str):
                st = dbg.write_param(pid, v)
                rb = None
                try:
                    rb = dbg.read_param(pid)
                except Exception:  # noqa: BLE001
                    pass
                return st, rb

            self.worker.submit(
                "write", fn=do_write,
                on_done=lambda res, i=info, d=disp: self._write_done(i, d, res),
                on_fail=lambda m: self._report(m, logging.ERROR),
            )

        def _apply_ref(self):
            """Dispatch Apply to speed or torque handler based on current mode."""
            if self.mode_combo.currentIndex() == 1:
                self._apply_speed_rpm()
            else:
                self._apply_torque_nm()

        def _apply_torque_nm(self):
            if not self._connected:
                self._report("not connected")
                return
            info = next((p for p in self.params if p.name == "iq_ref"), None)
            if info is None:
                self._report("iq_ref param not found", logging.WARNING)
                return
            val = self.torque_spin.value()
            kt = self._kt()
            if self._pct_mode:
                rated_nm = self._mc("i_peak_a") * kt
                torque_nm = val / 100.0 * rated_nm
                disp = f"{val:.1f}% ({torque_nm:.3f} Nm, {torque_nm / kt:.4g} A)"
            else:
                torque_nm = val
                disp = f"{torque_nm:.3f} Nm ({torque_nm / kt:.4g} A)"
            iq_a = torque_nm / kt

            def do_write(dbg, pid=info.id, v=f"{iq_a:.6g}"):
                st = dbg.write_param(pid, v)
                rb = None
                try:
                    rb = dbg.read_param(pid)
                except Exception:  # noqa: BLE001
                    pass
                return st, rb

            self.worker.submit(
                "write", fn=do_write,
                on_done=lambda res, i=info, d=disp: self._write_done(i, d, res),
                on_fail=lambda m: self._report(m, logging.ERROR),
            )

        def _kt(self):
            """Motor torque constant Kt = 1.5 * pole_pairs * flux_vs  [Nm/A]."""
            pp = float(self._pole_pairs) if self._pole_pairs else 4.0
            flux = self._mc("flux_vs")
            kt = 1.5 * pp * flux
            return kt if kt > 0.0 else 1.0

        def _set_spin_abs_or_pct(self, spin, pct, is_speed):
            """Reconfigure spin range/step/decimals for absolute vs percentage units."""
            spin.blockSignals(True)
            if pct:
                spin.setRange(-200.0, 200.0)
                spin.setDecimals(1)
                spin.setSingleStep(1.0)
            elif is_speed:
                spin.setRange(-20000.0, 20000.0)
                spin.setDecimals(0)
                spin.setSingleStep(50.0)
            else:
                spin.setRange(-500.0, 500.0)
                spin.setDecimals(3)
                spin.setSingleStep(0.01)
            spin.blockSignals(False)

        def _update_ref_ui(self, idx):
            """Switch reference label, spinbox visibility/range for mode idx."""
            is_speed = (idx == 1)
            pct = self._pct_mode
            if is_speed:
                self.ref_label.setText("Speed (%):" if pct else "Speed (RPM):")
                self._set_spin_abs_or_pct(self.speed_spin, pct, is_speed=True)
            else:
                self.ref_label.setText("Torque (%):" if pct else "Torque (Nm):")
                self._set_spin_abs_or_pct(self.torque_spin, pct, is_speed=False)
            self.speed_spin.setVisible(is_speed)
            self.torque_spin.setVisible(not is_speed)
            show_rated = is_speed and pct
            self.rated_rpm_lbl.setVisible(show_rated)
            self.rated_rpm_spin.setVisible(show_rated)
            if is_speed:
                tip = ("Write omega_ref (% of rated RPM → electrical rad/s)"
                       if pct else "Write omega_ref (RPM → electrical rad/s)")
            else:
                tip = ("Write iq_ref (% of peak torque → A)"
                       if pct else "Write iq_ref (Nm / Kt → A)")
            self.speed_apply_btn.setToolTip(tip)

        def _on_pct_toggled(self, checked):
            """Convert the current spinbox value when toggling percentage mode."""
            is_speed = (self.mode_combo.currentIndex() == 1)
            spin = self.speed_spin if is_speed else self.torque_spin
            cur = spin.value()
            if is_speed:
                rated = self.rated_rpm_spin.value() or 1.0
                new_val = (cur / rated * 100.0) if checked else (cur * rated / 100.0)
            else:
                i_peak = self._mc("i_peak_a")
                rated_nm = i_peak * self._kt()
                if rated_nm:
                    new_val = (cur / rated_nm * 100.0) if checked else (cur * rated_nm / 100.0)
                else:
                    new_val = 0.0
            self._pct_mode = checked
            self._update_ref_ui(self.mode_combo.currentIndex())
            spin.blockSignals(True)
            spin.setValue(new_val)
            spin.blockSignals(False)

        # ---- motor constants (editable) ----------------------------------
        def _mc(self, name):
            """Effective motor/loop constant in SI units.

            Returns the Motor-tab spinbox value (the user's editable override,
            pre-filled from the device) when that field exists, else the cached
            device value / built-in default.
            """
            spin = self._mc_spins.get(name)
            if spin is not None:
                scale = self._mc_scale.get(name, 1.0) or 1.0
                return float(spin.value()) / scale
            return float(self._motor_const.get(name, MC_DEFAULTS.get(name, 0.0)))

        def _build_motor_page(self):
            page = QtWidgets.QWidget()
            outer = QtWidgets.QVBoxLayout(page)
            outer.setContentsMargins(4, 4, 4, 4)

            box = QtWidgets.QGroupBox("Motor & loop constants (used by the autotuner)")
            grid = QtWidgets.QGridLayout(box)
            for r, (name, label, scale, dec, lo, hi, step) in enumerate(MC_FIELDS):
                grid.addWidget(QtWidgets.QLabel(label + ":"), r, 0)
                spin = QtWidgets.QDoubleSpinBox()
                spin.setDecimals(dec)
                spin.setRange(lo, hi)
                spin.setSingleStep(step)
                # Seed from the cached device value (defaults until first refresh).
                base = self._motor_const.get(name, MC_DEFAULTS.get(name, 0.0))
                spin.setValue(float(base) * scale)
                # Connect AFTER the seed setValue so it doesn't count as an edit.
                spin.valueChanged.connect(lambda _v, n=name: self._on_mc_edited(n))
                grid.addWidget(spin, r, 1)
                self._mc_spins[name] = spin
                self._mc_scale[name] = scale
            grid.setColumnStretch(1, 1)
            outer.addWidget(box)

            row = QtWidgets.QHBoxLayout()
            self.mc_reset_btn = QtWidgets.QPushButton("Reset to device values")
            self.mc_reset_btn.setToolTip(
                "Drop local edits and reload the values reported by the device.")
            self.mc_reset_btn.clicked.connect(self._mc_reset_to_device)
            row.addWidget(self.mc_reset_btn)
            row.addStretch(1)
            outer.addLayout(row)

            note = QtWidgets.QLabel(
                "These are read from the device on connect and feed the Autotune "
                "tab. Edit any field to override it locally (the firmware is not "
                "changed); vbus tracks the live bus until you edit it. Use Reset "
                "to restore the device values.")
            note.setWordWrap(True)
            note.setStyleSheet("color: gray;")
            outer.addWidget(note)
            outer.addStretch(1)
            return page

        def _mc_set_from_device(self, name, val):
            """Cache a device-reported constant and push it into its spinbox,
            unless the user has overridden that field locally."""
            self._motor_const[name] = float(val)
            if name in self._mc_user_override:
                return
            spin = self._mc_spins.get(name)
            if spin is None:
                return
            scale = self._mc_scale.get(name, 1.0)
            spin.blockSignals(True)
            spin.setValue(float(val) * scale)
            spin.blockSignals(False)

        def _on_mc_edited(self, name):
            """A Motor-tab spinbox was edited: mark it overridden and re-preview."""
            self._mc_user_override.add(name)
            if name == "pole_pairs":
                self._pole_pairs = int(self._mc("pole_pairs")) or 4
            self._at_refresh_all_previews()

        def _mc_reset_to_device(self):
            """Forget local edits; reload spinboxes from the cached device values
            (and request a fresh read if connected)."""
            self._mc_user_override.clear()
            for name, spin in self._mc_spins.items():
                scale = self._mc_scale.get(name, 1.0)
                base = self._motor_const.get(name, MC_DEFAULTS.get(name, 0.0))
                spin.blockSignals(True)
                spin.setValue(float(base) * scale)
                spin.blockSignals(False)
            self._pole_pairs = int(self._mc("pole_pairs")) or 4
            self._at_refresh_all_previews()
            if self._connected:
                self._refresh_values()
            self._report("motor constants reset to device values")

        # ---- autotune ----------------------------------------------------

        def _build_autotune_page(self):
            page = QtWidgets.QWidget()
            outer = QtWidgets.QVBoxLayout(page)
            outer.setContentsMargins(4, 4, 4, 4)

            # The controls and the step-response plot share the page through a
            # splitter: the boxes are taller than the panel, so a fixed plot
            # height would leave only a sliver of scrollable room. Drag to taste.
            vsplit = QtWidgets.QSplitter(QtCore.Qt.Vertical)

            scroll = QtWidgets.QScrollArea()
            scroll.setWidgetResizable(True)
            inner = QtWidgets.QWidget()
            iv = QtWidgets.QVBoxLayout(inner)
            iv.addWidget(self._build_at_manual_box())
            iv.addWidget(self._build_at_current_box())
            iv.addWidget(self._build_at_speed_box())
            iv.addWidget(self._build_at_fw_box())
            iv.addStretch(1)
            scroll.setWidget(inner)
            vsplit.addWidget(scroll)

            res_box = QtWidgets.QGroupBox("Last verify (step response)")
            res_v = QtWidgets.QVBoxLayout(res_box)
            self.at_plot = pg.PlotWidget()
            self.at_plot.showGrid(x=True, y=True, alpha=0.3)
            self.at_plot.setMinimumHeight(120)
            self.at_meas_curve = self.at_plot.plot(pen=pg.mkPen(width=1))
            self.at_ref_curve = self.at_plot.plot(
                pen=pg.mkPen(color=(220, 60, 60), width=1.5, style=QtCore.Qt.DashLine))
            # Marks t=0, the device-reported trigger sample (firmware one-shot
            # trigger). Everything left of it is genuine pre-step baseline.
            self.at_trig_line = pg.InfiniteLine(
                pos=0.0, angle=90, movable=False,
                pen=pg.mkPen(color=(120, 190, 255), width=1, style=QtCore.Qt.DashLine))
            self.at_trig_line.setVisible(False)
            self.at_plot.addItem(self.at_trig_line)
            res_v.addWidget(self.at_plot)
            self.at_metrics_lbl = QtWidgets.QLabel("—")
            self.at_metrics_lbl.setWordWrap(True)
            res_v.addWidget(self.at_metrics_lbl)
            vsplit.addWidget(res_box)

            vsplit.setStretchFactor(0, 3)
            vsplit.setStretchFactor(1, 1)
            vsplit.setSizes([460, 200])
            outer.addWidget(vsplit, 1)

            self._at_refresh_all_previews()
            return page

        # ---- manual gains -------------------------------------------------
        # Same apply / apply+verify machinery as the model-based boxes below,
        # but the numbers come straight from these spinboxes instead of the
        # autotuner. Lets you hand-tune a gain and re-run the identical step
        # experiment (same plot + metrics) without leaving the page.
        def _make_gain_spin(self, name):
            sp = QtWidgets.QDoubleSpinBox()
            sp.setRange(0.0, 1e6)
            sp.setDecimals(6)
            sp.setSingleStep(0.001)
            sp.setKeyboardTracking(False)
            # Cap the width so the box fits the left panel without a horizontal
            # scrollbar (6 decimals over a 1e6 range gives a very wide hint).
            sp.setMaximumWidth(105)
            sp.valueChanged.connect(lambda v, n=name: self._on_at_gain_edited(n, v))
            self._at_gain_spins[name] = sp
            return sp

        def _build_at_manual_box(self):
            box = QtWidgets.QGroupBox("Manual gains — type values, apply, and step")
            g = QtWidgets.QGridLayout(box)
            r = 0

            top = QtWidgets.QHBoxLayout()
            self.at_man_load_btn = QtWidgets.QPushButton("Load from device")
            self.at_man_load_btn.setToolTip(
                "Copy the gains currently in the firmware into these boxes and "
                "resume tracking them on every value refresh.")
            self.at_man_load_btn.clicked.connect(self._at_manual_load_device)
            top.addWidget(self.at_man_load_btn)
            self.at_man_copy_btn = QtWidgets.QPushButton("Copy computed ↓")
            self.at_man_copy_btn.setToolTip(
                "Fill these boxes with the gains the autotuner computed in the "
                "boxes below, as a starting point for hand tweaking.")
            self.at_man_copy_btn.clicked.connect(self._at_manual_copy_computed)
            top.addWidget(self.at_man_copy_btn)
            self.at_man_link_chk = QtWidgets.QCheckBox("mirror D → Q")
            self.at_man_link_chk.setToolTip(
                "Editing kp_d/ki_d also writes kp_q/ki_q (Ld ≈ Lq on this motor).")
            self.at_man_link_chk.setChecked(True)
            top.addWidget(self.at_man_link_chk)
            top.addStretch(1)
            g.addLayout(top, r, 0, 1, 6)
            r += 1

            g.addWidget(QtWidgets.QLabel("<b>Current loop</b>"), r, 0)
            g.addWidget(QtWidgets.QLabel("kp_d:"), r, 1)
            g.addWidget(self._make_gain_spin("kp_d"), r, 2)
            g.addWidget(QtWidgets.QLabel("ki_d:"), r, 3)
            g.addWidget(self._make_gain_spin("ki_d"), r, 4)
            r += 1
            g.addWidget(QtWidgets.QLabel("kp_q:"), r, 1)
            g.addWidget(self._make_gain_spin("kp_q"), r, 2)
            g.addWidget(QtWidgets.QLabel("ki_q:"), r, 3)
            g.addWidget(self._make_gain_spin("ki_q"), r, 4)
            r += 1
            self.at_man_cur_apply_btn = QtWidgets.QPushButton("Apply current gains")
            self.at_man_cur_apply_btn.clicked.connect(self._at_manual_apply_current)
            g.addWidget(self.at_man_cur_apply_btn, r, 0, 1, 2)
            g.addWidget(QtWidgets.QLabel("iq step (A):"), r, 2)
            self.at_man_cur_step = QtWidgets.QDoubleSpinBox()
            self.at_man_cur_step.setRange(0.05, 5.0)
            self.at_man_cur_step.setDecimals(2)
            self.at_man_cur_step.setSingleStep(0.1)
            self.at_man_cur_step.setValue(0.5)
            g.addWidget(self.at_man_cur_step, r, 3)
            self.at_man_cur_verify_btn = QtWidgets.QPushButton("Apply + Verify (step iq)")
            self.at_man_cur_verify_btn.setToolTip(
                "Writes these kp/ki (needs IDLE), runs in torque mode, steps iq, "
                "and plots the response below — same experiment as the "
                "model-based box. Energizes the motor — keep the shaft clear.")
            self.at_man_cur_verify_btn.clicked.connect(self._at_manual_verify_current)
            g.addWidget(self.at_man_cur_verify_btn, r, 4, 1, 2)
            r += 1

            line = QtWidgets.QFrame()
            line.setFrameShape(QtWidgets.QFrame.HLine)
            line.setFrameShadow(QtWidgets.QFrame.Sunken)
            g.addWidget(line, r, 0, 1, 6)
            r += 1

            g.addWidget(QtWidgets.QLabel("<b>Speed loop</b>"), r, 0)
            g.addWidget(QtWidgets.QLabel("kp_w:"), r, 1)
            g.addWidget(self._make_gain_spin("kp_w"), r, 2)
            g.addWidget(QtWidgets.QLabel("ki_w:"), r, 3)
            g.addWidget(self._make_gain_spin("ki_w"), r, 4)
            r += 1
            self.at_man_spd_apply_btn = QtWidgets.QPushButton("Apply speed gains")
            self.at_man_spd_apply_btn.clicked.connect(self._at_manual_apply_speed)
            g.addWidget(self.at_man_spd_apply_btn, r, 0, 1, 2)
            g.addWidget(QtWidgets.QLabel("RPM step:"), r, 2)
            self.at_man_spd_step = QtWidgets.QDoubleSpinBox()
            self.at_man_spd_step.setRange(-10000.0, 10000.0)
            self.at_man_spd_step.setDecimals(0)
            self.at_man_spd_step.setSingleStep(50.0)
            self.at_man_spd_step.setValue(500.0)
            g.addWidget(self.at_man_spd_step, r, 3)
            self.at_man_spd_verify_btn = QtWidgets.QPushButton("Apply + Verify (step RPM)")
            self.at_man_spd_verify_btn.setToolTip(
                "Writes these kp_w/ki_w (needs IDLE), runs in speed mode, steps "
                "the RPM setpoint, and captures omega. Spins the motor.")
            self.at_man_spd_verify_btn.clicked.connect(self._at_manual_verify_speed)
            g.addWidget(self.at_man_spd_verify_btn, r, 4, 1, 2)
            r += 1

            line2 = QtWidgets.QFrame()
            line2.setFrameShape(QtWidgets.QFrame.HLine)
            line2.setFrameShadow(QtWidgets.QFrame.Sunken)
            g.addWidget(line2, r, 0, 1, 6)
            r += 1

            g.addWidget(QtWidgets.QLabel("<b>Field weakening</b>"), r, 0)
            g.addWidget(QtWidgets.QLabel("kp_fw:"), r, 1)
            g.addWidget(self._make_gain_spin("kp_fw"), r, 2)
            g.addWidget(QtWidgets.QLabel("ki_fw:"), r, 3)
            g.addWidget(self._make_gain_spin("ki_fw"), r, 4)
            r += 1
            self.at_man_fw_apply_btn = QtWidgets.QPushButton("Apply FW gains")
            self.at_man_fw_apply_btn.clicked.connect(self._at_manual_apply_fw)
            g.addWidget(self.at_man_fw_apply_btn, r, 0, 1, 2)
            r += 1

            hint = QtWidgets.QLabel(
                "Boxes track the device until you edit one; \"Load from device\" "
                "resumes tracking. Applying needs IDLE — a run is stopped and a "
                "latched fault cleared automatically.")
            hint.setWordWrap(True)
            hint.setStyleSheet("color: gray;")
            g.addWidget(hint, r, 0, 1, 6)
            g.setColumnStretch(2, 1)
            g.setColumnStretch(4, 1)
            return box

        def _on_at_gain_edited(self, name, val):
            """User typed a gain: stop tracking the device for it, mirror D→Q."""
            if self._at_gain_prog:
                return
            self._at_gain_dirty.add(name)
            if not self.at_man_link_chk.isChecked():
                return
            twin = {"kp_d": "kp_q", "ki_d": "ki_q"}.get(name)
            if twin and self._at_gain_spins[twin].value() != val:
                self._at_set_gain_spin(twin, val)
                self._at_gain_dirty.add(twin)

        def _at_set_gain_spin(self, name, val):
            sp = self._at_gain_spins.get(name)
            if sp is None:
                return
            self._at_gain_prog = True
            try:
                sp.setValue(float(val))
            finally:
                self._at_gain_prog = False

        def _at_gains_from_device(self, val_by_name):
            """Pre-fill the manual boxes from a values refresh (untouched ones)."""
            for name, sp in self._at_gain_spins.items():
                if name in self._at_gain_dirty:
                    continue
                v = val_by_name.get(name)
                if v is not None:
                    self._at_set_gain_spin(name, v)

        def _at_manual_load_device(self):
            """Explicit re-sync: drop all local edits and re-read the device."""
            self._at_gain_dirty.clear()
            if not self._connected:
                self._report("not connected")
                return
            self._refresh_values()
            self._report("manual gains: reloading from device")

        def _at_manual_copy_computed(self):
            self._at_refresh_all_previews()
            n = 0
            for attr in ("_at_cur_gains", "_at_spd_gains", "_at_fw_gains"):
                for name, val in (getattr(self, attr, None) or {}).items():
                    if name in self._at_gain_spins:
                        self._at_set_gain_spin(name, val)
                        self._at_gain_dirty.add(name)
                        n += 1
            self._report(f"manual gains: copied {n} computed value(s)")

        def _at_manual_gains(self, which):
            names = {"current": ("kp_d", "ki_d", "kp_q", "ki_q"),
                     "speed": ("kp_w", "ki_w"),
                     "field-weakening": ("kp_fw", "ki_fw")}[which]
            return {n: self._at_gain_spins[n].value() for n in names}

        def _at_manual_apply_current(self):
            self._at_apply("manual current", self._at_manual_gains("current"))

        def _at_manual_apply_speed(self):
            self._at_apply("manual speed", self._at_manual_gains("speed"))

        def _at_manual_apply_fw(self):
            self._at_apply("manual field-weakening",
                           self._at_manual_gains("field-weakening"))

        def _at_manual_verify_current(self):
            self._at_step_current(self._at_manual_gains("current"),
                                  self.at_man_cur_step.value(), "manual current")

        def _at_manual_verify_speed(self):
            self._at_step_speed(self._at_manual_gains("speed"),
                                self.at_man_spd_step.value(), "manual speed")

        def _build_at_current_box(self):
            box = QtWidgets.QGroupBox("Current loop (Id/Iq) — model-based, exact")
            g = QtWidgets.QGridLayout(box)
            r = 0
            g.addWidget(QtWidgets.QLabel("Target bandwidth (Hz):"), r, 0)
            self.at_cur_bw = QtWidgets.QDoubleSpinBox()
            self.at_cur_bw.setRange(10.0, 5000.0)
            self.at_cur_bw.setDecimals(0)
            self.at_cur_bw.setSingleStep(50.0)
            self.at_cur_bw.setValue(600.0)
            self.at_cur_bw.valueChanged.connect(lambda _v: self._at_current_preview())
            g.addWidget(self.at_cur_bw, r, 1)
            self.at_cur_ceil_lbl = QtWidgets.QLabel("")
            g.addWidget(self.at_cur_ceil_lbl, r, 2)
            r += 1
            self.at_cur_plant_lbl = QtWidgets.QLabel("")
            self.at_cur_plant_lbl.setStyleSheet("color: gray;")
            g.addWidget(self.at_cur_plant_lbl, r, 0, 1, 3)
            r += 1
            self.at_cur_preview_lbl = QtWidgets.QLabel("—")
            g.addWidget(self.at_cur_preview_lbl, r, 0, 1, 3)
            r += 1
            self.at_cur_apply_btn = QtWidgets.QPushButton("Apply current gains")
            self.at_cur_apply_btn.clicked.connect(self._at_apply_current)
            g.addWidget(self.at_cur_apply_btn, r, 0)
            g.addWidget(QtWidgets.QLabel("iq step (A):"), r, 1)
            self.at_cur_step = QtWidgets.QDoubleSpinBox()
            self.at_cur_step.setRange(0.05, 5.0)
            self.at_cur_step.setDecimals(2)
            self.at_cur_step.setSingleStep(0.1)
            self.at_cur_step.setValue(0.5)
            g.addWidget(self.at_cur_step, r, 2)
            r += 1
            self.at_cur_verify_btn = QtWidgets.QPushButton("Apply + Verify (step iq)")
            self.at_cur_verify_btn.setToolTip(
                "Applies the gains (needs IDLE), runs in torque mode, steps iq, "
                "and captures the response. The first Run after boot auto-aligns "
                "(~3 s spin). Energizes the motor — keep the shaft clear.")
            self.at_cur_verify_btn.clicked.connect(self._at_verify_current)
            g.addWidget(self.at_cur_verify_btn, r, 0, 1, 3)
            g.setColumnStretch(0, 1)
            return box

        def _build_at_speed_box(self):
            box = QtWidgets.QGroupBox("Speed loop — symmetric optimum")
            g = QtWidgets.QGridLayout(box)
            r = 0
            g.addWidget(QtWidgets.QLabel("SO factor a (2–4):"), r, 0)
            self.at_spd_a = QtWidgets.QDoubleSpinBox()
            self.at_spd_a.setRange(1.5, 6.0)
            self.at_spd_a.setDecimals(2)
            self.at_spd_a.setSingleStep(0.25)
            self.at_spd_a.setValue(2.5)
            self.at_spd_a.valueChanged.connect(lambda _v: self._at_speed_preview())
            g.addWidget(self.at_spd_a, r, 1)
            r += 1
            g.addWidget(QtWidgets.QLabel("Inertia J (kg·m²):"), r, 0)
            self.at_spd_j = QtWidgets.QDoubleSpinBox()
            self.at_spd_j.setRange(1e-7, 1.0)
            self.at_spd_j.setDecimals(8)
            self.at_spd_j.setSingleStep(1e-6)
            self.at_spd_j.setValue(1e-5)
            self.at_spd_j.valueChanged.connect(self._on_at_j_changed)
            g.addWidget(self.at_spd_j, r, 1)
            self.at_spd_measure_btn = QtWidgets.QPushButton("Measure Km…")
            self.at_spd_measure_btn.setToolTip(
                "Briefly spins the motor (torque step) to estimate the speed "
                "plant gain Km and back out J. Keep the shaft free; start small.")
            self.at_spd_measure_btn.clicked.connect(self._at_measure_km)
            g.addWidget(self.at_spd_measure_btn, r, 2)
            r += 1
            g.addWidget(QtWidgets.QLabel("Km probe iq (A):"), r, 0)
            self.at_spd_km_iq = QtWidgets.QDoubleSpinBox()
            self.at_spd_km_iq.setRange(0.05, 3.0)
            self.at_spd_km_iq.setDecimals(2)
            self.at_spd_km_iq.setSingleStep(0.1)
            self.at_spd_km_iq.setValue(0.3)
            g.addWidget(self.at_spd_km_iq, r, 1)
            self.at_spd_km_lbl = QtWidgets.QLabel("Km: (from J)")
            self.at_spd_km_lbl.setStyleSheet("color: gray;")
            g.addWidget(self.at_spd_km_lbl, r, 2)
            r += 1
            self.at_spd_preview_lbl = QtWidgets.QLabel("—")
            g.addWidget(self.at_spd_preview_lbl, r, 0, 1, 3)
            r += 1
            self.at_spd_apply_btn = QtWidgets.QPushButton("Apply speed gains")
            self.at_spd_apply_btn.clicked.connect(self._at_apply_speed)
            g.addWidget(self.at_spd_apply_btn, r, 0)
            g.addWidget(QtWidgets.QLabel("RPM step:"), r, 1)
            self.at_spd_step = QtWidgets.QDoubleSpinBox()
            self.at_spd_step.setRange(-10000.0, 10000.0)
            self.at_spd_step.setDecimals(0)
            self.at_spd_step.setSingleStep(50.0)
            self.at_spd_step.setValue(500.0)
            g.addWidget(self.at_spd_step, r, 2)
            r += 1
            self.at_spd_verify_btn = QtWidgets.QPushButton("Apply + Verify (step RPM)")
            self.at_spd_verify_btn.setToolTip(
                "Applies the gains (needs IDLE), runs in speed mode, steps the "
                "RPM setpoint, and captures omega. Spins the motor — shaft clear.")
            self.at_spd_verify_btn.clicked.connect(self._at_verify_speed)
            g.addWidget(self.at_spd_verify_btn, r, 0, 1, 3)
            g.setColumnStretch(0, 1)
            return box

        def _build_at_fw_box(self):
            box = QtWidgets.QGroupBox("Field weakening — estimate only")
            g = QtWidgets.QGridLayout(box)
            r = 0
            g.addWidget(QtWidgets.QLabel("Target FW bandwidth (Hz):"), r, 0)
            self.at_fw_bw = QtWidgets.QDoubleSpinBox()
            self.at_fw_bw.setRange(1.0, 200.0)
            self.at_fw_bw.setDecimals(1)
            self.at_fw_bw.setSingleStep(1.0)
            self.at_fw_bw.setValue(10.0)
            self.at_fw_bw.valueChanged.connect(lambda _v: self._at_fw_preview())
            g.addWidget(self.at_fw_bw, r, 1)
            r += 1
            g.addWidget(QtWidgets.QLabel("Vmax fraction:"), r, 0)
            self.at_fw_frac = QtWidgets.QDoubleSpinBox()
            self.at_fw_frac.setRange(0.10, 1.0)
            self.at_fw_frac.setDecimals(2)
            self.at_fw_frac.setSingleStep(0.05)
            self.at_fw_frac.setValue(0.70)
            self.at_fw_frac.valueChanged.connect(lambda _v: self._at_fw_preview())
            g.addWidget(self.at_fw_frac, r, 1)
            r += 1
            self.at_fw_plant_lbl = QtWidgets.QLabel("")
            self.at_fw_plant_lbl.setStyleSheet("color: gray;")
            g.addWidget(self.at_fw_plant_lbl, r, 0, 1, 3)
            r += 1
            self.at_fw_preview_lbl = QtWidgets.QLabel("—")
            g.addWidget(self.at_fw_preview_lbl, r, 0, 1, 3)
            r += 1
            self.at_fw_apply_btn = QtWidgets.QPushButton("Apply FW gains")
            self.at_fw_apply_btn.clicked.connect(self._at_apply_fw)
            g.addWidget(self.at_fw_apply_btn, r, 0)
            r += 1
            cav = QtWidgets.QLabel(
                "FW gains are a starting estimate: the loop engages only above "
                "base speed and its gain scales with speed — verify on hardware.")
            cav.setWordWrap(True)
            cav.setStyleSheet("color: #a06000;")
            g.addWidget(cav, r, 0, 1, 3)
            g.setColumnStretch(0, 1)
            return box

        def _at_refresh_all_previews(self):
            if not hasattr(self, "at_cur_bw"):
                return
            self._at_current_preview()
            self._at_speed_preview()
            self._at_fw_preview()

        # ---- preview (compute) handlers ---------------------------------
        def _at_current_preview(self):
            R, Ld, Lq = self._mc("rs_ohm"), self._mc("ld_h"), self._mc("lq_h")
            f_isr = self._mc("isr_freq_hz")
            Ts = 1.0 / f_isr if f_isr > 0 else 1e-4
            ceil = autotune.current_bw_ceiling(f_isr)
            self.at_cur_ceil_lbl.setText(f"≤ {ceil:.0f} Hz")
            self.at_cur_plant_lbl.setText(
                f"R={R:.4g} Ω   Ld={Ld * 1e6:.1f} µH   Lq={Lq * 1e6:.1f} µH   "
                f"Ts={Ts * 1e6:.0f} µs")
            f_bw = self.at_cur_bw.value()
            try:
                gains = autotune.current_loop_gains_dq(R, Ld, Lq, Ts, f_bw)
            except ValueError as e:
                self.at_cur_preview_lbl.setText(f"invalid: {e}")
                self._at_cur_gains = None
                return
            self._at_cur_gains = gains
            warn = "   ⚠ above ISR/10" if f_bw > ceil else ""
            self.at_cur_preview_lbl.setText(
                f"kp_d={gains['kp_d']:.4g}  ki_d={gains['ki_d']:.4g}    "
                f"kp_q={gains['kp_q']:.4g}  ki_q={gains['ki_q']:.4g}{warn}")

        def _at_km_value(self):
            if self._at_measured_km:
                return self._at_measured_km
            try:
                return autotune.km_from_j(
                    self.at_spd_j.value(), int(self._mc("pole_pairs")) or 4,
                    self._mc("flux_vs"))
            except ValueError:
                return 0.0

        def _at_speed_preview(self):
            a = self.at_spd_a.value()
            f_bw_cur = self.at_cur_bw.value() if hasattr(self, "at_cur_bw") else 600.0
            T_eq = 1.0 / (2.0 * np.pi * f_bw_cur) if f_bw_cur > 0 else 0.0
            Ts_spd = self._mc("speed_loop_ts")
            Km = self._at_km_value()
            try:
                kp, ki = autotune.speed_loop_gains(Km, T_eq, Ts_spd, a)
            except ValueError as e:
                self.at_spd_preview_lbl.setText(f"invalid: {e}")
                self._at_spd_gains = None
                return
            self._at_spd_gains = {"kp_w": kp, "ki_w": ki}
            src = "measured" if self._at_measured_km else "from J"
            self.at_spd_preview_lbl.setText(
                f"Km={Km:.4g} ({src})  T_eq={T_eq * 1e3:.3f} ms  →  "
                f"kp_w={kp:.4g}  ki_w={ki:.4g}")

        def _on_at_j_changed(self, _val=None):
            # Editing J means "use J", not a previously measured Km.
            self._at_measured_km = None
            self.at_spd_km_lbl.setText("Km: (from J)")
            self._at_speed_preview()

        def _at_fw_preview(self):
            vbus, Ld, flux = self._mc("vbus"), self._mc("ld_h"), self._mc("flux_vs")
            f_isr = self._mc("isr_freq_hz")
            Ts = 1.0 / f_isr if f_isr > 0 else 1e-4
            frac = self.at_fw_frac.value()
            f_fw = self.at_fw_bw.value()
            vmax_fw = frac * vbus * 0.5
            try:
                we_ref = autotune.fw_base_speed_elec(vmax_fw, flux)
                kp, ki = autotune.fw_loop_gains(vmax_fw, we_ref, Ld, Ts, f_fw)
            except ValueError as e:
                self.at_fw_preview_lbl.setText(f"invalid: {e}")
                self._at_fw_gains = None
                return
            self._at_fw_gains = {"kp_fw": kp, "ki_fw": ki}
            pp = int(self._mc("pole_pairs")) or 4
            base_rpm = we_ref * 60.0 / (2.0 * np.pi) / pp
            self.at_fw_plant_lbl.setText(
                f"vbus={vbus:.1f} V   vmax_fw={vmax_fw:.2f} V   "
                f"base≈{we_ref:.0f} elec rad/s (~{base_rpm:.0f} rpm)")
            self.at_fw_preview_lbl.setText(f"kp_fw={kp:.4g}   ki_fw={ki:.4g}")

        # ---- apply handlers ---------------------------------------------
        def _at_apply(self, which, gains):
            if not self._connected:
                self._report("not connected")
                return
            if not gains:
                self._report(f"no valid {which} gains computed", logging.WARNING)
                return
            self.worker.submit(
                "at_apply", fn=lambda d, g=dict(gains): at_apply_gains(d, g),
                on_done=lambda res, w=which: self._at_apply_done(w, res),
                on_fail=lambda m: self._report(f"apply failed: {m}", logging.ERROR))

        def _at_apply_current(self):
            self._at_current_preview()
            self._at_apply("current", getattr(self, "_at_cur_gains", None))

        def _at_apply_speed(self):
            self._at_speed_preview()
            self._at_apply("speed", getattr(self, "_at_spd_gains", None))

        def _at_apply_fw(self):
            self._at_fw_preview()
            self._at_apply("field-weakening", getattr(self, "_at_fw_gains", None))

        def _at_apply_done(self, which, res):
            note, statuses = res
            parts = [f"{k}={proto.PARAM_WR_STR.get(v, v)}" for k, v in statuses.items()]
            self._report(f"{which} gains applied: " + note + ", ".join(parts))
            self._refresh_values()

        # ---- verify / measure experiments -------------------------------
        def _at_set_busy(self, on):
            for w in (self.at_cur_verify_btn, self.at_spd_verify_btn,
                      self.at_spd_measure_btn, self.at_cur_apply_btn,
                      self.at_spd_apply_btn, self.at_fw_apply_btn,
                      self.at_man_cur_apply_btn, self.at_man_cur_verify_btn,
                      self.at_man_spd_apply_btn, self.at_man_spd_verify_btn,
                      self.at_man_fw_apply_btn, self.at_man_load_btn):
                w.setEnabled((not on) and self._connected)

        def _at_verify_current(self):
            self._at_current_preview()
            self._at_step_current(getattr(self, "_at_cur_gains", None),
                                  self.at_cur_step.value(), "current")

        def _at_step_current(self, gains, iq, which):
            """Apply `gains`, run in torque mode, step iq, plot the response.

            Shared by the model-based box and the manual-gain box so both paths
            produce exactly the same experiment, plot and metrics.
            """
            if not self._connected:
                self._report("not connected")
                return
            if not gains:
                self._report(f"no valid {which} gains", logging.WARNING)
                return
            isr = self._mc("isr_freq_hz")
            mask = proto.names_to_mask(["Id", "Iq"])
            self._report(f"{which} verify: applying gains + stepping iq…")
            self._at_set_busy(True)
            self.worker.submit(
                "at_verify_cur",
                fn=lambda d, g=dict(gains): at_run_step(
                    d, mode=0, ref_param="iq_ref", ref_value=iq, mask=mask,
                    decim=3, isr_freq=isr, pre_gains=g, axis=1, pretrig=32),
                on_done=lambda res, iq=iq, w=which: self._at_verify_done(
                    "Iq", res, 0.0, iq, w),
                on_fail=self._at_verify_failed)

        def _at_verify_speed(self):
            self._at_speed_preview()
            self._at_step_speed(getattr(self, "_at_spd_gains", None),
                                self.at_spd_step.value(), "speed")

        def _at_step_speed(self, gains, rpm, which):
            """Apply `gains`, run in speed mode, step the RPM setpoint, plot omega."""
            if not self._connected:
                self._report("not connected")
                return
            if not gains:
                self._report(f"no valid {which} gains", logging.WARNING)
                return
            we = self._rpm_to_elec(rpm)
            isr = self._mc("isr_freq_hz")
            # Size the window ~1.6x the firmware accel ramp (SPEED_RAMP_RAD_S2~500)
            # so the ramp + overshoot fit inside the 128-sample snapshot.
            ramp_t = abs(we) / 500.0
            total_t = ramp_t * 1.6 + 0.1
            decim = int(max(20, min(200, round(total_t * isr / 128.0))))
            mask = proto.names_to_mask(["omega_elec"])
            self._report(f"{which} verify: applying gains + stepping RPM…")
            self._at_set_busy(True)
            self.worker.submit(
                "at_verify_spd",
                fn=lambda d, g=dict(gains): at_run_step(
                    d, mode=1, ref_param="omega_ref", ref_value=we, mask=mask,
                    decim=decim, isr_freq=isr, pre_gains=g, axis=None, pretrig=8),
                on_done=lambda res, we=we, w=which: self._at_verify_done(
                    "omega_elec", res, 0.0, we, w),
                on_fail=self._at_verify_failed)

        def _at_measure_km(self):
            if not self._connected:
                self._report("not connected")
                return
            iq = self.at_spd_km_iq.value()
            isr = self._mc("isr_freq_hz")
            mask = proto.names_to_mask(["omega_elec"])
            self._report("measuring Km: torque ramp…")
            self._at_set_busy(True)
            self.worker.submit(
                "at_km",
                fn=lambda d: at_run_step(
                    d, mode=0, ref_param="iq_ref", ref_value=iq, mask=mask,
                    decim=12, isr_freq=isr, pre_gains=None, axis=1, pretrig=8),
                on_done=lambda res, iq=iq: self._at_km_done(res, iq),
                on_fail=self._at_verify_failed)

        def _at_verify_failed(self, msg):
            self._at_set_busy(False)
            self._report(f"experiment failed: {msg}", logging.ERROR)

        def _at_verify_done(self, chan, res, ref0, ref1, which):
            self._at_set_busy(False)
            cap, dt, i_step = res
            self._at_last_cap = cap
            if chan not in cap.names:
                self._report(f"verify: channel {chan} not in capture", logging.ERROR)
                return
            y = cap.data[cap.names.index(chan)]
            m = autotune.step_metrics(y, dt, ref0=ref0, ref1=ref1, i_step=i_step)
            # t=0 is the device-reported trigger sample, so the pre-step baseline
            # sits at negative time and the response starts exactly at the origin.
            xs = (np.arange(len(y)) - i_step) * dt * 1e3
            self.at_meas_curve.setData(xs, np.asarray(y, dtype=float))
            self.at_ref_curve.setData([float(xs[0]), float(xs[-1])], [ref1, ref1])
            self.at_trig_line.setPos(0.0)
            self.at_trig_line.setVisible(True)
            self.at_plot.setTitle(f"{which} verify — {chan}")
            self.at_plot.setLabel("bottom", "t (ms)")
            if m.ok:
                self.at_metrics_lbl.setText(
                    f"rise(10–90%)={m.t_rise * 1e3:.2f} ms   "
                    f"overshoot={m.overshoot_pct:.1f}%   "
                    f"settle={m.t_settle * 1e3:.2f} ms   "
                    f"eff.BW≈{m.bw_hz:.0f} Hz")
                self._report(
                    f"{which} verify: overshoot {m.overshoot_pct:.1f}%, "
                    f"rise {m.t_rise * 1e3:.2f} ms")
            else:
                self.at_metrics_lbl.setText(
                    f"could not analyze step ({m.reason}) — try a larger step "
                    "or different decimation")
                self._report(f"{which} verify: {m.reason}", logging.WARNING)
            self._refresh_values()

        def _at_km_done(self, res, iq):
            self._at_set_busy(False)
            cap, dt, _i_step = res
            self._at_last_cap = cap
            if "omega_elec" not in cap.names:
                self._report("Km: omega channel missing from capture", logging.ERROR)
                return
            y = cap.data[cap.names.index("omega_elec")]
            n = len(y)
            # Fit only the accelerating part: start a few samples past the
            # device-reported step so the pre-step baseline and the current
            # loop's own rise are excluded from the slope.
            i0 = min(n - 2, max(int(_i_step) + 4, 1))
            slope = autotune.fit_slope(y, dt, i0=i0, i1=n)
            if iq <= 0 or slope <= 0:
                self._report(
                    "Km measure: no usable ramp (is the shaft free? try larger iq)",
                    logging.WARNING)
                return
            Km = slope / iq
            self._at_measured_km = Km
            try:
                J = autotune.j_from_km(Km, int(self._mc("pole_pairs")) or 4,
                                       self._mc("flux_vs"))
            except ValueError:
                J = 0.0
            self.at_spd_km_lbl.setText(f"Km={Km:.4g} (measured)")
            self.at_spd_j.blockSignals(True)   # reflect implied J, keep measured Km
            if J > 0:
                self.at_spd_j.setValue(J)
            self.at_spd_j.blockSignals(False)
            self._at_speed_preview()
            xs = (np.arange(n) - _i_step) * dt * 1e3
            self.at_meas_curve.setData(xs, np.asarray(y, dtype=float))
            self.at_ref_curve.setData([], [])
            self.at_trig_line.setPos(0.0)
            self.at_trig_line.setVisible(True)
            self.at_plot.setTitle("Km measure — omega ramp")
            self.at_plot.setLabel("bottom", "t (ms)")
            self._report(f"Km measured: {Km:.4g} (rad/s²/A), implied J≈{J:.3g} kg·m²")

        # ---- scope -------------------------------------------------------
        def _selected_names(self):
            """Checked catalog signal names, in ascending bit (= wire) order."""
            return [name for _bit, name in proto.SCOPE_CATALOG
                    if self.sig_checks[name].isChecked()]

        def _rebuild_plots(self, names):
            """Rebuild the stacked plots + rolling buffers for `names`."""
            self.glw.clear()
            self.plots = []
            self.curves = []
            self._ref_curves = {}
            self._plot_names = list(names)
            _ref_pen = pg.mkPen(color=(220, 60, 60), width=1.5,
                                style=QtCore.Qt.DashLine)
            for r, name in enumerate(names):
                pl = self.glw.addPlot(row=r, col=0, title=name)
                pl.showGrid(x=True, y=True, alpha=0.3)
                self.curves.append(pl.plot(pen=pg.mkPen(width=1)))
                self.plots.append(pl)
                if name in _SCOPE_TO_REF:
                    ref_curve = pl.plot(pen=_ref_pen, name=_SCOPE_TO_REF[name])
                    self._ref_curves[name] = ref_curve
            self._ring = [collections.deque(maxlen=self._history) for _ in names]
            self._ref_rings = [
                collections.deque(maxlen=self._history) if name in _SCOPE_TO_REF else None
                for name in names
            ]
            self._scope_dirty = True

        def _on_signal_toggled(self, _checked=False):
            names = self._selected_names()
            if not names:
                # Disallow an empty selection: re-check the box just cleared.
                cb = self.sender()
                if isinstance(cb, QtWidgets.QCheckBox):
                    cb.blockSignals(True)
                    cb.setChecked(True)
                    cb.blockSignals(False)
                return
            mask = proto.names_to_mask(names)
            if mask == self._scope_mask:
                return
            self._scope_mask = mask
            self._rebuild_plots(names)
            if self._connected:
                self.worker.set_scope_config(self._scope_mask, self.decim_spin.value())
            self._report("scope signals: " + ", ".join(names))

        def _apply_decim(self, val):
            if self._connected:
                self.worker.set_scope_config(self._scope_mask, val)

        def _apply_interval(self, val):
            self.worker.set_interval(val / 1000.0)

        def _apply_history(self, val):
            self._history = val
            self._ring = [collections.deque(buf, maxlen=val) for buf in self._ring]
            self._ref_rings = [
                collections.deque(buf, maxlen=val) if buf is not None else None
                for buf in self._ref_rings
            ]
            self._scope_dirty = True

        def _clear_scope(self):
            for buf in self._ring:
                buf.clear()
            for buf in self._ref_rings:
                if buf is not None:
                    buf.clear()
            for cur in self.curves:
                cur.setData([], [])
            for cur in self._ref_curves.values():
                cur.setData([], [])
            self._scope_dirty = False

        def _toggle_scope(self, checked):
            if checked:
                self._start_scope()
            else:
                self._stop_scope()

        def _start_scope(self):
            if not self._connected:
                self.scope_btn.setChecked(False)
                return
            self._last_scope_err = None
            self.worker.set_scope_config(self._scope_mask, self.decim_spin.value())
            self.worker.set_interval(self.interval_spin.value() / 1000.0)
            self.worker.set_scope(True)
            self._report("scope started")
            self.scope_btn.setText("Stop scope")
            self.scope_btn.setChecked(True)

        def _stop_scope(self):
            self.worker.set_scope(False)
            self.scope_btn.setText("Start scope")
            self.scope_btn.setChecked(False)

        def _scope_failed(self, msg):
            # The worker retries every interval; log a given error only once
            # (until it changes or a capture succeeds) so the console stays usable.
            if msg != self._last_scope_err:
                self._last_scope_err = msg
                self._report(f"scope error: {msg}", logging.ERROR)

        def _on_capture(self, cap):
            # Drop frames captured under a different mask (in flight across a
            # signal-selection change) so the rolling buffers never misalign.
            if cap.mask != self._scope_mask:
                return
            # Append into the rolling buffers. Drawing happens on the render
            # timer, not here — so a burst of captures coalesces into one redraw
            # and a stalled link leaves the existing history on screen.
            if self._last_scope_err is not None:
                self._report("scope recovered", logging.INFO)
                self._last_scope_err = None
            self._last_cap = cap
            for c in range(min(len(self._ring), cap.n_channels)):
                self._ring[c].extend(cap.data[c])
                if c < len(self._ref_rings) and self._ref_rings[c] is not None:
                    name = self._plot_names[c] if c < len(self._plot_names) else None
                    if name is not None:
                        val = self._ref_values.get(name, 0.0)
                        self._ref_rings[c].extend([val] * len(cap.data[c]))
            self._scope_dirty = True

        def _render_scope(self):
            if not self._scope_dirty:
                return
            self._scope_dirty = False
            for c, buf in enumerate(self._ring):
                if c >= len(self.curves):
                    break
                n = len(buf)
                if n:
                    y = np.fromiter(buf, dtype=float, count=n)
                    self.curves[c].setData(np.arange(n), y)
                else:
                    self.curves[c].setData([], [])
            for c, ref_buf in enumerate(self._ref_rings):
                if ref_buf is None:
                    continue
                name = self._plot_names[c] if c < len(self._plot_names) else None
                if name is None or name not in self._ref_curves:
                    continue
                n = len(ref_buf)
                if n:
                    y = np.fromiter(ref_buf, dtype=float, count=n)
                    self._ref_curves[name].setData(np.arange(n), y)
                else:
                    self._ref_curves[name].setData([], [])

        def _save_csv(self):
            if not self._last_cap:
                self._report("no capture yet")
                return
            path, _ = QtWidgets.QFileDialog.getSaveFileName(self, "Save capture", "cap.csv", "CSV (*.csv)")
            if not path:
                return
            cap = self._last_cap
            with open(path, "w") as fh:
                fh.write("sample," + ",".join(cap.names) + "\n")
                for i in range(cap.n_samples):
                    fh.write(",".join([str(i)] + [f"{cap.data[c][i]:.6g}" for c in range(cap.n_channels)]) + "\n")
            self._report(f"saved {path}")

        # ---- save / load parameters (JSON) --------------------------------
        def _save_params_json(self):
            if not self.params:
                self._report("no parameters loaded — connect and refresh first")
                return
            path, _ = QtWidgets.QFileDialog.getSaveFileName(
                self, "Save parameters", "params.json", "JSON (*.json)"
            )
            if not path:
                return
            rows = []
            for info in self.params:
                row = self.row_of_id.get(info.id)
                if row is None:
                    continue
                ec = self.enum_combos.get(info.name)
                if ec is not None and row == ec[1]:
                    val = ec[0].currentText()
                else:
                    item = self.table.item(row, COL_VALUE)
                    val = item.text() if item else ""
                rows.append({
                    "name": info.name,
                    "id": f"0x{info.id:04X}",
                    "type": info.type_str,
                    "read_only": info.read_only,
                    "value": val,
                })
            with open(path, "w") as fh:
                json.dump({"params": rows}, fh, indent=2)
            self._report(f"parameters saved → {path}")

        def _load_params_json(self):
            path, _ = QtWidgets.QFileDialog.getOpenFileName(
                self, "Load parameters", "", "JSON (*.json)"
            )
            if not path:
                return
            try:
                with open(path) as fh:
                    data = json.load(fh)
            except Exception as e:  # noqa: BLE001
                self._report(f"load failed: {e}", logging.ERROR)
                return
            entries = data.get("params", [])
            if not self.params:
                self._report(
                    "no parameters known — connect and refresh before loading",
                    logging.ERROR,
                )
                return
            name_map = {info.name: info for info in self.params}
            written = skipped = 0
            for entry in entries:
                name = entry.get("name", "")
                val = str(entry.get("value", ""))
                if entry.get("read_only") or not name or val == "":
                    skipped += 1
                    continue
                info = name_map.get(name)
                if info is None:
                    skipped += 1
                    continue
                enum_labels = ENUM_PARAMS.get(info.name)
                if enum_labels is not None:
                    try:
                        enum_idx = enum_labels.index(val)
                    except ValueError:
                        skipped += 1
                        continue
                # Pre-fill all tables without triggering writes
                self._programmatic = True
                if enum_labels is not None:
                    for treg in self._all_tables:
                        ec = treg["enum_combos"].get(info.name)
                        if ec is not None:
                            self._set_enum_combo(ec[0], enum_idx)
                else:
                    for treg in self._all_tables:
                        r = treg["row_of_id"].get(info.id)
                        if r is not None:
                            it = treg["table"].item(r, COL_VALUE)
                            if it:
                                it.setText(val)
                self._programmatic = False
                # Write to device if connected
                if self._connected:
                    if enum_labels is not None:
                        self._on_enum_changed(info, enum_idx, enum_idx)
                    else:
                        def do_write(dbg, pid=info.id, v=val):
                            st = dbg.write_param(pid, v)
                            rb = None
                            try:
                                rb = dbg.read_param(pid)
                            except Exception:  # noqa: BLE001
                                pass
                            return st, rb
                        self.worker.submit(
                            "write", fn=do_write,
                            on_done=lambda res, i=info, v=val: self._write_done(i, v, res),
                            on_fail=lambda m: self._report(m, logging.ERROR),
                        )
                written += 1
            msg = f"loaded {written} param(s) from {path}"
            if skipped:
                msg += f", {skipped} skipped"
            if not self._connected and written:
                msg += " (table pre-filled; connect to write to device)"
            self._report(msg)

        # ---- periodic refresh -------------------------------------------
        def _tick(self):
            if not self._connected:
                return
            if not self._state_pending:
                self._state_pending = True

                def poll_state(d):
                    p = d.link.transact(
                        proto.CMD_SM_STATE, b"", timeout=0.4, retries=1
                    ).payload
                    st = p[0] if p else 0xFF
                    # Only pay for the extra fault-code read when actually faulted;
                    # tolerate firmware that predates the "fault_code" param.
                    fault = 0
                    if st == ST_FAULT:
                        try:
                            fault = int(d.read_param("fault_code"))
                        except Exception:
                            fault = 0
                    # Live DC-bus voltage for the header readout; tolerate firmware
                    # that predates the "vbus" param.
                    try:
                        vbus = float(d.read_param("vbus"))
                    except Exception:
                        vbus = None
                    return (st, fault, vbus)

                self.worker.submit("state", fn=poll_state,
                                   on_done=self._state_done, on_fail=self._state_failed)
            if self.autoread_chk.isChecked():
                self._refresh_values()

        def _state_done(self, res):
            self._state_pending = False
            st, fault, vbus = res
            text = FocDebug.state_name(st)
            if st == ST_FAULT:
                if fault:
                    text += "  —  " + fault_reason(fault)
                self.state_label.setStyleSheet("color: #d33;")
            else:
                self.state_label.setStyleSheet("")
            self.state_label.setText(text)
            if vbus is not None:
                self.vbus_label.setText(f"{vbus:.1f} V")

        def _state_failed(self, msg):
            self._state_pending = False
            log.debug("state poll failed: %s", msg)

        def closeEvent(self, ev):
            self.state_timer.stop()
            self.render_timer.stop()
            self.worker.set_scope(False)
            self.worker.stop()
            super().closeEvent(ev)

    return MainWindow


def main(argv: list | None = None) -> int:
    initial_port = None
    verbose = False
    if argv:
        # Accept "-p PORT" / "--port PORT" / "-v" passed through from the launcher.
        for i, a in enumerate(argv):
            if a in ("-p", "--port") and i + 1 < len(argv):
                initial_port = argv[i + 1]
            elif a.startswith("--port="):
                initial_port = a.split("=", 1)[1]
            elif a in ("-v", "--verbose"):
                verbose = True

    setup_logging(verbose)
    log.info("starting GUI (port=%s)", initial_port or "auto")
    pg, QtCore, QtGui, QtWidgets = _require_qt()
    MainWindow = build(pg, QtCore, QtGui, QtWidgets)
    app = QtWidgets.QApplication.instance() or QtWidgets.QApplication(sys.argv)
    win = MainWindow(initial_port=initial_port)
    win.show()
    return app.exec()


if __name__ == "__main__":
    raise SystemExit(main())

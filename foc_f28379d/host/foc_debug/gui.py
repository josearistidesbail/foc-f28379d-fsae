"""gui.py - point-and-click control panel for the FOC debug link.

Everything is done from the window: pick a port and Connect, read/write
parameters in a table, drive the state machine with buttons, and watch the four
scope channels live. No CLI flags, no typed commands.

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
import logging
import queue
import sys
import threading
from dataclasses import dataclass

from . import proto
from .api import FocDebug, ParamInfo
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

        def set_decim(self, decim: int):
            self.submit("scope_config", fn=lambda d, v=int(decim): d.scope_config(decim=v))

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

    class MainWindow(QtWidgets.QMainWindow):
        def __init__(self, initial_port=None):
            super().__init__()
            self.setWindowTitle("FOC debug — F28379D")
            self.resize(1100, 760)

            self.params: list[ParamInfo] = []
            self.row_of_id: dict[int, int] = {}
            self._connected = False
            self._conn_port = ""
            self._programmatic = False
            self._last_scope_err = None
            self._last_cap = None
            self._state_pending = False
            self._refresh_pending = False

            # Rolling scope buffers (one deque per channel) + dirty flag.
            self._history = 8000
            self._ring = [
                collections.deque(maxlen=self._history)
                for _ in proto.SCOPE_CHANNEL_NAMES
            ]
            self._scope_dirty = False

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
            outer.addLayout(bar)

            split = QtWidgets.QSplitter(QtCore.Qt.Horizontal)
            outer.addWidget(split, 1)

            # ---- Left: params + state machine ----
            left = QtWidgets.QWidget()
            lv = QtWidgets.QVBoxLayout(left)

            sm_box = QtWidgets.QGroupBox("State machine")
            smh = QtWidgets.QHBoxLayout(sm_box)
            self.state_label = QtWidgets.QLabel("—")
            f = self.state_label.font()
            f.setBold(True)
            self.state_label.setFont(f)
            self.run_btn = QtWidgets.QPushButton("Run")
            self.stop_btn = QtWidgets.QPushButton("Stop")
            self.clear_btn = QtWidgets.QPushButton("Clear fault")
            self.run_btn.clicked.connect(lambda: self._sm("run"))
            self.stop_btn.clicked.connect(lambda: self._sm("stop"))
            self.clear_btn.clicked.connect(lambda: self._sm("clear"))
            smh.addWidget(QtWidgets.QLabel("State:"))
            smh.addWidget(self.state_label, 1)
            smh.addWidget(self.run_btn)
            smh.addWidget(self.stop_btn)
            smh.addWidget(self.clear_btn)
            lv.addWidget(sm_box)

            ph = QtWidgets.QHBoxLayout()
            ph.addWidget(QtWidgets.QLabel("Parameters"))
            ph.addStretch(1)
            self.autoread_chk = QtWidgets.QCheckBox("Auto-refresh values")
            self.refresh_vals_btn = QtWidgets.QPushButton("Refresh values")
            self.refresh_vals_btn.clicked.connect(self._refresh_values)
            ph.addWidget(self.autoread_chk)
            ph.addWidget(self.refresh_vals_btn)
            lv.addLayout(ph)

            self.table = QtWidgets.QTableWidget(0, 6)
            self.table.setHorizontalHeaderLabels(
                ["id", "name", "type", "flags", "value (edit + Enter)", "status"]
            )
            self.table.horizontalHeader().setStretchLastSection(True)
            self.table.setEditTriggers(
                QtWidgets.QAbstractItemView.DoubleClicked
                | QtWidgets.QAbstractItemView.EditKeyPressed
            )
            self.table.itemChanged.connect(self._on_item_changed)
            lv.addWidget(self.table, 1)

            hint = QtWidgets.QLabel(
                "Double-click a writable value, type, press Enter to write. "
                "needs_idle params take only in IDLE."
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

            self.glw = pg.GraphicsLayoutWidget()
            self.curves = []
            self.plots = []
            for r, name in enumerate(proto.SCOPE_CHANNEL_NAMES):
                pl = self.glw.addPlot(row=r, col=0, title=name)
                pl.showGrid(x=True, y=True, alpha=0.3)
                self.curves.append(pl.plot(pen=pg.mkPen(width=1)))
                self.plots.append(pl)
            rv.addWidget(self.glw, 1)

            split.addWidget(right)
            split.setSizes([520, 580])

            self.statusBar().showMessage("Ready. Pick a port and Connect.")

        # ---- helpers -----------------------------------------------------
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
                self.ping_btn, self.run_btn, self.stop_btn, self.clear_btn,
                self.refresh_vals_btn, self.scope_btn, self.table, self.autoread_chk,
                self.decim_spin, self.interval_spin,
            ):
                w.setEnabled(on)
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
            self.row_of_id = {}
            self._programmatic = True
            self.table.setRowCount(len(self.params))
            for row, info in enumerate(self.params):
                self.row_of_id[info.id] = row
                self._set_cell(row, COL_ID, f"0x{info.id:04X}", editable=False)
                self._set_cell(row, COL_NAME, info.name, editable=False)
                self._set_cell(row, COL_TYPE, info.type_str, editable=False)
                self._set_cell(row, COL_FLAGS, info.flags_str, editable=False)
                self._set_cell(row, COL_VALUE, "", editable=not info.read_only)
                self._set_cell(row, COL_STATUS, "", editable=False)
            self._programmatic = False
            self.table.resizeColumnsToContents()
            self._refresh_values()

        def _set_cell(self, row, col, text, editable):
            item = QtWidgets.QTableWidgetItem(text)
            if not editable:
                item.setFlags(item.flags() & ~QtCore.Qt.ItemIsEditable)
            self.table.setItem(row, col, item)

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
                    row = self.row_of_id.get(info.id)
                    if row is not None and val is not None:
                        self.table.item(row, COL_VALUE).setText(self._fmt(info, val))
            finally:
                self._programmatic = False

        def _refresh_failed(self, msg):
            self._refresh_pending = False
            log.debug("refresh failed: %s", msg)

        def _on_item_changed(self, item):
            if self._programmatic or item.column() != COL_VALUE or not self._connected:
                return
            row = item.row()
            info = self.params[row]
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
                on_done=lambda res, info=info, row=row, text=text: self._write_done(info, row, text, res),
                on_fail=lambda m: self._report(m, logging.ERROR),
            )

        def _write_done(self, info, row, text, res):
            status, val = res
            sstr = proto.PARAM_WR_STR.get(status, f"status{status}")
            self.table.item(row, COL_STATUS).setText(sstr)
            self._report(f"write {info.name} = {text} → {sstr}")
            if val is not None:
                self._programmatic = True
                self.table.item(row, COL_VALUE).setText(self._fmt(info, val))
                self._programmatic = False

        # ---- state machine ----------------------------------------------
        def _sm(self, op):
            if not self._connected:
                return
            fn = {"run": lambda d: d.request_run(),
                  "stop": lambda d: d.request_stop(),
                  "clear": lambda d: d.clear_fault()}[op]
            self.worker.submit(
                "sm", fn=fn,
                on_done=lambda st, op=op: self._sm_done(op, st),
                on_fail=lambda m: self._report(m, logging.ERROR),
            )

        def _sm_done(self, op, st):
            name = FocDebug.state_name(st)
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

        # ---- scope -------------------------------------------------------
        def _apply_decim(self, val):
            if self._connected:
                self.worker.set_decim(val)

        def _apply_interval(self, val):
            self.worker.set_interval(val / 1000.0)

        def _apply_history(self, val):
            self._history = val
            self._ring = [collections.deque(buf, maxlen=val) for buf in self._ring]
            self._scope_dirty = True

        def _clear_scope(self):
            for buf in self._ring:
                buf.clear()
            for cur in self.curves:
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
            self.worker.set_decim(self.decim_spin.value())
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
            # Append into the rolling buffers. Drawing happens on the render
            # timer, not here — so a burst of captures coalesces into one redraw
            # and a stalled link leaves the existing history on screen.
            if self._last_scope_err is not None:
                self._report("scope recovered", logging.INFO)
                self._last_scope_err = None
            self._last_cap = cap
            for c in range(min(len(self._ring), cap.n_channels)):
                self._ring[c].extend(cap.data[c])
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
                    return p[0] if p else 0xFF

                self.worker.submit("state", fn=poll_state,
                                   on_done=self._state_done, on_fail=self._state_failed)
            if self.autoread_chk.isChecked():
                self._refresh_values()

        def _state_done(self, st):
            self._state_pending = False
            self.state_label.setText(FocDebug.state_name(st))

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

"""gui.py - point-and-click control panel for the FOC debug link.

Everything is done from the window: pick a port and Connect, read/write
parameters in a table, drive the state machine with buttons, and watch the four
scope channels live. No CLI flags, no typed commands.

    python -m foc_debug            # launches this GUI (default)
    python -m foc_debug gui
    python -m foc_debug.gui

Needs PySide6 + pyqtgraph + numpy (pip install -r requirements.txt).

Threading note: serial I/O is serialized by a mutex. The scope runs in a worker
thread; button/table actions briefly wait (≤ one capture, ~0.4 s) if a capture
is in flight. The periodic state refresh uses a non-blocking try-lock so it
never stalls the UI.
"""

from __future__ import annotations

import logging
import sys

from . import proto
from .api import FocDebug, ParamInfo
from .link import SerialLink, LinkError, NackError, autodetect_port
from .log import setup_logging

log = logging.getLogger(__name__)


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

    Signal = QtCore.Signal

    class ScopeWorker(QtCore.QThread):
        captured = Signal(object)
        failed = Signal(str)

        def __init__(self, dbg, mutex, interval_ms=250):
            super().__init__()
            self.dbg = dbg
            self.mutex = mutex
            self.interval_ms = interval_ms
            self._stop = False

        def run(self):
            while not self._stop:
                self.mutex.lock()
                try:
                    cap = self.dbg.capture_scope()
                except Exception as e:  # noqa: BLE001
                    cap = None
                    self.failed.emit(str(e))
                finally:
                    self.mutex.unlock()
                if cap is not None:
                    self.captured.emit(cap)
                # Sleep outside the lock so other I/O can run between captures.
                slept = 0
                while slept < self.interval_ms and not self._stop:
                    QtCore.QThread.msleep(20)
                    slept += 20

        def stop(self):
            self._stop = True
            self.wait(2000)

    COL_ID, COL_NAME, COL_TYPE, COL_FLAGS, COL_VALUE, COL_STATUS = range(6)

    class MainWindow(QtWidgets.QMainWindow):
        def __init__(self, initial_port=None):
            super().__init__()
            self.setWindowTitle("FOC debug — F28379D")
            self.resize(1100, 760)

            self.link: SerialLink | None = None
            self.dbg: FocDebug | None = None
            self.params: list[ParamInfo] = []
            self.row_of_id: dict[int, int] = {}
            self.scope_worker: ScopeWorker | None = None
            self.io_mutex = QtCore.QMutex()
            self._programmatic = False
            self._last_scope_err = None

            self._build_ui()
            self._set_connected(False)
            self._refresh_ports(select=initial_port)

            self.state_timer = QtCore.QTimer(self)
            self.state_timer.timeout.connect(self._tick)
            self.state_timer.start(500)

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
            self._last_cap = None

            split.addWidget(right)
            split.setSizes([520, 580])

            self.statusBar().showMessage("Ready. Pick a port and Connect.")

        # ---- helpers -----------------------------------------------------
        def _io(self, fn):
            """Run a serial op under the mutex (blocking). Returns (value, ok)."""
            self.io_mutex.lock()
            try:
                return fn(), True
            except NackError as e:
                self._report(f"NACK: {e}", logging.WARNING)
            except (LinkError, KeyError, ValueError) as e:
                self._report(f"error: {e}", logging.ERROR)
            finally:
                self.io_mutex.unlock()
            return None, False

        def _io_try(self, fn):
            """Non-blocking variant for the periodic timer (skips if busy)."""
            if not self.io_mutex.tryLock():
                return None, False
            try:
                return fn(), True
            except Exception as e:  # noqa: BLE001
                log.debug("periodic op skipped/failed: %s", e)
                return None, False
            finally:
                self.io_mutex.unlock()

        def _report(self, msg, level=logging.INFO):
            """Show a message in the status bar and mirror it to the console log."""
            self.statusBar().showMessage(msg)
            log.log(level, "%s", msg)

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
            if self.link is None:
                port = self.port_combo.currentData()
                try:
                    self.link = SerialLink(port=port, timeout=1.0)
                except LinkError as e:
                    self._report(f"connect failed: {e}")
                    self.link = None
                    return
                self.dbg = FocDebug(self.link)
                self._report(f"connected to {self.link.port}")
                self._set_connected(True)
                self._load_params()
            else:
                self._disconnect()

        def _disconnect(self):
            self._stop_scope()
            if self.link:
                self.link.close()
            self.link = None
            self.dbg = None
            self._set_connected(False)
            self._report("disconnected")

        def _set_connected(self, on):
            self.connect_btn.setText("Disconnect" if on else "Connect")
            self.conn_label.setText(
                f"connected: {self.link.port}" if (on and self.link) else "disconnected"
            )
            for w in (
                self.ping_btn, self.run_btn, self.stop_btn, self.clear_btn,
                self.refresh_vals_btn, self.scope_btn, self.table, self.autoread_chk,
                self.decim_spin, self.interval_spin, self.save_csv_btn,
            ):
                w.setEnabled(on)
            self.port_combo.setEnabled(not on)
            self.refresh_ports_btn.setEnabled(not on)
            if not on:
                self.state_label.setText("—")

        # ---- params ------------------------------------------------------
        def _load_params(self):
            res, ok = self._io(lambda: self.dbg.list_params())
            if not ok:
                return
            self.params = res
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
            if not self.dbg:
                return
            self._programmatic = True
            try:
                for info in self.params:
                    val, ok = self._io(lambda i=info: self.dbg.read_param(i.id))
                    row = self.row_of_id[info.id]
                    if ok:
                        self.table.item(row, COL_VALUE).setText(self._fmt(info, val))
            finally:
                self._programmatic = False

        def _on_item_changed(self, item):
            if self._programmatic or item.column() != COL_VALUE or not self.dbg:
                return
            row = item.row()
            info = self.params[row]
            text = item.text().strip()
            if text == "":
                return
            status, ok = self._io(lambda: self.dbg.write_param(info.id, text))
            if ok:
                sstr = proto.PARAM_WR_STR.get(status, f"status{status}")
                self.table.item(row, COL_STATUS).setText(sstr)
                self._report(f"write {info.name} = {text} → {sstr}")
            # Reflect the actual stored value.
            val, ok2 = self._io(lambda: self.dbg.read_param(info.id))
            if ok2:
                self._programmatic = True
                item.setText(self._fmt(info, val))
                self._programmatic = False

        # ---- state machine ----------------------------------------------
        def _sm(self, op):
            if not self.dbg:
                return
            fn = {"run": self.dbg.request_run, "stop": self.dbg.request_stop,
                  "clear": self.dbg.clear_fault}[op]
            st, ok = self._io(fn)
            if ok:
                self.state_label.setText(self.dbg.state_name(st))
                self._report(f"{op} → {self.dbg.state_name(st)}")

        def _do_ping(self):
            if not self.dbg:
                return
            dt, ok = self._io(lambda: self.dbg.ping_latency(b"foc-ping"))
            if ok:
                self._report(f"ping ok: {dt * 1e3:.2f} ms round-trip")

        # ---- scope -------------------------------------------------------
        def _apply_decim(self, val):
            if self.dbg:
                self._io(lambda: self.dbg.scope_config(decim=val))

        def _apply_interval(self, val):
            if self.scope_worker:
                self.scope_worker.interval_ms = val

        def _toggle_scope(self, checked):
            if checked:
                self._start_scope()
            else:
                self._stop_scope()

        def _start_scope(self):
            if not self.dbg or self.scope_worker:
                return
            self._last_scope_err = None
            self._io(lambda: self.dbg.scope_config(decim=self.decim_spin.value()))
            self.scope_worker = ScopeWorker(self.dbg, self.io_mutex, self.interval_spin.value())
            self.scope_worker.captured.connect(self._on_capture)
            self.scope_worker.failed.connect(self._scope_failed)
            self.scope_worker.start()
            self._report("scope started")
            self.scope_btn.setText("Stop scope")
            self.scope_btn.setChecked(True)

        def _scope_failed(self, msg):
            # The worker retries every interval; log a given error only once
            # (until it changes or a capture succeeds) so the console stays usable.
            if msg != self._last_scope_err:
                self._last_scope_err = msg
                self._report(f"scope error: {msg}", logging.ERROR)

        def _stop_scope(self):
            if self.scope_worker:
                self.scope_worker.stop()
                self.scope_worker = None
            self.scope_btn.setText("Start scope")
            self.scope_btn.setChecked(False)

        def _on_capture(self, cap):
            if self._last_scope_err is not None:
                self._report("scope recovered", logging.INFO)
                self._last_scope_err = None
            self._last_cap = cap
            x = np.arange(cap.n_samples)
            for c in range(min(len(self.curves), cap.n_channels)):
                self.curves[c].setData(x, np.asarray(cap.data[c]))

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
            if not self.dbg:
                return
            st, ok = self._io_try(lambda: self.dbg.sm_state())
            if ok and st is not None:
                self.state_label.setText(self.dbg.state_name(st))
            if self.autoread_chk.isChecked():
                self._refresh_values()

        def closeEvent(self, ev):
            self._disconnect()
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

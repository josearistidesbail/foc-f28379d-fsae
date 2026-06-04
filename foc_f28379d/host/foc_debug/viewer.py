"""viewer.py - pyqtgraph live scope viewer.

Triggers capture_scope() on a timer and plots the 4 channels (Id, Iq,
theta_elec, omega_elec). Run with:

    python -m foc_debug.viewer --port /dev/ttyUSB1

Requires pyqtgraph + a Qt binding (PySide6). Headless environments will not
have a display; in that case use `python -m foc_debug scope --csv out.csv`.
"""

from __future__ import annotations

import argparse
import sys

from .api import FocDebug
from .link import SerialLink, LinkError


def main(argv: list | None = None) -> int:
    parser = argparse.ArgumentParser(prog="foc_debug.viewer", description="Live FOC scope viewer")
    parser.add_argument("-p", "--port", default=None, help="serial port (auto-detect if omitted)")
    parser.add_argument("-b", "--baud", type=int, default=115200)
    parser.add_argument("-i", "--interval", type=int, default=200, help="capture interval [ms]")
    parser.add_argument("--decim", type=int, default=1, help="firmware capture decimation")
    ns = parser.parse_args(argv)

    try:
        import numpy as np
        import pyqtgraph as pg
        from pyqtgraph.Qt import QtCore, QtWidgets
    except ImportError as e:
        print(f"viewer needs pyqtgraph + PySide6 + numpy: {e}", file=sys.stderr)
        return 2

    try:
        link = SerialLink(port=ns.port, baud=ns.baud, timeout=1.0)
    except LinkError as e:
        print(f"error: {e}", file=sys.stderr)
        return 2

    dbg = FocDebug(link)
    try:
        dbg.scope_config(decim=ns.decim)
    except LinkError as e:
        print(f"warning: scope_config failed: {e}", file=sys.stderr)

    app = QtWidgets.QApplication.instance() or QtWidgets.QApplication(sys.argv)
    win = pg.GraphicsLayoutWidget(title="FOC scope")
    win.resize(900, 700)

    names = ["Id", "Iq", "theta_elec", "omega_elec"]
    plots = []
    curves = []
    for r, name in enumerate(names):
        pl = win.addPlot(row=r, col=0, title=name)
        pl.showGrid(x=True, y=True, alpha=0.3)
        pl.setLabel("bottom", "sample")
        curves.append(pl.plot(pen=pg.mkPen(width=1)))
        plots.append(pl)

    win.show()

    def update():
        try:
            cap = dbg.capture_scope()
        except LinkError as e:
            win.setWindowTitle(f"FOC scope - error: {e}")
            return
        x = np.arange(cap.n_samples)
        for c in range(min(len(curves), cap.n_channels)):
            curves[c].setData(x, np.asarray(cap.data[c]))
        win.setWindowTitle(f"FOC scope - {cap.n_samples} samples")

    timer = QtCore.QTimer()
    timer.timeout.connect(update)
    timer.start(ns.interval)
    update()

    try:
        app.exec()
    finally:
        link.close()
    return 0


if __name__ == "__main__":
    raise SystemExit(main())

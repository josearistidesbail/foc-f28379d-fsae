"""cli.py - launcher + optional text REPL for the FOC debug link.

Default (no command) launches the point-and-click GUI:

    python -m foc_debug                 # GUI
    python -m foc_debug gui             # GUI (explicit)
    python -m foc_debug repl            # text REPL (lazy connect)

One-shot commands (auto-connect, run once, exit):

    python -m foc_debug ping
    python -m foc_debug -p /dev/ttyUSB1 read iq_ref
    python -m foc_debug write iq_ref 0.5
    python -m foc_debug scope --csv cap.csv
    python -m foc_debug run

REPL commands (type at the foc> prompt — no flags):
    ports, connect [port], disconnect, ping [text], list,
    read <name>, write <name> <val>, config <decim>, scope [csv],
    run, stop, clearfault, state, help, quit
"""

from __future__ import annotations

import argparse
import sys

from . import proto
from .api import FocDebug
from .link import SerialLink, LinkError, NackError, autodetect_port
from .log import setup_logging


class Session:
    """Holds an optional live link so REPL/one-shot can connect lazily."""

    def __init__(self, baud: int = 115200, timeout: float = 1.0):
        self.baud = baud
        self.timeout = timeout
        self.link: SerialLink | None = None
        self.dbg: FocDebug | None = None

    @property
    def connected(self) -> bool:
        return self.link is not None

    def connect(self, port: str | None = None) -> str:
        self.disconnect()
        self.link = SerialLink(port=port, baud=self.baud, timeout=self.timeout)
        self.dbg = FocDebug(self.link)
        return self.link.port

    def disconnect(self):
        if self.link:
            self.link.close()
        self.link = None
        self.dbg = None


def _print_param_list(dbg: FocDebug):
    params = dbg.list_params()
    print(f"{'id':>6}  {'name':<16} {'type':<4} {'flags':<12} value")
    print("-" * 56)
    for info in params:
        try:
            val = dbg.read_param(info.id)
            vstr = f"{val:.6g}" if info.type == proto.PARAM_TYPE_F32 else str(val)
        except (LinkError, KeyError) as e:
            vstr = f"<{e}>"
        print(f"0x{info.id:04X}  {info.name:<16} {info.type_str:<4} {info.flags_str:<12} {vstr}")


def _do_scope(dbg: FocDebug, csv_path: str | None):
    cap = dbg.capture_scope()
    print(f"scope: {cap.n_samples} samples x {cap.n_channels} ch, mask=0x{cap.mask:04X}")
    print("channels:", ", ".join(cap.names))
    if csv_path:
        with open(csv_path, "w") as f:
            f.write("sample," + ",".join(cap.names) + "\n")
            for i in range(cap.n_samples):
                f.write(",".join([str(i)] + [f"{cap.data[c][i]:.6g}" for c in range(cap.n_channels)]) + "\n")
        print(f"wrote {csv_path}")
    else:
        def show(i):
            vals = " ".join(f"{cap.names[c]}={cap.data[c][i]:+.4f}" for c in range(cap.n_channels))
            print(f"  [{i:3d}] {vals}")
        for i in range(min(3, cap.n_samples)):
            show(i)
        if cap.n_samples > 6:
            print("   ...")
        for i in range(max(3, cap.n_samples - 3), cap.n_samples):
            show(i)


def _status_str(status: int) -> str:
    return proto.PARAM_WR_STR.get(status, f"status{status}")


def _print_ports():
    from serial.tools import list_ports

    for p in list_ports.comports():
        print(f"  {p.device}\t{p.description}")
    print(f"  auto-detect guess: {autodetect_port()}")


def run_command(sess: Session, argv: list) -> int:
    """Run a single command. Returns 0 ok, 1 error, 2 usage, -1 quit."""
    if not argv:
        return 0
    cmd = argv[0].lower()
    args = argv[1:]

    # Commands that work without (or manage) a connection.
    if cmd in ("ports", "lsports"):
        _print_ports()
        return 0
    if cmd in ("connect", "open"):
        try:
            port = sess.connect(args[0] if args else None)
            print(f"connected to {port}")
        except LinkError as e:
            print(f"connect failed: {e}")
            return 1
        return 0
    if cmd in ("disconnect", "close"):
        sess.disconnect()
        print("disconnected")
        return 0
    if cmd in ("help", "?"):
        print(__doc__)
        return 0
    if cmd in ("quit", "exit", "q"):
        return -1

    # Everything below needs a connection.
    if not sess.connected:
        print("not connected — use 'connect [port]' (or 'ports' to list)")
        return 1
    dbg = sess.dbg

    try:
        if cmd == "ping":
            data = (" ".join(args)).encode() if args else b"foc-ping"
            print(f"ping ok: {len(data)} bytes in {dbg.ping_latency(data) * 1e3:.2f} ms")
        elif cmd in ("list", "ls", "params"):
            _print_param_list(dbg)
        elif cmd in ("read", "r"):
            if not args:
                print("usage: read <name|id>")
                return 2
            print(f"{args[0]} = {dbg.read_param(args[0])}")
        elif cmd in ("write", "w"):
            if len(args) < 2:
                print("usage: write <name|id> <value>")
                return 2
            print(f"write {args[0]} = {args[1]} -> {_status_str(dbg.write_param(args[0], args[1]))}")
        elif cmd in ("config", "scope_config"):
            decim = int(args[0]) if args else 1
            print(f"scope_config decim={decim} -> status {dbg.scope_config(decim=decim)}")
        elif cmd in ("scope", "capture"):
            _do_scope(dbg, args[0] if (args and args[0] != "-") else None)
        elif cmd == "run":
            print(f"run -> {dbg.state_name(dbg.request_run())}")
        elif cmd == "stop":
            print(f"stop -> {dbg.state_name(dbg.request_stop())}")
        elif cmd in ("clearfault", "clear", "cf"):
            print(f"clear_fault -> {dbg.state_name(dbg.clear_fault())}")
        elif cmd in ("state", "st"):
            st = dbg.sm_state()
            print(f"state = {dbg.state_name(st)} ({st})")
        else:
            print(f"unknown command: {cmd} (try 'help')")
            return 2
    except NackError as e:
        print(f"NACK: {e}")
        return 1
    except (LinkError, KeyError, ValueError) as e:
        print(f"error: {e}")
        return 1
    return 0


def repl(sess: Session):
    print("foc_debug REPL. 'ports' to list, 'connect [port]', 'help', 'quit'.")
    if sess.connected:
        print(f"connected to {sess.link.port}")
    while True:
        try:
            line = input("foc> ").strip()
        except (EOFError, KeyboardInterrupt):
            print()
            break
        if not line:
            continue
        if run_command(sess, line.split()) == -1:
            break
    sess.disconnect()


def main(argv: list | None = None) -> int:
    parser = argparse.ArgumentParser(prog="foc_debug", description="F28379D FOC debug link")
    parser.add_argument("-p", "--port", default=None, help="serial port (auto-detect if omitted)")
    parser.add_argument("-b", "--baud", type=int, default=115200)
    parser.add_argument("-t", "--timeout", type=float, default=1.0)
    parser.add_argument("--csv", default=None, help="for the one-shot 'scope' command")
    parser.add_argument("--list-ports", action="store_true", help="list serial ports and exit")
    parser.add_argument("-v", "--verbose", action="store_true", help="verbose console logging (DEBUG)")
    parser.add_argument("command", nargs="*", help="omit for GUI; 'repl' for text mode")
    ns = parser.parse_args(argv)

    setup_logging(ns.verbose)

    if ns.list_ports:
        _print_ports()
        return 0

    cmd0 = ns.command[0].lower() if ns.command else ""

    # Default and 'gui' -> graphical interface.
    if cmd0 in ("", "gui"):
        from . import gui

        gargs = ["-p", ns.port] if ns.port else []
        if ns.verbose:
            gargs.append("-v")
        return gui.main(gargs)

    sess = Session(baud=ns.baud, timeout=ns.timeout)

    if cmd0 == "repl":
        if ns.port:
            try:
                print(f"connected to {sess.connect(ns.port)}")
            except LinkError as e:
                print(f"(connect failed: {e}; use 'connect' in the REPL)")
        repl(sess)
        return 0

    # One-shot: auto-connect then run the single command.
    try:
        sess.connect(ns.port)
    except LinkError as e:
        print(f"error: {e}", file=sys.stderr)
        return 2
    try:
        argv2 = list(ns.command)
        if cmd0 in ("scope", "capture") and ns.csv and len(argv2) == 1:
            argv2.append(ns.csv)
        rc = run_command(sess, argv2)
    finally:
        sess.disconnect()
    return 0 if rc in (0, -1) else rc


if __name__ == "__main__":
    raise SystemExit(main())

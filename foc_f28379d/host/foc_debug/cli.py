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
    python -m foc_debug vbuscal                       # DC-bus sense calibration
    python -m foc_debug vbuscal --fit 6.1:31,50.2:148 # offline fit, no hardware
    python -m foc_debug vbuscal --cal-csv 40:v40.csv,65:v65.csv --csv-ratio 276.92
                                                      # fit saved 'vbus' captures

REPL commands (type at the foc> prompt — no flags):
    ports [all], connect [port], disconnect, ping [text], list,
    read <name>, write <name> <val>, config <decim>, scope [csv],
    run, stop, clearfault, state, vbuscal [--apply|-n500], help, quit
"""

from __future__ import annotations

import argparse
import sys

from . import proto
from .api import FocDebug
from .link import SerialLink, LinkError, NackError, autodetect_port, debug_ports
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


def _do_vbuscal(dbg, args: list) -> int:
    """Interactive DC-bus sense calibration: capture points, fit, optionally apply.

    Fits volts against the RAW ADC code so the gain being measured is not already
    baked into the input, and so a sense that is not tracking the bus shows up as
    a flat code instead of a plausible-looking wrong number. See vbuscal.py.
    """
    from . import vbuscal

    apply = "--apply" in args
    args = [a for a in args if a != "--apply"]
    nsamp = 300
    vref = vbuscal.DEFAULT_VREF
    spec = None
    for a in args:
        if a.startswith("-n"):
            nsamp = int(a[2:] or 300)
        elif a.startswith("--samples="):
            nsamp = int(a.split("=", 1)[1])
        elif a.startswith("--vref="):
            vref = float(a.split("=", 1)[1])
        elif a.startswith("--fit="):
            spec = a.split("=", 1)[1]
        elif a.startswith("--fit"):
            spec = ""       # value follows as the next bare arg
        elif spec == "":
            spec = a

    csv_spec = None
    csv_ratio = 276.92
    csv_filt_hz = 50.0
    for a in args:
        if a.startswith("--cal-csv="):
            csv_spec = a.split("=", 1)[1]
        elif a.startswith("--csv-ratio="):
            csv_ratio = float(a.split("=", 1)[1])
        elif a.startswith("--csv-filt-hz="):
            csv_filt_hz = float(a.split("=", 1)[1])

    old_ratio = old_off = None
    if csv_spec:
        points = vbuscal.points_from_scope_csv(csv_spec, capture_ratio=csv_ratio, vref=vref,
                                               filt_hz=csv_filt_hz)
    elif spec:
        points = vbuscal.parse_pairs(spec)
    else:
        if dbg is None:
            print("offline mode needs --fit V:code,... or --cal-csv V:file.csv,...")
            return 2
        try:
            old_ratio = float(dbg.read_param("vbus_ratio"))
            old_off = float(dbg.read_param("vbus_off"))
        except (KeyError, LinkError):
            print("note: device has no vbus_ratio/vbus_off params (older firmware)")
        print(
            "DC-bus sense calibration.\n"
            "  Set the supply to a voltage, METER the DC link, then enter the metered\n"
            "  volts here. Blank line finishes. Use >= 3 points spanning as much range\n"
            "  as the supply allows — 2 is the minimum and gives no linearity check.\n"
            f"  Each point averages {nsamp} raw-code reads (~{nsamp * 0.008:.0f} s).\n"
        )
        points = []
        while True:
            try:
                line = input(f"metered bus volts for point {len(points) + 1} (blank = done): ").strip()
            except (EOFError, KeyboardInterrupt):
                print()
                break
            if not line:
                break
            try:
                volts = float(line)
            except ValueError:
                print("  not a number")
                continue
            pt = vbuscal.sample_raw(
                dbg, nsamp,
                progress=lambda i, n: print(f"\r  sampling {i}/{n}", end="", flush=True),
            )
            pt.volts = volts
            print(
                f"\r  {volts:.3f} V -> code {pt.code:.2f} "
                f"(sigma {pt.sigma:.2f}, min {pt.code_min:.0f}, max {pt.code_max:.0f}, "
                f"SE {pt.sigma_mean:.3f})"
            )
            points.append(pt)

    if len(points) < 2:
        print("need at least 2 points — nothing fitted")
        return 2

    f = vbuscal.fit(points, vref=vref)
    print()
    print(vbuscal.report(f, targets=(50.0, 100.0, 400.0), old_ratio=old_ratio, old_off=old_off))

    # Echo the points as a --fit string. A live session is expensive (bus voltages,
    # a meter, ~10 min) and its points were previously discarded on exit, so
    # re-fitting a SUBSET -- e.g. excluding low points that sit in the ADC's
    # nonlinear bottom-of-range -- meant measuring all over again.
    if not spec and not csv_spec:
        pairs = ",".join(f"{p.volts:g}:{p.code:.2f}" for p in points)
        print()
        print("re-fit a subset without re-measuring (drop points by deleting them):")
        print(f"  python -m foc_debug vbuscal --fit {pairs}")

    if dbg is not None and not spec and not csv_spec:
        if not apply:
            try:
                apply = input("\napply to the device now? [y/N] ").strip().lower().startswith("y")
            except (EOFError, KeyboardInterrupt):
                apply = False
        if apply:
            for name, st in vbuscal.apply_fit(dbg, f):
                print(f"  write {name} -> {_status_str(st)}")
            print(f"  device vbus now reads {dbg.read_param('vbus'):.2f} V")
    return 0


def _print_ports(all_ports=False):
    from serial.tools import list_ports

    shown = list(list_ports.comports()) if all_ports else debug_ports()
    for p in shown:
        print(f"  {p.device}\t{p.description}")
    if not all_ports:
        hidden = len(list_ports.comports()) - len(shown)
        if hidden > 0:
            print(f"  ({hidden} hidden: JTAG channels / non-USB ports — 'ports all')")
    print(f"  auto-detect guess: {autodetect_port()}")


def run_command(sess: Session, argv: list) -> int:
    """Run a single command. Returns 0 ok, 1 error, 2 usage, -1 quit."""
    if not argv:
        return 0
    cmd = argv[0].lower()
    args = argv[1:]

    # Commands that work without (or manage) a connection.
    if cmd in ("ports", "lsports"):
        _print_ports(all_ports=bool(args) and args[0].lower() == "all")
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
    # Offline fit of already-recorded VOLTS:CODE pairs needs no hardware.
    if cmd in ("vbuscal", "vcal") and any(a.startswith(("--fit", "--cal-csv")) for a in args):
        return _do_vbuscal(None, args)

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
        elif cmd in ("vbuscal", "vcal"):
            return _do_vbuscal(dbg, args)
        else:
            print(f"unknown command: {cmd} (try 'help')")
            return 2
    except NackError as e:
        print(f"NACK: {e}")
        return 1
    except RuntimeError as e:
        # e.g. vbuscal against firmware with no 'vbus_raw' param — the likeliest
        # first-run failure. Print the guidance, not a traceback.
        print(f"error: {e}")
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
    # 'vbuscal' flags. Declared here (rather than swallowed as bare tokens) because
    # argparse rejects undeclared options ahead of the positional command list.
    parser.add_argument("--fit", default=None,
                        help="vbuscal: offline fit of VOLTS:CODE pairs, e.g. 6.1:31,50.2:148")
    # NOTE: not "--csv" — that is already taken by the one-shot 'scope' command.
    parser.add_argument("--cal-csv", dest="calcsv", default=None,
                        help="vbuscal: offline fit of saved 'vbus' scope captures, "
                             "e.g. 40:vbus_40v.csv,65:vbus_65v.csv")
    parser.add_argument("--csv-ratio", type=float, default=None,
                        help="vbuscal: vbus_ratio ACTIVE WHEN the --cal-csv captures were "
                             "taken (default 276.92) — needed to recover raw codes")
    parser.add_argument("--csv-filt-hz", type=float, default=None,
                        help="vbuscal: vbus_filt_hz active at capture (default 50); pass 0 "
                             "if captured with vbus_filt_en=0 so all samples count")
    parser.add_argument("--samples", type=int, default=None,
                        help="vbuscal: raw-code reads averaged per point (default 300)")
    parser.add_argument("--vref", type=float, default=None,
                        help="vbuscal: ADC reference volts (default 3.0, must match hw_*.h)")
    parser.add_argument("--apply", action="store_true",
                        help="vbuscal: write the fitted calibration without prompting")
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

    # 'vbuscal': fold the declared flags back into the token form run_command (and
    # the REPL) understands. '--fit' is pure math, so it needs no port.
    if cmd0 in ("vbuscal", "vcal"):
        toks = [cmd0]
        if ns.fit:
            toks.append(f"--fit={ns.fit}")
        if ns.calcsv:
            toks.append(f"--cal-csv={ns.calcsv}")
        if ns.csv_ratio:
            toks.append(f"--csv-ratio={ns.csv_ratio}")
        if ns.csv_filt_hz is not None:
            toks.append(f"--csv-filt-hz={ns.csv_filt_hz}")
        if ns.samples:
            toks.append(f"--samples={ns.samples}")
        if ns.vref:
            toks.append(f"--vref={ns.vref}")
        if ns.apply:
            toks.append("--apply")
        if ns.fit or ns.calcsv:
            return 0 if run_command(sess, toks) in (0, -1) else 1
        ns.command = toks
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

#!/usr/bin/env python3
"""Numbers for §VI-C from the bench scope CSVs in data/bench/ (see data/bench/README.md).

Usage (from paper/):  python scripts/bench_stats.py data/bench/*.csv [--decim N] [--fs 10000]

Each CSV is one foc_debug scope capture: `sample,<channels…>`. Decimation is read from a
`_d<N>` tag in the file name unless --decim is given. For every file the script prints the
steady statistics of theta_err (observer vs sensor); for hand-over files (name contains
`handover`, `auto`, `lost`, `disagree`) it also locates the switch tick, fits the blend decay of
wrap(theta_elec - theta_est) and reports the Iq disturbance relative to the pre-switch mean.
"""
import csv, math, re, sys

FS = 10_000.0


def wrap(x):
    return (x + math.pi) % (2 * math.pi) - math.pi


def load(path):
    with open(path) as f:
        r = csv.reader(f)
        names = next(r)
        rows = [[float(v) for v in row] for row in r if row]
    cols = {n: [row[i] for row in rows] for i, n in enumerate(names)}
    return cols


def stats(v):
    n = len(v)
    m = sum(v) / n
    rms = math.sqrt(sum(x * x for x in v) / n)
    sd = math.sqrt(sum((x - m) ** 2 for x in v) / n)
    return m, rms, sd, max(abs(x) for x in v)


def fit_line(xs, ys):
    n = len(xs)
    mx, my = sum(xs) / n, sum(ys) / n
    sxx = sum((x - mx) ** 2 for x in xs)
    sxy = sum((x - mx) * (y - my) for x, y in zip(xs, ys))
    a = sxy / sxx if sxx else 0.0
    b = my - a * mx
    res = math.sqrt(sum((y - (a * x + b)) ** 2 for x, y in zip(xs, ys)) / n)
    return a, b, res


def log_trig_idx(path):
    """trig_idx logged by bench_capture.py for this file in the LOG.md beside it, or None."""
    import os
    name = os.path.basename(path)
    log = os.path.join(os.path.dirname(path) or ".", "LOG.md")
    try:
        with open(log) as f:
            lines = [l for l in f if f" {name}:" in l]
    except OSError:
        return None
    m = re.search(r"trig_idx=(\d+)", lines[-1]) if lines else None
    return int(m.group(1)) if m else None


def analyse(path, decim, fs):
    c = load(path)
    dt = decim / fs
    name = path.split("/")[-1]
    print(f"\n== {name}  ({len(next(iter(c.values())))} samples, decim {decim}, {len(c)-1} ch)")
    need = ("theta_err", "theta_est", "theta_elec", "omega_elec")
    missing = [k for k in need if k not in c]
    if missing:
        print(f"   missing channels: {missing}")
    if "omega_elec" in c:
        m, _, sd, _ = stats(c["omega_elec"])
        print(f"   omega_elec: mean {m:8.1f} rad/s  sd {sd:6.2f}")
    if "theta_err" in c:
        m, rms, sd, mx = stats(c["theta_err"])
        print(f"   theta_err : mean {math.degrees(m):6.2f} deg  RMS {math.degrees(rms):6.2f} deg"
              f"  sd {math.degrees(sd):6.2f} deg  max {math.degrees(mx):6.2f} deg")

    tag = name.lower()
    if not any(k in tag for k in ("handover", "auto", "lost", "disagree", "unplug")):
        return
    if "theta_elec" not in c or "theta_est" not in c:
        return

    # blend offset = wrap(theta_elec - theta_est): zero while the sensor commutates and the
    # observer tracks it, a step at the hand-over tick that then decays linearly (blend)
    # A hand-BACK blends onto the sensor, so measure it against theta_sensor = theta_est - theta_err.
    if "back" in tag and "theta_err" in c:
        ref = [wrap(e - r) for e, r in zip(c["theta_est"], c["theta_err"])]
    else:
        ref = c["theta_est"]
    off = [wrap(a - b) for a, b in zip(c["theta_elec"], ref)]
    # switch tick: the trigger index bench_capture.py logged for this file (the switch and
    # the trigger land on the same ISR tick); else the largest offset jump, which only
    # works for a jump (LOSS) switch -- a bumpless blend has no jump to find.
    k = log_trig_idx(path)
    if k is None:
        jumps = [abs(wrap(off[i] - off[i - 1])) for i in range(1, len(off))]
        k = jumps.index(max(jumps)) + 1
        src = "largest jump"
    else:
        src = "trig_idx from LOG.md"
    print(f"   switch at sample {k} ({src}; t = {k*dt*1e3:.1f} ms into the window), offset "
          f"{math.degrees(off[k-1]):.2f} -> {math.degrees(off[k]):.2f} deg across the switch")
    post = off[k:]
    # blend: find where the offset has decayed to <5 % of its initial value
    o0 = post[0]
    if abs(o0) > math.radians(0.5):
        j = next((i for i, v in enumerate(post) if abs(v) < 0.05 * abs(o0)), None)
        if j:
            xs = [i * dt for i in range(j)]
            a, b, res = fit_line(xs, post[:j])
            print(f"   blend: reaches 5 % after {j*dt*1e3:.1f} ms; linear fit slope "
                  f"{math.degrees(a):.1f} deg/s, residual {math.degrees(res):.2f} deg "
                  f"(500 ticks = 50 ms expected for a blended switch, ~0 for a LOSS jump)")
        else:
            print("   blend: offset did not decay inside the window")
    else:
        print("   no blend offset (jump switch or offset below 0.5 deg)")
    if "Iq" in c:
        iq = c["Iq"]
        pre = iq[:k] if k > 2 else iq[:1]
        iq0 = sum(pre) / len(pre)
        dev = max(abs(v - iq0) for v in iq[k:])
        rel = dev / abs(iq0) * 100 if abs(iq0) > 1e-3 else float("nan")
        pre_dev = max(abs(v - iq0) for v in pre)
        _, _, pre_sd, _ = stats(pre)
        post_mean = sum(iq[k:]) / len(iq[k:])
        print(f"   Iq: pre-switch mean {iq0:.3f} A (sd {pre_sd:.3f}, max dev {pre_dev:.3f}), max deviation "
              f"after switch {dev:.3f} A ({rel:.1f} %, {dev/pre_sd if pre_sd else float('nan'):.1f} pre-sd), "
              f"post mean {post_mean:.3f} A")
    if "theta_err" in c:
        e = c["theta_err"]
        _, rms_pre, _, _ = stats(e[:k] if k > 2 else e[:1])
        _, rms_post, _, _ = stats(e[k:])
        print(f"   theta_err RMS before {math.degrees(rms_pre):.2f} deg, after {math.degrees(rms_post):.2f} deg")


def main(argv):
    decim = None
    fs = FS
    files = []
    it = iter(argv)
    for a in it:
        if a == "--decim":
            decim = int(next(it))
        elif a == "--fs":
            fs = float(next(it))
        else:
            files.append(a)
    if not files:
        print(__doc__)
        return 2
    for p in files:
        d = decim
        if d is None:
            m = re.search(r"_d(\d+)\.csv$", p)
            d = int(m.group(1)) if m else 1
        try:
            analyse(p, d, fs)
        except Exception as ex:  # keep going over the other files
            print(f"   error: {ex}")
    return 0


if __name__ == "__main__":
    sys.exit(main(sys.argv[1:]))

#!/usr/bin/env python3
"""Repeatability shadows for §VI-C: per observer, ONE RUN cycle stepping through speeds, N coherent
128-sample captures per point spaced in time. Writes <out>/teknic_shadow_<obs>_w<W>_r<k>_d1.csv,
appends to <out>/LOG.md, and prints/saves a summary (mean of capture means, spread across captures,
mean within-capture sd).

    python bench_repeat.py --out ../bench/repeat [--n 5] [--speeds 500 1000 1500 -1000] [--obs flux smo]
Same environment as bench_capture.py (FOC_HOST, one serial client, the drive always brought back)."""
import argparse, math, os, statistics as st, sys, time
sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
import bench_capture as bc   # noqa: E402


def settle(b, w, tmo=12.0):
    b.w("omega_ref", float(w))
    t0 = time.monotonic()
    while time.monotonic() - t0 < tmo:
        if abs(float(b.r("omega_meas")) - w) < 0.03 * abs(w) + 5:
            time.sleep(1.0)
            return
        if b.state() == bc.ST_FAULT:
            raise RuntimeError("FAULT: " + b.fault_text())
        time.sleep(0.05)
    raise RuntimeError(f"no settle at {w}")


def main():
    p = argparse.ArgumentParser()
    p.add_argument("--port", default=None)
    p.add_argument("--out", default="../bench/repeat")
    p.add_argument("--n", type=int, default=5)
    p.add_argument("--gap", type=float, default=0.4)
    p.add_argument("--speeds", type=float, nargs="+", default=[500, 1000, 1500, -1000])
    p.add_argument("--obs", nargs="+", default=["flux", "smo"])
    a = p.parse_args()
    os.makedirs(a.out, exist_ok=True)
    rows = []
    for obs in a.obs:
        b = bc.Bench(a.port)
        try:
            b.preflight()
            b.w("obs_mode", bc.OBS_SMO if obs == "smo" else bc.OBS_FLUX)
            b.w("angle_src", bc.SRC_SENSOR)
            for i, w in enumerate(a.speeds):
                if i == 0:
                    b.run_speed(w)
                else:
                    settle(b, w)
                means, sds = [], []
                for k in range(a.n):
                    cap, _ = b.capture_coherent(1, 2)
                    e = [math.degrees(x) for x in cap.data[cap.names.index("theta_err")]]
                    means.append(st.fmean(e)); sds.append(st.pstdev(e))
                    path = os.path.join(a.out, f"teknic_shadow_{obs}_w{int(w)}_r{k}_d1.csv")
                    b.save(cap, path)
                    time.sleep(a.gap)
                words = b.snapshot(["obs_healthy", "obs_flux_err", "obs_smo_err", "omega_meas", "iq_ref", "vbus"])
                row = (obs, w, st.fmean(means), st.pstdev(means), st.fmean(sds), words["obs_healthy"])
                rows.append(row)
                print(f"  {obs:4s} w {w:6.0f}: theta_err mean {row[2]:6.2f} deg, spread(sd of {a.n} means) "
                      f"{row[3]:4.2f}, within-capture sd {row[4]:4.2f}, healthy {row[5]}", flush=True)
                bc.log_line(a.out, f"repeat shadow {obs} w={w}: n={a.n}, mean_of_means={row[2]:.3f} deg, "
                                   f"sd_of_means={row[3]:.3f}, mean_within_sd={row[4]:.3f}, per-capture means="
                                   f"{[round(m, 3) for m in means]}, {words}, params={b.snapshot(bc.SNAPSHOT)}")
        finally:
            b.shutdown()
        time.sleep(1.0)
    with open(os.path.join(a.out, "SUMMARY.md"), "w") as f:
        f.write(f"# Repeatability shadows ({a.n} coherent 128-sample captures per point, decim 1)\n\n"
                "| observer | w [rad/s elec] | theta_err mean [deg] | sd across captures [deg] | "
                "within-capture sd [deg] | healthy |\n|---|---|---|---|---|---|\n")
        for r in rows:
            f.write(f"| {r[0]} | {r[1]:.0f} | {r[2]:.2f} | {r[3]:.2f} | {r[4]:.2f} | {r[5]} |\n")
    print("wrote", os.path.join(a.out, "SUMMARY.md"))


if __name__ == "__main__":
    main()

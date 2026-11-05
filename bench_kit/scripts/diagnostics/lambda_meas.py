#!/usr/bin/env python3
"""Measure the PM flux linkage on the bench: sensored SPEED mode at several speeds,
coherent capture of Vd/Vq/Id/Iq/omega, fit (Vq - Rs*iq) = lambda*we + c.
Usage: lambda_meas.py <out_dir> w1 w2 ...   (FOC_HOST set; reuses bench_capture.Bench)"""
import os, sys, time, math
sys.path.insert(0, __import__("os").path.join(__import__("os").path.dirname(__import__("os").path.abspath(__file__)), ".."))  # kit scripts/ (bench_capture)
import bench_capture as bc          # noqa: E402
from foc_debug import proto          # noqa: E402

CH = ["Id", "Iq", "omega_elec", "Vd", "Vq", "vbus"]
MASK = proto.names_to_mask(CH)


def mean(v):
    return sum(v) / len(v)


def main():
    out = sys.argv[1]
    speeds = [float(x) for x in sys.argv[2:]]
    os.makedirs(out, exist_ok=True)
    b = bc.Bench(None)
    rows = []
    try:
        b.preflight()
        rs = float(b.r("rs_ohm")); ld = float(b.r("ld_h")); lq = float(b.r("lq_h"))
        lam_fw = float(b.r("flux_vs"))
        print(f"rs {rs} ld {ld} lq {lq} flux_vs(fw) {lam_fw}")
        b.w("angle_src", bc.SRC_SENSOR)
        first = True
        for w in speeds:
            if first:
                b.run_speed(w)
                first = False
            else:
                b.w("omega_ref", float(w))
                t0 = time.monotonic()
                while abs(float(b.r("omega_meas")) - w) > 0.03 * w + 5:
                    if b.state() == bc.ST_FAULT:
                        raise RuntimeError("FAULT: " + b.fault_text())
                    if time.monotonic() - t0 > 8:
                        raise RuntimeError(f"no settle at {w}")
                    time.sleep(0.1)
                time.sleep(1.5)
            b.d.scope_config(decim=4, mask=MASK)
            b.w("step_go", 0); b.w("step_pre", 2); b.w("step_go", 2)
            b.wait_trigger(3.0)
            cap = b.d.capture_scope(timeout=3.0, retries=1)
            b.w("step_go", 0)
            m = {n: mean(cap.data[cap.names.index(n)]) for n in CH}
            path = os.path.join(out, f"teknic_lambda_w{int(w)}_d4.csv")
            b.save(cap, path)
            rows.append(m)
            print(f"  w {m['omega_elec']:7.1f}  Vd {m['Vd']:6.3f}  Vq {m['Vq']:6.3f}  Id {m['Id']:6.3f}  "
                  f"Iq {m['Iq']:6.3f}  vbus {m['vbus']:5.2f}  (Vq-Rs*Iq)/w = {(m['Vq']-rs*m['Iq'])/m['omega_elec']:.5f}")
    finally:
        b.shutdown()
    if len(rows) >= 2:
        xs = [r["omega_elec"] for r in rows]
        ys = [r["Vq"] - rs * r["Iq"] - ld * r["Id"] * r["omega_elec"] for r in rows]
        n = len(xs); mx = mean(xs); my = mean(ys)
        sxx = sum((x - mx) ** 2 for x in xs)
        a = sum((x - mx) * (y - my) for x, y in zip(xs, ys)) / sxx
        c = my - a * mx
        res = math.sqrt(sum((y - a * x - c) ** 2 for x, y in zip(xs, ys)) / n)
        se = res / math.sqrt(sxx) if n > 2 else float("nan")
        print(f"FIT lambda = {a:.6f} Vs (fw {lam_fw}, ratio {a/lam_fw:.3f}), intercept {c:.4f} V, "
              f"resid {res*1e3:.1f} mV, slope SE {se:.2e}")
        # cross-check on the d axis: Vd ~ Rs*id - we*Lq*iq
        for r in rows:
            vd_model = rs * r["Id"] - r["omega_elec"] * lq * r["Iq"]
            print(f"  d-check w {r['omega_elec']:7.1f}: Vd {r['Vd']:.3f} vs model {vd_model:.3f}")


if __name__ == "__main__":
    main()

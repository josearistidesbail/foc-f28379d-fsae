#!/usr/bin/env python3
"""Separate sensor-alignment bias from observer bias: one align per RUN, several speeds per RUN,
repeat over N RUN cycles. theta_err constant within a run but shifting between runs = alignment.
Usage: align_vs_obs.py <out_dir> <n_runs> w1 w2 ..."""
import os, sys, time, math
sys.path.insert(0, __import__("os").path.join(__import__("os").path.dirname(__import__("os").path.abspath(__file__)), ".."))  # kit scripts/ (bench_capture)
import bench_capture as bc   # noqa: E402


def main():
    out, nruns, speeds = sys.argv[1], int(sys.argv[2]), [float(x) for x in sys.argv[3:]]
    os.makedirs(out, exist_ok=True)
    for run in range(nruns):
        b = bc.Bench(None)
        try:
            b.preflight()
            b.w("obs_mode", bc.OBS_FLUX)
            b.w("angle_src", bc.SRC_SENSOR)
            for i, w in enumerate(speeds):
                if i == 0:
                    b.run_speed(w)
                    print(f"run {run}: align_offset {float(b.r('align_offset')):.2f} deg")
                else:
                    b.w("omega_ref", w)
                    t0 = time.monotonic()
                    while abs(float(b.r("omega_meas")) - w) > 0.03 * w + 5:
                        if b.state() == bc.ST_FAULT:
                            raise RuntimeError("FAULT " + b.fault_text())
                        if time.monotonic() - t0 > 8:
                            raise RuntimeError(f"no settle at {w}")
                        time.sleep(0.1)
                    time.sleep(1.5)
                cap, _ = b.capture_coherent(1, 2)
                e = cap.data[cap.names.index("theta_err")]
                m = math.degrees(sum(e) / len(e))
                sd = math.degrees(math.sqrt(sum((x - sum(e) / len(e)) ** 2 for x in e) / len(e)))
                dth = math.degrees(float(b.r("obs_dtheta")))
                path = os.path.join(out, f"teknic_alignchk_r{run}_w{int(w)}_d1.csv")
                b.save(cap, path)
                print(f"  run {run} w {w:6.0f}: theta_err(flux) mean {m:7.2f} sd {sd:5.2f} deg, "
                      f"flux-smo {dth:6.2f} deg, healthy {int(b.r('obs_healthy'))}")
        finally:
            b.shutdown()
        time.sleep(1.0)


if __name__ == "__main__":
    main()

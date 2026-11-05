"""Measure the PM flux linkage lambda from the slope of Vq vs speed (NOT YET RUN -- written 2026-11-06
for the next session). Speed mode at several speeds in an interleaved order; at steady speed the
friction current is ~constant, so Vq = lambda*w + c (c = Rs*Iq + dead-zone residual, ~const) and the
slope is lambda with the dead zone cancelled. MOTOR SPINS up to ~100 rpm.
`python lambda_fit.py [speeds=40,100,20,80,60,40]` (elec rad/s; the repeat checks drift).
Datasheet MOTOR_FLUX_VS = 0.03867; bench hints ~0.034 (bring-up H). The decoupling FF, the flux
observer and the back-EMF terms all use it."""
import sys, time
import numpy as np
from _common import connect, restore, capture_now, bits, wait_state, ST_RUN, RS, save_json

speeds = [float(x) for x in (sys.argv[1] if len(sys.argv) > 1 else "40,100,20,80,60,40").split(",")]
pts = []
with connect() as d, restore(d, "vmax_frac", "control_mode", "omega_ref", "iq_ref"):
    if d.read_param("state") != 0: raise SystemExit("not IDLE")
    d.write_param("vmax_frac", 0.35)          # clamp 5.4 V at 31 V: ~120 elec rad/s reachable
    d.write_param("omega_ref", 0.0); d.write_param("control_mode", 1)
    d.request_run(); wait_state(d, ST_RUN); time.sleep(1.0)
    for w_ref in speeds:
        d.write_param("omega_ref", w_ref); time.sleep(abs(w_ref) / 80.0 + 2.0)   # ramp + settle
        C = [capture_now(d, bits("Id", "Iq", "omega_elec", "Vd", "Vq"), decim=8) for _ in range(4)]
        C = {n: np.concatenate([np.array(c[n]) for c in C]) for n in C[0]}
        pts.append({n: float(C[n].mean()) for n in C} | {"ref": w_ref, "w_rms": float(C["omega_elec"].std())})
        p = pts[-1]
        print(f"  ref {w_ref:6.1f}: omega {p['omega_elec']:6.1f} (rms {p['w_rms']:.2f})  Vq {p['Vq']:+.3f}  Iq {p['Iq']:+.3f}  Vd {p['Vd']:+.3f}")
    d.write_param("omega_ref", 0.0); time.sleep(1.5)
W = np.array([p["omega_elec"] for p in pts]); V = np.array([p["Vq"] for p in pts]); I = np.array([p["Iq"] for p in pts])
lam, c = np.polyfit(W, V - RS * I, 1)
res = (V - RS * I) - (lam * W + c)
print(f"lambda = {lam:.5f} V*s (datasheet 0.03867), intercept {c:+.3f} V, fit residual rms {res.std():.3f} V")
print("If it differs from the datasheet by more than a few %, update MOTOR_FLUX_VS in motor_emrax_208.h"
      " (and re-check the flux observer / decoupling).")
save_json("lambda_fit.json", pts)

"""Measure the PM flux linkage lambda from the slope of Vq vs speed (NOT YET RUN -- written 2026-11-06,
bus guard added 2026-11-18). Speed mode at several speeds in an interleaved order; at steady speed the
friction current is ~constant, so Vq = lambda*w + c (c = Rs*Iq + dead-zone residual, ~const) and the
slope is lambda with the dead zone cancelled. MOTOR SPINS up to ~100 rpm.

    python lambda_fit.py [--vbus V] [speeds=40,100,20,80,60,40]

Speeds are elec rad/s and must all have ONE sign: the intercept flips with the friction direction, so
run positive and negative speeds as two separate runs (the two slopes should agree). The repeated
first speed at the end checks drift.

BUS: Vq is a COMMANDED volt. The bridge delivers it only if the bus the control normalizes by
(vbus_ovr when > 0, else the measured bus) is the real DC link, and any bus error lands 1:1 in lambda.
The measured bus is good to +/-1.4 V over 40-200 V (vbuscal 2026-11-07) but reads HIGH below that
(~+1 V at 30 V, ~3 % -- as large as the effect being measured). So:
  * --vbus <metered V>: written to vbus_ovr for the run and restored afterwards. Use it on a < 40 V bench.
  * no --vbus: the script refuses if the measured bus is < 40 V, and refuses if a nonzero vbus_ovr is
    already in force (a stale 31 from an old build is exactly the trap -- confirm it with --vbus).

Datasheet MOTOR_FLUX_VS = 0.03867; bench hints ~0.034 (bring-up H). The decoupling FF, the flux
observer, the back-EMF terms and FAULT_ASC_OMEGA_ELEC all use it."""
import math
import sys
import time
import numpy as np
from _common import (connect, restore, capture_now, bits, wait_state, ST_RUN, RS, LQ, LAM_DATASHEET,
                     save_json)

VBUS_MEASURED_OK_V = 40.0   # bottom of the vbuscal fit range (hw_control_v2.h, 2026-11-07)
VCLAMP_V = 5.4              # PI voltage clamp held in VOLTS at any bus: ~120 elec rad/s reachable


def parse_args(argv):
    vbus, rest, i = None, [], 0
    while i < len(argv):
        a = argv[i]
        if a == "--vbus":
            vbus = float(argv[i + 1]); i += 2; continue
        if a.startswith("--vbus="):
            vbus = float(a.split("=", 1)[1]); i += 1; continue
        if a in ("-h", "--help"):
            print(__doc__); raise SystemExit(0)
        rest.append(a); i += 1
    if len(rest) > 1:
        raise SystemExit(f"unexpected arguments: {rest[1:]}")
    speeds = [float(x) for x in (rest[0] if rest else "40,100,20,80,60,40").split(",")]
    if any(w == 0.0 for w in speeds):
        raise SystemExit("speeds must be nonzero")
    if min(speeds) < 0.0 < max(speeds):
        raise SystemExit("mixed speed signs: the intercept flips with the friction direction -- "
                         "run positive and negative speeds as two separate runs")
    if len(set(speeds)) < 3:
        raise SystemExit("need >= 3 distinct speeds for a slope with a linearity check")
    if vbus is not None and not 10.0 <= vbus <= 250.0:
        raise SystemExit(f"--vbus {vbus} V is outside the bench range 10-250 V")
    return speeds, vbus


def mean_param(d, name, n=20):
    v = []
    for _ in range(n):
        v.append(float(d.read_param(name)))
        time.sleep(0.01)
    return float(np.mean(v))


speeds, vbus_metered = parse_args(sys.argv[1:])
pts = []
meta = {}
with connect() as d, restore(d, "vmax_frac", "control_mode", "omega_ref", "iq_ref", "vbus_ovr"):
    if d.read_param("state") != 0:
        raise SystemExit("not IDLE")

    # ---- bus guard: make sure commanded volts are delivered volts ----
    vb_meas = mean_param(d, "vbus")
    ovr = float(d.read_param("vbus_ovr"))
    if vbus_metered is not None:
        if abs(vbus_metered - vb_meas) > max(3.0, 0.10 * vbus_metered):
            print(f"WARNING: measured bus {vb_meas:.1f} V disagrees with --vbus {vbus_metered:.1f} V by more"
                  " than the sense error -- check the meter and the supply before trusting the result")
        d.write_param("vbus_ovr", vbus_metered)
        ovr = float(d.read_param("vbus_ovr"))
        if abs(ovr - vbus_metered) > 0.05:
            raise SystemExit(f"vbus_ovr write did not take: reads {ovr}")
    elif ovr > 0.0:
        raise SystemExit(f"vbus_ovr = {ovr:g} V is already in force (measured bus {vb_meas:.1f} V). It must"
                         " equal the real supply: pass --vbus <metered V> to confirm it, or set vbus_ovr 0")
    elif vb_meas < VBUS_MEASURED_OK_V:
        raise SystemExit(f"measured bus {vb_meas:.1f} V is below {VBUS_MEASURED_OK_V:.0f} V, where the sense"
                         " reads high (bias lands 1:1 in lambda). Meter the supply and pass --vbus <V>,"
                         " or raise the bench bus")
    vbus_ctrl = ovr if ovr > 0.0 else vb_meas
    src = "vbus_ovr" if ovr > 0.0 else "measured"
    print(f"control bus {vbus_ctrl:.2f} V ({src}); measured {vb_meas:.2f} V")
    meta.update(vbus_ctrl=vbus_ctrl, vbus_src=src, vbus_meas_idle=vb_meas, vbus_ovr=ovr)

    vmax_frac = min(0.35, 2.0 * VCLAMP_V / vbus_ctrl)
    d.write_param("vmax_frac", vmax_frac)          # 0.35 at 31 V; held at ~5.4 V on a higher bus
    d.write_param("omega_ref", 0.0); d.write_param("control_mode", 1)
    d.request_run(); wait_state(d, ST_RUN); time.sleep(1.0)
    for w_ref in speeds:
        d.write_param("omega_ref", w_ref); time.sleep(abs(w_ref) / 80.0 + 2.0)   # ramp + settle
        C = [capture_now(d, bits("Id", "Iq", "omega_elec", "Vd", "Vq", "vbus"), decim=8) for _ in range(4)]
        C = {n: np.concatenate([np.array(c[n]) for c in C]) for n in C[0]}
        pts.append({n: float(C[n].mean()) for n in C} | {"ref": w_ref, "w_rms": float(C["omega_elec"].std())})
        p = pts[-1]
        flag = "  <-- off its ref (clamp-limited?)" if abs(p["omega_elec"] - w_ref) > 3.0 else ""
        print(f"  ref {w_ref:6.1f}: omega {p['omega_elec']:6.1f} (rms {p['w_rms']:.2f})  Vq {p['Vq']:+.3f}"
              f"  Iq {p['Iq']:+.3f}  Vd {p['Vd']:+.3f}  vbus(meas) {p['vbus']:.1f}{flag}")
    d.write_param("omega_ref", 0.0); time.sleep(1.5)

W = np.array([p["omega_elec"] for p in pts]); V = np.array([p["Vq"] for p in pts])
I = np.array([p["Iq"] for p in pts]); Vd = np.array([p["Vd"] for p in pts])
y = V - RS * I
lam, c = np.polyfit(W, y, 1)
res = y - (lam * W + c)
n = len(W)
lam_se = math.sqrt(float(np.sum(res ** 2)) / (n - 2) / float(np.sum((W - W.mean()) ** 2))) if n > 2 else float("nan")
# Offset-error indicator: with Id ~ 0, Vd ~ -w*Lq*Iq + lambda*w*sin(delta) + const.
kd = float(np.polyfit(W, Vd + W * LQ * I, 1)[0])
delta_deg = math.degrees(math.atan2(kd, lam))
vb_run = float(np.mean([p["vbus"] for p in pts]))

print(f"lambda = {lam:.5f} +/- {lam_se:.5f} V*s (datasheet {LAM_DATASHEET}, {100 * (lam / LAM_DATASHEET - 1):+.1f} %),"
      f" intercept {c:+.3f} V, fit residual rms {res.std():.3f} V")
print(f"control bus {vbus_ctrl:.2f} V ({src}); measured during the run {vb_run:.2f} V."
      " A bus error of x % moves lambda by x %.")
print(f"Vd-vs-omega slope {kd:+.5f} V*s -> angle-offset indicator {delta_deg:+.1f} deg elec (~0 expected)")
if src == "vbus_ovr" and abs(vb_run - vbus_ctrl) > max(3.0, 0.10 * vbus_ctrl):
    print("WARNING: the measured bus moved away from vbus_ovr during the run (supply sag?) -- the result"
          " assumes vbus_ovr was the real link throughout")
print("If it differs from the datasheet by more than a few %, update MOTOR_FLUX_VS in motor_emrax_208.h"
      " (and re-check the flux observer / decoupling / FAULT_ASC_OMEGA_ELEC).")
meta.update(lam=float(lam), lam_se=lam_se, intercept=float(c), res_rms=float(res.std()), vd_slope=kd,
            delta_deg=delta_deg, vbus_meas_run=vb_run, vmax_frac=vmax_frac, speeds=speeds)
save_json("lambda_fit.json", {"meta": meta, "points": pts})

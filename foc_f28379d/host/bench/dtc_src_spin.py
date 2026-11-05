"""Dead-time comp sign source while SPINNING: dtc_src 0 (measured) vs 1 (reference). MOTOR SPINS (<= ~100 rpm).
`python dtc_src_spin.py [rounds=2]`. Start from IDLE, calibrated. Each case alternates 0/1/0/1 live, so drift
shows up as a difference between repeats of the same source:
  A  torque mode, voltage-clamped (vmax_frac 0.25, iq_ref 2 A): the current does NOT reach its reference
     (bring-up H: ~1 A at ~100 rpm), so reference and real zero crossings part ways -- the worst case for
     dtc_src 1. The comp that delivers more of the clamped volts gives more speed and current.
  B  speed mode at 30 and 60 elec rad/s (vmax_frac 0.25, kp_w 0.35 / ki_w 0.02): the current tracks its
     reference. Less PI effort (Vd, Vq at the same speed) and less Id/Iq ripple (the dead-time 6th harmonic)
     = better compensation. lambda-free: it compares the two sources at the same speed, no model term.
Captures at decim 8: 102 ms windows, ~1 electrical cycle at 60 rad/s. (2026-11-05, bring-up L)"""
import sys, time
import numpy as np
from _common import connect, restore, capture_now, bits, wait_state, ST_RUN, ST_IDLE, save_json

rounds = int(sys.argv[1]) if len(sys.argv) > 1 else 2
NAMES = ["Id", "Iq", "omega_elec", "Vd", "Vq"]
DECIM, NCAP, SETTLE = 8, 4, 2.0
rows = []


def put(d, n, v):
    st = d.write_param(n, v)
    if st != 0:
        raise RuntimeError(f"write {n}={v} refused (status {st})")


def meas(d, case, src):
    C = [capture_now(d, bits(*NAMES), decim=DECIM) for _ in range(NCAP)]
    X = {n: np.array([c[n] for c in C], dtype=float) for n in NAMES}
    ac = lambda x: float((x - x.mean(1, keepdims=True)).std())  # noqa: E731
    r = dict(case=case, src=src, w=X["omega_elec"].mean(), Id=X["Id"].mean(), Iq=X["Iq"].mean(),
             Vd=X["Vd"].mean(), Vq=X["Vq"].mean(), id_ac=ac(X["Id"]), iq_ac=ac(X["Iq"]), w_ac=ac(X["omega_elec"]))
    print(f"  {case:22s} src {src} | w {r['w']:6.1f} ({r['w'] / 10 * 60 / 2 / np.pi:5.1f} rpm) +-{r['w_ac']:4.1f}"
          f" | Id {r['Id']:+5.2f} Iq {r['Iq']:+5.2f} | Vd {r['Vd']:+.3f} Vq {r['Vq']:+.3f}"
          f" | ripple Id {r['id_ac']:.3f} Iq {r['iq_ac']:.3f} A", flush=True)
    rows.append(r)


def alternate(d, case):
    for _ in range(rounds):
        for src in (0, 1):
            put(d, "dtc_src", src)
            time.sleep(SETTLE)
            meas(d, case, src)


with connect() as d, restore(d, "control_mode", "iq_ref", "omega_ref", "vmax_frac", "kp_w", "ki_w",
                             "dtc_src", "dtc_en", "dtc_ith") as s:
    if d.read_param("state") != ST_IDLE:
        raise SystemExit("start from IDLE")
    if d.read_param("cal_status") & 0xF != 1:
        raise SystemExit("not calibrated (cal_status != 1): calibrate first")
    for n, v in dict(dtc_en=1, dtc_ith=0.5, dtc_src=0, kp_w=0.35, ki_w=0.02, vmax_frac=0.25,
                     control_mode=0, iq_ref=0.0, omega_ref=0.0).items():
        put(d, n, v)
    d.request_run(); wait_state(d, ST_RUN)
    print("A: torque mode, iq_ref 2 A, vmax_frac 0.25 (clamped)", flush=True)
    put(d, "iq_ref", 2.0); time.sleep(3.0)
    alternate(d, "A torque 2 A clamped")
    put(d, "iq_ref", 0.0); time.sleep(2.0)
    put(d, "omega_ref", 0.0); put(d, "control_mode", 1); time.sleep(1.0)
    for ref in (30.0, 60.0):
        print(f"B: speed mode, omega_ref {ref:.0f} elec rad/s", flush=True)
        put(d, "omega_ref", ref); time.sleep(2.0)
        alternate(d, f"B speed {ref:.0f}")
    put(d, "omega_ref", 0.0); time.sleep(1.5)

print("\n  mean per source (1 minus 0):")
for case in dict.fromkeys(r["case"] for r in rows):
    m = {src: {k: np.mean([r[k] for r in rows if r["case"] == case and r["src"] == src])
               for k in ("w", "Iq", "Vd", "Vq", "id_ac", "iq_ac")} for src in (0, 1)}
    dd = {k: m[1][k] - m[0][k] for k in m[0]}
    print(f"  {case:22s} w {m[0]['w']:6.1f} -> {m[1]['w']:6.1f} | Iq {m[0]['Iq']:+.2f} -> {m[1]['Iq']:+.2f}"
          f" | Vd {dd['Vd']:+.3f} Vq {dd['Vq']:+.3f} V | ripple Id {m[0]['id_ac']:.3f} -> {m[1]['id_ac']:.3f}"
          f"  Iq {m[0]['iq_ac']:.3f} -> {m[1]['iq_ac']:.3f}")
save_json("dtc_src_spin.json", rows)

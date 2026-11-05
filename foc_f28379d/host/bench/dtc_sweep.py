"""Dead-time comp sweep while voltage-clamped in torque mode. Points "en:ith[:dtc_v],..." changed live.
`python dtc_sweep.py 0.25 2.0 "1:2,1:1,1:0.5,0:2"`  (vmax_frac, iq_ref, points). MOTOR SPINS ~100 rpm.
NOTE: its "leftover" Vq - Rs*Iq - w*lambda ASSUMES lambda; use it for noise/speed comparisons only and
null dtc_v with id_steps.py (lambda-free). That mistake was made once (bring-up H)."""
import sys, time
import numpy as np
from _common import connect, restore, capture_now, bits, wait_state, ST_RUN, RS, LD, LQ, LAM_DATASHEET, save_json

vmax = float(sys.argv[1]); iq = float(sys.argv[2])
points = [(p.split(":") + [None])[:3] for p in sys.argv[3].split(",")]
NAMES = ["Id", "Iq", "omega_elec", "Vd", "Vq", "Iu", "Iv", "Iw"]
res = []
with connect() as d, restore(d, "dtc_en", "dtc_ith", "dtc_v", "vmax_frac", "control_mode", "iq_ref") as saved:
    d.write_param("control_mode", 0); d.write_param("iq_ref", 0.0); d.write_param("vmax_frac", vmax)
    d.request_run(); wait_state(d, ST_RUN); d.write_param("iq_ref", iq); time.sleep(1.5)
    for en, ith, dv in points:
        d.write_param("dtc_en", int(en)); d.write_param("dtc_ith", float(ith))
        d.write_param("dtc_v", float(dv) if dv else saved["dtc_v"]); time.sleep(2.5)
        w = []
        for _ in range(6): w.append(d.read_param("omega_meas")); time.sleep(0.15)
        C = [capture_now(d, bits(*NAMES), decim=4) for _ in range(3)]
        C = {n: np.concatenate([np.array(c[n]) for c in C]).reshape(3, 128) for n in NAMES}
        om = np.mean(w); Iq = C["Iq"].mean(); Id = C["Id"].mean()
        hf = lambda x: np.std(np.diff(x, axis=1)) / np.sqrt(2)  # noqa: E731
        res.append(dict(en=int(en), ith=float(ith), dv=float(dv) if dv else saved["dtc_v"], om=om,
                        rpm=om / 10 * 60 / 2 / np.pi, Vq=C["Vq"].mean(), Iq=Iq,
                        left=C["Vq"].mean() - RS * Iq - om * LAM_DATASHEET - om * LD * Id, hfd=hf(C["Id"]), hfq=hf(C["Iq"])))
    d.write_param("iq_ref", 0.0)
print(f"vmax_frac {vmax}, iq_ref {iq} A")
for r in res:
    print(f"  dtc {'on ' if r['en'] else 'off'} ith {r['ith']:4.2f} v {r['dv']:.2f} | {r['rpm']:5.1f} rpm | Vq {r['Vq']:+.2f} Iq {r['Iq']:+.2f}"
          f" | leftover(lambda-datasheet) {r['left']:+.2f} V | Id/Iq hf {r['hfd']:.2f}/{r['hfq']:.2f} A")
save_json("dtc_sweep.json", res)

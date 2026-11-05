"""Standstill d-axis current test: dead-time null (lambda-free) + current-loop step response.
`python id_steps.py [levels=2,5,10,5,0] [kp=current] [dtc_v=current]`. Motor energized, should NOT turn
(on this near non-salient machine Id makes ~no torque; it may creep above ~15 A if the offset is off).
Id is set through the step injector (host id_ref is overwritten in RUN) and is NOT bounded by iq_max --
the phase OC trip (oc_trip_a) is the only limit. DC supply current is far below the phase current
(~1.5 x Vd x Id / Vbus). (bring-ups H/J)
Read: leftover Vd - Rs*Id at 2 A should be ~0 (it rises with current: device curve + wiring, fine)."""
import sys, time
import numpy as np
from _common import connect, restore, capture_now, bits, wait_state, wait_trigger, ST_RUN, RS, save_json

levels = [float(x) for x in (sys.argv[1] if len(sys.argv) > 1 else "2,5,10,5,0").split(",")]
KP = float(sys.argv[2]) if len(sys.argv) > 2 else None
DV = float(sys.argv[3]) if len(sys.argv) > 3 else None
NAMES = ["Id", "Iq", "omega_elec", "Vd", "Vq", "Iu", "Iv", "Iw"]
steps, ss = [], []
with connect() as d, restore(d, "kp_d", "kp_q", "dtc_v", "control_mode", "iq_ref", "step_axis", "step_a"):
    if d.read_param("state") != 0: raise SystemExit("not IDLE")
    if KP is not None: d.write_param("kp_d", KP); d.write_param("kp_q", KP)
    if DV is not None: d.write_param("dtc_v", DV)
    d.write_param("control_mode", 0); d.write_param("iq_ref", 0.0); d.write_param("step_axis", 0)
    print("kp_d", d.read_param("kp_d"), "dtc_v", d.read_param("dtc_v"), "dtc_ith", d.read_param("dtc_ith"),
          "oc_trip_a", d.read_param("oc_trip_a"))
    d.request_run(); wait_state(d, ST_RUN); time.sleep(0.5)
    prev = 0.0
    try:
        for lv in levels:
            d.scope_config(decim=1, mask=bits(*NAMES)); d.write_param("step_go", 0); d.write_param("step_pre", 16)
            time.sleep(0.02); d.write_param("step_a", lv); d.write_param("step_go", 1); wait_trigger(d)
            c = d.capture_scope(timeout=2.0, retries=1); C = {n: np.array(c.data[i]) for i, n in enumerate(c.names)}
            steps.append(dict(frm=prev, to=lv, trig=int(d.read_param("trig_idx")), **{n: C[n].tolist() for n in C}))
            d.write_param("step_go", 0); time.sleep(0.4)
            S = [capture_now(d, bits(*NAMES)) for _ in range(3)]
            S = {n: np.concatenate([np.array(s[n]) for s in S]) for n in NAMES}
            ss.append(dict(lv=lv, Id=S["Id"].mean(), Iq=S["Iq"].mean(), Vd=S["Vd"].mean(), Idr=S["Id"].std(),
                           om=d.read_param("omega_meas"), Ipk=max(np.abs(S[n]).max() for n in ("Iu", "Iv", "Iw"))))
            prev = lv
    finally:
        try:   # always drop the injected Id before stopping
            d.write_param("step_go", 0); d.write_param("step_a", 0.0); d.write_param("step_go", 1)
            time.sleep(0.1); d.write_param("step_go", 0)
        except Exception as e: print("Id reset failed:", e)  # noqa: E701
print("  id_ref |    Id     Iq | Id rms |    Vd   | Vd-Rs*Id | |I|ph pk | omega")
for r in ss:
    print(f"  {r['lv']:5.1f}  | {r['Id']:+6.2f} {r['Iq']:+5.2f} | {r['Idr']:.2f}   | {r['Vd']:+.3f}  | {r['Vd'] - RS * r['Id']:+.3f}   | {r['Ipk']:5.1f}   | {r['om']:+.1f}")
for s in steps:
    i = np.array(s["Id"]); t0 = s["trig"]; dd = s["to"] - s["frm"]
    if abs(dd) < 1e-6: continue
    post = ((i - s["frm"]) / dd)[t0:]
    print(f"   step {s['frm']:4.0f}->{s['to']:4.0f} A: rise10-90 {(np.argmax(post >= 0.9) - np.argmax(post >= 0.1)) * 0.1:4.1f} ms"
          f"  overshoot {100 * (post.max() - 1):+5.1f} %  Vd pk {np.abs(s['Vd']).max():.2f} V")
save_json("id_steps.json", dict(steps=steps, ss=ss))

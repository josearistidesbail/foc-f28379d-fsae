"""Speed-mode ramp steps. `python speed_step.py [kp_w=0.35] [ki_w=0.02] [refs=30,60,30,0] [res_w_mode=1]`
refs in ELECTRICAL rad/s (10 pole pairs: 30 = ~29 rpm). MOTOR SPINS. Ramp is SPEED_RAMP_RAD_S2 = 80.
(bring-up I: kp_w 0.35 / ki_w 0.02 with the PLL estimate; kp_w 0.6 also well damped.)"""
import sys, time
import numpy as np
from _common import connect, restore, bits, wait_state, wait_trigger, ST_RUN, save_json

kp = float(sys.argv[1]) if len(sys.argv) > 1 else 0.35
ki = float(sys.argv[2]) if len(sys.argv) > 2 else 0.02
refs = [float(x) for x in (sys.argv[3] if len(sys.argv) > 3 else "30,60,30,0").split(",")]
wmode = int(sys.argv[4]) if len(sys.argv) > 4 else 1
DECIM = 80; DT = DECIM * 1e-4
out = []
with connect() as d, restore(d, "kp_w", "ki_w", "res_w_mode", "vmax_frac", "control_mode", "omega_ref", "iq_ref"):
    if d.read_param("state") != 0: raise SystemExit("not IDLE")
    d.write_param("kp_w", kp); d.write_param("ki_w", ki); d.write_param("res_w_mode", wmode)
    d.write_param("vmax_frac", 0.25); d.write_param("omega_ref", 0.0); d.write_param("control_mode", 1)
    d.scope_config(decim=DECIM, mask=bits("Id", "Iq", "omega_elec", "Vq"))
    d.request_run(); wait_state(d, ST_RUN); time.sleep(1.0); prev = 0.0
    for r in refs:
        d.write_param("step_go", 0); d.write_param("step_pre", 16); time.sleep(0.05)
        d.write_param("omega_ref", r); d.write_param("step_go", 2); wait_trigger(d, 3.0)
        c = d.capture_scope(timeout=2.0, retries=1)
        out.append(dict(frm=prev, to=r, trig=int(d.read_param("trig_idx")), **{n: c.data[i] for i, n in enumerate(c.names)}))
        prev = r; time.sleep(1.0)
    d.write_param("omega_ref", 0.0); time.sleep(1.2)
print(f"kp_w {kp} ki_w {ki} res_w_mode {wmode}, {DT * 1e3:.0f} ms/sample")
for s in out:
    w = np.array(s["omega_elec"]); iq = np.array(s["Iq"]); n = len(w); dl = s["to"] - s["frm"]
    os_ = (w.max() - s["to"]) if dl > 0 else (s["to"] - w.min())
    print(f"  {s['frm']:5.0f} -> {s['to']:5.0f}: final {w[int(.75 * n):].mean():6.1f}  overshoot {os_:+5.1f}"
          f"  ripple {w[int(.75 * n):].std():.2f} rad/s rms | Iq peak {np.abs(iq).max():.2f} A, ss rms {iq[int(.75 * n):].std():.2f}")
save_json("speed_step.json", dict(kp=kp, ki=ki, dt=DT, steps=out))

"""Torque mode at fixed iq_ref, stepping vmax_frac: clamp-limited speed per voltage budget.
`python vmax_steps.py [iq=2] [steps=0.15,0.25,0.35] [dwell=4]`. MOTOR SPINS (~120 rpm at 0.35, 31 V)."""
import sys, time
import numpy as np
from _common import connect, restore, capture_now, bits, wait_state, ST_RUN

iq = float(sys.argv[1]) if len(sys.argv) > 1 else 2.0
steps = [float(x) for x in (sys.argv[2] if len(sys.argv) > 2 else "0.15,0.25,0.35").split(",")]
dwell = float(sys.argv[3]) if len(sys.argv) > 3 else 4.0
with connect() as d, restore(d, "vmax_frac", "control_mode", "iq_ref"):
    vb = d.read_param("vbus_ovr")
    d.write_param("control_mode", 0); d.write_param("iq_ref", 0.0); d.write_param("vmax_frac", steps[0])
    d.request_run(); wait_state(d, ST_RUN); d.write_param("iq_ref", iq)
    for vm in steps:
        d.write_param("vmax_frac", vm); time.sleep(dwell)
        w = np.mean([d.read_param("omega_meas") for _ in range(5)])
        C = capture_now(d, bits("Id", "Iq", "Vd", "Vq"), decim=4)
        print(f"  vmax_frac {vm:.2f} (clamp {vm * vb / 2:.2f} V): omega {w:6.1f} elec rad/s = {w / 10 * 60 / 2 / np.pi:5.1f} rpm"
              f" | Vq {np.mean(C['Vq']):+.2f} Vd {np.mean(C['Vd']):+.2f} | Iq {np.mean(C['Iq']):+.2f} Id {np.mean(C['Id']):+.2f}")
    d.write_param("iq_ref", 0.0); time.sleep(1.0)

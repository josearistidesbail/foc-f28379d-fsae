"""Closed-loop RUN at a fixed reference (default zero): Id/Iq/Vd/Vq noise and clamp margin.
`python run_noise.py [ncap=15] [iq_ref=0]`. Energizes the motor; at iq 0 it should hold still."""
import sys, time
import numpy as np
from _common import connect, restore, capture_now, bits, wait_state, ST_RUN, save_json

ncap = int(sys.argv[1]) if len(sys.argv) > 1 else 15
iq = float(sys.argv[2]) if len(sys.argv) > 2 else 0.0
NAMES = ["Id", "Iq", "Vd", "Vq", "Iu", "Iv", "Iw", "vbus"]
with connect() as d, restore(d, "control_mode", "iq_ref", "id_ref") as saved:
    d.write_param("control_mode", 0); d.write_param("iq_ref", 0.0)
    vmax = d.read_param("vmax_frac") * d.read_param("vbus_ovr") / 2
    d.request_run(); wait_state(d, ST_RUN)
    if iq: d.write_param("iq_ref", iq)
    time.sleep(0.5)
    caps = [capture_now(d, bits(*NAMES)) for _ in range(ncap)]
    om = d.read_param("omega_meas")
    d.write_param("iq_ref", 0.0)
X = {n: np.array([c[n] for c in caps]) for n in NAMES}
print(f"RUN iq_ref {iq} A, omega {om:.1f} elec rad/s, clamp {vmax:.2f} V/axis (vmax_frac x vbus_ovr / 2)")
for n in ("Id", "Iq", "Vd", "Vq"):
    x = X[n]; print(f"  {n}: mean {x.mean():+7.3f}  rms(AC) {(x - x.mean(1, keepdims=True)).std():.3f}  [{x.min():+.3f}, {x.max():+.3f}]")
u, v, w = [X[n].ravel() for n in ("Iu", "Iv", "Iw")]
print(f"  I_alpha {((2*u-v-w)/3).std():.3f}  I_beta {((v-w)/np.sqrt(3)).std():.3f}  zero-seq {((u+v+w)/3).std():.3f} A rms")
for n in ("Vd", "Vq"):
    print(f"  |{n}| >= 98 % of clamp: {100 * np.mean(np.abs(X[n]) >= 0.98 * vmax):.1f} % of samples")
save_json("run_noise.json", {n: X[n].tolist() for n in NAMES})

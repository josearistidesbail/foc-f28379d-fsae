"""Sensorless SHADOW test (Step 12, written 2026-11-18): the resolver commutates (angle_src 0, checked every
point via angle_act); both observers run in shadow and we record theta_err = wrap(theta_est - theta_resolver)
per speed, once with the PLL fed by the flux observer (obs_mode 0) and once by the SMO (obs_mode 1).
MOTOR SPINS in speed mode up to the highest speed given (elec rad/s; 350 = ~334 rpm).

    python sensorless_shadow.py --vbus <real DC link WHILE RUNNING> [speeds=150,250,350,250,150]

--vbus becomes vbus_ovr (restored after): the observers use duty*vbus as the applied voltage, and the
measured bus reads ~+2.5 V high once the bridge switches (bus_sense_split.py, 2026-11-18), which the flux
observer is sensitive to. obs_min_speed is set to 100 (below the lowest speed) so health is reported.
Pass: theta_err mean within +/-0.1 rad (5.7 deg), rms <~0.15 rad (8.6 deg) -- docs/sensorless.md."""
import math, sys, time
import numpy as np
from _common import connect, restore, capture_now, bits, wait_state, ST_RUN, save_json

LAM = 0.0342
a = sys.argv[1:]
vb = None
if "--vbus" in a:
    i = a.index("--vbus"); vb = float(a[i + 1]); del a[i:i + 2]
if vb is None or not 10.0 <= vb <= 250.0:
    raise SystemExit("usage: sensorless_shadow.py --vbus <V> [speeds]")
speeds = [float(x) for x in (a[0] if a else "150,250,350,250,150").split(",")]
if min(abs(s) for s in speeds) <= 100.0:
    raise SystemExit("|speeds| must be > 100 elec rad/s (observer floor for this test)")
if min(speeds) < 0.0 < max(speeds):
    raise SystemExit("one direction per run (the ramp through zero would cross the observer floor)")
wmax = max(abs(s) for s in speeds)
vmax_frac = min(0.95, 2.0 * (1.2 * LAM * wmax + 2.0) / vb)
rows = []


def circ(x):
    x = np.asarray(x)
    m = math.atan2(float(np.mean(np.sin(x))), float(np.mean(np.cos(x))))
    dev = (x - m + np.pi) % (2 * np.pi) - np.pi
    return m, float(np.sqrt(np.mean(dev ** 2)))


with connect() as d, restore(d, "vmax_frac", "control_mode", "omega_ref", "iq_ref", "vbus_ovr",
                             "obs_mode", "obs_min_speed", "angle_src"):
    if d.read_param("state") != 0:
        raise SystemExit("not IDLE")
    d.write_param("angle_src", 0)
    d.write_param("vbus_ovr", vb); d.write_param("vmax_frac", vmax_frac)
    d.write_param("obs_min_speed", 100.0); d.write_param("obs_mode", 0)
    d.write_param("omega_ref", 0.0); d.write_param("control_mode", 1)
    print(f"vbus_ovr {vb} V, vmax_frac {d.read_param('vmax_frac'):.3f}, obs_vsrc {d.read_param('obs_vsrc')}, "
          f"dtc_en {d.read_param('dtc_en')}, obs_rs {d.read_param('obs_rs'):.5f}, obs_ls {d.read_param('obs_ls'):.6f}",
          flush=True)
    d.request_run(); wait_state(d, ST_RUN); time.sleep(0.5)
    d.write_param("isr_cyc_rst", 1)   # after RUN entry: CALIBRATE's blocking offset capture (~205 ms) sets the max
    w_prev = 0.0
    for w in speeds:
        d.write_param("omega_ref", w); time.sleep(abs(w - w_prev) / 80.0 + 1.5); w_prev = w
        for mode in (0, 1):
            d.write_param("obs_mode", mode); time.sleep(0.8)
            if d.read_param("angle_act") != 0:
                raise RuntimeError("observer became the active angle source -- aborting (shadow test only)")
            C = [capture_now(d, bits("theta_err", "omega_elec", "Iq", "Vq"), decim=4) for _ in range(4)]
            C = {n: np.concatenate([np.array(c[n]) for c in C]) for n in C[0]}
            m, r = circ(C["theta_err"])
            row = dict(w_ref=w, mode=mode, omega=float(C["omega_elec"].mean()), Iq=float(C["Iq"].mean()),
                       Vq=float(C["Vq"].mean()), err_mean_deg=math.degrees(m), err_rms_deg=math.degrees(r),
                       **{n: float(d.read_param(n)) for n in ("obs_healthy", "obs_flux_err", "obs_smo_err",
                                                               "obs_dtheta", "omega_est", "pos_status", "obs_resets")})
            rows.append(row)
            print(f"  w {row['omega']:6.1f}  {'flux' if mode == 0 else 'smo ':4s}  theta_err {row['err_mean_deg']:+6.1f} deg"
                  f" (rms {row['err_rms_deg']:4.1f})  healthy {int(row['obs_healthy'])}  flux_err {row['obs_flux_err']:+.2f}"
                  f"  smo_err {row['obs_smo_err']:+.2f}  flux-smo {math.degrees(row['obs_dtheta']):+6.1f} deg"
                  f"  omega_est {row['omega_est']:6.1f}  pos_st 0x{int(row['pos_status']):03x}  Iq {row['Iq']:+.2f}",
                  flush=True)
    d.write_param("omega_ref", 0.0); time.sleep(abs(w_prev) / 80.0 + 1.0)
    cyc = d.read_param("isr_cycles_max")
    print(f"isr_cycles_max {cyc} of 20000 ({100 * cyc / 20000:.0f} %), obs_resets {d.read_param('obs_resets')}")
save_json("sensorless_shadow.json", {"vbus": vb, "rows": rows})

"""First live sensor -> observer -> sensor hand-over (Step 12 bench plan, step 4; written 2026-11-18).
Speed mode at W elec rad/s on the resolver, then angle_src 1 hands commutation to the observer (SMO by
default) for HOLD s, then angle_src 0 hands it back. Both switches are captured with the one-shot trigger
(pos_trig_en) so the 500-tick bumpless blend is visible. MOTOR SPINS (250 elec rad/s = ~239 rpm).

    python handover_test.py --vbus <real DC link WHILE RUNNING> [--auto] [w=250] [hold_s=4] [obs_mode=1]

--auto: angle_src 2 (AUTO) on the resolver, then pos_force_lost 1 -> one-way fail-over (a LOSS switch jumps,
no blend), pos_status 0x063, warn_code 1, RUN continues HOLD s; then ramps to 0 sensorless and expects
FAULT_SENSOR_LOSS + coast once the observer drops below obs_min_speed (150 here), then clears the fault.

Safety: if the observer loses health while it commutates, the supervisor latches position loss ->
FAULT_SENSOR_LOSS -> coast (far below FAULT_ASC_OMEGA_ELEC). On any error the script writes angle_src 0
FIRST, then stops. Pass (docs/sensorless.md): blend decays linearly over 500 ticks, Iq disturbance < 10 %
of its pre-switch level (+ noise), RUN continues, angle_act follows angle_src.
Result 2026-11-18 at 60 V: see CLAUDE.md (SMO shadow 3-5 deg rms at 250-350, flux observer failed)."""
import math, sys, time
import numpy as np
from _common import (connect, restore, capture_now, bits, wait_state, wait_trigger, ST_RUN, ST_FAULT,
                     fault_reason, save_json)

LAM = 0.0342
a = sys.argv[1:]
AUTO = "--auto" in a            # angle_src 2 + pos_force_lost 1: the real fail-over path, then the floor fault
a = [x for x in a if x != "--auto"]
vb = None
if "--vbus" in a:
    i = a.index("--vbus"); vb = float(a[i + 1]); del a[i:i + 2]
if vb is None or not 10.0 <= vb <= 250.0:
    raise SystemExit("usage: handover_test.py --vbus <V> [w=250] [hold_s=4] [obs_mode=1]")
W = float(a[0]) if len(a) > 0 else 250.0
HOLD = float(a[1]) if len(a) > 1 else 4.0
MODE = int(a[2]) if len(a) > 2 else 1
if not 200.0 <= abs(W) <= 400.0:
    raise SystemExit("keep |w| within 200..400 elec rad/s (SMO shadow-tested there on 2026-11-18)")
SW_NAMES = ["Iq", "Id", "theta_elec", "theta_est", "theta_err", "omega_elec"]
out = {"w": W, "vbus": vb, "obs_mode": MODE}


def wrap(x):
    return (np.asarray(x) + np.pi) % (2 * np.pi) - np.pi


def check_run(d, where):
    st = d.read_param("state")
    if st != ST_RUN:
        raise RuntimeError(f"left RUN during {where}: state {st}, fault {fault_reason(d.read_param('fault_code'))},"
                           f" pos_status 0x{int(d.read_param('pos_status')):03x}")


def switch(d, name, value, tag):
    """Write the param that causes the switch with the one-shot armed; return the analysed capture."""
    d.scope_config(decim=4, mask=bits(*SW_NAMES))
    d.write_param("step_go", 0); d.write_param("step_pre", 16); time.sleep(0.05)
    d.write_param(name, value)
    wait_trigger(d, timeout=2.0)
    c = d.capture_scope(timeout=2.0, retries=1)
    t0 = int(d.read_param("trig_idx"))
    d.write_param("step_go", 0)
    C = {n: np.array(c.data[k]) for k, n in enumerate(c.names)}
    act = int(d.read_param("angle_act")); pst = int(d.read_param("pos_status"))
    dev = np.degrees(wrap(C["theta_elec"] - C["theta_est"]))      # commutation angle vs observer
    iq_pre = C["Iq"][:t0]; iq_post = C["Iq"][t0:]
    base, noise = float(iq_pre.mean()), float(iq_pre.std())
    dist = float(np.max(np.abs(iq_post - base)))
    r = dict(tag=tag, trig=t0, angle_act=act, pos_status=pst, iq_pre=base, iq_noise=noise, iq_dist=dist,
             dev_pre=float(dev[:t0].mean()), dev_end=float(dev[-16:].mean()),
             err_pre=float(np.degrees(np.mean(C["theta_err"][:t0]))), samples={n: C[n].tolist() for n in C})
    n_blend = 500 // 4
    print(f"  {tag}: angle_act {act}, pos_status 0x{pst:03x}; theta_elec - theta_est {r['dev_pre']:+6.1f} deg before"
          f" -> {r['dev_end']:+6.1f} deg after {len(dev) - t0} samples (blend = {n_blend}); Iq {base:+.2f} A"
          f" (noise {noise:.2f}), max |dIq| after switch {dist:.2f} A ({100 * dist / max(abs(base), 0.1):.0f} %)",
          flush=True)
    return r


def hold(d, secs, tag):
    t_end = time.monotonic() + secs
    rows = []
    while time.monotonic() < t_end:
        check_run(d, tag)
        c = capture_now(d, bits("theta_err", "Iq", "omega_elec"), decim=8)
        rows.append({n: np.array(c[n]) for n in c})
    te = np.concatenate([x["theta_err"] for x in rows]); iq = np.concatenate([x["Iq"] for x in rows])
    om = np.concatenate([x["omega_elec"] for x in rows])
    m = math.atan2(float(np.mean(np.sin(te))), float(np.mean(np.cos(te))))
    rms = float(np.sqrt(np.mean(wrap(te - m) ** 2)))
    r = dict(tag=tag, err_mean=math.degrees(m), err_rms=math.degrees(rms), iq=float(iq.mean()),
             iq_sd=float(iq.std()), omega=float(om.mean()), omega_sd=float(om.std()),
             angle_act=int(d.read_param("angle_act")), pos_status=int(d.read_param("pos_status")),
             healthy=int(d.read_param("obs_healthy")))
    print(f"  {tag}: theta_err {r['err_mean']:+5.1f} deg (rms {r['err_rms']:4.1f}), omega {r['omega']:6.1f}"
          f" (sd {r['omega_sd']:.2f}), Iq {r['iq']:+.2f} (sd {r['iq_sd']:.2f}), angle_act {r['angle_act']},"
          f" healthy {r['healthy']}, pos_status 0x{r['pos_status']:03x}", flush=True)
    return r


with connect() as d, restore(d, "vmax_frac", "control_mode", "omega_ref", "iq_ref", "vbus_ovr", "obs_mode",
                             "obs_min_speed", "angle_src", "pos_trig_en", "step_pre", "pos_force_lost"):
    if d.read_param("state") != 0:
        raise SystemExit("not IDLE")
    d.write_param("angle_src", 2 if AUTO else 0); d.write_param("pos_trig_en", 0)
    d.write_param("vbus_ovr", vb); d.write_param("vmax_frac", min(0.95, 2.0 * (1.2 * LAM * abs(W) + 2.0) / vb))
    d.write_param("obs_mode", MODE); d.write_param("obs_min_speed", 150.0)
    d.write_param("omega_ref", 0.0); d.write_param("control_mode", 1)
    d.request_run(); wait_state(d, ST_RUN); time.sleep(0.5)
    try:
        d.write_param("omega_ref", W); time.sleep(abs(W) / 80.0 + 2.0)
        out["pre"] = hold(d, 1.5, "on resolver  ")
        if not out["pre"]["healthy"]:
            raise RuntimeError("observer not healthy before the hand-over -- not switching")
        d.write_param("pos_trig_en", 1)
        if AUTO:
            if d.read_param("angle_act") != 0:
                raise RuntimeError("AUTO already failed over before the forced loss")
            out["to_obs"] = switch(d, "pos_force_lost", 1, "LOSS -> OBS  ")
            check_run(d, "fail-over")
            out["sensorless"] = hold(d, HOLD, "SENSORLESS   ")
            out["warn_code"] = int(d.read_param("warn_code"))
            print(f"  warn_code {out['warn_code']} (1 = SENSORLESS_FAILOVER); pos_status 0x"
                  f"{int(d.read_param('pos_status')):03x} (expect 0x063)", flush=True)
            # Floor test: ramp toward 0 sensorless -> below obs_min_speed the observer drops health ->
            # FAULT_SENSOR_LOSS -> coast (gate_en bit0 = master enable drops).
            d.write_param("omega_ref", 0.0)
            t1 = time.monotonic(); last = None
            while time.monotonic() - t1 < 8.0:
                st = d.read_param("state")
                if st == ST_FAULT:
                    out["floor"] = dict(fault=int(d.read_param("fault_code")), pos_status=int(d.read_param("pos_status")),
                                        gate_en=int(d.read_param("gate_en")), omega_last=last)
                    f = out["floor"]
                    print(f"  FLOOR: FAULT {fault_reason(f['fault'])} (0x{f['fault']:02x}) at ~{last} elec rad/s, pos_status"
                          f" 0x{f['pos_status']:03x}, gate_en {f['gate_en']} ({'coast' if not f['gate_en'] & 1 else 'ACTIVE SHORT'})",
                          flush=True)
                    break
                last = round(float(d.read_param("omega_meas")), 1)
                time.sleep(0.03)
            else:
                print("  FLOOR: no fault within 8 s of ramping to 0 (unexpected)", flush=True)
            time.sleep(1.0)
            d.clear_fault(); time.sleep(0.4)
            if d.read_param("state") == ST_FAULT:
                d.clear_fault(); time.sleep(0.4)
            print(f"  after clearfault: state {d.read_param('state')}, fault {fault_reason(d.read_param('fault_code'))},"
                  f" warn_code {d.read_param('warn_code')}, pos_status 0x{int(d.read_param('pos_status')):03x}", flush=True)
        else:
            out["to_obs"] = switch(d, "angle_src", 1, "-> OBSERVER  ")
            check_run(d, "hand-over")
            out["sensorless"] = hold(d, HOLD, "SENSORLESS   ")
            out["to_sns"] = switch(d, "angle_src", 0, "-> RESOLVER  ")
            check_run(d, "hand-back")
            out["post"] = hold(d, 1.5, "on resolver  ")
    finally:
        try:
            d.write_param("angle_src", 0); d.write_param("pos_trig_en", 0); d.write_param("pos_force_lost", 0)
        except Exception as e:  # noqa: BLE001
            print("angle_src reset failed:", e)
        try:
            if d.read_param("state") == ST_RUN:
                d.write_param("omega_ref", 0.0); time.sleep(abs(W) / 80.0 + 1.0)
            else:
                print(f"state {d.read_param('state')}, fault {fault_reason(d.read_param('fault_code'))},"
                      f" pos_status 0x{int(d.read_param('pos_status')):03x}, warn {d.read_param('warn_code')}")
        except Exception as e:  # noqa: BLE001
            print("ramp-down failed:", e)
save_json("failover_test.json" if AUTO else "handover_test.json", out)

"""Software fault paths while RUNNING (written 2026-11-18). Speed mode at W elec rad/s (default 60 = ~57 rpm),
then one trip at a time; each must give FOC_FAULT with the expected fault bit and COAST (below
FAULT_ASC_OMEGA_ELEC: gate_en bit0 = master enable drops), then clearfault -> IDLE. MOTOR SPINS, then coasts.

    python fault_paths.py --vbus <real DC link WHILE RUNNING> [w=60] [tests=loss,oc,uv]

  loss  angle_src 0 + pos_force_lost 1 (no observer fail-over)     -> FAULT_SENSOR_LOSS  0x20
  oc    oc_trip_a 0.5 A, below the ~1 A friction phase current        -> FAULT_OVERCURRENT  0x01, tz_trip unchanged
  uv    uv_en 1 + uv_trip_v above the control bus (2 ms debounce)     -> FAULT_UNDERVOLTAGE 0x04
Every trigger param is put back right after its test, before the fault is cleared."""
import sys, time
from _common import connect, restore, wait_state, ST_RUN, ST_FAULT, ST_IDLE, fault_reason, save_json

a = sys.argv[1:]
vb = None
if "--vbus" in a:
    i = a.index("--vbus"); vb = float(a[i + 1]); del a[i:i + 2]
if vb is None or not 10.0 <= vb <= 250.0:
    raise SystemExit("usage: fault_paths.py --vbus <V> [w=60] [tests=loss,oc,uv]")
W = float(a[0]) if len(a) > 0 else 60.0
TESTS = (a[1] if len(a) > 1 else "loss,oc,uv").split(",")
if not 20.0 <= abs(W) <= 150.0:
    raise SystemExit("keep |w| within 20..150 elec rad/s for these trips")
EXPECT = {"loss": 0x20, "oc": 0x01, "uv": 0x04}
results = []

with connect() as d, restore(d, "vmax_frac", "control_mode", "omega_ref", "iq_ref", "vbus_ovr", "oc_trip_a",
                             "uv_trip_v", "uv_en", "pos_force_lost", "angle_src"):
    if d.read_param("state") != ST_IDLE:
        raise SystemExit("not IDLE")
    oc0, uv0, uven0 = d.read_param("oc_trip_a"), d.read_param("uv_trip_v"), d.read_param("uv_en")
    d.write_param("angle_src", 0); d.write_param("vbus_ovr", vb); d.write_param("vmax_frac", min(0.95, 12.0 / vb))
    for t in TESTS:
        d.write_param("omega_ref", 0.0); d.write_param("control_mode", 1)
        d.request_run(); wait_state(d, ST_RUN); d.write_param("omega_ref", W); time.sleep(abs(W) / 80.0 + 2.0)
        tz0 = int(d.read_param("tz_trip")); w0 = float(d.read_param("omega_meas"))
        try:
            if t == "loss":
                d.write_param("pos_force_lost", 1)
            elif t == "oc":
                d.write_param("oc_trip_a", 0.5)
            elif t == "uv":
                d.write_param("uv_en", 1); d.write_param("uv_trip_v", vb + 5.0)
            else:
                raise SystemExit(f"unknown test {t}")
            t1 = time.monotonic()
            while d.read_param("state") != ST_FAULT and time.monotonic() - t1 < 2.0:
                time.sleep(0.01)
            dt = time.monotonic() - t1
            st = int(d.read_param("state")); fc = int(d.read_param("fault_code"))
            ge = int(d.read_param("gate_en")); tz = int(d.read_param("tz_trip"))
        finally:   # undo the trigger BEFORE clearing, or the fault re-latches at once
            d.write_param("pos_force_lost", 0); d.write_param("oc_trip_a", oc0)
            d.write_param("uv_trip_v", uv0); d.write_param("uv_en", uven0)
        ok = st == ST_FAULT and fc == EXPECT[t] and not (ge & 1) and tz == tz0
        r = dict(test=t, omega=w0, state=st, fault=fc, gate_en=ge, tz_before=tz0, tz_after=tz, latency_s=dt, ok=ok)
        results.append(r)
        print(f"  {t:5s} @ {w0:6.1f} rad/s: state {st}, fault {fault_reason(fc)} (0x{fc:02x}, expect 0x{EXPECT[t]:02x}),"
              f" gate_en {ge} ({'coast' if not ge & 1 else 'GATE STILL ON'}), tz_trip {tz0}->{tz},"
              f" ~{dt * 1000:.0f} ms incl. polling -> {'PASS' if ok else 'CHECK'}", flush=True)
        time.sleep(2.5)                                 # let the rotor coast down
        for _ in range(2):
            if d.read_param("state") == ST_FAULT:
                d.clear_fault(); time.sleep(0.4)
        st2 = d.read_param("state")
        print(f"        clearfault -> state {st2}, fault {fault_reason(d.read_param('fault_code'))}", flush=True)
        if st2 != ST_IDLE:
            raise SystemExit("could not clear back to IDLE -- stopping the sequence")
save_json("fault_paths.json", results)

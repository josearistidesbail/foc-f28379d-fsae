#!/usr/bin/env python3
"""False-trip check for the QEP fast frozen-counter detector: encoder CONNECTED, AUTO mode,
speed steps + hard torque bursts. Any qep_fast_trips increment / fail-over is a false positive."""
import sys, time
sys.path.insert(0, __import__("os").path.join(__import__("os").path.dirname(__import__("os").path.abspath(__file__)), ".."))  # kit scripts/ (bench_capture)
import bench_capture as bc   # noqa: E402

W_HI, W_LO, IQ_BURST = 1400.0, 450.0, 3.0


def watch(b, label):
    t = int(b.r("qep_fast_trips")); a = int(b.r("angle_act")); wc = int(b.r("warn_code"))
    st = b.state(); ps = int(b.r("pos_status")); w = float(b.r("omega_meas"))
    print(f"  {label:28s} w {w:7.1f}  trips {t}  angle_act {a}  warn 0x{wc:04X}  pos_status 0x{ps:04X}  "
          f"state {bc.FocDebug.state_name(st)}", flush=True)
    if st == bc.ST_FAULT:
        raise RuntimeError("FAULT: " + b.fault_text())
    if t or a or wc:
        raise RuntimeError("FALSE POSITIVE (detector or fail-over fired with the encoder connected)")


def settle(b, w, tmo=10.0):
    b.w("omega_ref", w)
    t0 = time.monotonic()
    while time.monotonic() - t0 < tmo:
        if abs(float(b.r("omega_meas")) - w) < 0.03 * w + 5:
            return
        if b.state() == bc.ST_FAULT:
            raise RuntimeError("FAULT: " + b.fault_text())
        time.sleep(0.05)
    raise RuntimeError(f"no settle at {w}")


def main():
    b = bc.Bench(None)
    try:
        b.preflight()
        b.w("obs_mode", bc.OBS_SMO)
        b.w("angle_src", bc.SRC_SENSOR)
        b.run_speed(600)
        b.w("angle_src", bc.SRC_SENSOR)
        time.sleep(0.3)
        watch(b, "SENSOR-only at 600")
        for w in (1400, 450, 1450, 350, 1000):
            settle(b, w); time.sleep(0.3); watch(b, f"speed step -> {w}")
        # hard torque bursts: max accel / braking the bench allows
        b.to_torque_hold()
        iq0 = float(b.r("iq_ref"))
        for k in range(3):
            b.w("iq_ref", iq0 + IQ_BURST)
            t0 = time.monotonic()
            while float(b.r("omega_meas")) < W_HI and time.monotonic() - t0 < 1.0:
                time.sleep(0.005)
            b.w("iq_ref", iq0 - IQ_BURST)
            t0 = time.monotonic()
            while float(b.r("omega_meas")) > W_LO and time.monotonic() - t0 < 1.0:
                time.sleep(0.005)
            b.w("iq_ref", iq0)
            time.sleep(0.3)
            watch(b, f"torque burst {k+1} (+/-{IQ_BURST} A)")
        # reverse-going check is not needed: the detector is direction-agnostic (|delta count|)
        b.w("control_mode", bc.MODE_SPEED)
        settle(b, 600); time.sleep(0.3); watch(b, "back to SPEED 600")
        print("PASS: no false trip, no fail-over")
    finally:
        b.shutdown()


if __name__ == "__main__":
    main()

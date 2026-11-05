"""Read device params. `python status.py [--clear] [name ...]` (--clear sends clearfault first).
Every FE_UFPR 4.0 power-up boots into FAULT 0x11 (tz_trip 1): clear once, sometimes twice."""
import sys, time
from _common import connect, fault_reason

DEFAULT = ["state", "fault_code", "tz_trip", "module_fault", "gate_en", "iloop_en", "align_id_a",
           "vbus", "vbus_raw", "vbus_ovr", "vmax_frac", "iq_max", "oc_trip_a", "kp_d", "kp_q",
           "dtc_en", "dtc_v", "dtc_ith", "kp_w", "ki_w", "res_w_mode", "phase_id_status",
           "cal_status", "align_offset", "align_delta", "res_mag", "omega_meas"]
args = sys.argv[1:]
clear = "--clear" in args
names = [a for a in args if a != "--clear"] or DEFAULT
with connect() as d:
    if clear:
        d.clear_fault(); time.sleep(0.3)
    for n in names:
        try:
            v = d.read_param(n)
        except Exception as e:  # noqa: BLE001
            v = f"ERR {e}"
        print(f"{n:16s} {v}" + (f"  ({fault_reason(v)})" if n == "fault_code" and isinstance(v, int) else ""))

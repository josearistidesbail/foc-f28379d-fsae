"""Calibrate (ALIGN) at one or more align_id_a values and report the result. Restores align_id_a.
`python calibrate.py [amps=8[,5,3]]`. MOTOR TURNS ~33 s per calibration. (bring-up K)
Healthy: phase_id_status 1, cal_status 1, offset ~106.6-107.3 deg elec, I*sin(delta) ~0.83 A."""
import sys, time, math
from _common import connect, restore, fault_reason, ST_FAULT

amps = [float(x) for x in (sys.argv[1] if len(sys.argv) > 1 else "8").split(",")]
with connect() as d, restore(d, "align_id_a"):
    for a in amps:
        if d.read_param("state") == ST_FAULT:
            d.clear_fault(); time.sleep(0.3)
        d.write_param("align_id_a", a)
        d.request_align(); t0 = time.monotonic(); seen = []
        while time.monotonic() - t0 < 60:
            st = d.read_param("state")
            if not seen or seen[-1] != st: seen.append(st)
            if st in (0, 4) and len(seen) > 1: break
            time.sleep(0.2)
        r = {n: d.read_param(n) for n in ("fault_code", "phase_id_status", "phase_id_mod", "isense_map",
                                          "isense_inv", "cal_status", "align_offset", "align_delta", "res_mag")}
        print(f"align_id_a {a:4.1f} A ({time.monotonic() - t0:.0f} s, states {seen}): fault {fault_reason(r['fault_code'])}, "
              f"phase_id {r['phase_id_status']} (map {r['isense_map']} inv {r['isense_inv']}, mod {r['phase_id_mod']:.4f}), "
              f"cal {r['cal_status']}, offset {r['align_offset']:.2f} deg, delta {r['align_delta']:.1f} deg "
              f"-> I*sin(delta) {a * math.sin(math.radians(r['align_delta'])):.2f} A")

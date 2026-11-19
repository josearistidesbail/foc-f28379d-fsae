"""Split the RUN-time DC-bus sense error by cause (written 2026-11-18). The measured bus read +2.9 V high in
RUN at 31 V (firmware 33.5 V, meter 30.6 V) but only +0.35 V in IDLE. Fixed 25 s windows; the operator
reads a multimeter ON THE DC LINK in the middle of each window and notes it:

  W1   0- 25 s  IDLE, gate off                 (silent)                    -> idle baseline
  W2  25- 50 s  IDLE, gate enable, all six LOW (silent, board LED D9 on)   -> gate-driver supply load
                (only if module_faults_en = 0; otherwise W2 = W1 again)
  W3  50- 75 s  RUN torque, iq 0               (PWM hiss, rotor still)     -> switching, ~no current
  W4  75-100 s  RUN standstill Id 10 A         (hiss, rotor still)         -> phase current, little DC power
  W5 100-125 s  RUN speed +20 elec rad/s       (slow spin)                 -> DC power, low
  W6 125-150 s  RUN speed +100 elec rad/s      (~95 rpm)                   -> DC power, high

MOTOR TURNS in W5-W6. `python bus_sense_split.py --vbus V [--short]`: V = the METERED idle DC link (used as
the control bus in the RUN windows and to normalize the W5/W6 Vq points). --short stops after W3 (50 s,
rotor still): repeat it at a higher bus to tell a fixed offset from a gain error.
Result 2026-11-18 at 31 V: +0.5 V idle, +3.0 V as soon as the bridge switches, independent of current/power.
Prints the firmware's measured bus (filtered "vbus" + raw code) per window, plus Id/Iq/Vd/Vq/omega in RUN.
Compare against the meter readings: the error per window tells gate-enable vs switching vs current vs power.
W5/W6 give two lambda points at a KNOWN bus: Vq_delivered = Vq_cmd * V_meter / vbus_ovr."""
import sys, time
import numpy as np
from _common import connect, restore, capture_now, bits, wait_state, wait_trigger, ST_RUN, ST_FAULT, fault_reason, save_json

WIN = 25.0
vbus_ctrl = None
a = sys.argv[1:]
SHORT = "--short" in a          # W1-W3 only (idle vs zero-torque RUN, rotor still): offset-vs-gain at another bus
a = [x for x in a if x != "--short"]
if len(a) == 2 and a[0] == "--vbus":
    vbus_ctrl = float(a[1])
elif len(a) == 1 and a[0].startswith("--vbus="):
    vbus_ctrl = float(a[0].split("=", 1)[1])
if vbus_ctrl is None or not 10.0 <= vbus_ctrl <= 250.0:
    raise SystemExit("usage: bus_sense_split.py --vbus <metered idle DC-link V>")

rows = []


def sample(d, t_end, tag, run):
    """Poll the measured bus until t_end; in RUN also take 4 coherent captures mid-window."""
    vb, raw = [], []
    caps = None
    t_cap = time.monotonic() + max(0.0, (t_end - time.monotonic()) / 2 - 1.0)
    while time.monotonic() < t_end - 0.3:
        if d.read_param("state") == ST_FAULT:
            raise RuntimeError(f"FAULT in {tag}: {fault_reason(d.read_param('fault_code'))}")
        vb.append(float(d.read_param("vbus"))); raw.append(float(d.read_param("vbus_raw")))
        if run and caps is None and time.monotonic() >= t_cap:
            C = [capture_now(d, bits("Id", "Iq", "omega_elec", "Vd", "Vq"), decim=8) for _ in range(4)]
            caps = {n: float(np.mean(np.concatenate([np.array(c[n]) for c in C]))) for n in C[0]}
        time.sleep(0.02)
    r = {"win": tag, "vbus": float(np.mean(vb)), "vbus_sd": float(np.std(vb)), "raw": float(np.mean(raw)),
         "n": len(vb)} | (caps or {})
    rows.append(r)
    extra = (f"  Id {r['Id']:+6.2f} Iq {r['Iq']:+5.2f} Vd {r['Vd']:+.3f} Vq {r['Vq']:+.3f} omega {r['omega_elec']:+6.1f}"
             if caps else "")
    print(f"  {tag:34s} fw vbus {r['vbus']:6.2f} V (sd {r['vbus_sd']:.2f}, raw {r['raw']:6.1f}, n {r['n']}){extra}",
          flush=True)


def set_id(d, amps):
    d.write_param("step_go", 0); d.write_param("step_axis", 0); d.write_param("step_a", float(amps))
    d.write_param("step_go", 1); wait_trigger(d); d.write_param("step_go", 0)


with connect() as d, restore(d, "vmax_frac", "control_mode", "omega_ref", "iq_ref", "vbus_ovr",
                             "step_axis", "step_a", "gate_en_dbg"):
    if d.read_param("state") != 0:
        raise SystemExit("not IDLE")
    mfe = int(d.read_param("module_faults_en"))
    ged0 = d.read_param("gate_en_dbg")
    t0 = time.monotonic()
    w = lambda k: t0 + WIN * k  # noqa: E731
    print(f"start; windows of {WIN:.0f} s from now (module_faults_en {mfe})", flush=True)
    try:
        sample(d, w(1), "W1 IDLE gate off", False)
        if mfe == 0:
            d.write_param("gate_en_dbg", 3); time.sleep(0.2)
            tag = f"W2 IDLE gate on all-LOW (gate_en {d.read_param('gate_en')})"
        else:
            tag = "W2 IDLE gate off (protection on, skipped)"
        sample(d, w(2), tag, False)
        if mfe == 0:
            d.write_param("gate_en_dbg", ged0)
        d.write_param("vbus_ovr", vbus_ctrl); d.write_param("vmax_frac", min(0.35, 2.0 * 5.4 / vbus_ctrl))
        d.write_param("control_mode", 0); d.write_param("iq_ref", 0.0); d.write_param("omega_ref", 0.0)
        d.request_run(); wait_state(d, ST_RUN)
        sample(d, w(3), "W3 RUN torque iq 0", True)
        if SHORT:
            raise StopIteration
        set_id(d, 10.0)
        sample(d, w(4), "W4 RUN standstill Id 10 A", True)
        set_id(d, 0.0)
        d.write_param("omega_ref", 0.0); d.write_param("control_mode", 1); d.write_param("omega_ref", 20.0)
        time.sleep(2.0)
        sample(d, w(5), "W5 RUN speed +20", True)
        d.write_param("omega_ref", 100.0); time.sleep(2.0)
        sample(d, w(6), "W6 RUN speed +100", True)
        d.write_param("omega_ref", 0.0); time.sleep(1.5)
    except StopIteration:
        pass
    finally:
        try:
            if d.read_param("state") == ST_RUN:
                set_id(d, 0.0)
        except Exception as e:  # noqa: BLE001
            print("Id reset failed:", e)
print(f"done after {time.monotonic() - t0:.0f} s; control bus was vbus_ovr {vbus_ctrl} V in W3-W6")
save_json("bus_sense_split.json", {"vbus_ctrl": vbus_ctrl, "rows": rows})

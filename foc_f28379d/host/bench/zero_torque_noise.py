"""Zero-torque audible noise: which sensor feeds it?  `python zero_torque_noise.py [ncap=10] [dwell_s=3]`
Energizes the motor at iq_ref 0 (torque mode); it should hold still. Start from IDLE, calibrated.
Steps LIVE params, dwelling dwell_s on each so you can LISTEN, then captures coherent windows:
  IDLE floor -> RUN base -> res_filt off -> dtc_ith x2 -> dtc_ith x4 -> dtc off -> dtc_src reference
  (firmware with the dtc_src param) -> base again -> kp / 2
Columns (300-5000 Hz band unless noted; fs 10 kHz, 128-sample windows, rms per axis):
  th     theta_elec noise [elec deg rms, all frequencies]
  I_ab   measured alpha/beta current [A]. RUN well above the IDLE floor = REAL current the loop is making
  V_pi   current-PI output Vd/Vq [V]          = current-sensor noise x kp
  V_dtc  dead-time comp, rebuilt from Iu/Iv/Iw [V] = current-sensor noise x k*vbus/dtc_ith (inside the ramp)
  V_th   angle path bound |Vdq| x theta noise [V] (at zero torque Park/IPARK only rotate ~zero vectors)
The 10 kHz PWM carrier is synchronous with the ADC (aliases to DC): judge that whine by ear.
READ V_dtc, NOT I_ab, for the hiss (bench 2026-11-05): the ADC samples once per period and sees only the
period-average current. The measured-sign comp put 0.29 V rms of per-period duty noise on the bridge and the
average current hardly moved (0.100 vs 0.097 A, floor 0.094) -- yet it was clearly audible: random line-to-line
pulses every period modulate the carrier ripple into a 5-15 kHz hiss the samples cannot see."""
import sys, time
import numpy as np
from _common import connect, restore, capture_now, bits, wait_state, stop, ST_RUN, ST_IDLE, save_json

ncap = int(sys.argv[1]) if len(sys.argv) > 1 else 10
dwell = float(sys.argv[2]) if len(sys.argv) > 2 else 3.0
FS, LO, HI = 1e4, 300.0, 4999.0
ITH_BASE = 0.5   # DTC_ITH_A on FE_UFPR 4.0 (hw_control_v2.h): the boot ramp width
NAMES = ["Id", "Iq", "Vd", "Vq", "Iu", "Iv", "Iw", "theta_elec"]


def band(x):
    """rms in [LO, HI] Hz per window (Hann, mean removed), averaged over windows."""
    x = x - x.mean(-1, keepdims=True)
    w = np.hanning(x.shape[-1])
    X = np.fft.rfft(x * w, axis=-1)
    f = np.fft.rfftfreq(x.shape[-1], 1 / FS)
    p = 2 * np.abs(X[..., (f >= LO) & (f <= HI)]) ** 2 / (x.shape[-1] * np.sum(w ** 2))
    return float(np.sqrt(p.sum(-1).mean()))


def clarke(u, v, w):
    return (2 * u - v - w) / 3, (v - w) / np.sqrt(3)


def measure(d, tag):
    C = [capture_now(d, bits(*NAMES)) for _ in range(ncap)]
    X = {n: np.array([c[n] for c in C], dtype=float) for n in NAMES}
    th = X["theta_elec"]
    th0 = np.angle(np.exp(1j * th).mean(-1, keepdims=True))
    th_rms = float(np.angle(np.exp(1j * (th - th0))).std())
    ia, ib = clarke(X["Iu"], X["Iv"], X["Iw"])
    r = dict(tag=tag, th_deg=np.degrees(th_rms), I_ab=np.hypot(band(ia), band(ib)) / np.sqrt(2),
             V_pi=np.hypot(band(X["Vd"]), band(X["Vq"])) / np.sqrt(2),
             V_th=float(np.hypot(X["Vd"].mean(), X["Vq"].mean()) * th_rms),
             om=d.read_param("omega_meas"), V_dtc=0.0)
    src_ref = "dtc_src" in NAMES_ON_DEVICE and d.read_param("dtc_src") == 1
    if d.read_param("state") == ST_RUN and d.read_param("dtc_en") and not src_ref:
        vb = d.read_param("vbus_ovr") or d.read_param("vbus")
        k = d.read_param("dtc_duty") + d.read_param("dtc_v") / vb
        ith = d.read_param("dtc_ith")
        z = (X["Iu"] + X["Iv"] + X["Iw"]) / 3
        v = [k * vb * np.clip((X[n] - z) / ith, -1, 1) for n in ("Iu", "Iv", "Iw")]
        va, vbeta = clarke(*v)
        r["V_dtc"] = np.hypot(band(va), band(vbeta)) / np.sqrt(2)
    if d.read_param("state") != ST_RUN:
        r["V_pi"] = r["V_th"] = 0.0            # gate off: PI outputs are held at 0
    print(f"  {tag:30s} {r['th_deg']:6.2f} {r['I_ab']:7.3f} {r['V_pi']:7.3f} {r['V_dtc']:7.3f}"
          f" {r['V_th']:7.4f}   omega {r['om']:+6.1f}", flush=True)
    return r


def put(d, n, v):
    st = d.write_param(n, v)
    if st != 0:
        raise RuntimeError(f"write {n}={v} refused (status {st})")


def step(d, tag, changes):
    for n, v in changes.items():
        put(d, n, v)
    print(f"  -- {tag}: listen ({dwell:.0f} s)", flush=True)
    time.sleep(dwell)
    return measure(d, tag)


rows = {}
NAMES_ON_DEVICE = set()
with connect() as d:
    NAMES_ON_DEVICE.update(p.name for p in d.list_params(refresh=False))
    extra = ["dtc_src"] if "dtc_src" in NAMES_ON_DEVICE else []
    with restore(d, "control_mode", "iq_ref", "dtc_en", "dtc_ith", "res_filt_en", "kp_d", "kp_q", *extra) as s:
        if d.read_param("state") != ST_IDLE:
            raise SystemExit("start from IDLE (stopped, fault cleared, calibrated)")
        if d.read_param("cal_status") & 0xF != 1:
            raise SystemExit("not calibrated (cal_status != 1): calibrate first -- a RUN request would align, motor turns")
        # The base is the LOUD case on purpose: comp on, measured sign, boot ramp width, filter on.
        # Whatever the GUI left is put back at the end by restore().
        base = {"dtc_en": 1, "dtc_ith": ITH_BASE, "res_filt_en": 1, **{n: 0 for n in extra}}
        for n, v in base.items():
            put(d, n, v)
        print("  base: " + ", ".join(f"{n} {d.read_param(n):g}" for n in ("dtc_en", "dtc_src", "dtc_ith", "dtc_v",
              "res_filt_en", "kp_d", "kp_q") if n in NAMES_ON_DEVICE)
              + f"  (was: {', '.join(f'{n} {s[n]:g}' for n in base)})")
        print(f"  {'step':30s} {'th':>6s} {'I_ab':>7s} {'V_pi':>7s} {'V_dtc':>7s} {'V_th':>7s}"
              f"   [deg / A / V rms, {LO:.0f}-{HI + 1:.0f} Hz]")
        rows["floor"] = measure(d, "IDLE floor (gate off)")
        put(d, "control_mode", 0); put(d, "iq_ref", 0.0)
        d.request_run(); wait_state(d, ST_RUN)
        rows["base"] = step(d, "RUN base", {})
        rows["filt"] = step(d, "res_filt off (angle noise up)", {"res_filt_en": 0})
        rows["ith2"] = step(d, f"dtc_ith {2 * ITH_BASE:.2f} (DTC gain /2)",
                            {"res_filt_en": 1, "dtc_ith": 2 * ITH_BASE})
        rows["ith4"] = step(d, f"dtc_ith {4 * ITH_BASE:.2f} (DTC gain /4)", {"dtc_ith": 4 * ITH_BASE})
        rows["off"] = step(d, "dtc off", {"dtc_ith": ITH_BASE, "dtc_en": 0})
        if extra:
            rows["src"] = step(d, "dtc_src 1 (reference sign)", {"dtc_en": 1, "dtc_src": 1})
        rows["again"] = step(d, "RUN base again", base)
        stop(d); wait_state(d, ST_IDLE)                       # kp_d/kp_q are NEEDS_IDLE
        put(d, "kp_d", s["kp_d"] / 2); put(d, "kp_q", s["kp_q"] / 2)
        d.request_run(); wait_state(d, ST_RUN)
        rows["kp"] = step(d, f"kp {s['kp_q'] / 2:.2f} (PI noise gain /2)", {})

x = lambda k: rows[k]["I_ab"] / rows["base"]["I_ab"]  # noqa: E731
print(f"\n  real-vs-sensor: RUN I_ab / IDLE floor = {rows['base']['I_ab'] / rows['floor']['I_ab']:.1f}x")
print(f"  angle test:  theta x{rows['filt']['th_deg'] / rows['base']['th_deg']:.1f} -> I_ab x{x('filt'):.2f}")
print(f"  DTC test:    V_dtc {rows['base']['V_dtc']:.3f} V base -> {rows['ith2']['V_dtc']:.3f} (ith x2),"
      f" {rows['ith4']['V_dtc']:.3f} (x4), 0 (off / dtc_src reference) -- this is the audible part")
print(f"               I_ab x{x('ith2'):.2f} (ith x2), x{x('ith4'):.2f} (x4), x{x('off'):.2f} (off)"
      + (f", x{x('src'):.2f} (dtc_src reference)" if "src" in rows else "")
      + "  (period-average only: blind to the carrier-ripple hiss)")
print(f"  PI test:     I_ab x{x('kp'):.2f} (kp /2)")
print(f"  drift:       base again / base = {x('again'):.2f}")
save_json("zero_torque_noise.json", rows)

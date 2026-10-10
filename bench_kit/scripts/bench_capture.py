#!/usr/bin/env python3
"""Drive the bench captures for ICIT 2027 §VI-C over the foc_debug serial link.

    python bench_capture.py <command> [options]        (needs pyserial; FOC_HOST=<firmware host/ dir>)

One serial client at a time: close the foc_debug GUI first. Every command connects, does one
thing, and ALWAYS brings the drive back (speed to 0, STOP, bench aids cleared, scope released),
also on error or Ctrl-C. Nothing here bypasses the firmware's own limits (iq_max, vmax_frac,
obs_iq_max, faults); the operator keeps the E-stop.

Commands
  status                       read-only snapshot: state, vbus, fault/warn words, pos_status,
                               observer params, ISR cycle counters
  isr      --w W [--secs 10]   zero isr_cycles_max, run SPEED mode at W elec rad/s, report max
  shadow   --w W --obs flux|smo [--id A] [--decim 1] [--tag T]
                               SPEED mode at W, observers in shadow, coherent 128-sample capture
  handover --kind forced|back|lost|disagree --w W [--obs smo] [--id A] [--decim 8] [--pre 16]
                               ramp in SPEED mode, switch to TORQUE live (holds iq), arm the
                               hand-over trigger, apply the event, save the frozen window
  hold     --w W [--src auto|sensor] [--secs 60] [--obs smo] [--id A] [--decim 8] [--pre 16]
                               run at W with the trigger armed and WAIT for a physical event
                               (operator unplugs the encoder / a sensor channel); saves the
                               window if a hand-over fired, or records the FAULT word if the
                               drive tripped (expected below the observer floor)
Common options
  --bench teknic|emrax (file prefix; default teknic)   --port /dev/ttyUSBn (else auto-detect)
  --out DIR (default data/bench)   --force (skip the preflight parameter checks)

Files: <bench>_<cmd>_<detail>_d<decim>.csv  +  one line appended to <out>/LOG.md.
"""
import argparse, datetime, math, os, sys, time

# Firmware host-tools directory (contains the foc_debug package). Override with FOC_HOST.
HOST = os.environ.get("FOC_HOST", "/home/jose/foc-f28379d-fsae/foc_f28379d/host")
if not os.path.isdir(os.path.join(HOST, "foc_debug")):
    sys.exit(f"foc_debug package not found under {HOST}; set FOC_HOST=<path to firmware host/ dir>")
sys.path.insert(0, HOST)
from foc_debug.api import FocDebug          # noqa: E402
from foc_debug.link import SerialLink, LinkError, NackError   # noqa: E402
from foc_debug import proto                 # noqa: E402

ST_IDLE, ST_CAL, ST_ALIGN, ST_RUN, ST_FAULT = 0, 1, 2, 3, 4
MODE_TORQUE, MODE_SPEED = 0, 1
SRC_SENSOR, SRC_OBSERVER, SRC_AUTO = 0, 1, 2
OBS_FLUX, OBS_SMO = 0, 1
TRIG_OFF, TRIG_ARMED, TRIG_DONE = 0, 1, 2
CHANNELS = ["Id", "Iq", "theta_elec", "omega_elec", "theta_est", "theta_err"]
MASK = proto.names_to_mask(CHANNELS)
SNAPSHOT = ["obs_mode", "obs_vsrc", "obs_min_speed", "obs_err_trip", "obs_iq_max", "obs_gamma",
            "obs_smo_kslide", "obs_smo_e0", "obs_smo_lpf_hz", "obs_smo_lpf_k", "obs_pll_bw",
            "dtc_en", "vbus_ovr", "iq_max", "vmax_frac", "angle_src"]
WORDS = ["state", "fault_code", "warn_code", "pos_status", "angle_act", "obs_healthy",
         "obs_resets", "theta_err", "omega_meas", "omega_est", "vbus", "isr_cycles_max"]


class Bench:
    def __init__(self, port, force=False):
        self.link = SerialLink(port)
        self.d = FocDebug(self.link)
        self.d.ping()
        self.d.list_params()
        self.isr_hz = float(self.d.read_param("isr_freq_hz"))
        self.force = force
        self.mode = None

    # ---- helpers ------------------------------------------------------------
    def r(self, name):
        return self.d.read_param(name)

    def w(self, name, value):
        st = self.d.write_param(name, value)
        if st != proto.PARAM_WR_OK:
            raise RuntimeError(f"write {name}={value}: {proto.PARAM_WR_STR.get(st, st)}")

    def state(self):
        return self.d.sm_state()

    def fault_text(self):
        try:
            return f"fault_code=0x{int(self.r('fault_code')):04X} pos_status=0x{int(self.r('pos_status')):04X}"
        except Exception:  # noqa: BLE001
            return "fault (codes unreadable)"

    def wait_state(self, target, timeout):
        t0 = time.monotonic()
        while time.monotonic() - t0 < timeout:
            st = self.state()
            if st == target:
                return
            if st == ST_FAULT and target != ST_FAULT:
                raise RuntimeError("drive entered FAULT: " + self.fault_text())
            time.sleep(0.1)
        raise RuntimeError(f"timeout waiting for state {FocDebug.state_name(target)}")

    def ensure_idle(self):
        st = self.state()
        if st == ST_FAULT:
            print("  clearing latched fault:", self.fault_text())
            self.d.clear_fault()
        elif st != ST_IDLE:
            self.d.request_stop()
        self.wait_state(ST_IDLE, 5.0)

    def preflight(self):
        bad = []
        if float(self.r("vbus_ovr")) != 0.0:
            bad.append("vbus_ovr != 0 (observers need the real bus)")
        if int(self.r("dtc_en")) != 1:
            bad.append("dtc_en != 1")
        if int(self.r("obs_vsrc")) != 0:
            bad.append("obs_vsrc != 0 (reconstructed voltage with dead-zone model)")
        if bad:
            msg = "preflight: " + "; ".join(bad)
            if not self.force:
                raise RuntimeError(msg + "  (fix on the device, or --force)")
            print("  WARNING", msg)

    def snapshot(self, names):
        out = {}
        for n in names:
            try:
                v = self.r(n)
                out[n] = round(v, 4) if isinstance(v, float) else v
            except Exception:  # noqa: BLE001
                out[n] = None
        return out

    # ---- motion -------------------------------------------------------------
    def run_speed(self, w_elec, tol=0.05):
        """SPEED mode, RUN (calibrate/align may run first), ramp to w_elec and settle."""
        self.ensure_idle()
        self.w("control_mode", MODE_SPEED)
        self.mode = MODE_SPEED
        self.w("omega_ref", 0.0)
        self.w("iq_ref", 0.0)
        self.w("step_go", 0)
        self.d.request_run()
        self.wait_state(ST_RUN, 15.0)
        time.sleep(0.2)
        self.w("omega_ref", float(w_elec))
        t_ramp = abs(w_elec) / 500.0 + 3.0           # SPEED_RAMP_RAD_S2 = 500
        t0 = time.monotonic()
        while time.monotonic() - t0 < t_ramp + 3.0:
            if self.state() == ST_FAULT:
                raise RuntimeError("FAULT during ramp: " + self.fault_text())
            wm = float(self.r("omega_meas"))
            if abs(wm - w_elec) < tol * abs(w_elec) + 5.0 and time.monotonic() - t0 > 0.5:
                time.sleep(1.0)                        # let the observers settle (health dwell 20 ms)
                print(f"  at speed: omega_meas {float(self.r('omega_meas')):.1f} rad/s elec")
                return
            time.sleep(0.1)
        raise RuntimeError(f"speed did not settle at {w_elec} rad/s (omega_meas {wm:.1f})")

    def inject_id(self, id_a):
        """d-axis injection in RUN goes through the step injector (the ISR owns id_ref)."""
        if not id_a:
            return
        self.w("step_pre", 2)
        self.w("step_axis", 0)
        self.w("step_a", float(id_a))
        self.w("step_go", 1)
        self.wait_trigger(1.0 * 128 / self.isr_hz + 1.0)
        self.w("step_go", 0)
        time.sleep(0.3)
        print(f"  d-axis injection {id_a} A applied")

    def to_torque_hold(self):
        """Live switch SPEED -> TORQUE, then hold the speed PI's AVERAGE iq. The firmware mirrors
        the instantaneous iq at the switch, and that snapshot of a noisy PI output let the
        unloaded rotor drift 15-40 % off the target within half a second (bench 2026-10-09)."""
        n, acc = 0, 0.0
        t0 = time.monotonic()
        while time.monotonic() - t0 < 1.0:
            acc += float(self.r("iq_ref")); n += 1
            time.sleep(0.02)
        self.w("control_mode", MODE_TORQUE)
        self.mode = MODE_TORQUE
        self.w("iq_ref", acc / n)
        time.sleep(0.3)
        print(f"  TORQUE hold: iq_ref {float(self.r('iq_ref')):.3f} A, omega {float(self.r('omega_meas')):.1f}")

    def shutdown(self):
        """Always called: back to SPEED mode, ramp to 0, STOP, clear bench aids, release scope."""
        try:
            st = self.state()
            if st == ST_RUN:
                try:
                    self.w("control_mode", MODE_SPEED)
                    self.w("omega_ref", 0.0)
                    t0 = time.monotonic()
                    while time.monotonic() - t0 < 8.0 and abs(float(self.r("omega_meas"))) > 30.0:
                        time.sleep(0.1)
                except Exception:  # noqa: BLE001
                    pass
                self.d.request_stop()
            elif st == ST_FAULT:
                print("  drive is in FAULT:", self.fault_text(), "(left latched for inspection; "
                      "clear with 'status --clear' or the GUI)")
            elif st != ST_IDLE:                        # CAL / ALIGN / OPENLOOP: don't leave it running
                self.d.request_stop()
            for n, v in (("step_go", 0), ("step_a", 0.0), ("pos_force_lost", 0), ("pos_inj_err", 0.0),
                         ("pos_trig_en", 0), ("angle_src", SRC_SENSOR), ("iq_ref", 0.0), ("omega_ref", 0.0)):
                try:
                    self.d.write_param(n, v)
                except Exception:  # noqa: BLE001
                    pass
        finally:
            self.link.close()

    # ---- scope --------------------------------------------------------------
    def arm(self, decim, pre):
        self.d.scope_config(decim=int(decim), mask=MASK)
        self.w("step_go", 0)
        self.w("step_pre", int(pre))

    def wait_trigger(self, timeout, allow_fault=False):
        t0 = time.monotonic()
        while time.monotonic() - t0 < timeout:
            if int(self.r("trig_state")) == TRIG_DONE:
                return
            if not allow_fault and self.state() == ST_FAULT:
                raise RuntimeError("FAULT while waiting for the capture: " + self.fault_text())
            time.sleep(0.02)
        raise RuntimeError("capture trigger did not complete")

    def capture_coherent(self, decim, pre):
        """Trigger-only one-shot: a gap-free 128-sample window."""
        self.arm(decim, pre)
        self.w("step_go", 2)
        self.wait_trigger(2.0 * 128 * decim / self.isr_hz + 1.0)
        cap = self.d.capture_scope(timeout=3.0, retries=1)
        idx = int(self.r("trig_idx"))
        self.w("step_go", 0)
        return cap, idx

    def save(self, cap, path):
        with open(path, "w") as f:
            f.write("sample," + ",".join(cap.names) + "\n")
            for i in range(cap.n_samples):
                f.write(",".join([str(i)] + [f"{cap.data[c][i]:.6g}" for c in range(cap.n_channels)]) + "\n")
        print(f"  wrote {path}  ({cap.n_samples} x {cap.n_channels}: {', '.join(cap.names)})")

    def quick_stats(self, cap):
        if "theta_err" in cap.names:
            e = cap.data[cap.names.index("theta_err")]
            n = len(e)
            m = sum(e) / n
            rms = math.sqrt(sum(x * x for x in e) / n)
            print(f"  theta_err mean {math.degrees(m):.2f} deg, RMS {math.degrees(rms):.2f} deg")
        if "omega_elec" in cap.names:
            o = cap.data[cap.names.index("omega_elec")]
            print(f"  omega_elec mean {sum(o)/len(o):.1f} rad/s")


def log_line(out, text):
    path = os.path.join(out, "LOG.md")
    stamp = datetime.datetime.now().strftime("%Y-%m-%d %H:%M")
    with open(path, "a") as f:
        f.write(f"- {stamp} {text}\n")
    print("  LOG:", text)


# ---- commands --------------------------------------------------------------
def cmd_status(b, a):
    print("state:", FocDebug.state_name(b.state()))
    for k, v in b.snapshot(WORDS + SNAPSHOT + ["isr_cycles", "pole_pairs", "rs_ohm", "flux_vs"]).items():
        if isinstance(v, int) and k in ("fault_code", "pos_status", "warn_code"):
            print(f"  {k:16s} 0x{v:04X}")
        else:
            print(f"  {k:16s} {v}")
    # A fault can land after STOP (e.g. the observer floor crossed during a sensorless ramp-down) and
    # leave the state machine in IDLE with the fault word and the sensor-loss latch still set; clear that too.
    if a.clear and (b.state() == ST_FAULT or int(b.r("fault_code")) != 0):
        b.d.clear_fault()
        print("fault cleared ->", FocDebug.state_name(b.state()))


def cmd_isr(b, a):
    b.preflight()
    b.run_speed(a.w)
    b.w("isr_cyc_rst", 1)
    time.sleep(a.secs)
    mx = int(b.r("isr_cycles_max"))
    last = int(b.r("isr_cycles"))
    print(f"  isr_cycles_max {mx} (last {last}) of {int(2e8 / b.isr_hz)} budget at {b.isr_hz:.0f} Hz")
    log_line(a.out, f"{a.bench} isr: w={a.w} obs_mode={int(b.r('obs_mode'))} angle_src={int(b.r('angle_src'))} "
                    f"isr_cycles_max={mx} over {a.secs}s, vbus={float(b.r('vbus')):.1f}")


def cmd_shadow(b, a):
    b.preflight()
    obs = OBS_SMO if a.obs == "smo" else OBS_FLUX
    b.w("obs_mode", obs)
    b.w("angle_src", SRC_SENSOR)
    b.run_speed(a.w)
    b.inject_id(a.id)
    time.sleep(0.5)
    cap, idx = b.capture_coherent(a.decim, 2)
    words = b.snapshot(["obs_healthy", "obs_flux_err", "obs_smo_err", "obs_dtheta", "theta_err", "vbus", "iq_ref"])
    tag = f"_{a.tag}" if a.tag else ""
    idtag = f"_id{int(a.id)}" if a.id else ""
    path = os.path.join(a.out, f"{a.bench}_shadow_{a.obs}_w{int(a.w)}{idtag}{tag}_d{a.decim}.csv")
    b.save(cap, path)
    b.quick_stats(cap)
    log_line(a.out, f"{os.path.basename(path)}: shadow {a.obs} at {a.w} rad/s elec, id_inj={a.id}, decim={a.decim}, "
                    f"{words}, params={b.snapshot(SNAPSHOT)}")


def cmd_handover(b, a):
    b.preflight()
    obs = OBS_SMO if a.obs == "smo" else OBS_FLUX
    b.w("obs_mode", obs)
    b.w("angle_src", SRC_SENSOR)
    b.w("pos_force_lost", 0)
    b.w("pos_inj_err", 0.0)
    b.run_speed(a.w)
    b.inject_id(a.id)
    # observer must be healthy for any hand-over; wait for it
    t0 = time.monotonic()
    while int(b.r("obs_healthy")) != 1:
        if time.monotonic() - t0 > 3.0:
            raise RuntimeError(f"observer not healthy at {a.w} rad/s: {b.snapshot(['pos_status', 'obs_flux_err', 'obs_smo_err', 'omega_est'])}")
        time.sleep(0.05)
    print(f"  observer healthy, theta_err {math.degrees(float(b.r('theta_err'))):.2f} deg")
    b.to_torque_hold()
    if a.kind == "back":
        b.w("angle_src", SRC_OBSERVER)
        t0 = time.monotonic()
        while int(b.r("angle_act")) != 1:
            if time.monotonic() - t0 > 2.0:
                raise RuntimeError("observer did not engage")
            time.sleep(0.05)
        time.sleep(0.5)
    elif a.kind in ("lost", "disagree"):
        b.w("angle_src", SRC_AUTO)
        time.sleep(0.2)
    b.arm(a.decim, a.pre)
    b.w("pos_trig_en", 1)
    event = {"forced": ("angle_src", SRC_OBSERVER), "back": ("angle_src", SRC_SENSOR),
             "lost": ("pos_force_lost", 1), "disagree": ("pos_inj_err", float(a.inj))}[a.kind]
    print(f"  event: {event[0]} = {event[1]}")
    b.w(*event)
    b.wait_trigger(2.0 * 128 * a.decim / b.isr_hz + 1.5)
    cap = b.d.capture_scope(timeout=3.0, retries=1)
    idx = int(b.r("trig_idx"))
    words = b.snapshot(["state", "angle_act", "pos_status", "warn_code", "fault_code", "obs_healthy",
                        "theta_err", "omega_meas", "omega_est", "iq_ref", "vbus"])
    print("  after:", {k: (f"0x{v:04X}" if k in ("pos_status", "warn_code", "fault_code") else v) for k, v in words.items()})
    b.w("step_go", 0)
    b.w("pos_trig_en", 0)
    idtag = f"_id{int(a.id)}" if a.id else ""
    path = os.path.join(a.out, f"{a.bench}_handover_{a.kind}_{a.obs}_w{int(a.w)}{idtag}_d{a.decim}.csv")
    b.save(cap, path)
    b.quick_stats(cap)
    log_line(a.out, f"{os.path.basename(path)}: {a.kind} hand-over, obs {a.obs}, {a.w} rad/s elec in TORQUE hold, "
                    f"id_inj={a.id}, decim={a.decim}, pre={a.pre}, trig_idx={idx}, after={words}, params={b.snapshot(SNAPSHOT)}")
    # hand back to the sensor before shutdown so the ramp-down runs on the sensor
    b.w("pos_force_lost", 0)
    b.w("pos_inj_err", 0.0)
    b.w("angle_src", SRC_SENSOR)
    time.sleep(0.3)


def cmd_hold(b, a):
    b.preflight()
    obs = OBS_SMO if a.obs == "smo" else OBS_FLUX
    b.w("obs_mode", obs)
    b.w("angle_src", SRC_SENSOR)
    b.run_speed(a.w)
    b.inject_id(a.id)
    b.to_torque_hold()
    b.w("angle_src", SRC_AUTO if a.src == "auto" else SRC_SENSOR)
    b.arm(a.decim, a.pre)
    b.w("pos_trig_en", 1)
    print(f"  holding {a.w} rad/s elec in TORQUE, angle_src={a.src}: apply the physical event now "
          f"(up to {a.secs:.0f} s, Ctrl-C to abort)", flush=True)
    t0 = time.monotonic()
    result = "timeout"
    t_print = -1e9
    while time.monotonic() - t0 < a.secs:
        st = b.state()
        if st == ST_FAULT:
            result = "fault"
            # Freeze the free-running ring FIRST (every serial round-trip here costs ms of the
            # ~100 ms pre-trigger window); the status words are read after.
            try:
                b.w("step_pre", 126)
                b.w("step_go", 2)
            except Exception as e:  # noqa: BLE001
                print("  could not freeze the scope on fault:", e)
            break
        if int(b.r("trig_state")) == TRIG_DONE:
            result = "handover"
            break
        if time.monotonic() - t_print >= 10.0:
            t_print = time.monotonic()
            print(f"    t={t_print-t0:4.0f}s state={FocDebug.state_name(st)} "
                  f"theta_err={math.degrees(float(b.r('theta_err'))):.2f} deg omega={float(b.r('omega_meas')):.0f}",
                  flush=True)
        time.sleep(0.01)
    words = b.snapshot(["state", "angle_act", "pos_status", "warn_code", "fault_code", "obs_healthy",
                        "theta_err", "omega_meas", "omega_est", "vbus"])
    print(f"  result: {result}; after:", {k: (f"0x{v:04X}" if k in ("pos_status", "warn_code", "fault_code") and v is not None else v) for k, v in words.items()})
    idtag = f"_id{int(a.id)}" if a.id else ""
    base = f"{a.bench}_unplug_{a.src}_{a.obs}_w{int(a.w)}{idtag}_d{a.decim}"
    if result == "handover":
        cap = b.d.capture_scope(timeout=3.0, retries=1)
        idx = int(b.r("trig_idx"))
        path = os.path.join(a.out, base + ".csv")
        b.save(cap, path)
        b.quick_stats(cap)
        log_line(a.out, f"{os.path.basename(path)}: physical event with angle_src={a.src}, obs {a.obs}, {a.w} rad/s elec, "
                        f"id_inj={a.id}, decim={a.decim}, pre={a.pre}, trig_idx={idx}, after={words}, params={b.snapshot(SNAPSHOT)}")
    elif result == "fault":
        # The hand-over trigger never fired, so the ring is still free-running: freeze it NOW with the
        # maximum pre-trigger (126 of 128 samples, ~100 ms at decim 8) so the fault event, seen here
        # 20-40 ms late, is still inside the window. step_go=2 triggers in any state, FAULT included.
        path = os.path.join(a.out, base + "_fault.csv")
        try:
            b.wait_trigger(2.0 * 128 * a.decim / b.isr_hz + 1.0, allow_fault=True)
            cap = b.d.capture_scope(timeout=3.0, retries=1)
            b.save(cap, path)
        except Exception as e:  # noqa: BLE001  -- the fault word below is the primary record
            print("  fault capture failed:", e)
            path = "(no capture)"
        log_line(a.out, f"{os.path.basename(path)}: physical event with angle_src={a.src} -> FAULT, {a.w} rad/s elec, "
                        f"decim={a.decim}, pre=126 (frozen on fault detection), after={words}, params={b.snapshot(SNAPSHOT)}")
    else:
        log_line(a.out, f"{base}: physical event with angle_src={a.src} -> {result}, {a.w} rad/s elec, after={words}, "
                        f"params={b.snapshot(SNAPSHOT)}")
    b.w("step_go", 0)
    b.w("pos_trig_en", 0)
    b.w("angle_src", SRC_SENSOR)


def main(argv=None):
    p = argparse.ArgumentParser(description=__doc__, formatter_class=argparse.RawDescriptionHelpFormatter)
    p.add_argument("--port", default=None)
    p.add_argument("--bench", default="teknic", choices=["teknic", "emrax"])
    p.add_argument("--out", default=os.path.join(os.path.dirname(os.path.abspath(__file__)), "..", "data", "bench"))
    p.add_argument("--force", action="store_true")
    sp = p.add_subparsers(dest="cmd", required=True)
    s = sp.add_parser("status"); s.add_argument("--clear", action="store_true")
    s = sp.add_parser("isr"); s.add_argument("--w", type=float, required=True); s.add_argument("--secs", type=float, default=10.0)
    s = sp.add_parser("shadow")
    s.add_argument("--w", type=float, required=True); s.add_argument("--obs", default="flux", choices=["flux", "smo"])
    s.add_argument("--id", type=float, default=0.0); s.add_argument("--decim", type=int, default=1); s.add_argument("--tag", default="")
    s = sp.add_parser("handover")
    s.add_argument("--kind", required=True, choices=["forced", "back", "lost", "disagree"])
    s.add_argument("--w", type=float, required=True); s.add_argument("--obs", default="smo", choices=["flux", "smo"])
    s.add_argument("--id", type=float, default=0.0); s.add_argument("--decim", type=int, default=8)
    s.add_argument("--pre", type=int, default=16); s.add_argument("--inj", type=float, default=1.0)
    s = sp.add_parser("hold")
    s.add_argument("--w", type=float, required=True); s.add_argument("--src", default="auto", choices=["auto", "sensor"])
    s.add_argument("--secs", type=float, default=60.0); s.add_argument("--obs", default="smo", choices=["flux", "smo"])
    s.add_argument("--id", type=float, default=0.0); s.add_argument("--decim", type=int, default=8)
    s.add_argument("--pre", type=int, default=16)
    a = p.parse_args(argv)
    a.out = os.path.normpath(a.out)
    os.makedirs(a.out, exist_ok=True)

    try:
        b = Bench(a.port, force=a.force)
    except LinkError as e:
        print("link:", e)
        return 1
    print(f"connected on {b.link.port}, ISR {b.isr_hz:.0f} Hz, state {FocDebug.state_name(b.state())}")
    rc = 0
    try:
        {"status": cmd_status, "isr": cmd_isr, "shadow": cmd_shadow, "handover": cmd_handover, "hold": cmd_hold}[a.cmd](b, a)
    except KeyboardInterrupt:
        print("interrupted"); rc = 130
    except (RuntimeError, NackError, LinkError, KeyError) as e:
        print("error:", e); rc = 1
    finally:
        if a.cmd != "status":
            print("  shutting down (ramp to 0, STOP, clear aids)")
        b.shutdown()
    return rc


if __name__ == "__main__":
    sys.exit(main())

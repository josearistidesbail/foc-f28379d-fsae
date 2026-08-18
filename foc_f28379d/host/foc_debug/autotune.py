"""autotune.py - PI gain tuning math for the FOC current/speed/FW loops.

Pure functions only: no Qt, no serial, no numpy. The GUI ("Autotune" tab) reads
the motor/loop constants from the device read-only params, calls these to compute
gains, writes them with the existing write_param path, and optionally runs a step
experiment whose capture is fed back through ``step_metrics``.

All controllers use TI's ``PI_run`` *series* form, where the integrator updates
``Ui += Kp*Ki*error`` each tick of period ``Ts``. That makes the continuous PI
zero ``wz = Ki/Ts``, so the single rule used throughout is:

    ki_series = wz * Ts          # place the PI zero at angular frequency wz

Reference for the current-loop formulas: ``config/gains/gains_teknic.h``.
"""

from __future__ import annotations

import math
from dataclasses import dataclass

# Keep the closed-loop current bandwidth below this fraction of the ISR rate so
# the continuous design stays valid against discretization/PWM delay.
BW_ISR_FRACTION_MAX = 0.1


def current_bw_ceiling(f_isr: float) -> float:
    """Largest sane current-loop bandwidth [Hz] for a given ISR rate [Hz]."""
    return BW_ISR_FRACTION_MAX * f_isr


# ---- Current loop (inner) -------------------------------------------------
def current_loop_gains(R: float, L: float, Ts: float, f_bw: float):
    """Pole-cancellation tuning for one first-order R/L current axis.

    The plant is ``1/(R + sL)`` (pole at ``-R/L``). Setting the PI zero on that
    pole makes the closed loop first-order with bandwidth ``wc = Kp/L``:

        kp        = 2*pi*f_bw * L
        ki_series = (R/L) * Ts          # wz = R/L

    Returns ``(kp, ki_series)``.
    """
    if L <= 0.0 or Ts <= 0.0:
        raise ValueError("L and Ts must be positive")
    wc = 2.0 * math.pi * f_bw
    kp = wc * L
    ki = (R / L) * Ts
    return kp, ki


def current_loop_gains_dq(R: float, Ld: float, Lq: float, Ts: float, f_bw: float):
    """Both current axes at one bandwidth. Returns a dict kp_d/ki_d/kp_q/ki_q."""
    kp_d, ki_d = current_loop_gains(R, Ld, Ts, f_bw)
    kp_q, ki_q = current_loop_gains(R, Lq, Ts, f_bw)
    return {"kp_d": kp_d, "ki_d": ki_d, "kp_q": kp_q, "ki_q": ki_q}


# ---- Speed loop (outer) ---------------------------------------------------
def km_from_j(J: float, pole_pairs: int, flux_vs: float) -> float:
    """Plant gain Km [ (rad/s^2) / A ] for iq -> electrical-speed.

    Te = 1.5*pp*flux*iq, J*dw_mech/dt = Te, w_elec = pp*w_mech, hence
    dw_elec/dt = (1.5*pp^2*flux/J) * iq.
    """
    if J <= 0.0:
        raise ValueError("J must be positive")
    return 1.5 * (pole_pairs ** 2) * flux_vs / J


def j_from_km(Km: float, pole_pairs: int, flux_vs: float) -> float:
    """Inverse of km_from_j: recover rotor inertia from a measured Km."""
    if Km <= 0.0:
        raise ValueError("Km must be positive")
    return 1.5 * (pole_pairs ** 2) * flux_vs / Km


def speed_loop_gains(Km: float, T_eq: float, Ts_speed: float, a: float = 2.5):
    """Symmetric-optimum tuning for plant ``Km/(s*(1+s*T_eq))`` (TI series PI).

    ``T_eq`` is the inner current-loop equivalent lag (~1/(2*pi*f_bw_current)).
    ``a`` is the symmetric-optimum spacing factor (~2..4; larger = less
    overshoot, slower). Returns ``(kp_w, ki_w_series)``:

        kp_w      = 1 / (a * Km * T_eq)
        wz        = 1 / (a^2 * T_eq)
        ki_w      = wz * Ts_speed
    """
    if Km <= 0.0 or T_eq <= 0.0 or Ts_speed <= 0.0:
        raise ValueError("Km, T_eq, Ts_speed must be positive")
    if a <= 0.0:
        raise ValueError("a must be positive")
    kp = 1.0 / (a * Km * T_eq)
    wz = 1.0 / (a * a * T_eq)
    ki = wz * Ts_speed
    return kp, ki


# ---- Field weakening ------------------------------------------------------
def fw_loop_gains(vmax_fw: float, we_ref: float, Ld: float, Ts: float,
                  f_fw: float, zero_ratio: float = 5.0):
    """Estimate FW PI gains for the squared-voltage-margin loop.

    The regulator runs ``PI_run`` on ``vmax_fw^2 - |Vdq|^2`` and outputs id<=0.
    Near the operating point ``|Vdq| ~ vmax_fw`` at electrical speed ``we_ref``,
    the sensitivity of the squared voltage to id is ``g ~ 2*vmax_fw*we_ref*Ld``.
    For a target loop bandwidth ``f_fw`` with the PI zero a factor ``zero_ratio``
    below it:

        kp_fw = zero_ratio / g
        ki_fw = (2*pi*f_fw / zero_ratio) * Ts

    This is only a starting estimate -- the loop is active only above base speed
    and its gain scales with speed, so it must be verified on real hardware.
    Returns ``(kp_fw, ki_fw_series)``.
    """
    g = 2.0 * vmax_fw * we_ref * Ld
    if g <= 0.0:
        raise ValueError("FW plant gain non-positive (check vbus/we_ref/Ld)")
    kp = zero_ratio / g
    ki = (2.0 * math.pi * f_fw / zero_ratio) * Ts
    return kp, ki


def fw_base_speed_elec(vmax_fw: float, flux_vs: float) -> float:
    """Electrical speed [rad/s] where back-EMF reaches vmax_fw (FW onset)."""
    if flux_vs <= 0.0:
        raise ValueError("flux_vs must be positive")
    return vmax_fw / flux_vs


# ---- Step-response analysis ----------------------------------------------
@dataclass
class StepMetrics:
    ok: bool
    reason: str = ""
    i_step: int = -1            # sample index of the detected edge (50% crossing)
    ref0: float = 0.0
    ref1: float = 0.0
    t_rise: float = 0.0         # 10-90% rise time [s]
    overshoot_pct: float = 0.0  # percent past the final value
    t_settle: float = 0.0       # time from edge to within the settle band [s]
    bw_hz: float = 0.0          # effective bandwidth ~0.35/t_rise [Hz]
    # Level read-outs. These are filled in even when ok=False (as long as there
    # were enough samples to average), because "the step did not reach target"
    # is exactly the case where the operator wants to know how far it got.
    y_final: float = 0.0        # mean of the trailing 10% of the window
    y_peak: float = 0.0         # extreme value after the edge, in the step direction
    noise: float = 0.0          # larger of the pre-step / post-step sample std dev
    settled: bool = False       # last sample lies inside the settle band


def _mean(seq) -> float:
    seq = list(seq)
    return sum(seq) / len(seq) if seq else 0.0


def _std(seq) -> float:
    seq = list(seq)
    if len(seq) < 2:
        return 0.0
    m = sum(seq) / len(seq)
    return math.sqrt(sum((v - m) ** 2 for v in seq) / len(seq))


def step_metrics(y, dt: float, ref0=None, ref1=None,
                 settle_frac: float = 0.02, i_step=None) -> StepMetrics:
    """Characterize a step response captured in ``y`` (chronological floats).

    Pass ``i_step`` when the device reported one (the firmware one-shot trigger's
    ``trig_idx``): it is the exact index of the first sample carrying the step, so
    the baseline comes from the genuine pre-step samples and the 10/90% search
    starts at the edge instead of anywhere noise happens to cross first.

    Without it the step may still sit anywhere inside the window: the levels are
    inferred from the first/last 10% (unless given) and the edge is located as the
    first 50% crossing -- robust to link jitter, but it can latch onto noise on a
    small step and cannot tell a slow rise from a late trigger.
    """
    y = [float(v) for v in y]
    n = len(y)
    if n < 8 or dt <= 0.0:
        return StepMetrics(ok=False, reason="too few samples")

    tail = max(1, n // 10)
    # A device-reported trigger index makes every pre-step sample a baseline
    # sample; otherwise fall back to the leading 10% of the window.
    known_edge = i_step is not None and 1 <= int(i_step) < n - 1
    if known_edge:
        i_step = int(i_step)
        pre = y[:i_step]
    else:
        i_step = None
        pre = y[:tail]

    y_final = _mean(y[-tail:])
    if ref0 is None:
        ref0 = _mean(pre)
    if ref1 is None:
        ref1 = y_final
    delta = ref1 - ref0
    # Reject when the level change is not large compared with the in-segment
    # noise -- i.e. there is no real step, just a noisy flat trace.
    noise = max(_std(pre), _std(y[-tail:]))
    if abs(delta) < max(1e-9, 5.0 * noise):
        return StepMetrics(ok=False, reason="no detectable step", ref0=ref0,
                           ref1=ref1, i_step=i_step if known_edge else -1,
                           y_final=y_final, noise=noise)

    # Normalized progress 0->1 across the step (sign-agnostic via /delta).
    frac = [(v - ref0) / delta for v in y]

    if not known_edge:
        # Edge = first 50% crossing.
        i_step = next((i for i, f in enumerate(frac) if f >= 0.5), -1)
        if i_step < 0:
            return StepMetrics(ok=False, reason="step edge not in window",
                               ref0=ref0, ref1=ref1, y_final=y_final,
                               noise=noise)

    # 10-90% rise. With a known edge, scan forward from it so pre-step noise can
    # never supply the 10% crossing; otherwise scan the whole window as before.
    scan0 = i_step if known_edge else 0
    i10 = next((i for i in range(scan0, n) if frac[i] >= 0.1), -1)
    i90 = next((i for i in range(scan0, n) if frac[i] >= 0.9), -1)
    t_rise = (i90 - i10) * dt if (i10 >= 0 and i90 >= i10) else 0.0

    # Overshoot: peak progress past 1.0 after the edge.
    post = frac[i_step:]
    peak = max(post) if post else 1.0
    overshoot = max(0.0, (peak - 1.0)) * 100.0

    # Settling: last sample (after the edge) outside the +/-settle_frac band.
    t_settle = 0.0
    for i in range(n - 1, i_step - 1, -1):
        if abs(frac[i] - 1.0) > settle_frac:
            t_settle = (i - i_step) * dt
            break
    # A trace that never enters the band yields t_settle == (n-1-i_step)*dt, which
    # reads exactly like "settled at the end of the window". Flag the difference
    # rather than reporting a settling time that never happened.
    settled = abs(frac[n - 1] - 1.0) <= settle_frac

    bw = (0.35 / t_rise) if t_rise > 0.0 else 0.0
    return StepMetrics(ok=True, i_step=i_step, ref0=ref0, ref1=ref1,
                       t_rise=t_rise, overshoot_pct=overshoot,
                       t_settle=t_settle, bw_hz=bw, y_final=y_final,
                       y_peak=ref0 + peak * delta, noise=noise,
                       settled=settled)


def fit_slope(y, dt: float, i0: int = 0, i1: int | None = None) -> float:
    """Least-squares slope dy/dt over samples [i0, i1) -- used to estimate the
    speed plant gain Km from a constant-iq ramp (Km = slope / iq)."""
    if i1 is None:
        i1 = len(y)
    xs = [k * dt for k in range(i0, i1)]
    ys = [float(y[k]) for k in range(i0, i1)]
    m = len(xs)
    if m < 2:
        return 0.0
    mx = sum(xs) / m
    my = sum(ys) / m
    num = sum((x - mx) * (yy - my) for x, yy in zip(xs, ys))
    den = sum((x - mx) ** 2 for x in xs)
    return num / den if den != 0.0 else 0.0


def _median(seq) -> float:
    seq = sorted(seq)
    n = len(seq)
    if n == 0:
        return 0.0
    return seq[n // 2] if n % 2 else 0.5 * (seq[n // 2 - 1] + seq[n // 2])


def step_diagnostics_data(names, data, i_step: int, skip: int = 2) -> dict:
    """Structured form of :func:`step_diagnostics` -- see there for the rationale.

    Returns only the keys it could compute, so callers must use ``.get()``:

    ``vmag``      peak ``|Vdq|`` over the post-step plateau [V]
    ``vbus``      median DC-bus over the same samples [V]
    ``vmag_frac`` ``vmag / (vbus/2)`` -- compare directly against ``vmax_frac``
    ``iph``       smallest mean ``|phase current|`` [A]
    ``iph_name``  which phase that was
    ``i0``        first sample index used (the post-step plateau starts here)
    """
    idx = {n: i for i, n in enumerate(names)}
    n_samp = len(data[0]) if len(data) else 0
    if n_samp == 0:
        return {}
    lo = max(0, min(int(i_step) + skip, n_samp - 1))

    def col(name):
        i = idx.get(name)
        return None if i is None else [float(v) for v in data[i][lo:]]

    out = {"i0": lo}
    vd, vq, vbus = col("Vd"), col("Vq"), col("vbus")
    if vd and vq:
        out["vmag"] = max(math.hypot(a, b) for a, b in zip(vd, vq))
        vb = _median(vbus) if vbus else 0.0
        if vb > 1.0:
            out["vbus"] = vb
            out["vmag_frac"] = out["vmag"] / (0.5 * vb)
    phases = [(n, col(n)) for n in ("Iu", "Iv", "Iw")]
    phases = [(n, c) for n, c in phases if c]
    if phases:
        mag, name = min((_mean([abs(v) for v in c]), n) for n, c in phases)
        out["iph"], out["iph_name"] = mag, name
    return out


def step_diagnostics(names, data, i_step: int, skip: int = 2) -> str:
    """One-line verdict on a current step that missed its target: volts, or dead zone?

    `names`/`data` are a scope capture's channel names and parallel sample rows.
    Only channels that are present are reported, so this is safe on a capture
    that carries just Id/Iq.

    A step that fails to reach its reference at standstill has only two plausible
    causes, and both are visible in the post-step plateau of the same capture --
    no second experiment, so the answer cannot drift between runs:

    * ``|Vdq|`` sitting at the PI clamp means the loop ran out of VOLTAGE. The
      clamp is ``vmax_frac * vbus * 0.5``, so the magnitude is reported as a
      fraction of ``vbus/2`` and compares directly against the vmax_frac
      parameter without having to read it.
    * a phase current near ZERO means that leg sat inside the dead-time
      compensation ramp (``dtc_ith``) and received almost none of the
      compensation -- even though the dead-zone error itself is independent of
      current magnitude. Which leg lands there is set by the electrical angle
      with 60 deg period, which is why it presents as rotor-position-dependent
      flakiness rather than a consistent fault.

    Note this is deliberately NOT a pass/fail: it reports the two numbers that
    discriminate the causes and leaves the judgement to the operator, because
    the thresholds depend on bench conditions (bus, vmax_frac, step size).
    """
    d = step_diagnostics_data(names, data, i_step, skip)
    bits = []
    if "vmag" in d:
        if "vmag_frac" in d:
            bits.append("|Vdq|max=%.2f V (%.3f of vbus/2 -> vs vmax_frac)"
                        % (d["vmag"], d["vmag_frac"]))
        else:
            bits.append("|Vdq|max=%.2f V" % d["vmag"])
    if "iph" in d:
        bits.append("min mean|Iph|=%.2f A (%s)" % (d["iph"], d["iph_name"]))
    return "   ".join(bits)

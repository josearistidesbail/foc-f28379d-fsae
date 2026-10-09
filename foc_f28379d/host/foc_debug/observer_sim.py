"""observer_sim.py - offline SMO vs flux-observer comparison (stdlib only).

A scalar time-stepping model of the drive at the firmware's 10 kHz tick:

    PMSM (alpha/beta current states, PRESCRIBED speed profile -- the rotor is a
    dyno, we only care about the electrical estimate)
      -> current sampled with noise
      -> BOTH observers + the common PLL (the exact discrete equations ported
         to src/observer.c; this module is their unit-test oracle)
      -> dq current PI closed on the TRUE angle (shadow test, like the bench
         with angle_src = SENSOR) or on the ESTIMATE (sensorless closed loop)
      -> inverter: one-tick computation delay (the duty computed from sample k
         is applied over (k+1, k+2], as the shadow-loaded CMPA does on the
         hardware), duty quantization, dead zone (Tdt*fsw*Vbus + Vdrop)*sat(i/ith)
         per phase from the true current, optional dead-time compensation
         feed-forward from the measured current (the firmware's dtc_apply)
      -> the observer is fed the voltage the FIRMWARE would reconstruct for it
         (obs_vsrc 0/1/2), held one tick like s_obs_vhold so that i[k] pairs
         with the voltage over (k-1, k]; never the true applied voltage.

What it is for:
  1. the SMO-vs-flux comparison table (lock time, steady angle error,
     transient error, speed error) across speed, parameter error, dead zone,
     noise -- python -m foc_debug.observer_sim --motor teknic|emrax
  2. the default gains baked into config/gains/gains_*.h (DEFAULTS below is
     the single source; keep the headers in sync)
  3. unit tests of the equations (test_observer_sim.py)

Everything is plain math/random/dataclasses so the repo's stdlib-only unittest
convention holds and the tests stay fast (~0.1 s per case).

Conventions (match the firmware): rotor flux lambda*(cos th, sin th), back-EMF
w*lambda*(-sin th, cos th); electrical rad/s throughout; Ts = 100 us.
"""

from __future__ import annotations

import argparse
import csv
import math
import random
import sys
from dataclasses import dataclass, field, replace

TS = 1.0e-4
TWO_PI = 2.0 * math.pi
DEG = 180.0 / math.pi


# ---- scalar helpers (ported 1:1 from foc_math_inline.h) -------------------
def wrap_pi(x: float) -> float:
    """Wrap to [-pi, pi)."""
    return (x + math.pi) % TWO_PI - math.pi


def wrap_2pi(x: float) -> float:
    """Wrap to [0, 2*pi)."""
    return x % TWO_PI


def sat(x: float, lim: float) -> float:
    return lim if x > lim else (-lim if x < -lim else x)


def smo_fg(rs: float, ls: float, ts: float = TS):
    """(F, G) of the discrete SMO current model exactly as obs_apply_params()
    computes them: F = exp(-Rs*Ts/Ls) via a 4-term series, G = (1-F)/Rs."""
    a = rs * ts / ls
    if a > 1.0:
        a = 1.0
    F = 1.0 - a + a * a * 0.5 - a * a * a / 6.0 + a ** 4 / 24.0 - a ** 5 / 120.0
    return F, (1.0 - F) / rs


def smo_fg_exact(rs: float, ls: float, ts: float = TS):
    F = math.exp(-rs * ts / ls)
    return F, (1.0 - F) / rs


def flux_k(gamma: float, lam: float, ts: float = TS) -> float:
    """0.5*gamma_eff*Ts with gamma_eff = gamma/lambda^2 (gamma in 1/s)."""
    return 0.5 * (gamma / (lam * lam)) * ts


# ---- motors ----------------------------------------------------------------
@dataclass(frozen=True)
class MotorParams:
    name: str
    rs: float          # ohm
    ld: float          # H
    lq: float          # H
    lam: float         # V*s/rad (elec)
    pp: int            # pole pairs
    i_peak: float      # A
    rpm_max: float
    vbus_nom: float    # V
    deadtime_duty: float   # Tdt*fsw (bus-independent dead-zone share)
    vdrop: float           # device drops [V] (bus-independent volts)
    ith: float             # dead-zone ramp width [A] (firmware DTC_ITH_A)

    @property
    def ls(self) -> float:
        return 0.5 * (self.ld + self.lq)

    @property
    def w_rated(self) -> float:
        """Rated ELECTRICAL speed [rad/s]."""
        return self.rpm_max / 60.0 * TWO_PI * self.pp

    def w_reachable(self, vbus: float, margin: float = 0.4) -> float:
        """Speed at which back-EMF = margin*vbus (what a given bus can spin)."""
        return margin * vbus / self.lam


TEKNIC = MotorParams("teknic", 0.36, 235e-6, 235e-6, 0.0046, 4, 7.1, 6000.0, 48.0,
                     deadtime_duty=500e-9 * 10e3, vdrop=0.30, ith=2.0)
# EMRAX 208 HV, datasheet v1.7 (Rs at 25 degC); i_peak = the firmware's 240 A amplitude limit.
EMRAX = MotorParams("emrax", 0.01277, 110e-6, 115e-6, 0.03867, 10, 240.0, 6000.0, 400.0,
                    deadtime_duty=1500e-9 * 10e3, vdrop=0.68, ith=2.0)
MOTORS = {"teknic": TEKNIC, "emrax": EMRAX}

# Single source for the firmware boot defaults (config/gains/gains_*.h OBS_*).
DEFAULTS = {
    "teknic": dict(obs_gamma=1000.0, obs_smo_kslide=2.0, obs_smo_e0=6.0,
                   obs_smo_lpf_hz=20.0, obs_smo_lpf_k=1.0, obs_pll_bw=40.0,
                   obs_min_speed=300.0, obs_flux_tol=0.30, obs_smo_tol=0.5),
    "emrax": dict(obs_gamma=1000.0, obs_smo_kslide=1.0, obs_smo_e0=200.0,
                  obs_smo_lpf_hz=10.0, obs_smo_lpf_k=1.0, obs_pll_bw=40.0,
                  obs_min_speed=400.0, obs_flux_tol=0.30, obs_smo_tol=0.5),
}

# Firmware constants (build_config.h) the health logic depends on.
OBS_PLL_ERR_CLAMP = 0.5
OBS_CONVERGED_TICKS = 200
OBS_UNHEALTHY_TICKS = 50


@dataclass
class ObserverParams:
    rs: float
    ls: float
    lam: float
    gamma: float
    kslide: float
    e0: float
    lpf_hz: float
    lpf_k: float
    pll_bw: float
    min_speed: float
    flux_tol: float
    smo_tol: float
    w_max: float
    ts: float = TS

    @classmethod
    def for_motor(cls, m: MotorParams, rs_err=1.0, ls_err=1.0, lam_err=1.0, **over):
        d = dict(DEFAULTS[m.name])
        d.update(over)
        return cls(rs=m.rs * rs_err, ls=m.ls * ls_err, lam=m.lam * lam_err,
                   gamma=d["obs_gamma"], kslide=d["obs_smo_kslide"], e0=d["obs_smo_e0"],
                   lpf_hz=d["obs_smo_lpf_hz"], lpf_k=d["obs_smo_lpf_k"],
                   pll_bw=d["obs_pll_bw"], min_speed=d["obs_min_speed"],
                   flux_tol=d["obs_flux_tol"], smo_tol=d["obs_smo_tol"],
                   w_max=1.5 * m.w_rated)


# ---- observers (1:1 with src/observer.c) ------------------------------------
class PLL:
    """Type-II tracker, zeta = 1, semi-implicit Euler (resolver ATO form)."""

    def __init__(self, bw_hz: float, ts: float, w_max: float, err_clamp: float = OBS_PLL_ERR_CLAMP):
        wn = TWO_PI * bw_hz
        self.kp_ts = 2.0 * wn * ts
        self.ki_ts = wn * wn * ts
        self.ts = ts
        self.w_max = w_max
        self.err_clamp = err_clamp
        self.th = 0.0
        self.w = 0.0
        self.perr = 0.0
        self.th_now = 0.0

    def seed(self, th: float, w: float):
        self.th = wrap_2pi(th)
        self.th_now = self.th
        self.w = sat(w, self.w_max)

    def update(self, th_in: float):
        """Returns (theta for THIS sample, omega). self.th keeps the one-step-
        ahead prediction, exactly like s_pll_th in observer.c."""
        perr = sat(wrap_pi(th_in - self.th), self.err_clamp)
        self.w = sat(self.w + self.ki_ts * perr, self.w_max)
        th_now = wrap_2pi(self.th + self.kp_ts * perr)
        self.th = wrap_2pi(th_now + self.ts * self.w)
        self.perr = perr
        self.th_now = th_now
        return th_now, self.w


class FluxObserver:
    """Ortega nonlinear flux observer on the stator flux x = int(v - Rs i)."""

    def __init__(self, p: ObserverParams):
        self.rs, self.ls, self.lam, self.ts = p.rs, p.ls, p.lam, p.ts
        self.lam2 = p.lam * p.lam
        self.k_flux = flux_k(p.gamma, p.lam, p.ts)
        self.x_a = 0.0
        self.x_b = 0.0
        self.ia_prev = 0.0
        self.ib_prev = 0.0
        self.err = -1.0
        self.theta = 0.0

    def seed(self, th: float, ia: float, ib: float):
        self.x_a = self.ls * ia + self.lam * math.cos(th)
        self.x_b = self.ls * ib + self.lam * math.sin(th)
        self.ia_prev, self.ib_prev = ia, ib

    def update(self, va, vb, ia, ib):
        # propagate (ZOH voltage, trapezoidal Rs*i), THEN correct on a flux
        # vector consistent at this instant -- see observer.c for the bias a
        # mixed-instant correction produces.
        self.x_a += self.ts * (va - self.rs * 0.5 * (ia + self.ia_prev))
        self.x_b += self.ts * (vb - self.rs * 0.5 * (ib + self.ib_prev))
        self.ia_prev, self.ib_prev = ia, ib
        eta_a = self.x_a - self.ls * ia
        eta_b = self.x_b - self.ls * ib
        mag2 = eta_a * eta_a + eta_b * eta_b
        k = self.k_flux * sat(self.lam2 - mag2, self.lam2)
        self.x_a += k * eta_a
        self.x_b += k * eta_b
        eta_a *= (1.0 + k)
        eta_b *= (1.0 + k)
        self.theta = wrap_2pi(math.atan2(eta_b, eta_a))
        self.err = (eta_a * eta_a + eta_b * eta_b - self.lam2) / self.lam2
        return self.theta


class SMO:
    """Classic sliding-mode current observer (SI units): current model driven
    by (v - z), z = Kslide*sat(i_hat - i, +/-E0), back-EMF = speed-scaled LPF of
    z, exact discrete-time phase compensation. See observer.c for why the
    eSMO's e_hat feedback is NOT used."""

    def __init__(self, p: ObserverParams):
        self.F, self.G = smo_fg(p.rs, p.ls, p.ts)
        ks_max = 0.9 * (1.0 + self.F) / self.G          # obs_apply_params cap
        self.kslide = min(p.kslide, ks_max)
        self.e0, self.ts, self.lam = p.e0, p.ts, p.lam
        self.wc_min = TWO_PI * p.lpf_hz
        self.lpf_k = p.lpf_k
        self.ih_a = self.ih_b = 0.0
        self.z_a = self.z_b = 0.0
        self.e_a = self.e_b = 0.0
        self.err = -1.0        # |e_hat|^2/predicted^2 - 1  (pu)
        self.ierr = 0.0        # |i_hat - i|  (A)
        self.theta = 0.0

    def seed(self, ia: float, ib: float):
        self.ih_a, self.ih_b = ia, ib
        self.z_a = self.z_b = self.e_a = self.e_b = 0.0

    def update(self, va, vb, ia, ib, w_est):
        self.ih_a = self.F * self.ih_a + self.G * (va - self.z_a)
        self.ih_b = self.F * self.ih_b + self.G * (vb - self.z_b)
        da = self.ih_a - ia
        db = self.ih_b - ib
        self.z_a = self.kslide * sat(da, self.e0)
        self.z_b = self.kslide * sat(db, self.e0)
        wc = max(self.lpf_k * abs(w_est), self.wc_min)
        alpha = min(wc * self.ts, 0.5)
        self.e_a += alpha * (self.z_a - self.e_a)
        self.e_b += alpha * (self.z_b - self.e_b)
        thw = w_est * self.ts
        sn, cs = math.sin(thw), math.cos(thw)
        p = self.F - self.G * self.kslide
        q = 1.0 - alpha
        th = math.atan2(-self.e_a, self.e_b)
        if w_est < 0.0:
            th += math.pi
        th += math.atan2(sn, cs - p) + math.atan2(sn, cs - q) - 1.5 * thw
        self.theta = wrap_2pi(th)
        a2 = (cs - p) ** 2 + sn * sn
        b2 = (cs - q) ** 2 + sn * sn
        gain = self.kslide * self.G * alpha
        emag2 = self.e_a ** 2 + self.e_b ** 2
        pred2 = (abs(w_est) * self.lam * gain) ** 2
        self.err = (emag2 * a2 * b2 / pred2 - 1.0) if pred2 > 1e-12 else -1.0
        self.ierr = math.hypot(da, db)
        return self.theta


class Observer:
    """Both observers + PLL + the firmware's health debounce."""

    def __init__(self, p: ObserverParams, mode: str = "flux"):
        assert mode in ("flux", "smo")
        self.p = p
        self.mode = mode
        self.flux = FluxObserver(p)
        self.smo = SMO(p)
        self.pll = PLL(p.pll_bw, p.ts, p.w_max)
        self.theta_est = 0.0
        self.omega_est = 0.0
        self.healthy = False
        self._ok = 0
        self._nok = 0

    def seed(self, th, w, ia, ib):
        self.flux.seed(th, ia, ib)
        self.smo.seed(ia, ib)
        self.pll.seed(th, w)
        self.theta_est, self.omega_est = self.pll.th_now, self.pll.w

    def update(self, va, vb, ia, ib):
        th_f = self.flux.update(va, vb, ia, ib)
        th_s = self.smo.update(va, vb, ia, ib, self.omega_est)
        th, w = self.pll.update(th_s if self.mode == "smo" else th_f)
        self.theta_est, self.omega_est = th, w
        ok = abs(w) > self.p.min_speed and abs(self.pll.perr) < 0.3
        if ok:
            ok = (abs(self.smo.err) < self.p.smo_tol) if self.mode == "smo" \
                else (abs(self.flux.err) < self.p.flux_tol)
        if ok:
            self._nok = 0
            self._ok = min(self._ok + 1, OBS_CONVERGED_TICKS)
            if self._ok >= OBS_CONVERGED_TICKS:
                self.healthy = True
        else:
            self._ok = 0
            self._nok = min(self._nok + 1, OBS_UNHEALTHY_TICKS)
            if self._nok >= OBS_UNHEALTHY_TICKS:
                self.healthy = False
        return th, w


# ---- plant + inverter + controller ------------------------------------------
class PMSM:
    """alpha/beta current model with a prescribed electrical speed."""

    def __init__(self, m: MotorParams, theta0: float = 0.0):
        self.rs, self.ls, self.lam = m.rs, m.ls, m.lam
        self.ia = 0.0
        self.ib = 0.0
        self.theta = theta0

    def bemf(self, theta, w):
        return -w * self.lam * math.sin(theta), w * self.lam * math.cos(theta)

    def step(self, va, vb, w, dt, n_sub=4):
        """RK2 (midpoint) over dt with the terminal voltage held (ZOH)."""
        h = dt / n_sub
        for _ in range(n_sub):
            ea, eb = self.bemf(self.theta, w)
            k1a = (va - self.rs * self.ia - ea) / self.ls
            k1b = (vb - self.rs * self.ib - eb) / self.ls
            th_m = self.theta + 0.5 * h * w
            ea, eb = self.bemf(th_m, w)
            k2a = (va - self.rs * (self.ia + 0.5 * h * k1a) - ea) / self.ls
            k2b = (vb - self.rs * (self.ib + 0.5 * h * k1b) - eb) / self.ls
            self.ia += h * k2a
            self.ib += h * k2b
            self.theta = wrap_2pi(self.theta + h * w)


def clarke(a, b, c):
    return (2.0 * a - b - c) / 3.0, (b - c) / math.sqrt(3.0)


def inv_clarke(al, be):
    a = al
    b = -0.5 * al + 0.5 * math.sqrt(3.0) * be
    c = -0.5 * al - 0.5 * math.sqrt(3.0) * be
    return a, b, c


def park(al, be, th):
    s, c = math.sin(th), math.cos(th)
    return c * al + s * be, c * be - s * al


def ipark(d, q, th):
    s, c = math.sin(th), math.cos(th)
    return c * d - s * q, s * d + c * q


class Inverter:
    """duty quantization + per-phase dead zone opposing the current."""

    def __init__(self, vbus, deadtime_duty, vdrop, ith, deadzone=True, quant=1.0 / 10000.0):
        self.vbus = vbus
        self.k = (deadtime_duty * vbus + vdrop) if deadzone else 0.0
        self.ith = ith
        self.quant = quant

    def modulate(self, va_cmd, vb_cmd, iabc, dtc_k=0.0):
        """Duty per phase for a command, computed at the sample (firmware SVGEN +
        dtc_apply). iabc = the current the firmware sees (measured); dtc_k =
        feed-forward volts added per phase, 0 = off."""
        vabc = inv_clarke(va_cmd, vb_cmd)
        duty = []
        for p in range(3):
            v = vabc[p] + dtc_k * sat(iabc[p] / self.ith, 1.0)
            d = sat(v / self.vbus, 0.5)
            if self.quant:
                d = round(d / self.quant) * self.quant
            duty.append(d)
        return duty

    def bridge(self, duty, iabc):
        """Voltage the bridge delivers for a duty over one period: duty*vbus
        minus the dead zone, which opposes the TRUE current (iabc)."""
        vout = [duty[p] * self.vbus - self.k * sat(iabc[p] / self.ith, 1.0) for p in range(3)]
        return clarke(*vout)

    def apply(self, va_cmd, vb_cmd, iabc, dtc_k=0.0):
        """Returns (va_applied, vb_applied, duty_abc) with no computation delay:
        modulate() and bridge() on the same current. Kept for callers that
        model the timing themselves."""
        duty = self.modulate(va_cmd, vb_cmd, iabc, dtc_k)
        va, vb = self.bridge(duty, iabc)
        return va, vb, duty


class PI:
    """TI PI_run series form: up = Kp*err, ui += Ki*Kp*err (clamped)."""

    def __init__(self, kp, ki, out_min, out_max):
        self.kp, self.ki, self.out_min, self.out_max = kp, ki, out_min, out_max
        self.ui = 0.0

    def run(self, ref, fbk):
        err = ref - fbk
        up = self.kp * err
        self.ui = max(self.out_min, min(self.out_max, self.ui + self.ki * self.kp * err))
        return max(self.out_min, min(self.out_max, up + self.ui))


# ---- scenarios / metrics ----------------------------------------------------
@dataclass
class Scenario:
    name: str
    speed_fn: object                 # t -> omega_elec [rad/s]
    iq_ref: float
    t_end: float
    id_ref: float = 0.0
    closed_on_estimate: bool = False
    deadzone: bool = True
    dtc: bool = True
    noise_pu: float = 0.01           # current noise sigma as a fraction of i_peak
    rs_err: float = 1.0              # observer model error factors
    ls_err: float = 1.0
    lam_err: float = 1.0
    vbus_err: float = 1.0            # observer's bus belief / real bus
    vsrc: int = 0                    # 0 duty*vbus - dz model, 1 duty*vbus, 2 cmd
    vhold: bool = True               # False = pre-2026-10-09 firmware pairing (voltage one tick early)
    seed: int = 1
    n_sub: int = 4
    theta0: float = 1.0
    overrides: dict = field(default_factory=dict)


@dataclass
class Metrics:
    name: str
    mode: str
    lock_time_s: float | None
    healthy_time_s: float | None
    steady_mean_deg: float
    steady_rms_deg: float
    max_err_deg: float
    speed_rms: float
    diverged: bool
    relock_time_s: float | None = None
    err_series: list = field(default_factory=list, repr=False)
    t_series: list = field(default_factory=list, repr=False)


def _lock_time(t, err_deg, band=5.0, hold=0.05, t_from=0.0):
    run_start = None
    for ti, e in zip(t, err_deg):
        if ti < t_from:
            continue
        if abs(e) < band:
            if run_start is None:
                run_start = ti
            if ti - run_start >= hold:
                return run_start
        else:
            run_start = None
    return None


def run_case(m: MotorParams, mode: str, sc: Scenario, vbus: float | None = None) -> Metrics:
    vbus = vbus or m.vbus_nom
    rng = random.Random(sc.seed)
    p = ObserverParams.for_motor(m, sc.rs_err, sc.ls_err, sc.lam_err, **sc.overrides)
    obs = Observer(p, mode)
    motor = PMSM(m, sc.theta0)
    inv = Inverter(vbus, m.deadtime_duty, m.vdrop, m.ith, deadzone=sc.deadzone)
    dtc_k = (m.deadtime_duty * vbus + m.vdrop) if sc.dtc else 0.0
    # current loop: ~500 Hz, TI series form
    kp = m.ls * TWO_PI * 500.0
    ki = m.rs * TS / m.ls
    vlim = 0.45 * vbus
    pi_d, pi_q = PI(kp, ki, -vlim, vlim), PI(kp, ki, -vlim, vlim)
    sigma = sc.noise_pu * m.i_peak
    vbus_obs = vbus * sc.vbus_err
    # The firmware's obs_vsrc=0 subtracts the OPERATOR's dead-zone model
    # (dtc_duty/dtc_v); model an operator who set it to match the bridge.
    dz_model = (m.deadtime_duty * vbus_obs + m.vdrop) if sc.deadzone else 0.0

    duty_prev = [0.0, 0.0, 0.0]    # duty computed at k-1: applied over (k, k+1]
    cmd_prev = (0.0, 0.0)          # pre-SVGEN command computed at k-1 (obs_vsrc 2)
    v_hold_a = v_hold_b = 0.0      # firmware s_obs_vhold: voltage over (k-1, k]
    n = int(round(sc.t_end / TS))
    t_s, err_s, w_s = [], [], []
    diverged = False
    healthy_t = None
    w0 = sc.speed_fn(0.0)
    # start at the true angle/speed, like the RUN-entry seed from a live sensor
    obs.seed(motor.theta, w0, 0.0, 0.0)
    for k in range(n):
        t = k * TS
        w = sc.speed_fn(t)
        ia = motor.ia + rng.gauss(0.0, sigma)
        ib = motor.ib + rng.gauss(0.0, sigma)
        th_true = motor.theta
        iabc_meas = inv_clarke(ia, ib)
        # firmware obs_voltage_ab(): LAST tick's duty, which the shadow-loaded
        # CMPA applies over (k, k+1], with this tick's measured current sign
        if sc.vsrc == 2:
            v_new_a, v_new_b = cmd_prev
        else:
            vp = []
            for ph in range(3):
                v = duty_prev[ph] * vbus_obs
                if sc.vsrc == 0:
                    v -= dz_model * sat(iabc_meas[ph] / m.ith, 1.0)
                vp.append(v)
            v_new_a, v_new_b = clarke(*vp)
        if sc.vhold:               # s_obs_vhold: pair i[k] with the voltage over (k-1, k]
            th_est, w_est = obs.update(v_hold_a, v_hold_b, ia, ib)
        else:
            th_est, w_est = obs.update(v_new_a, v_new_b, ia, ib)
        v_hold_a, v_hold_b = v_new_a, v_new_b
        if not (math.isfinite(th_est) and math.isfinite(w_est)):
            diverged = True
            break
        if healthy_t is None and obs.healthy:
            healthy_t = t
        th_ctrl = th_est if sc.closed_on_estimate else th_true
        i_d, i_q = park(ia, ib, th_ctrl)
        v_d = pi_d.run(sc.id_ref, i_d)
        v_q = pi_q.run(sc.iq_ref, i_q)
        va_cmd, vb_cmd = ipark(v_d, v_q, th_ctrl)
        duty = inv.modulate(va_cmd, vb_cmd, iabc_meas, dtc_k)       # loads at the next period start
        iabc_true = inv_clarke(motor.ia, motor.ib)
        va_app, vb_app = inv.bridge(duty_prev, iabc_true)          # over (k, k+1]
        duty_prev, cmd_prev = duty, (va_cmd, vb_cmd)
        motor.step(va_app, vb_app, w, TS, sc.n_sub)
        t_s.append(t)
        err_s.append(wrap_pi(th_est - th_true) * DEG)
        w_s.append(w_est - w)

    if diverged or not err_s:
        return Metrics(sc.name, mode, None, healthy_t, float("nan"), float("nan"),
                       float("nan"), float("nan"), True)
    n_st = max(1, int(0.3 * len(err_s)))
    tail = err_s[-n_st:]
    wtail = w_s[-n_st:]
    mean = sum(tail) / n_st
    rms = math.sqrt(sum(e * e for e in tail) / n_st)
    speed_rms = math.sqrt(sum(x * x for x in wtail) / n_st)
    i0 = min(len(err_s) - 1, int(0.1 / TS))
    max_err = max(abs(e) for e in err_s[i0:]) if len(err_s) > i0 else float("nan")
    return Metrics(sc.name, mode, _lock_time(t_s, err_s), healthy_t, mean, rms, max_err,
                   speed_rms, False, err_series=err_s, t_series=t_s)


def plateau(w):
    return lambda t: w


def ramp(w0, w1, t_ramp):
    return lambda t: w0 + (w1 - w0) * min(1.0, t / t_ramp)


def through_zero(w, t_cross):
    return lambda t: w * (1.0 - t / t_cross)


def standard_scenarios(m: MotorParams, vbus: float, quick: bool = False) -> list:
    """The comparison matrix. Speeds are capped at what the bus can spin."""
    w_cap = m.w_reachable(vbus)
    wr = min(m.w_rated, w_cap)
    T = 0.6 if quick else 1.2
    scs = []
    for frac in (0.02, 0.05, 0.10, 0.20, 0.50, 1.00):
        w = frac * m.w_rated
        if w > w_cap:
            continue
        scs.append(Scenario(f"w{int(frac*100):03d}", plateau(w), 0.3 * m.i_peak, T))
    w20 = 0.2 * wr
    scs.append(Scenario("ramp0_50", ramp(0.0, 0.5 * wr, 1.0), 0.3 * m.i_peak, 1.6))
    scs.append(Scenario("thru0", through_zero(w20, 0.6), 0.3 * m.i_peak, 1.2))
    scs.append(Scenario("rs+30", plateau(w20), 0.3 * m.i_peak, T, rs_err=1.3))
    scs.append(Scenario("rs-30", plateau(w20), 0.3 * m.i_peak, T, rs_err=0.7))
    scs.append(Scenario("ls+30", plateau(w20), 0.3 * m.i_peak, T, ls_err=1.3))
    scs.append(Scenario("ls-30", plateau(w20), 0.3 * m.i_peak, T, ls_err=0.7))
    scs.append(Scenario("lam-10", plateau(w20), 0.3 * m.i_peak, T, lam_err=0.9))
    scs.append(Scenario("vbus-10", plateau(w20), 0.3 * m.i_peak, T, vbus_err=0.9))
    scs.append(Scenario("dz_nodtc", plateau(w20), 0.3 * m.i_peak, T, dtc=False))
    scs.append(Scenario("dz_nodtc_vs1", plateau(w20), 0.3 * m.i_peak, T, dtc=False, vsrc=1))
    scs.append(Scenario("noise3", plateau(w20), 0.3 * m.i_peak, T, noise_pu=0.03))
    scs.append(Scenario("noise0", plateau(w20), 0.3 * m.i_peak, T, noise_pu=0.0))
    scs.append(Scenario("closed", plateau(0.3 * wr), 0.3 * m.i_peak, T, closed_on_estimate=True))
    return scs


def _fmt(x, w=8, p=1):
    if x is None:
        return "  n/a".rjust(w)
    if isinstance(x, float) and math.isnan(x):
        return "  nan".rjust(w)
    return f"{x:{w}.{p}f}"


def compare(m: MotorParams, vbus: float, quick=False, out_csv=None, modes=("flux", "smo")):
    rows = []
    print(f"# {m.name}: vbus={vbus:.0f} V, rated w_e={m.w_rated:.0f} rad/s, "
          f"bus-reachable w_e~{m.w_reachable(vbus):.0f} rad/s, min_speed={DEFAULTS[m.name]['obs_min_speed']:.0f}")
    print(f"{'scenario':<14}{'mode':<6}{'lock_ms':>9}{'healthy_ms':>11}{'mean_deg':>9}"
          f"{'rms_deg':>9}{'max_deg':>9}{'w_rms':>9}")
    for sc in standard_scenarios(m, vbus, quick):
        for mode in modes:
            r = run_case(m, mode, sc, vbus)
            rows.append(r)
            print(f"{r.name:<14}{r.mode:<6}"
                  f"{_fmt(None if r.lock_time_s is None else r.lock_time_s*1e3, 9, 0)}"
                  f"{_fmt(None if r.healthy_time_s is None else r.healthy_time_s*1e3, 11, 0)}"
                  f"{_fmt(r.steady_mean_deg, 9, 2)}{_fmt(r.steady_rms_deg, 9, 2)}"
                  f"{_fmt(r.max_err_deg, 9, 1)}{_fmt(r.speed_rms, 9, 1)}"
                  f"{'  DIVERGED' if r.diverged else ''}")
    if out_csv:
        with open(out_csv, "w", newline="") as f:
            w = csv.writer(f)
            w.writerow(["motor", "vbus", "scenario", "mode", "lock_ms", "healthy_ms",
                        "mean_deg", "rms_deg", "max_deg", "w_rms", "diverged"])
            for r in rows:
                w.writerow([m.name, vbus, r.name, r.mode,
                            "" if r.lock_time_s is None else round(r.lock_time_s * 1e3, 1),
                            "" if r.healthy_time_s is None else round(r.healthy_time_s * 1e3, 1),
                            round(r.steady_mean_deg, 3), round(r.steady_rms_deg, 3),
                            round(r.max_err_deg, 2), round(r.speed_rms, 2), int(r.diverged)])
    return rows


def sweep(m: MotorParams, vbus: float, mode: str, quick=False):
    """Coarse gain grid at 20 % speed with 1 % noise + dead zone (DTC on)."""
    w20 = 0.2 * min(m.w_rated, m.w_reachable(vbus))
    T = 0.5 if quick else 1.0
    base = Scenario("sweep", plateau(w20), 0.3 * m.i_peak, T)
    F, G = smo_fg(m.rs, m.ls)
    if mode == "flux":
        grid = [dict(obs_gamma=g) for g in (100, 300, 1000, 2000, 4000)]
    else:
        ks = [k for k in (0.25, 0.5, 1.0, 2.0) if G * k <= 1.8]
        grid = [dict(obs_smo_kslide=k * (0.5 / G) if False else k, obs_smo_e0=e)
                for k in ks for e in (0.02 * m.i_peak, 0.1 * m.i_peak, 0.5 * m.i_peak, 2.0 * m.i_peak)]
    print(f"# sweep {m.name} {mode} at w_e={w20:.0f} rad/s  (G={G:.3f})")
    for over in grid:
        r = run_case(m, mode, replace(base, overrides=over), vbus)
        print(f"{str(over):<48} lock={_fmt(None if r.lock_time_s is None else r.lock_time_s*1e3,7,0)} ms"
              f"  rms={_fmt(r.steady_rms_deg,7,2)} deg  max={_fmt(r.max_err_deg,7,1)}"
              f"{'  DIVERGED' if r.diverged else ''}")


def main(argv=None) -> int:
    ap = argparse.ArgumentParser(prog="foc_debug.observer_sim",
                                 description="Offline SMO vs flux-observer comparison (no hardware).")
    ap.add_argument("--motor", choices=sorted(MOTORS), default="teknic")
    ap.add_argument("--vbus", type=float, default=None, help="DC bus [V] (default: motor nominal)")
    ap.add_argument("--csv", default=None, help="write the table to this CSV")
    ap.add_argument("--quick", action="store_true", help="shorter runs")
    ap.add_argument("--sweep", choices=("flux", "smo"), default=None, help="gain grid instead of the table")
    a = ap.parse_args(argv)
    m = MOTORS[a.motor]
    vbus = a.vbus or m.vbus_nom
    if a.sweep:
        sweep(m, vbus, a.sweep, a.quick)
    else:
        compare(m, vbus, a.quick, a.csv)
    return 0


if __name__ == "__main__":
    sys.exit(main())

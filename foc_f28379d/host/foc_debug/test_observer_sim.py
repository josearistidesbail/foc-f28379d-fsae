"""Unit tests for observer_sim.py (stdlib unittest only -- no numpy/Qt/serial).

These pin the discrete equations that src/observer.c ports (F/G series, flux
gain, PLL gains) and the qualitative behaviour the firmware defaults rely on
(both observers lock at speed with the shipped gains, the SMO handles negative
speed, the through-zero case loses and re-acquires lock).

Run from the host/ directory:

    python -m unittest foc_debug.test_observer_sim
"""

import math
import unittest

from foc_debug import observer_sim as osim
from foc_debug.observer_sim import (EMRAX, TEKNIC, PLL, Scenario, plateau, run_case,
                                    smo_fg, smo_fg_exact, flux_k, wrap_pi, wrap_2pi, through_zero)


class TestHelpers(unittest.TestCase):
    def test_smo_fg_series_matches_exp(self):
        for m in (TEKNIC, EMRAX):
            F, G = smo_fg(m.rs, m.ls)
            Fe, Ge = smo_fg_exact(m.rs, m.ls)
            self.assertAlmostEqual(F, Fe, delta=1e-7)     # a^6/720 at a = 0.153
            self.assertAlmostEqual(G / Ge, 1.0, places=5)

    def test_smo_fg_documented_values(self):
        # gains_*.h comments: Teknic G ~ 0.394, EMRAX (v1.7 HV) G ~ 0.884
        self.assertAlmostEqual(smo_fg(TEKNIC.rs, TEKNIC.ls)[1], 0.394, places=2)
        self.assertAlmostEqual(smo_fg(EMRAX.rs, EMRAX.ls)[1], 0.884, places=2)

    def test_flux_k_is_half_gamma_ts_per_lam2(self):
        # linearized radial pole = 1 - gamma*Ts  <=>  2*k_flux*lam^2 = gamma*Ts
        for m in (TEKNIC, EMRAX):
            k = flux_k(1000.0, m.lam)
            self.assertAlmostEqual(2.0 * k * m.lam * m.lam, 1000.0 * osim.TS, places=9)

    def test_wraps(self):
        self.assertAlmostEqual(wrap_pi(3.0 * math.pi), -math.pi, places=9)
        self.assertAlmostEqual(wrap_pi(0.5), 0.5, places=12)
        self.assertAlmostEqual(wrap_2pi(-0.1), 2.0 * math.pi - 0.1, places=9)
        self.assertAlmostEqual(wrap_2pi(7.0), 7.0 - 2.0 * math.pi, places=9)

    def test_defaults_keep_smo_pole_monotonic_and_linear(self):
        # observer.c design rules: p = F - G*Kslide in [0, 1) (monotonic decay,
        # no chatter) and E0 above the discrete steady current-model error
        # G*e/|z - p| over the speeds the simulations exercise (the bus-limited
        # cap). On the EMRAX E0 = 200 A clips above ~85 % of 6000 rpm, which
        # gains_emrax.h documents; the Teknic stays linear to top speed.
        for m in (TEKNIC, EMRAX):
            F, G = smo_fg(m.rs, m.ls)
            d = osim.DEFAULTS[m.name]
            p = F - G * d["obs_smo_kslide"]
            self.assertGreaterEqual(p, 0.0, m.name)
            self.assertLess(p, 1.0, m.name)
            w = min(m.w_rated, m.w_reachable(m.vbus_nom))
            z = complex(math.cos(w * osim.TS), math.sin(w * osim.TS))
            d_max = G * w * m.lam / abs(z - p)
            self.assertGreater(d["obs_smo_e0"], d_max, m.name)


class TestPLL(unittest.TestCase):
    def test_locks_constant_speed(self):
        w = 800.0
        pll = PLL(40.0, osim.TS, 1e4)
        th = 0.0
        th_now = 0.0
        for _ in range(3000):            # 0.3 s
            th = wrap_2pi(th + w * osim.TS)
            th_now, _w = pll.update(th)
        self.assertLess(abs(wrap_pi(th_now - th)), 2e-3)
        self.assertLess(abs(pll.w - w), 0.01 * w)

    def test_constant_accel_angle_lag_is_a_over_wn2(self):
        # Type II: zero error at constant speed, constant lag a/wn^2 under accel.
        a = 5000.0
        bw = 40.0
        wn = 2.0 * math.pi * bw
        pll = PLL(bw, osim.TS, 1e5)
        th, w, th_now = 0.0, 0.0, 0.0
        for _ in range(6000):
            w += a * osim.TS
            th = wrap_2pi(th + w * osim.TS)
            th_now, _w = pll.update(th)
        lag = wrap_pi(th - th_now)
        self.assertAlmostEqual(lag / (a / (wn * wn)), 1.0, delta=0.2)


def _plateau(m, frac, **kw):
    # Fractions of the speed the NOMINAL bus can actually spin (the EMRAX's
    # 400 V bus tops out near 66 % of rated before the current loop saturates).
    w_top = min(m.w_rated, m.w_reachable(m.vbus_nom))
    return Scenario(f"p{frac}", plateau(frac * w_top), 0.3 * m.i_peak, 0.5, **kw)


class TestObserversLock(unittest.TestCase):
    def test_flux_locks_at_half_speed_exact_params(self):
        for m in (TEKNIC, EMRAX):
            r = run_case(m, "flux", _plateau(m, 0.5, noise_pu=0.0, deadzone=False, dtc=False))
            self.assertFalse(r.diverged)
            self.assertIsNotNone(r.lock_time_s)
            self.assertLess(r.lock_time_s, 0.1)
            self.assertLess(r.steady_rms_deg, 2.0, m.name)

    def test_smo_locks_at_half_speed_exact_params(self):
        for m in (TEKNIC, EMRAX):
            r = run_case(m, "smo", _plateau(m, 0.5, noise_pu=0.0, deadzone=False, dtc=False))
            self.assertFalse(r.diverged)
            self.assertIsNotNone(r.lock_time_s)
            self.assertLess(r.lock_time_s, 0.15)
            self.assertLess(r.steady_rms_deg, 5.0, m.name)

    def test_smo_negative_speed_needs_the_pi_fix(self):
        # e = w*lam*(-sin, cos): atan2(-e_a, e_b) is theta+pi for w < 0.
        for m in (TEKNIC, EMRAX):
            sc = Scenario("neg", plateau(-0.5 * m.w_rated), 0.3 * m.i_peak, 0.5,
                          noise_pu=0.0, deadzone=False, dtc=False)
            r = run_case(m, "smo", sc)
            self.assertFalse(r.diverged)
            self.assertLess(r.steady_rms_deg, 5.0, m.name)

    def test_shipped_defaults_lock_all_nominal_plateaus(self):
        # Guards the numbers baked into gains_*.h (via DEFAULTS): dead zone on,
        # DTC on, 1 % noise, at the motor's nominal bus.
        for m in (TEKNIC, EMRAX):
            for frac in (0.2, 0.5, 1.0):
                for mode in ("flux", "smo"):
                    r = run_case(m, mode, _plateau(m, frac))
                    self.assertFalse(r.diverged, (m.name, mode, frac))
                    self.assertIsNotNone(r.lock_time_s, (m.name, mode, frac))
                    self.assertLess(r.steady_rms_deg, 6.0, (m.name, mode, frac))
                    self.assertIsNotNone(r.healthy_time_s, (m.name, mode, frac))

    def test_through_zero_loses_then_relocks(self):
        # The SMO needs back-EMF: it must lose the angle around the crossing and
        # re-acquire within 0.3 s. The flux observer's voltage model has no
        # speed floor in a perfect sim (the real floor comes from dead-zone and
        # Rs error), so it only has to stay sane and be locked afterwards.
        m = TEKNIC
        w20 = 0.2 * m.w_rated
        sc = Scenario("thru0", through_zero(w20, 0.4), 0.3 * m.i_peak, 0.9)
        for mode in ("flux", "smo"):
            r = run_case(m, mode, sc)
            self.assertFalse(r.diverged, mode)
            t_lock = osim._lock_time(r.t_series, r.err_series, t_from=0.45)
            self.assertIsNotNone(t_lock, mode)
            self.assertLess(t_lock - 0.4, 0.3, mode)
            if mode == "smo":
                mid = [abs(e) for t, e in zip(r.t_series, r.err_series) if 0.35 < t < 0.45]
                self.assertGreater(max(mid), 20.0, mode)

    def test_closed_loop_on_estimate_is_stable(self):
        for m in (TEKNIC, EMRAX):
            r = run_case(m, "flux", _plateau(m, 0.3, closed_on_estimate=True))
            self.assertFalse(r.diverged, m.name)
            self.assertLess(r.steady_rms_deg, 6.0, m.name)

    def test_voltage_hold_removes_one_tick_bias(self):
        # The shadow-loaded CMPA applies last tick's duty over (k, k+1]; pairing
        # it with i[k] (vhold=False, the pre-2026-10-09 firmware) leads the
        # angle by ~w*Ts. With the one-tick hold the bias disappears.
        m = EMRAX
        w = 0.5 * m.w_rated
        for mode in ("flux", "smo"):
            ok = run_case(m, mode, Scenario("hold", plateau(w), 0.3 * m.i_peak, 0.4))
            bad = run_case(m, mode, Scenario("nohold", plateau(w), 0.3 * m.i_peak, 0.4, vhold=False))
            self.assertLess(abs(ok.steady_mean_deg), 1.0, mode)
            self.assertAlmostEqual(bad.steady_mean_deg, math.degrees(w * osim.TS), delta=3.0, msg=mode)

    def test_seed_determinism(self):
        m = EMRAX
        a = run_case(m, "smo", _plateau(m, 0.2, seed=7))
        b = run_case(m, "smo", _plateau(m, 0.2, seed=7))
        self.assertEqual(a.steady_rms_deg, b.steady_rms_deg)
        self.assertEqual(a.lock_time_s, b.lock_time_s)


if __name__ == "__main__":
    unittest.main()

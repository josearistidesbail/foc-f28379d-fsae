"""Unit tests for autotune.py (stdlib unittest only -- no numpy/Qt/serial).

Run from the host/ directory:

    python -m unittest foc_debug.test_autotune
"""

import math
import unittest

from foc_debug import autotune


class TestCurrentLoop(unittest.TestCase):
    # Teknic M-2310P bench values from config/gains/gains_teknic.h.
    R = 0.36
    L = 235e-6
    TS = 1e-4  # 1/10 kHz ISR

    def test_reproduces_documented_gains(self):
        # gains_teknic.h documents kp=0.4 (~270 Hz) and ki=0.153 for this plant.
        f_bw = (0.4 / self.L) / (2.0 * math.pi)  # bandwidth that yields kp=0.4
        kp, ki = autotune.current_loop_gains(self.R, self.L, self.TS, f_bw)
        self.assertAlmostEqual(kp, 0.4, places=6)
        self.assertAlmostEqual(ki, 0.153, places=3)

    def test_kp_scales_with_bandwidth_and_L(self):
        kp1, _ = autotune.current_loop_gains(self.R, self.L, self.TS, 300.0)
        kp2, _ = autotune.current_loop_gains(self.R, self.L, self.TS, 600.0)
        self.assertAlmostEqual(kp2 / kp1, 2.0, places=6)
        self.assertAlmostEqual(kp1, 2.0 * math.pi * 300.0 * self.L, places=9)

    def test_ki_is_series_zero_at_plant_pole(self):
        # ki_series = wz*Ts with wz = R/L (cancels the plant pole).
        _, ki = autotune.current_loop_gains(self.R, self.L, self.TS, 500.0)
        self.assertAlmostEqual(ki, (self.R / self.L) * self.TS, places=9)

    def test_dq_uses_per_axis_inductance(self):
        Ld, Lq = 125e-6, 130e-6
        g = autotune.current_loop_gains_dq(self.R, Ld, Lq, self.TS, 400.0)
        # kp tracks L; ki tracks 1/L (both at the same R, Ts, f_bw).
        self.assertAlmostEqual(g["kp_q"] / g["kp_d"], Lq / Ld, places=6)
        self.assertAlmostEqual(g["ki_q"] / g["ki_d"], Ld / Lq, places=6)

    def test_bandwidth_ceiling(self):
        self.assertAlmostEqual(autotune.current_bw_ceiling(10000.0), 1000.0)

    def test_invalid_inputs_raise(self):
        with self.assertRaises(ValueError):
            autotune.current_loop_gains(self.R, 0.0, self.TS, 300.0)


class TestSpeedLoop(unittest.TestCase):
    def test_symmetric_optimum_formulas(self):
        Km, T_eq, Ts_speed, a = 5000.0, 1.0 / (2 * math.pi * 600.0), 1e-3, 2.5
        kp, ki = autotune.speed_loop_gains(Km, T_eq, Ts_speed, a)
        self.assertAlmostEqual(kp, 1.0 / (a * Km * T_eq), places=9)
        self.assertAlmostEqual(ki, (1.0 / (a * a * T_eq)) * Ts_speed, places=9)

    def test_km_j_roundtrip(self):
        pp, flux = 4, 0.0046
        J = 2.5e-5
        Km = autotune.km_from_j(J, pp, flux)
        self.assertAlmostEqual(autotune.j_from_km(Km, pp, flux), J, places=12)


class TestFieldWeakening(unittest.TestCase):
    def test_fw_gain_formulas(self):
        vmax_fw, we_ref, Ld, Ts, f_fw, zr = 16.8, 3650.0, 235e-6, 1e-4, 10.0, 5.0
        kp, ki = autotune.fw_loop_gains(vmax_fw, we_ref, Ld, Ts, f_fw, zr)
        g = 2.0 * vmax_fw * we_ref * Ld
        self.assertAlmostEqual(kp, zr / g, places=9)
        self.assertAlmostEqual(ki, (2.0 * math.pi * f_fw / zr) * Ts, places=12)

    def test_base_speed(self):
        self.assertAlmostEqual(
            autotune.fw_base_speed_elec(16.8, 0.0046), 16.8 / 0.0046, places=6
        )


class TestStepMetrics(unittest.TestCase):
    DT = 1e-4

    def _first_order(self, tau, n_pre=50, n_post=300, ref0=0.0, ref1=1.0):
        y = [ref0] * n_pre
        for k in range(n_post):
            y.append(ref1 - (ref1 - ref0) * math.exp(-k * self.DT / tau))
        return y

    def test_first_order_no_overshoot(self):
        tau = 1e-3
        y = self._first_order(tau)
        m = autotune.step_metrics(y, self.DT)
        self.assertTrue(m.ok, m.reason)
        # 10-90% rise of a first-order system is ~2.197*tau.
        self.assertAlmostEqual(m.t_rise, 2.197 * tau, delta=0.25e-3)
        self.assertLess(m.overshoot_pct, 1.0)
        self.assertGreater(m.bw_hz, 0.0)
        self.assertTrue(45 <= m.i_step <= 70)  # edge near the commanded step

    def test_underdamped_overshoot(self):
        # Second-order step with zeta=0.3 overshoots ~37%.
        wn, zeta = 2 * math.pi * 100.0, 0.3
        sigma = zeta * wn
        wd = wn * math.sqrt(1 - zeta * zeta)
        y = [0.0] * 50
        for k in range(500):
            t = k * self.DT
            y.append(1.0 - math.exp(-sigma * t) *
                     (math.cos(wd * t) + (sigma / wd) * math.sin(wd * t)))
        m = autotune.step_metrics(y, self.DT)
        self.assertTrue(m.ok, m.reason)
        self.assertGreater(m.overshoot_pct, 25.0)
        self.assertLess(m.overshoot_pct, 50.0)

    def test_no_step_rejected(self):
        y = [0.5 + 1e-4 * math.sin(i) for i in range(200)]
        m = autotune.step_metrics(y, self.DT)
        self.assertFalse(m.ok)

    def test_fit_slope(self):
        # Constant-slope ramp: slope recovered exactly.
        slope = 1234.0
        y = [slope * k * self.DT for k in range(100)]
        self.assertAlmostEqual(autotune.fit_slope(y, self.DT), slope, places=3)

    # ---- device-reported trigger index (firmware one-shot trigger) --------
    def test_known_i_step_is_used_verbatim(self):
        tau = 1e-3
        n_pre = 50
        y = self._first_order(tau, n_pre=n_pre)
        m = autotune.step_metrics(y, self.DT, i_step=n_pre)
        self.assertTrue(m.ok, m.reason)
        self.assertEqual(m.i_step, n_pre)          # not re-derived from a crossing
        self.assertAlmostEqual(m.t_rise, 2.197 * tau, delta=0.25e-3)

    def test_known_i_step_rejects_pre_step_noise(self):
        """A noise spike before the step must not become the 10% crossing.

        Without a trigger index the 10-90% search starts at sample 0, so a single
        pre-step excursion past 10% of the step size inflates the measured rise
        time. With the device-reported edge the search starts at the step.
        """
        tau = 1e-3
        n_pre = 50
        y = self._first_order(tau, n_pre=n_pre)
        y[5] = 0.25                                 # spike well past the 10% level

        guessed = autotune.step_metrics(y, self.DT)
        known = autotune.step_metrics(y, self.DT, i_step=n_pre)
        self.assertTrue(known.ok, known.reason)
        self.assertAlmostEqual(known.t_rise, 2.197 * tau, delta=0.25e-3)
        # The blind path is fooled by the spike and reports a much longer rise.
        self.assertGreater(guessed.t_rise, known.t_rise * 2.0)

    def test_out_of_range_i_step_falls_back_to_search(self):
        tau = 1e-3
        y = self._first_order(tau)
        for bad in (None, 0, len(y), len(y) + 10):
            m = autotune.step_metrics(y, self.DT, i_step=bad)
            self.assertTrue(m.ok, f"i_step={bad}: {m.reason}")
            self.assertAlmostEqual(m.t_rise, 2.197 * tau, delta=0.25e-3)


if __name__ == "__main__":
    unittest.main()

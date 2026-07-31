"""Tests for the DC-bus sense affine calibration fit (vbuscal.py).

Run with:  python -m unittest discover -s host -p "test_*.py"
"""

import math
import unittest

from foc_debug import vbuscal
from foc_debug.vbuscal import CalPoint, fit, parse_pairs, tracking_warnings


def _synth(vpc, off, volts):
    """Noise-free points from a known (vpc, off_code) truth."""
    return [CalPoint(volts=v, code=off + v / vpc) for v in volts]


class TestFit(unittest.TestCase):
    def test_recovers_known_gain_and_offset(self):
        f = fit(_synth(0.2028, 40.0, [10.0, 30.0, 50.0]))
        self.assertAlmostEqual(f.vpc, 0.2028, places=9)
        self.assertAlmostEqual(f.off_code, 40.0, places=6)
        self.assertTrue(all(abs(r) < 1e-9 for r in f.residuals))

    def test_ratio_matches_vref_and_full_scale(self):
        f = fit(_synth(0.2028, 0.0, [20.0, 50.0]), vref=3.0)
        self.assertAlmostEqual(f.ratio, 0.2028 * 4096.0 / 3.0, places=6)

    def test_single_point_trim_would_hide_the_offset(self):
        """A gain-only trim through the origin mis-reads away from its cal point.

        This is the failure the module exists to prevent: trim at 30 V, then the
        50 V reading is low — the exact bench symptom that motivated the affine
        fit. The two-point fit gets both ends right.
        """
        vpc, off = 0.2028, 40.0
        pts = _synth(vpc, off, [30.0, 50.0])
        gain_only = 30.0 / pts[0].code          # single-point "trim the ratio"
        self.assertLess(gain_only * pts[1].code, 46.0)      # not 50 V
        f = fit(pts)
        self.assertAlmostEqual(f.volts_at(pts[1].code), 50.0, places=6)

    def test_rejects_single_point(self):
        with self.assertRaisesRegex(ValueError, "at least 2"):
            fit(_synth(0.2, 0.0, [50.0]))

    def test_rejects_non_tracking_sense(self):
        """Identical codes at different bus volts is an analog fault, not a scale one."""
        pts = [CalPoint(volts=30.0, code=148.0), CalPoint(volts=50.0, code=148.0)]
        with self.assertRaisesRegex(ValueError, "not tracking"):
            fit(pts)

    def test_rejects_inverted_slope(self):
        pts = [CalPoint(volts=30.0, code=200.0), CalPoint(volts=50.0, code=100.0)]
        with self.assertRaisesRegex(ValueError, "non-positive"):
            fit(pts)

    def test_round_trip_volts_and_code(self):
        f = fit(_synth(0.2028, 40.0, [10.0, 50.0]))
        self.assertAlmostEqual(f.volts_at(f.code_at(37.0)), 37.0, places=9)


class TestUncertainty(unittest.TestCase):
    def test_two_point_sigma_propagates_point_noise(self):
        """With 2 points the slope error comes from the points' standard errors."""
        pts = [
            CalPoint(volts=10.0, code=90.0, sigma=12.0, n=144),   # SE = 1.0 code
            CalPoint(volts=50.0, code=290.0, sigma=12.0, n=144),  # SE = 1.0 code
        ]
        f = fit(pts)
        self.assertAlmostEqual(f.sigma_vpc, f.vpc * math.sqrt(2.0) / 200.0, places=12)

    def test_extrapolation_error_scales_with_distance(self):
        pts = [
            CalPoint(volts=10.0, code=90.0, sigma=12.0, n=144),
            CalPoint(volts=50.0, code=290.0, sigma=12.0, n=144),
        ]
        f = fit(pts)
        self.assertAlmostEqual(f.uncertainty_at(400.0), 8.0 * f.uncertainty_at(50.0), places=9)

    def test_averaging_shrinks_the_standard_error(self):
        """1/sqrt(n) is what makes a ~150-code reading calibratable at all."""
        p1 = CalPoint(volts=50.0, code=148.0, sigma=12.0, n=1)
        p400 = CalPoint(volts=50.0, code=148.0, sigma=12.0, n=400)
        self.assertAlmostEqual(p1.sigma_mean, 12.0, places=9)
        self.assertAlmostEqual(p400.sigma_mean, 0.6, places=9)

    def test_three_points_sigma_from_residuals(self):
        pts = _synth(0.2, 0.0, [10.0, 30.0, 50.0])
        pts[1].volts += 0.5                    # inject meter / nonlinearity error
        f = fit(pts)
        self.assertGreater(f.sigma_vpc, 0.0)
        self.assertGreater(max(abs(r) for r in f.residuals), 0.1)


class TestTrackingWarnings(unittest.TestCase):
    def test_warns_on_tiny_code_span(self):
        pts = [CalPoint(volts=30.0, code=145.0), CalPoint(volts=50.0, code=155.0)]
        self.assertTrue(any("code span" in w for w in tracking_warnings(pts)))

    def test_warns_on_nonlinear_segment(self):
        pts = [
            CalPoint(volts=0.0, code=0.0),
            CalPoint(volts=25.0, code=125.0),
            CalPoint(volts=50.0, code=130.0),  # saturating segment
        ]
        self.assertTrue(any("nonlinear" in w for w in tracking_warnings(pts)))

    def test_no_warning_on_clean_wide_fit(self):
        self.assertEqual(tracking_warnings(_synth(0.2, 10.0, [10.0, 30.0, 50.0])), [])

    def test_repeated_voltage_detects_drift(self):
        """A repeated point that moved = drift, which mimics real curvature."""
        pts = [
            CalPoint(volts=40.0, code=103.6, sigma=0.9, n=4),
            CalPoint(volts=90.0, code=326.6, sigma=1.3, n=4),
            CalPoint(volts=40.0, code=112.0, sigma=0.9, n=4),   # came back +8 codes
        ]
        self.assertTrue(any("DRIFTED" in w for w in tracking_warnings(pts)))

    def test_repeated_voltage_within_noise_is_not_drift(self):
        pts = [
            CalPoint(volts=40.0, code=103.6, sigma=0.9, n=4),
            CalPoint(volts=90.0, code=326.6, sigma=1.3, n=4),
            CalPoint(volts=40.0, code=103.9, sigma=0.9, n=4),
        ]
        self.assertFalse(any("DRIFTED" in w for w in tracking_warnings(pts)))


class TestScopeCsvIngestion(unittest.TestCase):
    """Fitting straight from saved 'vbus' scope captures (the bench workflow)."""

    def _write(self, tmpdir, name, volts_list):
        import os
        path = os.path.join(tmpdir, name)
        with open(path, "w") as fh:
            fh.write("sample,vbus\n")
            for i, v in enumerate(volts_list):
                fh.write(f"{i},{v:.4f}\n")
        return path

    def test_recovers_codes_using_the_capture_time_ratio(self):
        import tempfile
        vpc_cap = 3.0 * 276.92 / 4096.0
        with tempfile.TemporaryDirectory() as td:
            p = self._write(td, "a.csv", [103.0 * vpc_cap, 104.0 * vpc_cap])
            pts = vbuscal.points_from_scope_csv(f"40:{p}", capture_ratio=276.92)
        self.assertAlmostEqual(pts[0].code, 103.5, places=3)
        self.assertEqual(pts[0].volts, 40.0)

    def test_effective_n_accounts_for_iir_correlation(self):
        """128 IIR-filtered samples are not 128 independent ones."""
        import tempfile
        vpc_cap = 3.0 * 276.92 / 4096.0
        with tempfile.TemporaryDirectory() as td:
            p = self._write(td, "a.csv", [(100 + (i % 3)) * vpc_cap for i in range(128)])
            pts = vbuscal.points_from_scope_csv(f"40:{p}", capture_ratio=276.92, filt_hz=50.0)
        self.assertLess(pts[0].n, 10)            # ~2, not 128
        self.assertGreaterEqual(pts[0].n, 1)

    def test_unfiltered_capture_keeps_every_sample(self):
        import tempfile
        vpc_cap = 3.0 * 276.92 / 4096.0
        with tempfile.TemporaryDirectory() as td:
            p = self._write(td, "a.csv", [(100 + (i % 3)) * vpc_cap for i in range(128)])
            pts = vbuscal.points_from_scope_csv(f"40:{p}", capture_ratio=276.92, filt_hz=0.0)
        self.assertEqual(pts[0].n, 128)

    def test_rejects_bad_spec_and_empty_file(self):
        import tempfile
        with self.assertRaisesRegex(ValueError, "VOLTS:PATH"):
            vbuscal.points_from_scope_csv("nope", capture_ratio=276.92)
        with tempfile.TemporaryDirectory() as td:
            p = self._write(td, "empty.csv", [])
            with self.assertRaisesRegex(ValueError, "no 'vbus' samples"):
                vbuscal.points_from_scope_csv(f"40:{p}", capture_ratio=276.92)


class TestParsingAndReport(unittest.TestCase):
    def test_parse_pairs(self):
        pts = parse_pairs("6.1:31, 50.2:148")
        self.assertEqual([p.volts for p in pts], [6.1, 50.2])
        self.assertEqual([p.code for p in pts], [31.0, 148.0])

    def test_parse_pairs_rejects_garbage(self):
        with self.assertRaisesRegex(ValueError, "VOLTS:CODE"):
            parse_pairs("nope")

    def test_report_mentions_header_defines(self):
        f = fit(_synth(0.2028, 40.0, [10.0, 30.0, 50.0]))
        text = vbuscal.report(f, targets=(400.0,), old_ratio=276.92, old_off=0.0)
        self.assertIn("VBUS_DIVIDER_RATIO", text)
        self.assertIn("VBUS_OFFSET_CODE", text)
        self.assertIn("400.0 V", text)
        self.assertNotIn("DO NOT BAKE", text)

    def test_report_gates_the_defines_on_a_flat_lined_fit(self):
        """A 4-codes-over-20 V flat-line still fits — it must not look usable."""
        pts = [CalPoint(volts=30.0, code=145.0), CalPoint(volts=50.0, code=149.0)]
        text = vbuscal.report(fit(pts), targets=(400.0,))
        self.assertIn("DO NOT BAKE", text)
        self.assertIn("NOT TRUSTWORTHY", text)
        # Warnings must precede the numbers, not trail them where they get missed.
        self.assertLess(text.index("NOT TRUSTWORTHY"), text.index("VBUS_DIVIDER_RATIO"))

    def test_report_does_not_claim_zero_uncertainty(self):
        """No per-point noise means the error bar is unknown, not 0.0."""
        text = vbuscal.report(fit(_synth(0.2, 0.0, [10.0, 50.0])), targets=(400.0,))
        self.assertIn("unknown", text)


if __name__ == "__main__":
    unittest.main()

"""Unit tests for foc_debug.steplog (pure stdlib, no Qt / no hardware)."""

import csv
import pathlib
import tempfile
import unittest

from foc_debug import steplog

CHANNELS = ["Id", "Iq", "Vd", "Vq", "Iu", "Iv", "Iw", "vbus", "theta_elec"]


class TestStepLog(unittest.TestCase):
    def setUp(self):
        self._tmp = tempfile.TemporaryDirectory()
        self.dir = pathlib.Path(self._tmp.name) / "step_logs"
        self.addCleanup(self._tmp.cleanup)

    def _log(self, stamp="20260808_120000"):
        return steplog.StepLog(self.dir, CHANNELS, stamp=stamp)

    def _rows(self, path):
        with open(path, newline="") as fh:
            return list(csv.reader(fh))

    # ---- lifecycle -----------------------------------------------------
    def test_no_files_until_a_step_is_logged(self):
        log = self._log()
        self.assertFalse(self.dir.exists())
        self.assertFalse(log.samples_path.exists())

    def test_first_append_creates_both_files(self):
        log = self._log()
        log.append(["Iq"], [[0.0, 1.0, 2.0]], 1e-4, 1, {"which": "current"})
        self.assertTrue(log.samples_path.exists())
        self.assertTrue(log.summary_path.exists())
        log.close()

    def test_session_stamp_is_in_both_names(self):
        log = self._log(stamp="20260101_010203")
        self.assertEqual(log.samples_path.name, "steps_20260101_010203.csv")
        self.assertEqual(log.summary_path.name,
                         "steps_20260101_010203_summary.csv")

    def test_two_sessions_do_not_share_a_file(self):
        a, b = self._log("20260808_120000"), self._log("20260808_130000")
        self.assertNotEqual(a.samples_path, b.samples_path)
        a.append(["Iq"], [[1.0]], 1e-4, 0, {})
        b.append(["Iq"], [[2.0]], 1e-4, 0, {})
        a.close()
        b.close()
        self.assertEqual(self._rows(a.samples_path)[1][3:5], ["", "1"])
        self.assertEqual(self._rows(b.samples_path)[1][3:5], ["", "2"])

    # ---- sample file ---------------------------------------------------
    def test_header_is_the_full_channel_superset(self):
        log = self._log()
        log.append(["Iq"], [[1.0]], 1e-4, 0, {})
        log.close()
        self.assertEqual(self._rows(log.samples_path)[0],
                         ["step", "sample", "t_ms"] + CHANNELS)

    def test_absent_channels_are_blank_not_zero(self):
        # A speed step carries omega only; a zero here would read as a real
        # measurement of 0 A when the two step types are loaded as one table.
        log = self._log()
        log.append(["Iq"], [[3.0]], 1e-4, 0, {})
        log.close()
        row = self._rows(log.samples_path)[1]
        cells = dict(zip(["step", "sample", "t_ms"] + CHANNELS, row))
        self.assertEqual(cells["Iq"], "3")
        self.assertEqual(cells["Id"], "")
        self.assertEqual(cells["vbus"], "")

    def test_time_is_relative_to_the_trigger_sample(self):
        log = self._log()
        log.append(["Iq"], [[0.0] * 5], 1e-3, 2, {})
        log.close()
        t = [r[2] for r in self._rows(log.samples_path)[1:]]
        self.assertEqual(t, ["-2", "-1", "0", "1", "2"])

    def test_steps_accumulate_in_one_file_with_an_index(self):
        log = self._log()
        self.assertEqual(log.append(["Iq"], [[1.0, 1.0]], 1e-4, 0, {}), 1)
        self.assertEqual(log.append(["Iq"], [[2.0, 2.0]], 1e-4, 0, {}), 2)
        log.close()
        rows = self._rows(log.samples_path)[1:]
        self.assertEqual([r[0] for r in rows], ["1", "1", "2", "2"])
        self.assertEqual(log.n_steps, 2)

    def test_channels_are_matched_by_name_not_position(self):
        # The capture's channel order follows the wire mask, which is not the
        # log's column order -- a positional write would silently transpose.
        log = self._log()
        log.append(["vbus", "Iq"], [[40.0], [2.0]], 1e-4, 0, {})
        log.close()
        cells = dict(zip(self._rows(log.samples_path)[0],
                         self._rows(log.samples_path)[1]))
        self.assertEqual(cells["Iq"], "2")
        self.assertEqual(cells["vbus"], "40")

    # ---- summary file --------------------------------------------------
    def test_summary_has_one_row_per_step(self):
        log = self._log()
        log.append(["Iq"], [[1.0]], 1e-4, 0, {"which": "current"})
        log.append(["Iq"], [[1.0]], 1e-4, 0, {"which": "manual current"})
        log.close()
        rows = self._rows(log.summary_path)
        self.assertEqual(len(rows), 3)                 # header + 2
        self.assertEqual(rows[0][0], "step")
        self.assertEqual(rows[0][1:], steplog.SUMMARY_FIELDS)
        self.assertEqual([r[0] for r in rows[1:]], ["1", "2"])

    def test_summary_writes_known_fields_and_blanks_the_rest(self):
        log = self._log()
        log.append(["Iq"], [[1.0]], 1e-4, 0,
                   {"which": "current", "target": 3.0, "final": 1.2,
                    "settled": False, "ok": True, "theta_at_step": 1.2345678})
        log.close()
        cells = dict(zip(self._rows(log.summary_path)[0],
                         self._rows(log.summary_path)[1]))
        self.assertEqual(cells["which"], "current")
        self.assertEqual(cells["target"], "3")
        self.assertEqual(cells["final"], "1.2")
        self.assertEqual(cells["settled"], "0")        # bool -> 0/1, not "False"
        self.assertEqual(cells["ok"], "1")
        self.assertEqual(cells["theta_at_step"], "1.23457")
        self.assertEqual(cells["vmag_max"], "")        # absent -> blank
        self.assertEqual(cells["reason"], "")

    def test_unknown_summary_keys_are_ignored(self):
        # Callers must not be able to widen the file mid-session: a header is
        # written once, so an extra key has to be dropped, not appended.
        log = self._log()
        log.append(["Iq"], [[1.0]], 1e-4, 0, {"nonsense": 1, "target": 2.0})
        log.close()
        rows = self._rows(log.summary_path)
        self.assertEqual(len(rows[1]), len(rows[0]))

    def test_data_is_on_disk_before_close(self):
        # A bench session often ends by yanking USB or killing the window.
        log = self._log()
        log.append(["Iq"], [[1.0, 2.0]], 1e-4, 0, {"which": "current"})
        self.assertEqual(len(self._rows(log.samples_path)), 3)   # header + 2
        self.assertEqual(len(self._rows(log.summary_path)), 2)
        log.close()

    def test_empty_capture_still_records_the_step(self):
        log = self._log()
        log.append([], [], 1e-4, 0, {"which": "current", "ok": False,
                                     "reason": "too few samples"})
        log.close()
        self.assertEqual(len(self._rows(log.samples_path)), 1)   # header only
        self.assertEqual(len(self._rows(log.summary_path)), 2)   # step recorded


if __name__ == "__main__":
    unittest.main()

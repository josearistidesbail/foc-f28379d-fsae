"""Unit tests for foc_debug.param_docs (pure stdlib, no Qt / no hardware).

The coverage test parses the firmware param table, so adding a param to
src/debug_params.c without a host tooltip fails here.
"""

import pathlib
import re
import unittest
from types import SimpleNamespace

from foc_debug import param_docs

FW_PARAMS = pathlib.Path(__file__).resolve().parents[2] / "src" / "debug_params.c"
_ROW_RE = re.compile(
    r'\{\s*0x[0-9A-Fa-f]+U,\s*PARAM_TYPE_\w+,\s*[^,]+,\s*"(\w+)"'
)


def firmware_param_names():
    return set(_ROW_RE.findall(FW_PARAMS.read_text(encoding="utf-8")))


def _info(name, read_only=False, needs_idle=False, pid=0x0057, type_str="f32"):
    return SimpleNamespace(name=name, id=pid, type_str=type_str,
                           read_only=read_only, needs_idle=needs_idle)


@unittest.skipUnless(FW_PARAMS.is_file(), "firmware source not alongside the host tools")
class TestCoverage(unittest.TestCase):
    def test_table_parses(self):
        names = firmware_param_names()
        # Sanity: the regex really reads the table (catches a format change).
        self.assertGreater(len(names), 100)
        for n in ("iq_ref", "vbus_ovr", "fault_code", "res_pll_bw", "qep_fast_en"):
            self.assertIn(n, names)

    def test_every_firmware_param_is_documented(self):
        missing = sorted(firmware_param_names() - param_docs.PARAM_DOCS.keys())
        self.assertEqual(missing, [], "add these to foc_debug/param_docs.py")

    def test_no_stale_docs(self):
        stale = sorted(param_docs.PARAM_DOCS.keys() - firmware_param_names())
        self.assertEqual(stale, [], "firmware no longer has these params")


class TestDocs(unittest.TestCase):
    def test_entries_are_well_formed(self):
        for name, entry in param_docs.PARAM_DOCS.items():
            with self.subTest(name=name):
                self.assertEqual(len(entry), 2)
                unit, text = entry
                self.assertIsInstance(unit, str)
                self.assertTrue(text.strip())

    def test_text_does_not_restate_access_flags(self):
        # Access comes from the device flags; the text must not contradict them.
        for name, (_unit, text) in param_docs.PARAM_DOCS.items():
            with self.subTest(name=name):
                self.assertNotIn("NEEDS_IDLE", text)
                self.assertNotIn("read-only", text.lower())


class TestTooltip(unittest.TestCase):
    def test_header_has_name_unit_id_type(self):
        tip = param_docs.tooltip_html(_info("dtc_v"))
        self.assertTrue(tip.startswith("<qt>") and tip.endswith("</qt>"))
        self.assertIn("<b>dtc_v</b>", tip)
        self.assertIn("[V]", tip)
        self.assertIn("0x0057", tip)
        self.assertIn("f32", tip)

    def test_access_wording_follows_flags(self):
        self.assertIn("read-only", param_docs.tooltip_html(_info("vbus", read_only=True)))
        self.assertIn("IDLE", param_docs.tooltip_html(_info("kp_d", needs_idle=True)))
        self.assertIn("LIVE", param_docs.tooltip_html(_info("iq_max")))

    def test_body_is_escaped(self):
        # phase_id_status text contains "<<"; it must not become markup.
        tip = param_docs.tooltip_html(_info("phase_id_status", read_only=True))
        self.assertIn("0x0010&lt;&lt;c", tip)
        self.assertNotIn("<<", tip)

    def test_bit_codes_stay_glued_to_their_names(self):
        tip = param_docs.tooltip_html(_info("pos_status", read_only=True))
        self.assertIn("0x080&nbsp;BLENDING", tip)
        tip = param_docs.tooltip_html(_info("state", read_only=True))
        self.assertIn("3&nbsp;RUN", tip)

    def test_unknown_param_falls_back(self):
        tip = param_docs.tooltip_html(_info("brand_new_param", pid=0x0200))
        self.assertIn("brand_new_param", tip)
        self.assertIn("0x0200", tip)
        self.assertIn("No description", tip)


if __name__ == "__main__":
    unittest.main()

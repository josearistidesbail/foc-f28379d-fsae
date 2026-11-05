"""Unit tests for the scope catalog in proto.py (stdlib unittest only).

Run from the host/ directory:

    python -m unittest foc_debug.test_proto_scope
"""

import unittest

from foc_debug import proto


class TestScopeCatalog(unittest.TestCase):
    def test_catalog_size_matches_firmware_cap(self):
        # debug_proto.h SCOPE_MAX_CHANNELS: 15, deliberately not 16 (see the
        # comment there -- 1U<<16 is UB on the 16-bit int and the payload
        # would exceed FRAME_MAX_PAYLOAD).
        self.assertEqual(proto.SCOPE_MAX_CHANNELS, 15)
        self.assertEqual(len(proto.SCOPE_CATALOG), 15)

    def test_bits_are_ascending_and_dense(self):
        bits = [b for b, _ in proto.SCOPE_CATALOG]
        self.assertEqual(bits, list(range(len(bits))))

    def test_sensorless_channels_present(self):
        names = dict(proto.SCOPE_CATALOG)
        self.assertEqual(names[13], "theta_est")
        self.assertEqual(names[14], "theta_err")

    def test_mask_to_names_sensorless(self):
        self.assertEqual(proto.mask_to_names(0x6000), ["theta_est", "theta_err"])

    def test_full_capture_fits_frame(self):
        payload = 5 + 128 * proto.SCOPE_MAX_CHANNELS * 4
        self.assertEqual(payload, 7685)
        self.assertLessEqual(payload, proto.FRAME_MAX_PAYLOAD)


if __name__ == "__main__":
    unittest.main()

"""Unit tests for the status decoders in api.py (stdlib unittest only).

Run from the host/ directory:

    python -m unittest foc_debug.test_api_status
"""

import unittest

from foc_debug import api


class TestDecoders(unittest.TestCase):
    def test_fault_reason_unchanged(self):
        self.assertEqual(api.fault_reason(0), "none")
        self.assertEqual(api.fault_reason(1 << 5), "SENSOR_LOSS")
        self.assertEqual(api.fault_reason((1 << 0) | (1 << 7)), "OVERCURRENT | CURRENT_SENSE")
        # Unknown bits survive as hex instead of being dropped.
        self.assertEqual(api.fault_reason(1 << 9), "0x200")

    def test_pos_status_failover(self):
        # OBS_ACTIVE | SENSOR_LOST | FAILOVER_DONE | DEGRADED = 0x63: what the
        # bench pos_force_lost=1 test must read back after the switch.
        self.assertEqual(
            api.pos_status_reason(0x63),
            "OBS_ACTIVE | SENSOR_LOST | FAILOVER_DONE | DEGRADED",
        )

    def test_pos_status_unknown_bits_appended(self):
        self.assertEqual(api.pos_status_reason(0x8001), "OBS_ACTIVE | 0x8000")
        self.assertEqual(api.pos_status_reason(0), "none")

    def test_warn_reason(self):
        self.assertEqual(api.warn_reason(1), "SENSORLESS_FAILOVER")
        self.assertEqual(api.warn_reason(0), "none")

    def test_angle_src_names(self):
        self.assertEqual(api.ANGLE_SRC_NAMES, {0: "sensor", 1: "observer", 2: "auto"})


if __name__ == "__main__":
    unittest.main()

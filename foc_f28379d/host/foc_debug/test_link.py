"""Unit tests for the port-filtering helpers in link.py.

Run:  python -m unittest foc_debug.test_link -v   (from host/)
"""

import unittest

from foc_debug.link import debug_ports, usb_interface_num


class FakePort:
    """Stand-in for pyserial's ListPortInfo (only the fields we read)."""

    def __init__(self, device, location=None, vid=None, pid=None,
                 serial_number=None, description="n/a"):
        self.device = device
        self.location = location
        self.vid = vid
        self.pid = pid
        self.serial_number = serial_number
        self.description = description
        self.manufacturer = None
        self.product = None
        self.interface = None


def xds100(device, iface):
    """One tty node of the bench XDS100v2 (FT2232, 0403:A6D0)."""
    return FakePort(
        device,
        location=f"1-3.1:1.{iface}",
        vid=0x0403, pid=0xA6D0, serial_number="TI7FRMJR",
        description="Texas Instruments Inc.XDS100 Ver 2.0",
    )


class TestUsbInterfaceNum(unittest.TestCase):
    def test_parses_linux_location(self):
        self.assertEqual(usb_interface_num(FakePort("a", "1-3.1:1.0")), 0)
        self.assertEqual(usb_interface_num(FakePort("a", "1-3.1:1.1")), 1)

    def test_none_when_unavailable(self):
        # Windows-style location with no interface part, and no location at all.
        self.assertIsNone(usb_interface_num(FakePort("a", "0000.0014.0000")))
        self.assertIsNone(usb_interface_num(FakePort("a", None)))


class TestDebugPorts(unittest.TestCase):
    def test_keeps_ftdi_channel_b_only(self):
        # Device-name order is deliberately reversed vs interface order, which
        # is what the bench box actually reports: ttyUSB0 IS interface 1.
        ports = [xds100("/dev/ttyUSB1", 0), xds100("/dev/ttyUSB0", 1)]
        self.assertEqual([p.device for p in debug_ports(ports)], ["/dev/ttyUSB0"])

    def test_drops_non_usb_ports(self):
        ports = [FakePort(f"/dev/ttyS{i}") for i in range(4)] + [xds100("/dev/ttyUSB0", 1)]
        self.assertEqual([p.device for p in debug_ports(ports)], ["/dev/ttyUSB0"])

    def test_cdc_probe_keeps_lowest_interface(self):
        # XDS110: ACM0 = Application/User UART, ACM1 = auxiliary data port.
        ports = [
            FakePort("/dev/ttyACM0", "1-2:1.0", 0x0451, 0xBEF3, "L110",
                     "XDS110 Class Application/User UART"),
            FakePort("/dev/ttyACM1", "1-2:1.3", 0x0451, 0xBEF3, "L110",
                     "XDS110 Class Auxiliary Data Port"),
        ]
        self.assertEqual([p.device for p in debug_ports(ports)], ["/dev/ttyACM0"])

    def test_two_probes_each_keep_one(self):
        ports = [
            xds100("/dev/ttyUSB0", 1), xds100("/dev/ttyUSB1", 0),
            FakePort("/dev/ttyUSB2", "1-4:1.0", 0x0403, 0xA6D0, "OTHERSN",
                     "Texas Instruments Inc.XDS100 Ver 2.0"),
            FakePort("/dev/ttyUSB3", "1-4:1.1", 0x0403, 0xA6D0, "OTHERSN",
                     "Texas Instruments Inc.XDS100 Ver 2.0"),
        ]
        self.assertEqual(
            [p.device for p in debug_ports(ports)], ["/dev/ttyUSB0", "/dev/ttyUSB3"]
        )

    def test_single_interface_adapter_survives(self):
        # A plain CP2102/CH340 cable has one node and must not be filtered out.
        p = FakePort("/dev/ttyUSB0", "1-1:1.0", 0x10C4, 0xEA60, "0001")
        self.assertEqual([q.device for q in debug_ports([p])], ["/dev/ttyUSB0"])

    def test_unknown_channel_shows_all(self):
        # Nothing to tell the two nodes apart: show both rather than risk
        # hiding the working one.
        ports = [
            FakePort("COM3", None, 0x0403, 0xA6D0, "TI7FRMJR", "XDS100 Ver 2.0"),
            FakePort("COM4", None, 0x0403, 0xA6D0, "TI7FRMJR", "XDS100 Ver 2.0"),
        ]
        self.assertEqual([p.device for p in debug_ports(ports)], ["COM3", "COM4"])

    def test_windows_ftdi_driver_serial_suffix(self):
        # FTDIBUS hardware IDs hide the location but append the channel letter
        # to the serial, and thereby split the probe across two group keys.
        ports = [
            FakePort("COM7", None, 0x0403, 0xA6D0, "TI7FRMJRA", "XDS100 Ver 2.0"),
            FakePort("COM8", None, 0x0403, 0xA6D0, "TI7FRMJRB", "XDS100 Ver 2.0"),
        ]
        self.assertEqual([p.device for p in debug_ports(ports)], ["COM8"])

    def test_windows_composite_location(self):
        # usbser/composite enumeration: MI_xx lands in location as ':x.N'.
        ports = [
            FakePort("COM7", "1-3:x.0", 0x0403, 0xA6D0, "TI7FRMJR", "XDS100 Ver 2.0"),
            FakePort("COM8", "1-3:x.1", 0x0403, 0xA6D0, "TI7FRMJR", "XDS100 Ver 2.0"),
        ]
        self.assertEqual([p.device for p in debug_ports(ports)], ["COM8"])

    def test_macos_device_node_suffix(self):
        # location has no interface part on macOS; the node name carries it.
        ports = [
            FakePort("/dev/cu.usbserial-TI7FRMJRA", "1-3.1", 0x0403, 0xA6D0,
                     "TI7FRMJR", "XDS100 Ver 2.0"),
            FakePort("/dev/cu.usbserial-TI7FRMJRB", "1-3.1", 0x0403, 0xA6D0,
                     "TI7FRMJR", "XDS100 Ver 2.0"),
        ]
        self.assertEqual(
            [p.device for p in debug_ports(ports)], ["/dev/cu.usbserial-TI7FRMJRB"]
        )

    def test_generic_multi_uart_adapter_is_not_pruned(self):
        # An FT4232 quad-UART cable: every channel is a real port, so pruning
        # would hide three working ones. Only debug probes get pruned.
        ports = [
            FakePort(f"/dev/ttyUSB{i}", f"1-5:1.{i}", 0x0403, 0x6011, "FT9ABCDE",
                     description="Quad RS232-HS")
            for i in range(4)
        ]
        self.assertEqual(len(debug_ports(ports)), 4)


if __name__ == "__main__":
    unittest.main()

"""link.py - SerialLink: request/response transport over the SCI backchannel.

Sends a framed request and waits for the response with a matching SEQ, with
timeout + retry. The MCU echoes the request SEQ in its response, so stale or
unsolicited frames are skipped.
"""

from __future__ import annotations

import logging
import time

import serial
from serial.tools import list_ports

from . import proto

log = logging.getLogger(__name__)


class LinkError(Exception):
    pass


class LinkTimeout(LinkError):
    pass


class NackError(LinkError):
    def __init__(self, err: int, ctx: int):
        self.err = err
        self.ctx = ctx
        name = proto.NACK_STR.get(err, f"err{err}")
        super().__init__(f"NACK {name} (ctx=0x{ctx:02X})")


# A debug probe shows up TWICE in the port list: one tty node per USB interface.
# On the XDS100v2 (FT2232, 0403:A6D0) interface 0 is channel A = the JTAG/MPSSE
# engine and interface 1 is channel B = the SCI backchannel; Linux's ftdi_sio
# binds a ttyUSB to both, even though only B is a UART. On CDC probes (XDS110)
# the LOWER interface is the user UART and the higher one is the auxiliary data
# port. Device-name order does NOT track this — on the bench box ttyUSB0 is
# interface 1 and ttyUSB1 is interface 0 — so identify the channel, never take
# "the last ttyUSB".
#
# How the channel is identified, per platform (pyserial 3.5 backends):
#   Linux    ListPortInfo.location = '1-3.1:1.1' for multi-interface devices
#            (list_ports_linux.py:56) -> authoritative bInterfaceNumber.
#   Windows  composite/usbser devices: MI_xx from the hardware ID is appended to
#            location as ':x.1' (list_ports_windows.py:367) -> same parse. Under
#            the FTDI VCP driver the FTDIBUS ID hides the location entirely, but
#            it appends the channel LETTER to the serial ('TI7FRMJRA').
#   macOS    location is bus/port only ('1-3.1'), no interface number, but the
#            device node carries the letter ('/dev/cu.usbserial-TI7FRMJRB').
# Anything else falls through to "show both", which is the safe direction: a
# duplicate entry is an annoyance, a hidden working port is a dead GUI.
FTDI_VID = 0x0403

_PROBE_KEYS = ("xds100", "xds110", "ft2232", "texas", "ti ", "tiva", "dual rs232")
_CHANNEL_LETTERS = "ABCD"


def usb_interface_num(p) -> int | None:
    """bInterfaceNumber of a port, parsed from pyserial's location string.

    Linux and Windows give e.g. '1-3.1:1.1' / '1-3:x.1' (bus-port:config.iface).
    Returns None when the platform does not report it (macOS, Windows+FTDI).
    """
    loc = getattr(p, "location", None)
    if not loc or ":" not in str(loc):
        return None
    try:
        return int(str(loc).rsplit(":", 1)[1].split(".")[-1])
    except ValueError:
        return None


def _ftdi_channel(p) -> int | None:
    """Channel index from the A/B/C/D suffix multi-channel FTDI parts carry.

    Fallback for the platforms that hide the interface number. Only consulted
    for FTDI VIDs, and only ever used to tell siblings of ONE device apart.
    """
    if getattr(p, "vid", None) != FTDI_VID:
        return None
    for s in (p.serial_number, p.device):
        if s and str(s)[-1] in _CHANNEL_LETTERS:
            return _CHANNEL_LETTERS.index(str(s)[-1])
    return None


def _channel_rank(p) -> int | None:
    """Which channel of its parent device this port is, or None if unknown."""
    n = usb_interface_num(p)
    return n if n is not None else _ftdi_channel(p)


def _group_key(p):
    """Identity of the physical device a port belongs to.

    The Windows FTDI driver reports a per-CHANNEL serial ('…A'/'…B'), so strip
    that suffix or the two halves of one probe never meet. Two distinct
    single-channel FTDI cables whose serials differ only in a trailing A vs B
    would alias here — indistinguishable from one dual-channel part at this
    layer, and vanishingly unlikely with factory-random serials.
    """
    sn = p.serial_number
    if sn and _ftdi_channel(p) is not None and str(sn)[-1] in _CHANNEL_LETTERS:
        sn = str(sn)[:-1]
    return (p.vid, p.pid, sn)


def _is_probe(p) -> bool:
    hay = " ".join(
        str(x) for x in (p.description, p.manufacturer, p.product, p.interface)
    ).lower()
    return any(k in hay for k in _PROBE_KEYS)


def debug_ports(ports=None) -> list:
    """USB serial ports, with each debug probe's non-UART sibling removed.

    Drops the pure-virtual /dev/ttyS*/COM motherboard ports (no VID) as well:
    they are never the backchannel and there can be dozens of them.

    Pruning applies ONLY to devices that identify as a debug probe — a plain
    FT4232 quad-UART adapter keeps all four nodes, since there every channel is
    a real port.
    """
    ports = list(list_ports.comports() if ports is None else ports)
    usb = [p for p in ports if getattr(p, "vid", None) is not None]

    groups: dict = {}
    for p in usb:
        groups.setdefault(_group_key(p), []).append(p)

    keep = []
    for (vid, _pid, _sn), grp in groups.items():
        ranks = [(_channel_rank(p), p) for p in grp]
        unknown = any(r is None for r, _ in ranks)
        ambiguous = len({r for r, _ in ranks}) != len(ranks)
        if len(grp) == 1 or unknown or ambiguous or not any(_is_probe(p) for p in grp):
            keep.extend(grp)
            continue
        # FTDI probes put the UART on the LAST channel (B), CDC probes such as
        # the XDS110 put the user UART on the FIRST (the aux data port follows).
        pick = max if vid == FTDI_VID else min
        keep.append(pick(ranks, key=lambda t: t[0])[1])

    keep.sort(key=lambda p: p.device)
    return keep


def autodetect_port() -> str | None:
    """Best-effort pick of the backchannel UART."""
    cands = debug_ports()
    probes = [p for p in cands if _is_probe(p)]
    if probes:
        return probes[0].device
    # No recognisable probe: only guess when there is nothing to guess between.
    return cands[0].device if len(cands) == 1 else None


class SerialLink:
    def __init__(self, port: str | None = None, baud: int = 115200, timeout: float = 1.0):
        if port is None:
            port = autodetect_port()
            if port is None:
                raise LinkError(
                    "Could not auto-detect the backchannel UART; pass --port explicitly."
                )
        self.port = port
        # Short per-read timeout; transact() enforces the overall deadline.
        self.ser = serial.Serial(port, baudrate=baud, timeout=0.05)
        self.timeout = timeout
        self.seq = 0

    def close(self):
        try:
            self.ser.close()
        except Exception:
            pass

    def __enter__(self):
        return self

    def __exit__(self, *exc):
        self.close()

    def _next_seq(self) -> int:
        s = self.seq
        self.seq = (self.seq + 1) & 0xFF
        return s

    # ---- frame reader ----------------------------------------------------
    def _read_exact(self, n: int, deadline: float) -> bytes:
        buf = bytearray()
        while len(buf) < n:
            if time.monotonic() > deadline:
                raise LinkTimeout("timed out reading frame body")
            chunk = self.ser.read(n - len(buf))
            if chunk:
                buf.extend(chunk)
        return bytes(buf)

    def _read_frame(self, deadline: float) -> proto.Frame:
        # Hunt for the sync pattern 0xAA 0x55.
        state = 0
        while True:
            if time.monotonic() > deadline:
                raise LinkTimeout("timed out waiting for frame sync")
            b = self.ser.read(1)
            if not b:
                continue
            byte = b[0]
            if state == 0:
                state = 1 if byte == proto.FRAME_SYNC0 else 0
            elif state == 1:
                if byte == proto.FRAME_SYNC1:
                    break
                state = 1 if byte == proto.FRAME_SYNC0 else 0

        hdr = self._read_exact(4, deadline)  # len_lo, len_hi, cmd, seq
        length = hdr[0] | (hdr[1] << 8)
        cmd = hdr[2]
        seq = hdr[3]
        if length > proto.FRAME_MAX_PAYLOAD:
            raise LinkError(
                f"frame LEN {length} exceeds max {proto.FRAME_MAX_PAYLOAD} "
                f"(cmd=0x{cmd:02X})"
            )
        rest = self._read_exact(length + 2, deadline)  # payload + crc
        payload = rest[:length]
        crc_rx = rest[length] | (rest[length + 1] << 8)
        crc_calc = proto.crc16_ccitt(bytes([cmd, seq]) + payload)
        if crc_rx != crc_calc:
            raise LinkError(f"CRC mismatch (rx=0x{crc_rx:04X} calc=0x{crc_calc:04X})")
        return proto.Frame(cmd=cmd, seq=seq, payload=payload)

    # ---- transaction -----------------------------------------------------
    def transact(
        self,
        cmd: int,
        payload: bytes = b"",
        *,
        retries: int = 3,
        timeout: float | None = None,
    ) -> proto.Frame:
        """Send a request and return the matching response Frame.

        Raises NackError if the MCU replied NACK for our SEQ, LinkTimeout on
        no response after `retries` attempts.
        """
        if timeout is None:
            timeout = self.timeout
        last_exc: Exception | None = None
        for attempt in range(retries):
            seq = self._next_seq()
            frame = proto.encode_frame(cmd, seq, payload)
            self.ser.reset_input_buffer()
            self.ser.write(frame)
            self.ser.flush()
            log.debug(
                "tx cmd=0x%02X seq=%d len=%d (attempt %d/%d)",
                cmd, seq, len(payload), attempt + 1, retries,
            )
            deadline = time.monotonic() + timeout
            try:
                while True:
                    rsp = self._read_frame(deadline)
                    if rsp.seq != seq:
                        log.debug("skipping stale frame cmd=0x%02X seq=%d", rsp.cmd, rsp.seq)
                        continue  # stale / unsolicited; keep looking
                    if rsp.cmd == proto.CMD_NACK and cmd != proto.CMD_NACK:
                        err = rsp.payload[0] if len(rsp.payload) > 0 else 0
                        ctx = rsp.payload[1] if len(rsp.payload) > 1 else 0
                        raise NackError(err, ctx)
                    return rsp
            except LinkTimeout as e:
                last_exc = e
                log.debug("attempt %d for cmd 0x%02X timed out: %s", attempt + 1, cmd, e)
                continue
            except LinkError as e:
                # CRC / framing glitch: retry the whole transaction.
                last_exc = e
                log.debug("attempt %d for cmd 0x%02X framing error: %s", attempt + 1, cmd, e)
                continue
        if isinstance(last_exc, NackError):
            raise last_exc
        raise LinkTimeout(f"no valid response to cmd 0x{cmd:02X} after {retries} tries: {last_exc}")

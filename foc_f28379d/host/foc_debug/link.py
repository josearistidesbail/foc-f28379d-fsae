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


def autodetect_port() -> str | None:
    """Best-effort pick of the XDS100v2 backchannel UART.

    The LAUNCHXL-F28379D presents an FT2232 with two interfaces; the second
    (higher) one is the SCI backchannel. We match on description/manufacturer
    and prefer the second matching port.
    """
    candidates = []
    for p in list_ports.comports():
        hay = " ".join(
            str(x) for x in (p.description, p.manufacturer, p.product, p.interface)
        ).lower()
        if any(k in hay for k in ("xds100", "ft2232", "texas", "ti ", "tiva", "dual rs232")):
            candidates.append(p.device)
    if not candidates:
        return None
    # Backchannel UART is typically the second interface (e.g. ttyUSB1).
    candidates.sort()
    return candidates[-1]


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

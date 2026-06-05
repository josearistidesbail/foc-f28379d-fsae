"""api.py - high-level operations over a SerialLink.

list_params / read_param / write_param / capture_scope / run / stop / state,
plus PING. Values are decoded/encoded per the parameter type table the MCU
reports via PARAM_LIST.
"""

from __future__ import annotations

import logging
import struct
from dataclasses import dataclass

from . import proto
from .link import SerialLink

log = logging.getLogger(__name__)

STATE_NAMES = {
    0: "IDLE",
    1: "CALIBRATE_OFFSETS",
    2: "ALIGN_ROTOR",
    3: "RUN",
    4: "FAULT",
}


@dataclass
class ParamInfo:
    id: int
    type: int
    flags: int
    name: str

    @property
    def read_only(self) -> bool:
        return bool(self.flags & proto.PARAM_FLAG_RO)

    @property
    def needs_idle(self) -> bool:
        return bool(self.flags & proto.PARAM_FLAG_NEEDS_IDLE)

    @property
    def type_str(self) -> str:
        return {
            proto.PARAM_TYPE_F32: "f32",
            proto.PARAM_TYPE_U16: "u16",
            proto.PARAM_TYPE_U32: "u32",
        }.get(self.type, f"t{self.type}")

    @property
    def flags_str(self) -> str:
        f = []
        if self.read_only:
            f.append("ro")
        if self.needs_idle:
            f.append("needs_idle")
        return ",".join(f) if f else "rw"


@dataclass
class ScopeCapture:
    n_samples: int
    n_channels: int
    mask: int
    names: list
    data: list  # data[ch] -> list of float, chronological order


class FocDebug:
    def __init__(self, link: SerialLink):
        self.link = link
        self._params_by_name: dict[str, ParamInfo] = {}
        self._params_by_id: dict[int, ParamInfo] = {}

    # ---- PING ------------------------------------------------------------
    def ping(self, data: bytes = b"foc-ping") -> bytes:
        rsp = self.link.transact(proto.CMD_PING, data)
        return rsp.payload

    def ping_latency(self, data: bytes = b"foc-ping") -> float:
        import time

        t0 = time.monotonic()
        echo = self.ping(data)
        dt = time.monotonic() - t0
        if echo != data:
            raise RuntimeError(f"PING echo mismatch: sent {data!r}, got {echo!r}")
        return dt

    # ---- parameters ------------------------------------------------------
    def list_params(self, refresh: bool = True) -> list:
        if refresh or not self._params_by_id:
            rsp = self.link.transact(proto.CMD_PARAM_LIST, struct.pack("<H", 0))
            entries = []
            p = rsp.payload
            ENTRY = 2 + 1 + 1 + 16
            for off in range(0, len(p) - ENTRY + 1, ENTRY):
                pid = p[off] | (p[off + 1] << 8)
                ptype = p[off + 2]
                flags = p[off + 3]
                name = bytes(p[off + 4:off + 20]).split(b"\x00", 1)[0].decode("ascii", "replace")
                entries.append(ParamInfo(id=pid, type=ptype, flags=flags, name=name))
            self._params_by_id = {e.id: e for e in entries}
            self._params_by_name = {e.name: e for e in entries}
        return list(self._params_by_id.values())

    def _resolve(self, key) -> ParamInfo:
        if not self._params_by_id:
            self.list_params()
        if isinstance(key, int):
            info = self._params_by_id.get(key)
        else:
            info = self._params_by_name.get(str(key))
            if info is None:
                try:
                    info = self._params_by_id.get(int(str(key), 0))
                except ValueError:
                    info = None
        if info is None:
            raise KeyError(f"unknown parameter {key!r}")
        return info

    def read_param(self, key):
        info = self._resolve(key)
        rsp = self.link.transact(proto.CMD_PARAM_READ, struct.pack("<H", info.id))
        p = rsp.payload
        if len(p) < 7:
            raise RuntimeError(f"short PARAM_READ response: {p!r}")
        rid = p[0] | (p[1] << 8)
        rtype = p[2]
        raw4 = bytes(p[3:7])
        if rtype == proto.PARAM_TYPE_INVALID:
            raise KeyError(f"MCU reports unknown id 0x{rid:04X}")
        return proto.unpack_value(rtype, raw4)

    def write_param(self, key, value) -> int:
        info = self._resolve(key)
        payload = struct.pack("<H", info.id) + proto.pack_value(info.type, value)
        rsp = self.link.transact(proto.CMD_PARAM_WRITE, payload)
        status = rsp.payload[0] if rsp.payload else proto.PARAM_WR_BAD_ID
        return status

    # ---- scope -----------------------------------------------------------
    def scope_config(self, decim: int = 1, mask: int = proto.SCOPE_MASK_V1) -> int:
        payload = struct.pack("<HH", mask & 0xFFFF, decim & 0xFFFF)
        rsp = self.link.transact(proto.CMD_SCOPE_CONFIG, payload)
        return rsp.payload[0] if rsp.payload else 0xFF

    def capture_scope(self, timeout: float = 3.0, retries: int = 2) -> ScopeCapture:
        # Scope frame is ~4 kB; give it a generous timeout (~0.4 s on wire @115200).
        # The async GUI worker passes a tighter bound (1.0 s / 1) so a stalled
        # capture can't tie up the I/O thread for long.
        rsp = self.link.transact(proto.CMD_SCOPE_CAPTURE, b"", timeout=timeout, retries=retries)
        p = rsp.payload
        if len(p) < 5:
            raise RuntimeError(f"short SCOPE_CAPTURE response: {len(p)} bytes")
        n = p[0] | (p[1] << 8)
        nch = p[2]
        mask = p[3] | (p[4] << 8)
        expected = 5 + n * nch * 4
        if len(p) < expected:
            raise RuntimeError(f"truncated scope payload: {len(p)} < {expected}")
        floats = struct.unpack_from("<%df" % (n * nch), p, 5)
        data = [[floats[i * nch + c] for i in range(n)] for c in range(nch)]
        # Names come from the echoed mask (ascending bit = wire order). Fall back
        # to generic labels if the mask/nch disagree (defensive against a future
        # firmware that streams more channels than the mask describes).
        names = proto.mask_to_names(mask)
        if len(names) != nch:
            names = (names + [f"ch{c}" for c in range(len(names), nch)])[:nch]
        log.debug("scope capture: %d samples x %d ch, mask=0x%04X", n, nch, mask)
        return ScopeCapture(n_samples=n, n_channels=nch, mask=mask, names=names, data=data)

    # ---- state machine ---------------------------------------------------
    def _sm_cmd(self, op: int) -> int:
        rsp = self.link.transact(proto.CMD_SM_CMD, bytes([op & 0xFF]))
        return rsp.payload[0] if rsp.payload else 0xFF

    def request_run(self) -> int:
        return self._sm_cmd(proto.SM_OP_RUN)

    def request_stop(self) -> int:
        return self._sm_cmd(proto.SM_OP_STOP)

    def clear_fault(self) -> int:
        return self._sm_cmd(proto.SM_OP_CLEAR_FAULT)

    def sm_state(self) -> int:
        rsp = self.link.transact(proto.CMD_SM_STATE, b"")
        return rsp.payload[0] if rsp.payload else 0xFF

    @staticmethod
    def state_name(state: int) -> str:
        return STATE_NAMES.get(state, f"state{state}")

"""proto.py - frame codec + constants, mirroring firmware include/debug_proto.h.

Frame layout (little-endian multi-byte fields):

    [0xAA] [0x55] [LEN_LO] [LEN_HI] [CMD] [SEQ] [PAYLOAD...] [CRC_LO] [CRC_HI]

    LEN = payload byte count.
    CRC = CRC16-CCITT (poly 0x1021, init 0xFFFF) over CMD + SEQ + PAYLOAD.

Keep every constant here in sync with debug_proto.h.
"""

from __future__ import annotations

import struct
from dataclasses import dataclass

# ---- Framing -------------------------------------------------------------
FRAME_SYNC0 = 0xAA
FRAME_SYNC1 = 0x55
# Largest response payload the host will accept. The SCOPE_CAPTURE frame is the
# biggest: with every catalog signal selected, 5 + DATALOG_LEN_SAMPLES(128) *
# SCOPE_MAX_CHANNELS(13) * 4 = 6661 bytes, so this stays comfortably above that.
# Enforced in link.py on RX. Keep in sync with debug_proto.h.
FRAME_MAX_PAYLOAD = 8192

# ---- Command codes -------------------------------------------------------
CMD_PARAM_LIST = 0x01
CMD_PARAM_READ = 0x02
CMD_PARAM_WRITE = 0x03
CMD_SCOPE_CONFIG = 0x10
CMD_SCOPE_CAPTURE = 0x11
CMD_SM_CMD = 0x20
CMD_SM_STATE = 0x21
CMD_PING = 0x7E
CMD_NACK = 0x7F

# ---- Parameter value types ----------------------------------------------
PARAM_TYPE_F32 = 0
PARAM_TYPE_U16 = 1
PARAM_TYPE_U32 = 2
PARAM_TYPE_INVALID = 0xFF

# ---- Parameter flags -----------------------------------------------------
PARAM_FLAG_RO = 0x01
PARAM_FLAG_NEEDS_IDLE = 0x02

# ---- PARAM_WRITE status codes -------------------------------------------
PARAM_WR_OK = 0
PARAM_WR_RO = 1
PARAM_WR_NEEDS_IDLE = 2
PARAM_WR_BAD_ID = 3

PARAM_WR_STR = {
    PARAM_WR_OK: "ok",
    PARAM_WR_RO: "read_only",
    PARAM_WR_NEEDS_IDLE: "needs_idle",
    PARAM_WR_BAD_ID: "bad_id",
}

# ---- SM_CMD operations ---------------------------------------------------
SM_OP_RUN = 1
SM_OP_STOP = 2
SM_OP_CLEAR_FAULT = 3
SM_OP_ALIGN = 4  # re-run CALIBRATE+ALIGN, then return to IDLE

# ---- NACK error codes ----------------------------------------------------
NACK_BAD_CRC = 1
NACK_UNKNOWN_CMD = 2
NACK_BAD_LEN = 3

NACK_STR = {
    NACK_BAD_CRC: "bad_crc",
    NACK_UNKNOWN_CMD: "unknown_cmd",
    NACK_BAD_LEN: "bad_len",
}

# ---- Scope ---------------------------------------------------------------
# Signal catalog, in ascending bit order. Mirrors debug_proto.h SCOPE_BIT_*.
# The firmware streams the masked signals in this same ascending bit order, so
# this list is the canonical bit<->name<->wire-order mapping.
SCOPE_CATALOG = [
    (0, "Id"),
    (1, "Iq"),
    (2, "theta_elec"),
    (3, "omega_elec"),
    (4, "Vd"),
    (5, "Vq"),
    (6, "Iu"),
    (7, "Iv"),
    (8, "Iw"),
    # Raw resolver SIN/COS ADC codes (RM44AC builds; 0 on other backends). Watch
    # these alongside theta_elec to tell circuit noise from ADC/scaling issues.
    (9, "res_sin"),
    (10, "res_cos"),
    # Legacy differentiate+LPF speed estimate [elec rad/s], live regardless of
    # res_w_mode. Plot against omega_elec (col 5, the SELECTED estimator) to A/B
    # the two estimators on one capture; with res_w_mode=0 they are identical
    # (RM44AC builds; 0 on other backends).
    (11, "res_w_lpf"),
    # Measured DC-bus voltage [V] (all backends). Watch it sag under load to size
    # the undervoltage trip; mirrors the static "vbus" RO param.
    (12, "vbus"),
]
SCOPE_MAX_CHANNELS = len(SCOPE_CATALOG)

# Default channel set (v1): Id, Iq, theta_elec, omega_elec.
SCOPE_CHANNELS = 4
SCOPE_MASK_V1 = 0x000F
SCOPE_CHANNEL_NAMES = ["Id", "Iq", "theta_elec", "omega_elec"]


def mask_to_names(mask: int) -> list:
    """Catalog signal names selected by `mask`, in ascending bit (= wire) order."""
    return [name for bit, name in SCOPE_CATALOG if mask & (1 << bit)]


def names_to_mask(names) -> int:
    """Bit mask for the given catalog signal names (unknown names ignored)."""
    bit_of = {name: bit for bit, name in SCOPE_CATALOG}
    mask = 0
    for n in names:
        if n in bit_of:
            mask |= 1 << bit_of[n]
    return mask


def crc16_ccitt(data: bytes, crc: int = 0xFFFF) -> int:
    """CRC16-CCITT (poly 0x1021, init 0xFFFF). Matches firmware crc16_update()."""
    for b in data:
        crc ^= (b & 0xFF) << 8
        for _ in range(8):
            if crc & 0x8000:
                crc = ((crc << 1) ^ 0x1021) & 0xFFFF
            else:
                crc = (crc << 1) & 0xFFFF
    return crc & 0xFFFF


def encode_frame(cmd: int, seq: int, payload: bytes = b"") -> bytes:
    """Build a complete on-wire frame."""
    length = len(payload)
    cmd &= 0xFF
    seq &= 0xFF
    header = bytes([FRAME_SYNC0, FRAME_SYNC1, length & 0xFF, (length >> 8) & 0xFF, cmd, seq])
    crc = crc16_ccitt(bytes([cmd, seq]) + payload)
    return header + payload + bytes([crc & 0xFF, (crc >> 8) & 0xFF])


@dataclass
class Frame:
    cmd: int
    seq: int
    payload: bytes


# ---- value (un)packing helpers ------------------------------------------
def pack_value(ptype: int, value) -> bytes:
    """Pack a Python value into the 4-byte wire field for a param type."""
    if ptype == PARAM_TYPE_F32:
        return struct.pack("<f", float(value))
    # u16 / u32 both ride in a 4-byte little-endian field.
    return struct.pack("<I", int(value) & 0xFFFFFFFF)


def unpack_value(ptype: int, raw4: bytes):
    """Decode a 4-byte wire field per param type."""
    if ptype == PARAM_TYPE_F32:
        return struct.unpack("<f", raw4)[0]
    if ptype == PARAM_TYPE_U16:
        return struct.unpack("<I", raw4)[0] & 0xFFFF
    if ptype == PARAM_TYPE_U32:
        return struct.unpack("<I", raw4)[0]
    return None

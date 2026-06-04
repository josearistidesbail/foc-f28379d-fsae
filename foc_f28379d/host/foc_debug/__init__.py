"""foc_debug - host tooling for the F28379D FOC debug serial link.

Mirrors the firmware wire protocol in include/debug_proto.h. See README.md.
"""

from .proto import (
    encode_frame,
    crc16_ccitt,
    Frame,
)
from .link import SerialLink, NackError, LinkTimeout
from .api import FocDebug, STATE_NAMES

__all__ = [
    "encode_frame",
    "crc16_ccitt",
    "Frame",
    "SerialLink",
    "NackError",
    "LinkTimeout",
    "FocDebug",
    "STATE_NAMES",
]

__version__ = "1.0.0"

//=============================================================================
// debug_proto.h - PC <-> MCU debug-link wire protocol (v1).
//
// Shared contract between firmware (this file) and the host tooling
// (host/foc_debug/proto.py mirrors every constant here). If you change a
// value here, change it there too.
//
// Frame layout (both directions), little-endian multi-byte fields:
//
//   [0xAA] [0x55] [LEN_LO] [LEN_HI] [CMD] [SEQ] [PAYLOAD...] [CRC_LO] [CRC_HI]
//
//   LEN = payload byte count (0 .. FRAME_MAX_PAYLOAD).
//   SEQ = sequence id, echoed by the responder.
//   CRC = CRC16-CCITT (poly 0x1021, init 0xFFFF) over CMD + SEQ + PAYLOAD
//         (i.e. NOT over the sync bytes or LEN field).
//
// NOTE: the C28x is a 16-bit-char machine. Every "byte" on the wire is one
// 8-bit value carried in the low 8 bits of a 16-bit word. All buffers in the
// firmware are uint16_t[] with one logical byte per element; multi-byte fields
// are packed/unpacked explicitly little-endian.
//=============================================================================
#ifndef DEBUG_PROTO_H
#define DEBUG_PROTO_H

#define FRAME_SYNC0          0xAAU
#define FRAME_SYNC1          0x55U
#define FRAME_HDR_LEN        6U     // sync0, sync1, len_lo, len_hi, cmd, seq
#define FRAME_CRC_LEN        2U
// Protocol cap for responses (requests are tiny). Must stay >= the largest
// response: SCOPE_CAPTURE = 5 + DATALOG_LEN_SAMPLES(256)*SCOPE_CHANNELS(4)*4 =
// 4101 bytes. Not enforced on the TX path here; the host (proto.py) enforces it
// on RX, so this is the value that must match there.
#define FRAME_MAX_PAYLOAD    8192U

// Largest request payload the firmware will buffer. Requests are small
// (PARAM_WRITE = 6 B); a PING can carry up to this for a baud/latency check.
#define FRAME_RX_MAX_PAYLOAD 64U

// ---- Command codes ------------------------------------------------------
#define CMD_PARAM_LIST       0x01U  // req: start_idx:u16  rsp: N*{id:u16,type:u8,flags:u8,name[16]}
#define CMD_PARAM_READ       0x02U  // req: id:u16         rsp: id:u16,type:u8,value[4]
#define CMD_PARAM_WRITE      0x03U  // req: id:u16,val[4]  rsp: status:u8
#define CMD_SCOPE_CONFIG     0x10U  // req: mask:u16,decim:u16  rsp: status:u8
#define CMD_SCOPE_CAPTURE    0x11U  // req: -  rsp: n:u16,nch:u8,mask:u16,samples[n*nch*f32]
#define CMD_SM_CMD           0x20U  // req: op:u8          rsp: state:u8
#define CMD_SM_STATE         0x21U  // req: -              rsp: state:u8
#define CMD_PING             0x7EU  // req: any            rsp: echo of request payload
#define CMD_NACK             0x7FU  // rsp: err:u8, ctx:u8

// ---- Parameter value types ----------------------------------------------
#define PARAM_TYPE_F32       0U
#define PARAM_TYPE_U16       1U
#define PARAM_TYPE_U32       2U
#define PARAM_TYPE_INVALID   0xFFU  // PARAM_READ response for an unknown id

// ---- Parameter flags ----------------------------------------------------
#define PARAM_FLAG_RO        0x01U  // read-only; PARAM_WRITE rejected
#define PARAM_FLAG_NEEDS_IDLE 0x02U // PARAM_WRITE only accepted when state == FOC_IDLE

// ---- PARAM_WRITE status codes -------------------------------------------
#define PARAM_WR_OK          0U
#define PARAM_WR_RO          1U
#define PARAM_WR_NEEDS_IDLE  2U
#define PARAM_WR_BAD_ID      3U

// ---- SM_CMD operations --------------------------------------------------
#define SM_OP_RUN            1U
#define SM_OP_STOP           2U
#define SM_OP_CLEAR_FAULT    3U

// ---- NACK error codes ---------------------------------------------------
#define NACK_BAD_CRC         1U
#define NACK_UNKNOWN_CMD     2U
#define NACK_BAD_LEN         3U

// ---- Scope channels (v1: fixed set, mask forced to SCOPE_MASK_V1) --------
// Wire channel order (selected from the g_datalog ring columns):
//   ch0 = Id, ch1 = Iq, ch2 = theta_elec, ch3 = omega_elec
#define SCOPE_CHANNELS       4U
#define SCOPE_MASK_V1        0x000FU

#endif // DEBUG_PROTO_H

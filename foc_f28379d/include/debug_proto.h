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
// response: a full SCOPE_CAPTURE with every catalog signal selected =
// 5 + DATALOG_LEN_SAMPLES(128)*SCOPE_MAX_CHANNELS(11)*4 = 5637 bytes. Not enforced
// on the TX path here (the response is streamed); the host (proto.py) enforces it
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
#define SM_OP_ALIGN          4U  // re-run CALIBRATE+ALIGN, then return to IDLE

// ---- NACK error codes ---------------------------------------------------
#define NACK_BAD_CRC         1U
#define NACK_UNKNOWN_CMD     2U
#define NACK_BAD_LEN         3U

// ---- Scope signal catalog -----------------------------------------------
// SCOPE_CONFIG carries a channel_mask:u16 selecting which catalog signals the
// firmware streams. Each catalog bit maps to one g_datalog ring column (see
// s_scope_cols[] in debug_hooks.c). Streamed channel order = ascending bit
// order; the SCOPE_CAPTURE response echoes the effective mask so the host knows
// exactly which channels (and in what order) arrived.
//
//   bit  mask    signal       datalog col
//   0    0x001   Id           1
//   1    0x002   Iq           2
//   2    0x004   theta_elec   0
//   3    0x008   omega_elec   5
//   4    0x010   Vd           3
//   5    0x020   Vq           4
//   6    0x040   Iu           7
//   7    0x080   Iv           8
//   8    0x100   Iw           9
//   9    0x200   res_sin      10   (raw resolver SIN ADC code; RM44AC only)
//  10    0x400   res_cos      11   (raw resolver COS ADC code; RM44AC only)
#define SCOPE_BIT_ID         0x0001U
#define SCOPE_BIT_IQ         0x0002U
#define SCOPE_BIT_THETA      0x0004U
#define SCOPE_BIT_OMEGA      0x0008U
#define SCOPE_BIT_VD         0x0010U
#define SCOPE_BIT_VQ         0x0020U
#define SCOPE_BIT_IU         0x0040U
#define SCOPE_BIT_IV         0x0080U
#define SCOPE_BIT_IW         0x0100U
#define SCOPE_BIT_RES_SIN    0x0200U
#define SCOPE_BIT_RES_COS    0x0400U

#define SCOPE_MAX_CHANNELS   11U       // number of catalog signals (popcount cap)

// Default channel set (v1): Id, Iq, theta_elec, omega_elec. Used when the host
// has not selected a mask (or selects an empty one).
#define SCOPE_CHANNELS       4U
#define SCOPE_MASK_V1        0x000FU

#endif // DEBUG_PROTO_H

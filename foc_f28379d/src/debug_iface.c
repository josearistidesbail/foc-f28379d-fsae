//=============================================================================
// debug_iface.c - PC <-> MCU debug link over the SCIA backchannel UART.
//
// Layered on the bare RX-ring + TX path:
//   - sciA_rx_isr()      : FIFO -> software RX ring (1 byte / 16-bit word).
//   - debug_iface_poll() : drain ring -> frame parser -> dispatch -> stream rsp.
//
// Wire protocol and command set live in debug_proto.h (mirrored by the host).
// Multi-byte fields are little-endian. The C28x is a 16-bit-char machine, so a
// "byte" is the low 8 bits of a 16-bit word everywhere here.
//
// TX is streamed straight out the FIFO (busy-waiting only on FIFO space, which
// the hardware always drains) with the CRC computed on the fly. That keeps a
// 4 kB scope response off the RAM budget. The FOC ISR preempts this loop, so
// the ~0.4 s it takes to push a scope frame at 115200 does not perturb the
// 10 kHz current loop.
//=============================================================================
#include "driverlib.h"
#include "device.h"
#include "board.h"
#include "debug_iface.h"
#include "debug_proto.h"
#include "debug_params.h"
#include "debug_hooks.h"
#include "foc_state_machine.h"

//=============================================================================
// RX ring (filled by the ISR, drained by the poll loop)
//=============================================================================
#define RX_RING_LEN  256U
#define RX_RING_MASK (RX_RING_LEN - 1U)

#pragma DATA_SECTION(s_rx_ring, ".ebss")
static volatile uint16_t s_rx_ring[RX_RING_LEN];
static volatile uint16_t s_rx_head;     // written by ISR
static volatile uint16_t s_rx_tail;     // read by super-loop

//=============================================================================
// Scope snapshot staging (up to SCOPE_MAX_CHANNELS catalog signals per slot).
//=============================================================================
#pragma DATA_SECTION(s_scope_buf, ".ebss")
static float s_scope_buf[DATALOG_LEN_SAMPLES * SCOPE_MAX_CHANNELS];

// Channel selection requested by the host via SCOPE_CONFIG. Defaults to the v1
// set (Id, Iq, theta, omega) until the host selects otherwise.
volatile uint16_t g_scope_mask = SCOPE_MASK_V1;

//=============================================================================
// CRC16-CCITT (poly 0x1021, init 0xFFFF), one 8-bit byte at a time.
//=============================================================================
static uint16_t crc16_update(uint16_t crc, uint16_t byte)
{
    uint16_t i;
    crc ^= (uint16_t)((byte & 0x00FFU) << 8);
    for(i = 0; i < 8U; i++)
    {
        if(crc & 0x8000U) crc = (uint16_t)((crc << 1) ^ 0x1021U);
        else              crc = (uint16_t)(crc << 1);
    }
    return crc;
}

static inline uint32_t f32_to_raw(float f)
{
    union { float f; uint32_t u; } c;
    c.f = f;
    return c.u;
}

//=============================================================================
// TX framer - streams a response frame directly out the SCI FIFO.
//=============================================================================
static uint16_t s_tx_crc;

static void tx_raw(uint16_t b)
{
    // Wait only for FIFO space; the transmitter drains autonomously.
    while(SCI_getTxFIFOStatus(UART_DEBUG_BASE) == SCI_FIFO_TX16) { }
    SCI_writeCharNonBlocking(UART_DEBUG_BASE, b & 0x00FFU);
}

static void frame_begin(uint16_t cmd, uint16_t seq, uint16_t len)
{
    tx_raw(FRAME_SYNC0);
    tx_raw(FRAME_SYNC1);
    tx_raw(len & 0x00FFU);
    tx_raw((len >> 8) & 0x00FFU);
    tx_raw(cmd & 0x00FFU);
    tx_raw(seq & 0x00FFU);
    s_tx_crc = 0xFFFFU;
    s_tx_crc = crc16_update(s_tx_crc, cmd);
    s_tx_crc = crc16_update(s_tx_crc, seq);
}

static void tx_pb(uint16_t b)              // payload byte (+CRC)
{
    tx_raw(b);
    s_tx_crc = crc16_update(s_tx_crc, b);
}
static void tx_pu16(uint16_t v) { tx_pb(v & 0xFFU); tx_pb((v >> 8) & 0xFFU); }
static void tx_pu32(uint32_t v)
{
    tx_pb((uint16_t)(v & 0xFFU));
    tx_pb((uint16_t)((v >> 8)  & 0xFFU));
    tx_pb((uint16_t)((v >> 16) & 0xFFU));
    tx_pb((uint16_t)((v >> 24) & 0xFFU));
}
static void frame_end(void)
{
    uint16_t c = s_tx_crc;
    tx_raw(c & 0x00FFU);
    tx_raw((c >> 8) & 0x00FFU);
}

static void send_nack(uint16_t seq, uint16_t err, uint16_t ctx)
{
    frame_begin(CMD_NACK, seq, 2U);
    tx_pb(err);
    tx_pb(ctx);
    frame_end();
}

//=============================================================================
// Frame parser state
//=============================================================================
typedef enum {
    P_SYNC0 = 0, P_SYNC1, P_LEN_LO, P_LEN_HI, P_CMD, P_SEQ, P_PAYLOAD, P_CRC_LO, P_CRC_HI
} parse_state_t;

static parse_state_t s_pstate;
static uint16_t s_p_len;
static uint16_t s_p_cmd;
static uint16_t s_p_seq;
static uint16_t s_p_idx;
static uint16_t s_p_crc_lo;
static uint16_t s_rx_payload[FRAME_RX_MAX_PAYLOAD];

//=============================================================================
// Command handlers (each reads s_rx_payload[0..s_p_len-1], replies via framer)
//=============================================================================
static void handle_ping(void)
{
    uint16_t i;
    frame_begin(CMD_PING, s_p_seq, s_p_len);
    for(i = 0; i < s_p_len; i++) tx_pb(s_rx_payload[i]);
    frame_end();
}

static void handle_param_list(void)
{
    uint16_t start = 0;
    uint16_t i, k, count;

    if(s_p_len >= 2U) start = s_rx_payload[0] | (uint16_t)(s_rx_payload[1] << 8);
    count = (start < g_param_count) ? (uint16_t)(g_param_count - start) : 0U;

    // Each entry: id:u16, type:u8, flags:u8, name[16] = 20 bytes.
    frame_begin(CMD_PARAM_LIST, s_p_seq, (uint16_t)(count * 20U));
    for(i = 0; i < count; i++)
    {
        const param_entry_t *e = &g_param_table[start + i];
        tx_pu16(e->id);
        tx_pb(e->type);
        tx_pb(e->flags);
        for(k = 0; k < PARAM_NAME_LEN; k++) tx_pb((uint16_t)e->name[k] & 0xFFU);
    }
    frame_end();
}

static void handle_param_read(void)
{
    uint16_t id, type;
    uint32_t raw = 0;
    uint16_t st;

    if(s_p_len < 2U) { send_nack(s_p_seq, NACK_BAD_LEN, CMD_PARAM_READ); return; }
    id = s_rx_payload[0] | (uint16_t)(s_rx_payload[1] << 8);
    st = param_read(id, &type, &raw);

    // Response: id:u16, type:u8, value[4]. Unknown id -> type INVALID, value 0.
    frame_begin(CMD_PARAM_READ, s_p_seq, 7U);
    tx_pu16(id);
    tx_pb((st == PARAM_WR_OK) ? type : PARAM_TYPE_INVALID);
    tx_pu32((st == PARAM_WR_OK) ? raw : 0U);
    frame_end();
}

static void handle_param_write(void)
{
    uint16_t id, st;
    uint32_t raw;

    if(s_p_len < 6U) { send_nack(s_p_seq, NACK_BAD_LEN, CMD_PARAM_WRITE); return; }
    id  = s_rx_payload[0] | (uint16_t)(s_rx_payload[1] << 8);
    raw = (uint32_t)s_rx_payload[2]
        | ((uint32_t)s_rx_payload[3] << 8)
        | ((uint32_t)s_rx_payload[4] << 16)
        | ((uint32_t)s_rx_payload[5] << 24);
    st = param_write(id, raw);

    frame_begin(CMD_PARAM_WRITE, s_p_seq, 1U);
    tx_pb(st);
    frame_end();
}

static void handle_scope_config(void)
{
    uint16_t mask, decim;
    if(s_p_len < 4U) { send_nack(s_p_seq, NACK_BAD_LEN, CMD_SCOPE_CONFIG); return; }
    // payload: channel_mask:u16, decim:u16
    mask  = s_rx_payload[0] | (uint16_t)(s_rx_payload[1] << 8);
    decim = s_rx_payload[2] | (uint16_t)(s_rx_payload[3] << 8);

    mask &= (uint16_t)((1U << SCOPE_MAX_CHANNELS) - 1U);
    g_scope_mask    = (mask == 0U) ? SCOPE_MASK_V1 : mask;
    g_datalog_decim = (decim == 0U) ? 1U : decim;

    frame_begin(CMD_SCOPE_CONFIG, s_p_seq, 1U);
    tx_pb(0U);   // status ok
    frame_end();
}

static void handle_scope_capture(void)
{
    uint16_t head, mask, nch;
    uint16_t i, c, idx;
    uint32_t payload_len;

    mask = g_scope_mask;
    nch  = debug_datalog_snapshot(s_scope_buf, &head, mask);

    // Response: n:u16, nch:u8, mask:u16, samples[n*nch*f32]
    payload_len = 5U + ((uint32_t)DATALOG_LEN_SAMPLES * nch * 4U);
    frame_begin(CMD_SCOPE_CAPTURE, s_p_seq, (uint16_t)payload_len);
    tx_pu16(DATALOG_LEN_SAMPLES);
    tx_pb(nch);
    tx_pu16(mask);

    // Reorder ring -> chronological: oldest sample sits at head.
    for(i = 0; i < DATALOG_LEN_SAMPLES; i++)
    {
        idx = (uint16_t)((head + i) & (DATALOG_LEN_SAMPLES - 1U));
        for(c = 0; c < nch; c++)
        {
            tx_pu32(f32_to_raw(s_scope_buf[(idx * nch) + c]));
        }
    }
    frame_end();
}

static void handle_sm_cmd(void)
{
    uint16_t op;
    if(s_p_len < 1U) { send_nack(s_p_seq, NACK_BAD_LEN, CMD_SM_CMD); return; }
    op = s_rx_payload[0];
    switch(op)
    {
    case SM_OP_RUN:         sm_request_run();   break;
    case SM_OP_STOP:        sm_request_stop();  break;
    case SM_OP_CLEAR_FAULT: sm_clear_fault();   break;
    case SM_OP_ALIGN:       sm_request_align(); break;
    default: break;
    }
    frame_begin(CMD_SM_CMD, s_p_seq, 1U);
    tx_pb((uint16_t)sm_get_state());
    frame_end();
}

static void handle_sm_state(void)
{
    frame_begin(CMD_SM_STATE, s_p_seq, 1U);
    tx_pb((uint16_t)sm_get_state());
    frame_end();
}

static void dispatch(void)
{
    switch(s_p_cmd)
    {
    case CMD_PING:          handle_ping();          break;
    case CMD_PARAM_LIST:    handle_param_list();    break;
    case CMD_PARAM_READ:    handle_param_read();    break;
    case CMD_PARAM_WRITE:   handle_param_write();   break;
    case CMD_SCOPE_CONFIG:  handle_scope_config();  break;
    case CMD_SCOPE_CAPTURE: handle_scope_capture(); break;
    case CMD_SM_CMD:        handle_sm_cmd();        break;
    case CMD_SM_STATE:      handle_sm_state();      break;
    default:                send_nack(s_p_seq, NACK_UNKNOWN_CMD, s_p_cmd); break;
    }
}

//=============================================================================
// Byte-at-a-time frame parser
//=============================================================================
static void parse_byte(uint16_t b)
{
    switch(s_pstate)
    {
    case P_SYNC0:
        if(b == FRAME_SYNC0) s_pstate = P_SYNC1;
        break;

    case P_SYNC1:
        if(b == FRAME_SYNC1)      s_pstate = P_LEN_LO;
        else if(b == FRAME_SYNC0) s_pstate = P_SYNC1;   // re-sync on AA AA
        else                      s_pstate = P_SYNC0;
        break;

    case P_LEN_LO:
        s_p_len = b;
        s_pstate = P_LEN_HI;
        break;

    case P_LEN_HI:
        s_p_len |= (uint16_t)(b << 8);
        if(s_p_len > FRAME_RX_MAX_PAYLOAD)
        {
            send_nack(0U, NACK_BAD_LEN, 0U);
            s_pstate = P_SYNC0;
        }
        else
        {
            s_pstate = P_CMD;
        }
        break;

    case P_CMD:
        s_p_cmd = b;
        s_pstate = P_SEQ;
        break;

    case P_SEQ:
        s_p_seq = b;
        s_p_idx = 0;
        s_pstate = (s_p_len != 0U) ? P_PAYLOAD : P_CRC_LO;
        break;

    case P_PAYLOAD:
        s_rx_payload[s_p_idx++] = b;
        if(s_p_idx >= s_p_len) s_pstate = P_CRC_LO;
        break;

    case P_CRC_LO:
        s_p_crc_lo = b;
        s_pstate = P_CRC_HI;
        break;

    case P_CRC_HI:
    {
        uint16_t crc_rx = s_p_crc_lo | (uint16_t)(b << 8);
        uint16_t crc = 0xFFFFU;
        uint16_t i;
        crc = crc16_update(crc, s_p_cmd);
        crc = crc16_update(crc, s_p_seq);
        for(i = 0; i < s_p_len; i++) crc = crc16_update(crc, s_rx_payload[i]);

        if(crc == crc_rx) dispatch();
        else              send_nack(s_p_seq, NACK_BAD_CRC, s_p_cmd);
        s_pstate = P_SYNC0;
        break;
    }

    default:
        s_pstate = P_SYNC0;
        break;
    }
}

//=============================================================================
// Public API
//=============================================================================
void debug_iface_init(void)
{
    s_rx_head = 0;
    s_rx_tail = 0;
    s_pstate  = P_SYNC0;
    // SCI peripheral, pinmux, FIFO levels, and the RX FIFO interrupt are set up
    // by SysConfig in Board_init(); the vector is registered + PIE-enabled
    // there too. We only need EINT/ERTM (done in main.c after sm_init()).
}

void debug_iface_poll(void)
{
    // Recover the SCIA receiver if it latched a break/framing/parity/overrun
    // error. On C28x, SCIRXST.RXERROR disables the receiver until a software
    // reset; without this, one line glitch (e.g. the FT2232 toggling the line
    // when the host opens the port) silences the link for the rest of the power
    // cycle. We check here in the polled context, not just the ISR, because a
    // latched error can stop the RX-FIFO interrupt from firing — so the ISR may
    // never run to fix itself. SCI_performSoftwareReset() clears the error state
    // machine while preserving the configured baud/format/FIFO setup.
    if((SCI_getRxStatus(UART_DEBUG_BASE) & SCI_RXSTATUS_ERROR) != 0U)
    {
        SCI_performSoftwareReset(UART_DEBUG_BASE);
        s_pstate = P_SYNC0;     // drop any half-parsed frame, hunt for sync
    }

    while(s_rx_tail != s_rx_head)
    {
        uint16_t b = s_rx_ring[s_rx_tail];
        s_rx_tail = (s_rx_tail + 1U) & RX_RING_MASK;
        parse_byte(b);
    }
}

//=============================================================================
// RX FIFO interrupt: drain the hardware FIFO into the software ring.
//=============================================================================
__interrupt void sciA_rx_isr(void)
{
    while(SCI_getRxFIFOStatus(UART_DEBUG_BASE) != SCI_FIFO_RX0)
    {
        uint16_t b = SCI_readCharNonBlocking(UART_DEBUG_BASE) & 0xFFU;
        uint16_t next = (s_rx_head + 1U) & RX_RING_MASK;
        if(next != s_rx_tail)
        {
            s_rx_ring[s_rx_head] = b;
            s_rx_head = next;
        }
        // else: ring full -> byte dropped silently in v1.
    }

    SCI_clearOverflowStatus(UART_DEBUG_BASE);
    SCI_clearInterruptStatus(UART_DEBUG_BASE, SCI_INT_RXFF);
    Interrupt_clearACKGroup(INT_UART_DEBUG_RX_INTERRUPT_ACK_GROUP);
}

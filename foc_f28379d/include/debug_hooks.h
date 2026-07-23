//=============================================================================
// debug_hooks.h - Datalog ring buffer, DAC mirror, scope-probe GPIO.
//
// Kept tiny on purpose: this is the easy way to see what the FOC is doing
// without an external comms link.
//=============================================================================
#ifndef DEBUG_HOOKS_H
#define DEBUG_HOOKS_H

#include "foc_types.h"
#include "debug_proto.h"

// Ring columns: 0=theta, 1=Id, 2=Iq, 3=Vd, 4=Vq, 5=omega, 6=state,
//               7=Iu, 8=Iv, 9=Iw  (cols 7/8/9 are the phase currents Iabc),
//               10=res_sin, 11=res_cos (raw resolver SIN/COS ADC codes),
//               12=res_w_lpf (legacy diff+LPF elec speed; 0 on non-RM44AC),
//               13=vbus (measured DC-bus voltage [V]).
#define DATALOG_CHANNELS    14
// Ring depth. 128 (not 256) so each per-array .ebss object (g_datalog =
// 128*14 floats = 0xe00 words, s_scope_buf = 128*13 floats = 0xd00 words) fits
// inside a single 0x1000-word F28379D RAM block: the linker's >> split places
// whole arrays per block and cannot split one array across blocks. Must stay a
// power of 2.
#define DATALOG_LEN_SAMPLES 128

extern void debug_init(void);

// Push one sample of {theta, Id, Iq, Vd, Vq, omega, state, Iu, Iv, Iw} to the
// ring buffer. Only every g_datalog_decim-th call is actually stored (see below).
extern void debug_datalog_push(const FOC_Signals_t *sig, uint16_t state);

// Capture decimation: store 1 of every g_datalog_decim pushes. 1 = every ISR.
// Set from the host via SCOPE_CONFIG. Never let it reach 0.
extern volatile uint16_t g_datalog_decim;

// Snapshot the catalog signals selected by `mask` (see debug_proto.h SCOPE_BIT_*)
// for all DATALOG_LEN_SAMPLES ring slots into dst, in ring order. Channels are
// written in ascending bit order, packed as dst[slot*nch + c]. The caller must
// provide DATALOG_LEN_SAMPLES * SCOPE_MAX_CHANNELS floats. *out_head is the
// next-write index so the caller can reorder to chronological order. Returns the
// channel count nch (popcount of the effective mask).
extern uint16_t debug_datalog_snapshot(float *dst, uint16_t *out_head, uint16_t mask);

// Mirror two float signals onto DAC-A / DAC-B for an oscilloscope view.
// scale01: maps signal*scale01 + 0.5 into [0,1] DAC range.
extern void debug_dac_set(float sig_a, float sig_b, float scale01);

// Toggle a scope pin (configured in SysConfig) on ISR entry/exit.
extern void debug_isr_scope_high(void);
extern void debug_isr_scope_low(void);

#endif // DEBUG_HOOKS_H

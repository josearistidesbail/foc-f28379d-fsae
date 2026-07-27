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

// ---- One-shot capture trigger -------------------------------------------
// The ring normally free-runs and the host's periodic SCOPE_CAPTURE grabs an
// arbitrary window, so a commanded step lands at a random offset inside it -- or
// misses entirely (at decim=1 one capture is 12.8 ms of a 250 ms poll period, so
// ~5% of steps are even visible). That makes step-response tuning a lottery.
//
// debug_datalog_trigger() turns the ring into a one-shot: the `pretrig` samples
// ALREADY in the ring become the pre-step baseline, the next
// (DATALOG_LEN_SAMPLES - pretrig) samples are recorded, then the buffer FREEZES
// so the host reads one coherent window with the trigger at a known index.
// Called from the same ISR tick that applies the stimulus, so the trigger sample
// IS the first sample with the step applied -- no host-timing jitter.
#define DL_TRIG_OFF    0U   // free-running ring (power-on default)
#define DL_TRIG_ARMED  1U   // trigger fired; filling the post-trigger window
#define DL_TRIG_DONE   2U   // frozen; buffer holds one coherent window

extern volatile uint16_t g_dl_trig_state;   // DL_TRIG_*; host RO param "trig_state"
// Chronological index of the trigger sample within the capture the host receives
// (debug_iface already un-wraps ring -> chronological from the snapshot head, so
// this indexes the delivered samples directly). Valid once state == DL_TRIG_DONE.
extern volatile uint16_t g_dl_trig_idx;     // host RO param "trig_idx"

// Fire the trigger NOW, keeping `pretrig` samples of history (clamped to
// DATALOG_LEN_SAMPLES-2). The post-trigger countdown runs on STORED samples, so
// the window is always DATALOG_LEN_SAMPLES samples regardless of g_datalog_decim.
extern void debug_datalog_trigger(uint16_t pretrig);

// Request release of a frozen buffer / return to free-running capture. Safe to
// call from main-loop (serial param) context: it only raises a flag, and the ISR
// performs the state change, so it cannot race the ISR's ARMED->DONE transition.
// Takes effect on the next ISR tick.
extern void debug_datalog_free_run(void);

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

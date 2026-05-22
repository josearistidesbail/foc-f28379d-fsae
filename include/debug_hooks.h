//=============================================================================
// debug_hooks.h - Datalog ring buffer, DAC mirror, scope-probe GPIO.
//
// Kept tiny on purpose: this is the easy way to see what the FOC is doing
// without an external comms link.
//=============================================================================
#ifndef DEBUG_HOOKS_H
#define DEBUG_HOOKS_H

#include "foc_types.h"

#define DATALOG_CHANNELS    7
#define DATALOG_LEN_SAMPLES 256        // ring buffer depth (must be power of 2)

extern void debug_init(void);

// Push one sample of {theta, Id, Iq, Vd, Vq, omega, state} to ring buffer.
extern void debug_datalog_push(const FOC_Signals_t *sig, uint16_t state);

// Mirror two float signals onto DAC-A / DAC-B for an oscilloscope view.
// scale01: maps signal*scale01 + 0.5 into [0,1] DAC range.
extern void debug_dac_set(float sig_a, float sig_b, float scale01);

// Toggle a scope pin (configured in SysConfig) on ISR entry/exit.
extern void debug_isr_scope_high(void);
extern void debug_isr_scope_low(void);

#endif // DEBUG_HOOKS_H

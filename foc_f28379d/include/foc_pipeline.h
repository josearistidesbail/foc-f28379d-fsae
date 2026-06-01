//=============================================================================
// foc_pipeline.h - FOC current loop (ISR-rate) and speed loop (1 kHz).
//=============================================================================
#ifndef FOC_PIPELINE_H
#define FOC_PIPELINE_H

#include "build_config.h"
#include "foc_types.h"

// One-time initialization of all FOC objects (Clarke, Park, IPark, SVGEN, PIs).
extern void foc_init(void);

// Read/write the live reference inputs from the slow loop / app.
extern FOC_Refs_t * foc_get_refs(void);

// Read-only access to the latest pipeline signals (for datalog / scope).
extern const FOC_Signals_t * foc_get_signals(void);

// Called from ADCA1 EOC ISR at FOC_ISR_FREQ_HZ.
// Walks: sensor -> Clarke -> Park -> PI(Id,Iq) -> IPark -> SVGEN -> PWM.
extern void foc_current_loop_isr(void);

// Called from the current-loop ISR every SPEED_LOOP_DECIM ticks.
// State machine ticks here. Speed PI is disabled for current-control bring-up.
extern void foc_speed_loop_tick(void);

#endif // FOC_PIPELINE_H

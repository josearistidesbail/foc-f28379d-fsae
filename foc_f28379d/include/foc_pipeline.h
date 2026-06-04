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

// Runtime access to the inner/outer PI gains (backed by the static PI objects
// owned by foc_pipeline.c). Used by the debug param registry so gains can be
// tuned over the serial link without rebuilding. Writes take effect on the
// next ISR; callers must gate "needs idle" policy themselves.
typedef enum {
    FOC_GAIN_KP_D = 0,
    FOC_GAIN_KI_D,
    FOC_GAIN_KP_Q,
    FOC_GAIN_KI_Q,
    FOC_GAIN_KP_W,
    FOC_GAIN_KI_W,
    FOC_GAIN_COUNT
} foc_gain_id_t;

extern float32_t foc_get_gain(foc_gain_id_t which);
extern void      foc_set_gain(foc_gain_id_t which, float32_t value);

// Read-only access to the latest pipeline signals (for datalog / scope).
extern const FOC_Signals_t * foc_get_signals(void);

// Called from ADCA1 EOC ISR at FOC_ISR_FREQ_HZ.
// Walks: sensor -> Clarke -> Park -> PI(Id,Iq) -> IPark -> SVGEN -> PWM.
extern void foc_current_loop_isr(void);

// Called from the current-loop ISR every SPEED_LOOP_DECIM ticks.
// State machine ticks here. Speed PI is disabled for current-control bring-up.
extern void foc_speed_loop_tick(void);

#endif // FOC_PIPELINE_H

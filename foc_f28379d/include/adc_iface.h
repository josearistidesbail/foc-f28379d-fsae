//=============================================================================
// adc_iface.h - ADC results, offset calibration, raw-to-engineering scaling.
//
// SysConfig wires SOCs and EOC interrupts. This header gives the FOC layer
// a clean accessor regardless of ADC channel mapping.
//=============================================================================
#ifndef ADC_IFACE_H
#define ADC_IFACE_H

#include <stdbool.h>
#include "build_config.h"
#include "foc_types.h"

extern void  adc_init(void);

// Snapshot current ADC results into engineering-unit signals.
// Subtracts measured zero-current offsets, applies shunt + gain scaling.
extern void  adc_read_phase_currents(FOC_Iabc_t *out_Iabc);
extern float adc_read_vbus(void);

#if SENSOR_BACKEND_RM44AC
// Returns sin/cos already bias-corrected and scaled to roughly [-1, +1].
extern void  adc_read_sin_cos(float *out_sin, float *out_cos);

// Runtime per-channel SIN/COS normalization (seeded from hw_*.h in adc_init,
// refined by the ALIGN calibration sweep). Amplitude stored as reciprocal.
extern volatile float g_res_sin_bias;
extern volatile float g_res_sin_ampl_inv;
extern volatile float g_res_cos_bias;
extern volatile float g_res_cos_ampl_inv;
// Low nibble 0=defaults, 1=applied, 2=rejected; 0x00F0 = clip flags.
extern volatile uint16_t g_res_cal_status;

// Commit calibration-sweep min/max codes as the new scale. Returns false (and
// keeps the current scale) if the captured spans fail the sanity gates.
extern bool adc_set_sincos_scale(uint16_t sin_min, uint16_t sin_max,
                                 uint16_t cos_min, uint16_t cos_max);
#endif

// Raw resolver SIN/COS ADC codes from the last adc_read_sin_cos() (host
// diagnostics). Declared unconditionally so the shared datalog/scope path links
// on every variant; 0 on backends that never sample sin/cos.
extern volatile uint16_t g_dbg_sin_raw;
extern volatile uint16_t g_dbg_cos_raw;

// Run during FOC_CALIBRATE_OFFSETS. Averages N raw samples per phase.
extern void  adc_calibrate_offsets(uint16_t num_samples);

#endif // ADC_IFACE_H

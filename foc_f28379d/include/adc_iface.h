//=============================================================================
// adc_iface.h - ADC results, offset calibration, raw-to-engineering scaling.
//
// SysConfig wires SOCs and EOC interrupts. This header gives the FOC layer
// a clean accessor regardless of ADC channel mapping.
//=============================================================================
#ifndef ADC_IFACE_H
#define ADC_IFACE_H

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
#endif

// Run during FOC_CALIBRATE_OFFSETS. Averages N raw samples per phase.
extern void  adc_calibrate_offsets(uint16_t num_samples);

#endif // ADC_IFACE_H

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
// Subtracts measured zero-current offsets, applies shunt + gain scaling, then
// scatters the physical channels onto motor phases via the runtime map below.
extern void  adc_read_phase_currents(FOC_Iabc_t *out_Iabc);
extern float adc_read_vbus(void);

// ---- Runtime channel -> phase mapping ------------------------------------
// The ADC inputs are fixed; the (movable) current sensors decide which motor
// phase each channel actually measures. Permutation index 0..5 over channels
// (A, B, C) = the IU/IV/IW read slots: 0:UVW 1:UWV 2:VUW 3:VWU 4:WUV 5:WVU.
// On 2-channel hardware (ISENSE_NUM_CHANNELS == 2) slot C is unused and the
// phase it maps to is always KCL-reconstructed.
extern volatile uint16_t g_isense_map;        // "isense_map" param, IDLE-only
extern volatile uint16_t g_isense_inv;        // per-channel polarity bitmask A/B/C
extern volatile float    g_isense_ch_amps[3]; // channel-domain currents [A], pre-map
extern volatile uint16_t g_isense_id_status;  // phase-ID result ("phase_id_status")

// Effective KCL selector for host readback (derived from the map on 2-channel hw).
extern uint16_t adc_isense_recon_phase(void);

// Commit the ALIGN phase-ID dwell averages as the new map + inversion mask.
// avg[c][k] = mean channel-c current at commanded field angle k*120 deg.
// Keeps the current map and returns a rejected status if the gates fail.
// (Not const-qualified: C has no implicit float(*)[3] -> const float(*)[3].)
extern uint16_t adc_isense_phase_id_commit(float avg[3][3]);

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

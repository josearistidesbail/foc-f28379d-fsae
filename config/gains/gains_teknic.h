//=============================================================================
// gains_teknic.h - PI gains and limits for the Teknic M-2310P-LN-04K.
//
// Starting point: tune-by-pole-placement.
//   Inner current loop bandwidth target  ~= 1 kHz  (omega_c = 2*pi*1000)
//   Outer speed loop bandwidth target    ~= 50 Hz
//
//   Kp_i = L * omega_c                   (per-axis)
//   Ki_i = R * omega_c * Ts              (per-axis, parallel form)
//
// PI library here uses series form via PI_run(); equivalent gains.
//=============================================================================
#ifndef GAINS_TEKNIC_H
#define GAINS_TEKNIC_H

#include "build_config.h"

// ---- Inner current loop -------------------------------------------------
// L * omega_c = 235 uH * 2*pi*1000 = 1.476
#define GAIN_KP_ID              1.476f
#define GAIN_KI_ID              0.226f      // R*omega_c*Ts = 0.36 * 6283 * 1e-4
#define GAIN_KP_IQ              1.476f
#define GAIN_KI_IQ              0.226f

// Current PI output is per-axis voltage [V], saturated at VBUS / sqrt(3).
#define VDQ_MAX_FRACTION        0.95f       // leave headroom for SVGEN

// ---- Outer speed loop ---------------------------------------------------
#define GAIN_KP_SPEED           0.015f
#define GAIN_KI_SPEED           0.0008f
#define IQ_REF_MAX_A            MOTOR_I_PEAK_A
#define IQ_REF_MIN_A            (-MOTOR_I_PEAK_A)

// ---- Reference shaping --------------------------------------------------
#define SPEED_RAMP_RAD_S2       500.0f      // accel limit
#define ID_REF_NOMINAL_A        0.0f        // 0 for SPM motor (Ld == Lq)

// ---- Alignment current --------------------------------------------------
#define ALIGN_ID_INJECT_A       1.0f
#define ALIGN_DURATION_S        1.5f

#endif // GAINS_TEKNIC_H

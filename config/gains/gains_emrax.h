//=============================================================================
// gains_emrax.h - PI gains and limits for EMRAX 208.
//
// EMRAX has lower inductance and resistance than the Teknic; current-loop
// gains are correspondingly smaller. Re-derive with your actual measured
// Rs, Ld, Lq once you've done a parameter-ID sweep on the bench.
//=============================================================================
#ifndef GAINS_EMRAX_H
#define GAINS_EMRAX_H

#include "build_config.h"

// ---- Inner current loop -------------------------------------------------
// L * omega_c (1 kHz BW) = 125 uH * 2*pi*1000 = 0.785
#define GAIN_KP_ID              0.785f
#define GAIN_KI_ID              0.0113f     // 0.018 * 6283 * 1e-4
#define GAIN_KP_IQ              0.816f      // uses Lq = 130 uH
#define GAIN_KI_IQ              0.0113f

#define VDQ_MAX_FRACTION        0.95f

// ---- Outer speed loop ---------------------------------------------------
#define GAIN_KP_SPEED           1.50f
#define GAIN_KI_SPEED           0.05f
#define IQ_REF_MAX_A            MOTOR_I_PEAK_A
#define IQ_REF_MIN_A            (-MOTOR_I_PEAK_A)

// ---- Reference shaping --------------------------------------------------
#define SPEED_RAMP_RAD_S2       80.0f       // gentle accel for traction motor
#define ID_REF_NOMINAL_A        0.0f        // start zero; MTPA can be added later

// ---- Alignment current --------------------------------------------------
// Resolver alignment uses a position-capture approach, not Id injection
// at scale - keep injection modest.
#define ALIGN_ID_INJECT_A       8.0f
#define ALIGN_DURATION_S        2.0f

#endif // GAINS_EMRAX_H

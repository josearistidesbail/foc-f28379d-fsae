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

// ---- Cross-coupling / back-EMF feedforward ------------------------------
// Compile-time default for g_dbg_decouple_en (see gains_teknic.h for the full
// note). foc_init() references this unconditionally, so every motor variant
// must define it. 0 keeps RUN bit-identical to the no-feedforward path.
#define FOC_DECOUPLE_DEFAULT        0

// ---- Field weakening (Step 11) ------------------------------------------
// Voltage-feedback FW regulator (foc_pipeline.c, RUN only, gated by g_dbg_fw_en):
// a PI on the SQUARED voltage-margin error (vmax_fw^2 - |Vdq|^2) winds id
// negative when the inverter saturates. Mapped onto TI PI_run (series form:
// Ui += Ki*Kp*error), so the effective integral gain is GAIN_KI_FW*GAIN_KP_FW
// and BOTH must be nonzero. The squared error has units V^2 -> Kp_fw is A/V^2,
// so on the 400 V bus the per-volt loop gain is large -- keep Kp_fw small.
// Conservative starting points; FW is default-OFF and the gains are live-tunable
// over serial (kp_fw/ki_fw). Bench-tune against the real bus before relying on it.
#define GAIN_KP_FW              0.001f
#define GAIN_KI_FW              0.05f
// Most-negative id the FW regulator may command [A]. Bounded well under I_PEAK
// (240 A) and the characteristic short-circuit current Isc = lambda_pm/Ld ~= 306 A;
// the flux-priority current-circle limit keeps total current under MOTOR_OC_TRIP_A.
#define FW_ID_MIN_A             (-150.0f)
// Voltage-magnitude target as a fraction of vbus*0.5 (the per-axis PI clamp
// budget). MUST be < VDQ_MAX_FRACTION so FW reacts just before the q-axis PI
// clamp saturates (|Vdq| >= |Vq|).
#define FW_VMAX_FRACTION        0.90f
// Compile-time default for the runtime enable g_dbg_fw_en (like FOC_DECOUPLE_DEFAULT).
#define FW_DEFAULT              0

#endif // GAINS_EMRAX_H

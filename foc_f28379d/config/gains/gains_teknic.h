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
// Design (for 10 kHz ISR): Kp = L*omega_c = 235uH*2*pi*1000 = 1.476,
//                          Ki = R*omega_c*Ts = 0.36*6283*1e-4 = 0.226.
// [2026-05-29 BENCH] The board currently runs at HALF clock (10 MHz crystal,
// _LAUNCHXL_F28379D not defined) so the ISR is ~5 kHz, not 10 kHz. At 5 kHz the
// 1 kHz-bandwidth design has ~108 deg of sampling-delay phase lag at crossover
// and the current loop is UNSTABLE (oscillatory railing -> phase OC trip during
// align). Detuned to ~270 Hz bandwidth (Kp/L = 0.4/235uH) for a stable loop at
// 5 kHz with healthy margin. RESTORE 1.476 / 0.226 once the clock is fixed to
// 200 MHz (add _LAUNCHXL_F28379D), then retune.
#define GAIN_KP_ID              0.4f        // BENCH (design: 1.476f @ 10 kHz)
#define GAIN_KI_ID              0.06f       // BENCH (design: 0.226f @ 10 kHz)
#define GAIN_KP_IQ              0.4f        // BENCH (design: 1.476f @ 10 kHz)
#define GAIN_KI_IQ              0.06f       // BENCH (design: 0.226f @ 10 kHz)

#define VDQ_MAX_FRACTION        0.30f       // BENCH (production: 0.95f)

// ---- Outer speed loop ---------------------------------------------------
#define GAIN_KP_SPEED           0.015f
#define GAIN_KI_SPEED           0.0008f
#define IQ_REF_MAX_A            MOTOR_I_PEAK_A
#define IQ_REF_MIN_A            (-MOTOR_I_PEAK_A)

// ---- Reference shaping --------------------------------------------------
#define SPEED_RAMP_RAD_S2       500.0f      // accel limit
#define ID_REF_NOMINAL_A        0.0f        // 0 for SPM motor (Ld == Lq)

// ---- Alignment current --------------------------------------------------
// 1 A DC into the d-axis (theta forced to 0) to pull the rotor to the phase-U
// axis. With a correctly-signed, stable loop, g_dbg_align_id_meas -> +1.0 and
// g_dbg_align_vd settles near Rs*1.0 = 0.36 V (well under the VDQ clamp).
#define ALIGN_ID_INJECT_A       1.0f
// [2026-05-29 BENCH DIAG — restore to 1.5f] Lengthened so the open-loop d/q
// probes hold long enough to read the supply meter and feel the shaft. At the
// current 2x clock scaling this 5.0f actually runs ~10 s.
#define ALIGN_DURATION_S        5.0f

#endif // GAINS_TEKNIC_H

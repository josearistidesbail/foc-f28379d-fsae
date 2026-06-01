//=============================================================================
// gains_teknic.h - PI gains and limits for the Teknic M-2310P-LN-04K.
//
// Starting point: tune-by-pole-placement.
//   Inner current loop bandwidth target  ~= 1 kHz  (omega_c = 2*pi*1000)
//   Outer speed loop bandwidth target    ~= 50 Hz
//
//   Kp_i = L * omega_c                   (per-axis)
//   Ki_i = R * Ts / L                    (per-axis, TI PI_run() series form)
//
// PI_run() integrates Ki*Kp*error, so Ki_series = Ki_parallel/Kp.
//=============================================================================
#ifndef GAINS_TEKNIC_H
#define GAINS_TEKNIC_H

#include "build_config.h"

// ---- Inner current loop -------------------------------------------------
// Conservative starting point after restoring the LaunchPad to 200 MHz SYSCLK
// and 10 kHz ISR: bandwidth ~= Kp/L = 0.4/235uH = 270 Hz.
// TI PI_run() uses series form: Ui += Ki*Kp*error, hence
// Ki = R*Ts/L = 0.36*1e-4/235uH = 0.153.
// Raise Kp gradually after validating current polarity and step response.
#define GAIN_KP_ID              0.4f
#define GAIN_KI_ID              0.153f
#define GAIN_KP_IQ              0.4f
#define GAIN_KI_IQ              0.153f

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
// DC into the d-axis (theta forced to 0) to pull the rotor to the phase-U axis.
// 0.3 A is plenty to pull/hold a small unloaded Teknic servo and keeps phase
// currents well clear of the 8 A OC trip during the initial step transient.
// With a correctly-signed, stable loop, g_dbg_align_id_meas -> +0.3 and
// g_dbg_align_vd settles near Rs*0.3 = 0.11 V (well under the VDQ clamp).
// [2026-05-31] lowered 1.0 -> 0.3 per bench (1 A felt like too much current).
#define ALIGN_ID_INJECT_A       0.3f
// [2026-05-29 BENCH DIAG — restore to 1.5f] Lengthened so the open-loop d/q
// probes hold long enough to read the supply meter and feel the shaft. At the
// current 2x clock scaling this 5.0f actually runs ~10 s.
#define ALIGN_DURATION_S        5.0f

#endif // GAINS_TEKNIC_H

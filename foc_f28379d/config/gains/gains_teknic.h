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

#define VDQ_MAX_FRACTION        0.80f       // BENCH (production: 0.95f)

// ---- Outer speed loop ---------------------------------------------------
#define GAIN_KP_SPEED           0.015f
#define GAIN_KI_SPEED           0.0008f
#define IQ_REF_MAX_A            MOTOR_I_PEAK_A
#define IQ_REF_MIN_A            (-MOTOR_I_PEAK_A)

// ---- Reference shaping --------------------------------------------------
#define SPEED_RAMP_RAD_S2       500.0f      // accel limit
#define ID_REF_NOMINAL_A        0.0f        // 0 for SPM motor (Ld == Lq)

// ---- Alignment (ramp-and-average offset capture) ------------------------
// DC into the d-axis pulls the rotor to the commanded electrical angle. The
// align controller (foc_pipeline.c) settles at theta=0, then slowly sweeps the
// commanded field through an integer number of mechanical revolutions while
// circular-averaging (encoder - commanded) electrical angle. Averaging over
// whole mech revs cancels the cogging/stiction that biased the old single-shot
// snapshot. 1.0 A is needed to drag the rotor through detent while it moves
// (well under the 8 A OC trip).
#define ALIGN_ID_INJECT_A           1.0f
#define ALIGN_SETTLE_S              1.0f    // lock to phase-U before sweeping
#define ALIGN_RAMP_MECH_REVS        2.0f    // integer revs -> cancels cogging
#define ALIGN_RAMP_MECH_SPEED_RPS   1.0f    // carrier speed [mech rev/s]

// ---- Cross-coupling / back-EMF feedforward ------------------------------
// Compile-time default for g_dbg_decouple_en. Decoupling adds
//   ff_d = -we*Lq*iq_ref,  ff_q = we*(Ld*id_ref + lambda_pm)
// to the PI outputs in FOC_RUN (foc_pipeline.c). 0 keeps RUN bit-identical to
// the no-feedforward path; flip live via CCS Expressions or the "decouple_en"
// serial param to A/B it.
#define FOC_DECOUPLE_DEFAULT        0

// ---- Field weakening (Step 11) ------------------------------------------
// Voltage-feedback FW regulator (foc_pipeline.c, RUN only, gated by g_dbg_fw_en):
// a PI on the SQUARED voltage-margin error (vmax_fw^2 - |Vdq|^2) winds id
// negative when the inverter saturates. Mapped onto TI PI_run (series form:
// Ui += Ki*Kp*error), so the effective integral gain is GAIN_KI_FW*GAIN_KP_FW
// and BOTH must be nonzero. The squared error has units V^2 -> Kp_fw is A/V^2.
// These are conservative starting points: FW is default-OFF and the gains are
// live-tunable over serial (kp_fw/ki_fw), so bench-tune once enabled. A 48 V
// SPM motor on a 12 V bench rarely reaches base speed -- real FW tuning is an
// EMRAX task; these mostly exist so the shared code compiles and can be A/B'd.
#define GAIN_KP_FW              0.01f
#define GAIN_KI_FW              0.05f
// Most-negative id the FW regulator may command [A]. Well under I_PEAK (7.1 A).
#define FW_ID_MIN_A             (-3.0f)
// Voltage-magnitude target as a fraction of vbus*0.5 (the per-axis PI clamp
// budget). MUST be < VDQ_MAX_FRACTION so FW reacts just before the q-axis PI
// clamp saturates (|Vdq| >= |Vq|).
#define FW_VMAX_FRACTION        0.70f
// Compile-time default for the runtime enable g_dbg_fw_en (like FOC_DECOUPLE_DEFAULT).
#define FW_DEFAULT              0

#endif // GAINS_TEKNIC_H

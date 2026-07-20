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

// ---- Alignment (ramp-and-average offset capture) ------------------------
// Same scheme as the QEP path (foc_pipeline.c align_step): settle at theta=0,
// then slowly sweep the commanded field through an integer number of mechanical
// revolutions while circular-averaging (resolver - commanded) electrical angle.
// Averaging over whole mech revs cancels cogging/stiction. The resolver is
// absolute, so this is about ACCURACY (cancelling the per-start-position settling
// error), not establishing a boot-relative zero.
// NOTE: ALIGN_ID_INJECT_A must be large enough to DRAG the EMRAX rotor through
// detent as the carrier sweeps. 1.0 A is a conservative starting point on this
// low-inductance traction motor; raise on the bench if the rotor stalls or skips
// (watch g_dbg_align_offset_elec settle to the same value across start positions).
// Stays well under the OC trip.
#define ALIGN_ID_INJECT_A           1.0f
#define ALIGN_SETTLE_S              3.0f    // lock to phase-U before sweeping
#define ALIGN_RAMP_MECH_REVS        5.0f    // integer revs -> cancels cogging
#define ALIGN_RAMP_MECH_SPEED_RPS   0.5f    // carrier speed [mech rev/s]; 5 Hz
                                            // elec -- keep below the ~6 Hz the
                                            // open-loop drag (ol_mod=0.11) was
                                            // bench-proven at

// Boot default for g_ol_mod ("ol_mod" param): open-loop drive in the DUTY domain
// (~peak duty deviation). 0.11 is the value bench-proven to drag the EMRAX rotor
// open-loop at ~6 Hz electrical (2026-07-14) -- enough to move it, low enough not
// to slam current into a stalled rotor.
#define OL_MOD_DEFAULT              0.11f

// Compile-time default for g_align_offset_en ("align_off_en" param). 0 = skip
// the offset-capture sweep entirely and pin the electrical offset to 0, so
// theta_elec is the RAW sensor angle. Disabled on production for now: the
// resolver front-end is still mis-scaled and noisy enough (~26 deg electrical
// RMS, see hw_control_v2.h) that the swept average is not trustworthy, and the
// bench runs better on a plain zero offset. The SIN/COS scale cal sweep
// (res_cal_en) is INDEPENDENT and stays on -- that one is still needed.
// Re-enable once the conditioning is rescaled and the noise is down.
#define ALIGN_OFFSET_CAPTURE_DEFAULT 0U

// ---- Cross-coupling / back-EMF feedforward ------------------------------
// Compile-time default for g_dbg_decouple_en (see gains_teknic.h for the full
// note). foc_init() references this unconditionally, so every motor variant
// must define it. 0 keeps RUN bit-identical to the no-feedforward path.
#define FOC_DECOUPLE_DEFAULT        0

// ---- Inner current-loop enable ------------------------------------------
// Compile-time default for g_dbg_iloop_en (also the "iloop_en" serial param).
// 1 = the d/q current PIs are enforced (normal closed-loop FOC). 0 = open-loop
// resistive voltage mode (RUN only): PIs bypassed, id_ref/iq_ref (Amps) applied
// directly as Vd=Rs*id_ref / Vq=Rs*iq_ref using the sensor angle. Keep 1 for
// normal operation; flip live for bring-up. NOTE: this ignores back-EMF, so on
// this traction motor only use open-loop mode at low/zero speed.
#define FOC_ILOOP_DEFAULT           1

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

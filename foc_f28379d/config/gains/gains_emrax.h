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
// (Original design from the pre-v1.7 parameter set, 125/130 uH / 18 mOhm; the
// kp values are now bench-tuned below, KI is unchanged.)
// [2026-11-06, FE_UFPR 4.0, 31 V] Bench-retuned to 0.5 on both axes. d-axis
// current steps at standstill (2->5->10 A): kp 0.785 overshot 45-50 % with a
// ~0.8 ms ring (phase margin ~35 deg: ~1.3 samples of loop delay at a 1.1 kHz
// crossover); kp 0.5 overshoots ~7-25 % with the same 0.1-0.2 ms rise. Ki is
// series-form, so the PI zero (Ki/Ts = 113 rad/s) does not move with kp.
#define GAIN_KP_ID              0.50f
#define GAIN_KI_ID              0.0113f     // 0.018 * 6283 * 1e-4
#define GAIN_KP_IQ              0.50f       // Lq ~= Ld on this machine
#define GAIN_KI_IQ              0.0113f

#define VDQ_MAX_FRACTION        0.95f

// ---- Outer speed loop ---------------------------------------------------
// Bench-tuned 2026-11-06 (FE_UFPR 4.0, 31 V, unloaded EMRAX, resolver PLL
// speed estimate at 40 Hz). Series PI, units A per elec rad/s, Ts = 1 ms.
// Plant: d(w_e)/dt = 1.5*pp^2*lambda/J * iq = ~227 (rad/s^2)/A with the bare
// rotor (J ~0.0256 kg m^2 datasheet; the bench ramps gave ~0.3 A extra Iq for
// +/-78 rad/s^2 over a ~0.85 A friction floor -> ~0.022), so kp 0.35 -> crossover ~79 rad/s (12.5 Hz), at
// most a quarter of the 40 Hz estimator. Ki: PI zero at Ki/Ts = 20 rad/s, a
// quarter of crossover. Ramp steps 0/30/60 elec rad/s: overshoot 2-3 rad/s,
// no oscillation; kp 0.6 also well damped (only more Iq ripple). The old
// 1.5 / 0.05 crossed at ~54 Hz, past the estimator bandwidth -> unstable with
// the PLL. Crossover scales with 1/J: re-tune (raise kp) once the motor drives
// real inertia (the car), keeping crossover <= f_estimator/4.
#define GAIN_KP_SPEED           0.35f
#define GAIN_KI_SPEED           0.02f
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
// ALIGN_ID_INJECT_A = boot value of the live "align_id_a" param: the closed-loop
// current that DRAGS the rotor through friction + cogging during the settle and
// both sweeps (every calibration stage after phase-ID is closed-loop, so this is
// the same amps at any DC-link voltage). 1 A stalled on the bench (friction alone
// is ~0.85 A of Iq at speed). Bench-tuned value: see bring-up K in CLAUDE.md.
#define ALIGN_ID_INJECT_A           8.0f
#define ALIGN_SETTLE_S              3.0f    // lock to phase-U before sweeping
#define ALIGN_RAMP_MECH_REVS        5.0f    // integer revs -> cancels cogging
#define ALIGN_RAMP_MECH_SPEED_RPS   0.5f    // carrier speed [mech rev/s]; 5 Hz
                                            // elec (proven with the old open-loop
                                            // drag; kept for the closed-loop one)


// Open-loop drive level of the ol_run BENCH TOOL only (FOC_OPENLOOP). Since
// 2026-11-06 calibration no longer uses it (closed-loop at align_id_a). It is
// a DUTY, so its volts scale with the bus: 0.10 = 3.1 V at the 31 V bench
// (~17 A phase at standstill) but 40 V on a 400 V pack -- re-size before using
// ol_run at a different bus.
#define OL_MOD_DEFAULT              0.10f

// Compile-time default for g_align_offset_en ("align_off_en" param). 0 = skip
// the offset-capture sweep entirely and pin the electrical offset to 0, so
// theta_elec is the RAW sensor angle. Disabled on production for now: the
// resolver front-end is still mis-scaled and noisy enough (~26 deg electrical
// RMS, see hw_control_v2.h) that the swept average is not trustworthy, and the
// bench runs better on a plain zero offset. The SIN/COS scale cal sweep
// (res_cal_en) is INDEPENDENT and stays on -- that one is still needed.
// Re-enable once the conditioning is rescaled and the noise is down.
// [2026-11-05] RE-ENABLED: the FE_UFPR 4.0 front end is rescaled (bias ~1.5 V,
// ~1.16 V amplitude) and the angle noise is ~2.6 deg elec rms before the filter
// (was ~26). The bidirectional sweep gave 106.62 / 106.61 / 106.63 deg on three
// runs. Sequence with this on: ~33 s, rotor turns ~13 revs.
#define ALIGN_OFFSET_CAPTURE_DEFAULT 1U

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
// [2026-11-06] DEFAULT NOW 1. iloop_en no longer selects the ALIGN drive:
// calibration is always closed-loop after phase-ID, at "align_id_a" amps
// (bus-agnostic), so the old "calibrate with 0, then set 1" dance is gone.
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

// ---- Sensorless observers (Step 12) --------------------------------------
// Boot values for observer.c / pos_src.c; every one is a LIVE param (obs_*,
// angle_src, obs_err_trip, obs_iq_max). Starting points from the offline sim
// (host/foc_debug/observer_sim.py DEFAULTS["emrax"]) -- keep both in sync.
// SMO: F = 0.9887, G = (1-F)/Rs = 0.884 on this 12.8 mOhm / 112.5 uH machine
// (v1.7 HV). Kslide = 1.0 V/A keeps the current-model pole p = F - G*Kslide =
// +0.105 (monotonic; the setter caps Kslide at 0.9*(1+F)/G = 2.0). The steady
// current-model error at 6000 rpm is G*e/|z - p| = 234 A (e = 243 V; the
// continuous e/|Kslide+Rs+j*w*Ls| = 197 A underestimates it), so E0 = 200 A
// keeps the observer linear up to ~85 % of 6000 rpm (5330 rad/s) and the
// boundary layer clips above that; on the 24 V bench the error never exceeds
// ~12 A, so E0 is only a clamp there.
// MIN_SPEED: 400 elec rad/s (~380 rpm) is sized for the HV bus (dead zone
// ~6.7 V -> 5*Vdt/lambda ~ 870; DTC-compensated it comes down). On the 24 V
// bench the motor tops out near 300 rad/s (back-EMF = bus/2): set
// obs_min_speed = 150 live and treat bench results as bench-only.
#define OBS_GAMMA_DEFAULT        1000.0f
#define OBS_SMO_KSLIDE_DEFAULT   1.0f     // [V/A]
#define OBS_SMO_E0_DEFAULT       200.0f   // [A]
#define OBS_SMO_LPF_HZ_DEFAULT   10.0f    // back-EMF LPF floor [Hz]
#define OBS_SMO_LPF_K_DEFAULT    1.0f
#define OBS_PLL_BW_HZ_DEFAULT    40.0f
#define OBS_MIN_SPEED_DEFAULT    400.0f   // elec rad/s
#define OBS_FLUX_TOL_DEFAULT     0.30f
#define OBS_SMO_TOL_DEFAULT      0.5f     // |e_hat|^2/predicted^2 - 1 [pu]
#define OBS_ERR_TRIP_DEFAULT     0.6f     // rad; resolver angle noise ~0.11 rad RMS -> >5 sigma
#define OBS_IQ_MAX_A             (0.5f * IQ_REF_MAX_A)

#endif // GAINS_EMRAX_H

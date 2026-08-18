//=============================================================================
// build_config.h
//
// Single funnel for picking a hardware + motor + sensor variant at build time.
// Each CCS build configuration must predefine ONE symbol from each group:
//
//   Hardware:  HW_BOOSTXL_DRV8305    | HW_CONTROL_BOARD_V2
//   Motor:     MOTOR_TEKNIC_M2310P   | MOTOR_EMRAX_208
//   Sensor:    SENSOR_QEP            | SENSOR_RM44AC
//
// Every other source includes this header first.
//=============================================================================
#ifndef BUILD_CONFIG_H
#define BUILD_CONFIG_H

//----- Hardware (inverter / power stage) ----------------------------------
#if   defined(HW_BOOSTXL_DRV8305)
  #include "config/hw/hw_boostxl_drv8305.h"
#elif defined(HW_CONTROL_BOARD_V2)
  #include "config/hw/hw_control_v2.h"
#else
  #error "No hardware variant defined. Predefine HW_BOOSTXL_DRV8305 or HW_CONTROL_BOARD_V2."
#endif

//----- Motor --------------------------------------------------------------
#if   defined(MOTOR_TEKNIC_M2310P)
  #include "config/motor/motor_teknic_m2310p.h"
  #include "config/gains/gains_teknic.h"
#elif defined(MOTOR_EMRAX_208)
  #include "config/motor/motor_emrax_208.h"
  #include "config/gains/gains_emrax.h"
#else
  #error "No motor variant defined. Predefine MOTOR_TEKNIC_M2310P or MOTOR_EMRAX_208."
#endif

//----- Angle sensor -------------------------------------------------------
#if   defined(SENSOR_QEP)
  #include "config/sensor/sensor_qep.h"
  #define SENSOR_BACKEND_QEP    1
  #define SENSOR_BACKEND_RM44AC 0
#elif defined(SENSOR_RM44AC)
  #include "config/sensor/sensor_rm44ac.h"
  #define SENSOR_BACKEND_QEP    0
  #define SENSOR_BACKEND_RM44AC 1
#else
  #error "No angle sensor defined. Predefine SENSOR_QEP or SENSOR_RM44AC."
#endif

//----- System-wide constants ---------------------------------------------
#define SYS_CLK_HZ              200000000UL        // F28379D max
#define FOC_ISR_FREQ_HZ         10000.0f           // current loop / PWM carrier
#define FOC_ISR_TS              (1.0f / FOC_ISR_FREQ_HZ)
#define SPEED_LOOP_DECIM        10                 // 1 kHz outer loop
#define SPEED_LOOP_TS           (FOC_ISR_TS * (float)SPEED_LOOP_DECIM)

//----- DC-bus voltage low-pass (variant-agnostic) ------------------------
// First-order IIR on the measured bus, applied in adc_read_vbus() every ISR so
// the UV/OV trips, the PI voltage clamp and the scope all consume a de-noised
// value (the raw bus is spike-noisy on a high-Z sensor divider, nuisance-
// tripping the instantaneous UV compare). alpha = clamp(2*pi*fc*Ts, 0..1); the
// approx is exact enough well below fs/10 (=1 kHz here). Live-tunable via the
// vbus_filt_en / vbus_filt_hz params; a hw header may override the defaults.
#define VBUS_FILT_ALPHA(hz)     (2.0f * 3.14159265f * (hz) * FOC_ISR_TS)
#ifndef VBUS_FILT_DEFAULT_EN
#define VBUS_FILT_DEFAULT_EN    1U
#endif
#ifndef VBUS_FILT_DEFAULT_HZ
#define VBUS_FILT_DEFAULT_HZ    50.0f
#endif

//----- DC-bus sense affine calibration -----------------------------------
// adc_read_vbus() maps the ADC code to volts as an AFFINE function, not a pure
// gain: vbus = (code - VBUS_OFFSET_CODE) * volts_per_code. The offset lives in
// CODE space because that is where the analog chain's zero error physically is
// (sensor zero output, divider bias, ADC input leakage / residual charge share)
// -- so it stays valid when the gain is re-trimmed.
//   Both terms are live-tunable (vbus_ratio / vbus_off params) so a bench
// calibration can be fitted and applied without a rebuild; bake the result back
// into the hw_*.h VBUS_DIVIDER_RATIO / VBUS_OFFSET_CODE once it is stable.
//   A single-point "trim the ratio" calibration CANNOT separate gain from
// offset: it forces the fit through the origin, so any real offset reappears as
// a gain error that grows with distance from the calibration point. Always fit
// >= 2 (preferably >= 3) points -- see host `python -m foc_debug vbuscal`.
#ifndef VBUS_OFFSET_CODE
#define VBUS_OFFSET_CODE        0.0f    // ADC code at 0 V bus (fit on the bench)
#endif
// Consecutive ISR ticks the bus must stay below the UV threshold before the trip
// latches. The compare used to be instantaneous, which nuisance-tripped on the
// high-Z sensor divider's spike noise. 20 ticks = 2 ms at 10 kHz -- far faster
// than any real bus collapse the SW trip is meant to catch, and the HW trip-zone
// still handles genuinely fast events.
#ifndef UV_TRIP_DEBOUNCE_TICKS
#define UV_TRIP_DEBOUNCE_TICKS  20U
#endif

//----- Phase-current sense: channel count / mapping / phase-ID -------------
// The current-sense ADC inputs are FIXED per board; which motor phase each one
// measures can change (movable LEM clamps on Control_V2). adc_iface.c scatters
// the channels onto phases through the runtime g_isense_map ("isense_map"
// param) with per-channel polarity g_isense_inv ("isense_inv"). Both are
// auto-detected by the ALIGN phase-ID stage when PHASE_ID enabled: the field is
// parked open-loop at 0/120/240 deg electrical and each channel's dwell
// averages identify its phase (peak dwell) and clamp direction (peak sign).
#ifndef ISENSE_NUM_CHANNELS
#define ISENSE_NUM_CHANNELS     3    // physical sense channels (2 on Control_V2)
#endif
#ifndef ISENSE_MAP_DEFAULT
#define ISENSE_MAP_DEFAULT      0U   // boot map: 0 = identity (A=U, B=V, C=W)
#endif
#ifndef PHASE_ID_DEFAULT_EN
#define PHASE_ID_DEFAULT_EN     0U   // boot default for "phase_id_en"
#endif
#ifndef PHASE_ID_DWELL_S
#define PHASE_ID_DWELL_S        1.2f // per test angle (settle, then average)
                                     // [2026-07-28] 0.6->1.2: bench asked for a
                                     // longer detection -- more governor settle
                                     // (0.6 s) + 3x the averaging window
#endif
#ifndef PHASE_ID_AVG_S
#define PHASE_ID_AVG_S          0.6f // averaged tail of each dwell (was 0.2)
#endif
#ifndef PHASE_ID_MIN_A
#define PHASE_ID_MIN_A          0.3f // driven-dwell average below this = no signal
#endif
// [2026-08-01] PHASE_ID_DOMINANCE (peak vs runner-up magnitude ratio) is GONE:
// the solver now decides on the dwell SIGN pattern, which is invariant to the
// dwell-to-dwell amplitude inequality the bench actually produces (see
// adc_isense_phase_id_commit). What still needs a magnitude gate is trusting a
// SIGN at all -- a dwell averaging ~0 has a random sign and would fabricate a
// pattern. The two undriven phases carry half the driven one, so this floor is
// half of PHASE_ID_MIN_A.
#ifndef PHASE_ID_SIGN_MIN_A
#define PHASE_ID_SIGN_MIN_A     (0.5f * PHASE_ID_MIN_A)
#endif
// Dwell-current governor: the dwells do NOT use the fixed ol_mod drag drive
// (sized to move the rotor -- far more current than a measurement needs, and
// enough to current-limit a bench supply). Instead the duty is slewed up until
// the largest |channel current| reaches PHASE_ID_TARGET_A, then FROZEN for all
// three dwells (see foc_pipeline.c for why freezing matters). Duty capped at
// g_ol_mod, so worst case equals the old fixed drive.
#ifndef PHASE_ID_TARGET_A
#define PHASE_ID_TARGET_A       ALIGN_ID_INJECT_A  // governed dwell current [A]
#endif
#ifndef PHASE_ID_MOD_SLEW_PER_S
#define PHASE_ID_MOD_SLEW_PER_S 0.4f // governor duty slew rate [duty/s]
#endif

//----- Dead-time / dead-zone compensation feedforward ---------------------
// [2026-08-01] The bridge does not deliver the volts it is told to: during the
// dead-time interval neither device is on and the phase is clamped by whichever
// diode the current picks, and on top of that every conducting device drops
// Vce/Vf. Both errors OPPOSE the current, so the inverter behaves as a dead
// zone of about
//     Vdt = (Tdt * fsw) * Vbus   +   Vdrop
// which the regulator can only cross by winding its integrator through it. On
// the EMRAX (Rs = 18 mOhm) that dead zone is worth 25-50 A -- more than any
// bench setpoint -- so the current loop has NO usable authority until it is
// compensated: see the 2026-07-28 (railed Vd, zero current) and 2026-08-01
// (kp=0.7 cannot reach 2 A / kp=1.5 limit-cycles) bench entries in CLAUDE.md.
// The fix is feedforward, not gain: add +Vdt*sign(i_phase) back into each phase
// duty AFTER SVGEN, so the regulator sees a near-linear plant.
//
// Split into two terms because they scale differently with the bus:
//   DTC_DEADTIME_DUTY  pure dead time -- a fixed DUTY, bus-independent
//   DTC_VDROP_V        semiconductor drops -- fixed VOLTS, duty = V/vbus
// so one calibration extrapolates from the 24 V bench to the real HV bus.
//
// CALIBRATE IT, do not trust the default. "phase_id_mod" is exactly the right
// instrument: the ALIGN dwell governor reports the peak-phase duty m needed for
// phase_id_a amps, and on a milliohm winding the resistive share is negligible
// (1 A through 1.5*Rs = 27 mV = 0.001 duty), so essentially all of it is tax.
// The dwell drives one phase against the other two, i.e. 1.5*m*Vbus across a
// loop carrying two devices' worth of tax:
//     Vdt ~= 0.75 * phase_id_mod * Vbus
// Bench 2026-08-01: phase_id_mod = 0.058 at 24 V -> Vdt ~= 1.04 V (0.0435 duty).
// CAVEAT on splitting that total: whether a symmetric carrier loses one or two
// dead-time intervals per period is a factor-of-2 the textbooks disagree on, so
// DTC_DEADTIME_DUTY below assumes ONE (Tdt*fsw). If a bus-voltage sweep shows
// the residual dead zone growing with Vbus, move budget from DTC_VDROP_V into
// DTC_DEADTIME_DUTY (their sum at 24 V is what the measurement actually pins).
#ifndef DTC_DEFAULT_EN
#define DTC_DEFAULT_EN          0U   // OFF at boot -- enable per bench session
#endif
#ifndef DTC_DEADTIME_DUTY
#define DTC_DEADTIME_DUTY       ((float32_t)PWM_DEADBAND_NS * 1.0e-9f * PWM_FREQ_HZ)
#endif
#ifndef DTC_VDROP_V
#define DTC_VDROP_V             0.0f // per-hw; 0 = dead-time term only
#endif
// Zero-crossing ramp. A hard sign() would inject a +/-Vdt square wave whenever
// measurement noise flips the sign of a near-zero phase current -- on this motor
// that is tens of amps of command, a guaranteed limit cycle. Compensation is
// therefore ramped linearly over +/-DTC_ITH_A instead of switched. Size it a few
// times the phase-current noise floor: too small chatters, too large leaves the
// dead zone uncompensated at low current.
#ifndef DTC_ITH_A
#define DTC_ITH_A               2.0f
#endif

//----- Control mode (outer-loop source of iq_ref) -------------------------
#define FOC_MODE_TORQUE         0U   // iq_ref commanded directly (bring-up)
#define FOC_MODE_SPEED          1U   // iq_ref from the speed PI (omega_ref)

//----- Bench bypass default ----------------------------------------------
// Only the Control_V2 header defines this (set to 1 during power-stage-less
// bring-up). Everything else defaults to 0 = module-fault protection ACTIVE.
#ifndef BENCH_NO_POWER_STAGE
#define BENCH_NO_POWER_STAGE    0U
#endif

// Bench DC-bus override + UV-bypass defaults. Only the Control_V2 header sets the
// bench values; everything else defaults to "off" (control uses the measured bus,
// UV trip armed).
#ifndef VBUS_OVERRIDE_DEFAULT_V
#define VBUS_OVERRIDE_DEFAULT_V 0.0f
#endif
#ifndef UV_FAULT_EN_DEFAULT
#define UV_FAULT_EN_DEFAULT     1U
#endif

// Boot value of the runtime COMMAND-current clamp ("iq_max" param). Applied in
// the current-loop ISR at the single point every q-axis command funnels through
// (torque cmd, speed-PI output, step injector; in open-loop resistive mode it
// caps id_ref/iq_ref and hence the applied Rs*i volts), so no command source
// can demand more current than the bench supply survives. Note phase amps are
// cheap on the DC side at low speed (supply draw ~= duty * phase current), so
// 10 A of phase current costs well under 1 A of supply -- the bench default is
// protective without being useless. Production default = the full machine limit.
#ifndef IQ_CMD_MAX_DEFAULT_A
#if BENCH_NO_POWER_STAGE
#define IQ_CMD_MAX_DEFAULT_A    10.0f
#else
#define IQ_CMD_MAX_DEFAULT_A    IQ_REF_MAX_A
#endif
#endif

#endif // BUILD_CONFIG_H

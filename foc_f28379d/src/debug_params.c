//=============================================================================
// debug_params.c - Parameter registry definition (see debug_params.h).
//
// Each entry binds an id to a get/set pair that reaches into the live FOC
// state. Adding a param is mechanical: write a get_/set_ pair and append a row.
//=============================================================================
#include "build_config.h"
#include "debug_params.h"
#include "debug_proto.h"
#include "foc_pipeline.h"
#include "foc_state_machine.h"
#include "safety.h"
#include "pwm_iface.h"
#include "inverter_iface.h"

// Live torque command consumed by foc_speed_loop_tick() while in FOC_RUN.
extern volatile float32_t g_dbg_iq_ref;   // src/foc_pipeline.c
extern volatile uint32_t  g_isr_count;    // src/isr.c
extern volatile uint32_t  g_dbg_tz_trip;  // src/isr.c (HW trip-zone event count)

// KCL phase-current reconstruction selector (0=none,1=U,2=V,3=W).
extern volatile uint16_t  g_isense_reconstruct_phase;   // src/adc_iface.c

// Cross-coupling/back-EMF feedforward toggle + captured alignment offset [deg].
extern volatile uint16_t  g_dbg_decouple_en;            // src/foc_pipeline.c
extern volatile float32_t g_dbg_align_offset_elec;      // src/foc_pipeline.c

// ALIGN offset-capture enable (0 = skip the sweep, pin the offset to 0).
extern volatile uint16_t  g_align_offset_en;            // src/foc_pipeline.c

// Outer-loop control mode (0=torque, 1=speed). See FOC_MODE_* in build_config.h.
extern volatile uint16_t  g_dbg_control_mode;           // src/foc_pipeline.c

// Inner current-loop enable (1=current PIs enforced, 0=open-loop resistive Vd/Vq).
extern volatile uint16_t  g_dbg_iloop_en;               // src/foc_pipeline.c

// Field weakening (Step 11): runtime enable + telemetry of the applied weakening
// current and the requested voltage magnitude.
extern volatile uint16_t  g_dbg_fw_en;                  // src/foc_pipeline.c
extern volatile float32_t g_dbg_fw_id;                  // src/foc_pipeline.c
extern volatile float32_t g_dbg_vmag;                   // src/foc_pipeline.c

// BENCH DC-bus override [V] and the measured-bus mirror the "vbus" readout shows.
// (g_uv_fault_en, the UV-trip bypass, arrives via safety.h.)
extern volatile float32_t g_vbus_override_v;            // src/foc_pipeline.c
extern volatile float32_t g_dbg_vbus_v;                 // src/foc_pipeline.c (measured bus)

// Open-loop PWM test mode (bench, no power stage): rotating-vector frequency and
// q-axis drive magnitude. The FOC_OPENLOOP state itself is started/stopped via
// the "ol_run" param below.
extern volatile float32_t g_ol_freq_hz;                 // src/foc_pipeline.c
extern volatile float32_t g_ol_mod;                     // src/foc_pipeline.c

// DC-bus voltage low-pass: runtime enable + cutoff [Hz]. The hz setter recomputes
// the IIR coefficient (g_vbus_filt_alpha) via VBUS_FILT_ALPHA, exactly as
// adc_init() seeds it, so the boot value and host writes can never drift.
// Variant-agnostic. See src/adc_iface.c.
extern volatile uint16_t  g_vbus_filt_en;               // src/adc_iface.c
extern volatile float32_t g_vbus_filt_hz;               // src/adc_iface.c
extern volatile float32_t g_vbus_filt_alpha;            // src/adc_iface.c

#if SENSOR_BACKEND_RM44AC
// RM44AC SIN/COS input low-pass: runtime enable + cutoff [Hz]. The hz setter
// recomputes the IIR coefficient (g_resolver_filt_alpha). See sensor_rm44ac.c.
extern volatile uint16_t  g_resolver_filt_en;           // src/sensor_rm44ac.c
extern volatile float32_t g_resolver_filt_hz;           // src/sensor_rm44ac.c
extern volatile float32_t g_resolver_filt_alpha;        // src/sensor_rm44ac.c

// Resolver diagnostics: raw SIN/COS ADC codes and the latest sin^2+cos^2 (RAW).
// Lets the host read the two channels the angle is derived from and their vector
// magnitude (healthy ~1.0) to tell circuit noise from ADC/scaling problems.
extern volatile uint16_t  g_dbg_sin_raw;                // src/adc_iface.c
extern volatile uint16_t  g_dbg_cos_raw;                // src/adc_iface.c
extern volatile float32_t g_dbg_resolver_mag;           // src/sensor_rm44ac.c
extern volatile uint16_t  g_resolver_filt_comp;         // src/sensor_rm44ac.c
extern volatile float32_t g_resolver_filt_lag_k;        // src/sensor_rm44ac.c
extern volatile uint16_t  g_resolver_dir_inv;           // src/sensor_rm44ac.c
extern volatile uint16_t  g_resolver_sensor_poles;      // src/sensor_rm44ac.c
extern void sensor_rm44ac_apply_poles(uint16_t poles);  // src/sensor_rm44ac.c

// SIN/COS scale calibration (ALIGN cal phase): enable + captured raw extremes
// (foc_pipeline.c) and the commit status word (adc_iface.c, via adc_iface.h).
extern volatile uint16_t  g_res_cal_en;                 // src/foc_pipeline.c
extern volatile uint16_t  g_res_cal_sin_min;            // src/foc_pipeline.c
extern volatile uint16_t  g_res_cal_sin_max;            // src/foc_pipeline.c
extern volatile uint16_t  g_res_cal_cos_min;            // src/foc_pipeline.c
extern volatile uint16_t  g_res_cal_cos_max;            // src/foc_pipeline.c
extern volatile uint16_t  g_res_cal_status;             // src/adc_iface.c

// Resolver speed estimator: selector, observer bandwidth, legacy LPF cutoff, and
// the legacy estimator's live output. The two hz setters derive their dependent
// coefficients inside sensor_rm44ac.c so init and the host path cannot drift.
extern volatile uint16_t  g_resolver_w_mode;            // src/sensor_rm44ac.c
extern volatile float32_t g_resolver_pll_bw_hz;         // src/sensor_rm44ac.c
extern volatile float32_t g_resolver_wlpf_hz;           // src/sensor_rm44ac.c
extern volatile float32_t g_resolver_omega_lpf;         // src/sensor_rm44ac.c
extern void sensor_rm44ac_apply_pll_bw(float32_t hz);   // src/sensor_rm44ac.c
extern void sensor_rm44ac_apply_wlpf_hz(float32_t hz);  // src/sensor_rm44ac.c
#endif

// ---- raw <-> float bit-cast helpers (C28x: float32_t and uint32_t are 32b) --
static inline uint32_t f32_to_raw(float32_t f)
{
    union { float32_t f; uint32_t u; } c;
    c.f = f;
    return c.u;
}
static inline float32_t raw_to_f32(uint32_t u)
{
    union { float32_t f; uint32_t u; } c;
    c.u = u;
    return c.f;
}

// ---- Live references -----------------------------------------------------
static void get_id_ref(uint32_t *r){ *r = f32_to_raw(foc_get_refs()->id_ref); }
static void set_id_ref(uint32_t  r){ foc_get_refs()->id_ref = raw_to_f32(r); }

// iq_ref maps to g_dbg_iq_ref, the commandable torque reference the speed-loop
// tick latches into refs.iq_ref during RUN (writing refs.iq_ref directly would
// be overwritten every 1 kHz tick).
static void get_iq_ref(uint32_t *r){ *r = f32_to_raw(g_dbg_iq_ref); }
static void set_iq_ref(uint32_t  r){ g_dbg_iq_ref = raw_to_f32(r); }

// omega_ref is the electrical speed setpoint [rad/s] consumed by the speed PI in
// FOC_MODE_SPEED. The GUI converts to/from shaft RPM using pole_pairs.
static void get_omega_ref(uint32_t *r){ *r = f32_to_raw(foc_get_refs()->speed_ref); }
static void set_omega_ref(uint32_t  r){ foc_get_refs()->speed_ref = raw_to_f32(r); }

// ---- Gains (needs_idle) --------------------------------------------------
static void get_kp_d(uint32_t *r){ *r = f32_to_raw(foc_get_gain(FOC_GAIN_KP_D)); }
static void set_kp_d(uint32_t  r){ foc_set_gain(FOC_GAIN_KP_D, raw_to_f32(r)); }
static void get_ki_d(uint32_t *r){ *r = f32_to_raw(foc_get_gain(FOC_GAIN_KI_D)); }
static void set_ki_d(uint32_t  r){ foc_set_gain(FOC_GAIN_KI_D, raw_to_f32(r)); }
static void get_kp_q(uint32_t *r){ *r = f32_to_raw(foc_get_gain(FOC_GAIN_KP_Q)); }
static void set_kp_q(uint32_t  r){ foc_set_gain(FOC_GAIN_KP_Q, raw_to_f32(r)); }
static void get_ki_q(uint32_t *r){ *r = f32_to_raw(foc_get_gain(FOC_GAIN_KI_Q)); }
static void set_ki_q(uint32_t  r){ foc_set_gain(FOC_GAIN_KI_Q, raw_to_f32(r)); }
static void get_kp_w(uint32_t *r){ *r = f32_to_raw(foc_get_gain(FOC_GAIN_KP_W)); }
static void set_kp_w(uint32_t  r){ foc_set_gain(FOC_GAIN_KP_W, raw_to_f32(r)); }
static void get_ki_w(uint32_t *r){ *r = f32_to_raw(foc_get_gain(FOC_GAIN_KI_W)); }
static void set_ki_w(uint32_t  r){ foc_set_gain(FOC_GAIN_KI_W, raw_to_f32(r)); }
static void get_kp_fw(uint32_t *r){ *r = f32_to_raw(foc_get_gain(FOC_GAIN_KP_FW)); }
static void set_kp_fw(uint32_t  r){ foc_set_gain(FOC_GAIN_KP_FW, raw_to_f32(r)); }
static void get_ki_fw(uint32_t *r){ *r = f32_to_raw(foc_get_gain(FOC_GAIN_KI_FW)); }
static void set_ki_fw(uint32_t  r){ foc_set_gain(FOC_GAIN_KI_FW, raw_to_f32(r)); }

// ---- Hardware / diagnostic config (needs_idle) ---------------------------
// Reconstruct selector clamps to the valid 0..3 range; out-of-range writes are
// ignored so the live value never goes undefined (the GUI dropdown also bounds it).
static void get_recon(uint32_t *r){ *r = (uint32_t)g_isense_reconstruct_phase; }
static void set_recon(uint32_t  r){ if(r <= 3U) g_isense_reconstruct_phase = (uint16_t)r; }

// Decoupling feedforward toggle. Live (no NEEDS_IDLE) so it can be A/B'd in RUN.
static void get_decouple(uint32_t *r){ *r = (uint32_t)g_dbg_decouple_en; }
static void set_decouple(uint32_t  r){ g_dbg_decouple_en = (uint16_t)(r ? 1U : 0U); }

// Control mode: 0=torque, 1=speed. Live (no NEEDS_IDLE) — the speed loop makes
// the switch bumpless. Out-of-range writes clamp to torque.
static void get_mode(uint32_t *r){ *r = (uint32_t)g_dbg_control_mode; }
static void set_mode(uint32_t  r){ g_dbg_control_mode = (r == FOC_MODE_SPEED)
                                                        ? FOC_MODE_SPEED : FOC_MODE_TORQUE; }

// Field-weakening enable. Live (no NEEDS_IDLE) so it can be A/B'd in RUN; the
// regulator resets cleanly each RUN entry and when toggled off.
static void get_fw_en(uint32_t *r){ *r = (uint32_t)g_dbg_fw_en; }
static void set_fw_en(uint32_t  r){ g_dbg_fw_en = (uint16_t)(r ? 1U : 0U); }

// Inner current-loop enable. Live (no NEEDS_IDLE) so it can be A/B'd in RUN. 0 =
// open-loop resistive mode (Vd=Rs*id_ref, Vq=Rs*iq_ref), valid only at low speed.
static void get_iloop(uint32_t *r){ *r = (uint32_t)g_dbg_iloop_en; }
static void set_iloop(uint32_t  r){ g_dbg_iloop_en = (uint16_t)(r ? 1U : 0U); }

// Bench bypass for module-fault protection (1 = protection active, 0 = ignored
// for a board with no power stage). NEEDS_IDLE: the write re-arms/disarms the
// OSHT trip-zone sources via pwm_apply_module_tz() in addition to gating the SW
// gate-driver + trip-zone fault latches.
static void get_mfen(uint32_t *r){ *r = (uint32_t)g_module_faults_en; }
static void set_mfen(uint32_t  r){ g_module_faults_en = (uint16_t)(r ? 1U : 0U);
                                   pwm_apply_module_tz(); }

// BENCH undervoltage-trip bypass + DC-bus override (restored 2026-07-23). Live
// (no NEEDS_IDLE) so they can be toggled while diagnosing. uv_en: 1 = UV armed,
// 0 = bypassed. vbus_ovr: > 0 substitutes a fixed bus for the control loop and
// the OV/UV trips (the scope + "vbus" readout still show the measured bus); 0 =
// use the measured bus.
static void get_uv_en(uint32_t *r){ *r = (uint32_t)g_uv_fault_en; }
static void set_uv_en(uint32_t  r){ g_uv_fault_en = (uint16_t)(r ? 1U : 0U); }
static void get_vbus_ovr(uint32_t *r){ *r = f32_to_raw(g_vbus_override_v); }
static void set_vbus_ovr(uint32_t  r){ float32_t v = raw_to_f32(r);
                                       if(v < 0.0f) v = 0.0f;
                                       g_vbus_override_v = v; }

// Open-loop PWM test mode (bench, no power stage). "ol_run" starts/stops the
// FOC_OPENLOOP state (entry only honored in bench mode, g_module_faults_en==0);
// it reads back the live state so the GUI shows whether the mode actually
// engaged. ol_freq/ol_mod tune the rotating vector live while it runs.
static void get_ol_run(uint32_t *r){ *r = (sm_get_state() == FOC_OPENLOOP) ? 1U : 0U; }
static void set_ol_run(uint32_t  r){ if(r) sm_request_openloop(); else sm_request_stop(); }
static void get_ol_freq(uint32_t *r){ *r = f32_to_raw(g_ol_freq_hz); }
static void set_ol_freq(uint32_t  r){ g_ol_freq_hz = raw_to_f32(r); }
static void get_ol_mod(uint32_t *r){ *r = f32_to_raw(g_ol_mod); }
static void set_ol_mod(uint32_t  r){ float32_t m = raw_to_f32(r);
                                     if(m < 0.0f) m = 0.0f; if(m > 0.5f) m = 0.5f;
                                     g_ol_mod = m; }

// DC-bus voltage low-pass. Live (no NEEDS_IDLE) so it can be tuned on the bench;
// the IIR state stays primed every ISR so toggling en is bumpless (and lets you
// A/B raw vs filtered on the vbus scope channel). The hz setter recomputes alpha
// the same way adc_init() does (shared VBUS_FILT_ALPHA macro). Negative hz floors
// to 0 (freeze); huge hz saturates alpha at 1 (filter off).
static void get_vbus_filt_en(uint32_t *r){ *r = (uint32_t)g_vbus_filt_en; }
static void set_vbus_filt_en(uint32_t  r){ g_vbus_filt_en = (uint16_t)(r ? 1U : 0U); }
static void get_vbus_filt_hz(uint32_t *r){ *r = f32_to_raw(g_vbus_filt_hz); }
static void set_vbus_filt_hz(uint32_t  r){ float32_t hz = raw_to_f32(r);
                                           if(hz < 0.0f) hz = 0.0f;
                                           float32_t a = VBUS_FILT_ALPHA(hz);
                                           if(a > 1.0f) a = 1.0f;
                                           if(a < 0.0f) a = 0.0f;
                                           g_vbus_filt_hz    = hz;
                                           g_vbus_filt_alpha = a; }

#if SENSOR_BACKEND_RM44AC
// RM44AC SIN/COS input low-pass. Live (no NEEDS_IDLE) so it can be A/B'd on the
// bench; the IIR state stays primed every ISR so toggling en is bumpless.
static void get_res_filt_en(uint32_t *r){ *r = (uint32_t)g_resolver_filt_en; }
static void set_res_filt_en(uint32_t  r){ g_resolver_filt_en = (uint16_t)(r ? 1U : 0U); }
// Cutoff in Hz -> IIR coefficient alpha = clamp(2*pi*fc*Ts, 0..1). Negative
// requests floor to 0 (full smoothing/freeze); huge requests saturate at 1 (off).
static void get_res_filt_hz(uint32_t *r){ *r = f32_to_raw(g_resolver_filt_hz); }
static void set_res_filt_hz(uint32_t  r){ float32_t hz = raw_to_f32(r);
                                          if(hz < 0.0f) hz = 0.0f;
                                          float32_t a = SENSOR_RES_FILT_ALPHA(hz);
                                          if(a > 1.0f) a = 1.0f;
                                          if(a < 0.0f) a = 0.0f;
                                          g_resolver_filt_hz    = hz;
                                          g_resolver_filt_alpha = a;
                                          // lag_k tracks the cutoff: they must never
                                          // disagree or the compensation mis-corrects.
                                          g_resolver_filt_lag_k = SENSOR_RES_FILT_LAG_K(hz); }
// Filter lag compensation: 1 = add the IIR's known phase delay back to the angle
// (see sensor_rm44ac.h). Live so it can be A/B'd against the filter on the bench.
static void get_res_filt_comp(uint32_t *r){ *r = (uint32_t)g_resolver_filt_comp; }
static void set_res_filt_comp(uint32_t  r){ g_resolver_filt_comp = (uint16_t)(r ? 1U : 0U); }
// SIN/COS scale-calibration enable: 1 = the ALIGN sequence prepends the min/max
// capture sweep, 0 = skip it (keep the current scale). NEEDS_IDLE for hygiene;
// the align controller also latches the value at ALIGN entry.
static void get_res_cal_en(uint32_t *r){ *r = (uint32_t)g_res_cal_en; }
static void set_res_cal_en(uint32_t  r){ g_res_cal_en = (uint16_t)(r ? 1U : 0U); }
// Angle-direction inversion (1 = mirror mech angle). NEEDS_IDLE: flipping the
// angle convention mid-drive reverses commutation instantly. RE-RUN ALIGN
// after changing it -- the captured offset belongs to the old direction.
static void get_res_dir(uint32_t *r){ *r = (uint32_t)g_resolver_dir_inv; }
static void set_res_dir(uint32_t  r){ g_resolver_dir_inv = (uint16_t)(r ? 1U : 0U); }
// Sensor speed (sin/cos cycles per mech rev). NEEDS_IDLE; the setter clamps to
// 1..50 and recomputes the elec/mech scale factors. RE-RUN ALIGN after changing.
static void get_res_poles(uint32_t *r){ *r = (uint32_t)g_resolver_sensor_poles; }
static void set_res_poles(uint32_t  r){ sensor_rm44ac_apply_poles((uint16_t)r); }
// Speed-estimator selector: 0 = differentiate+LPF (legacy), 1 = type-II angle
// tracking observer. Live (no NEEDS_IDLE) so it can be A/B'd in RUN -- both
// estimators integrate every ISR, so the switch is bumpless. Anything other than
// 1 selects the legacy path.
static void get_res_w_mode(uint32_t *r){ *r = (uint32_t)g_resolver_w_mode; }
static void set_res_w_mode(uint32_t  r){ g_resolver_w_mode =
        (uint16_t)((r == SENSOR_RES_W_MODE_PLL) ? SENSOR_RES_W_MODE_PLL
                                                : SENSOR_RES_W_MODE_LPF); }
// Observer bandwidth [Hz]. The setter derives BOTH Ts*Kp and Ts*Ki from it in one
// place (same discipline as set_res_filt_hz -> alpha + lag_k): a Kp and Ki from
// different bandwidths are a different damping ratio. Clamped to [1, 200] Hz. Keep
// it <= res_filt_hz/5 or the observer chases the sin/cos IIR.
static void get_res_pll_bw(uint32_t *r){ *r = f32_to_raw(g_resolver_pll_bw_hz); }
static void set_res_pll_bw(uint32_t  r){ sensor_rm44ac_apply_pll_bw(raw_to_f32(r)); }
// Legacy speed-LPF cutoff [Hz]. Live, so the fallback estimator is tunable on the
// same bench run as the observer. 0 freezes it; alpha clamps at 1.
static void get_res_wlpf_hz(uint32_t *r){ *r = f32_to_raw(g_resolver_wlpf_hz); }
static void set_res_wlpf_hz(uint32_t  r){ sensor_rm44ac_apply_wlpf_hz(raw_to_f32(r)); }
#endif

// ALIGN offset-capture enable: 1 = sweep and average the sensor-vs-commanded
// offset, 0 = skip the sweep and pin the electrical offset to 0 (raw sensor
// angle). NEEDS_IDLE; the align controller also latches the value at ALIGN
// entry. RE-RUN ALIGN after changing it -- the stored offset only updates there.
static void get_align_off_en(uint32_t *r){ *r = (uint32_t)g_align_offset_en; }
static void set_align_off_en(uint32_t  r){ g_align_offset_en = (uint16_t)(r ? 1U : 0U); }

// ---- Read-only telemetry -------------------------------------------------
static void get_state(uint32_t *r){ *r = (uint32_t)(uint16_t)sm_get_state(); }
static void get_isr_count(uint32_t *r){ *r = g_isr_count; }
static void get_align_off(uint32_t *r){ *r = f32_to_raw(g_dbg_align_offset_elec); }

// Motor pole-pairs (compile-time constant) — lets the GUI convert shaft RPM
// <-> electrical rad/s for the speed setpoint and the measured-speed readout.
static void get_pole_pairs(uint32_t *r){ *r = (uint32_t)MOTOR_POLE_PAIRS; }
// Live measured electrical speed [rad/s]; GUI displays it as shaft RPM.
static void get_omega_meas(uint32_t *r){ *r = f32_to_raw(foc_get_signals()->omega_elec); }

// Field-weakening telemetry: applied weakening current [A] (<=0) and the
// requested voltage magnitude |Vdq| [V] the regulator is holding to its limit.
static void get_fw_id(uint32_t *r){ *r = f32_to_raw(g_dbg_fw_id); }
static void get_vmag(uint32_t *r) { *r = f32_to_raw(g_dbg_vmag); }

// Latched fault mask (Fault_Bits_t in safety.h): 0 = clear. Lets the host GUI
// decode *why* the device is in FOC_FAULT (OVERCURRENT / GATE_DRIVER / ...)
// instead of only showing the bare "FAULT" state.
static void get_fault_code(uint32_t *r){ *r = (uint32_t)safety_get_latched(); }

// HW trip-zone event counter and the live module-fault bitfield. With the bench
// bypass active these tell you whether the disconnected module lines are still
// asserting (tz_trip stops incrementing once OSHT is disarmed; module_fault
// shows the raw MODULE_FLT_* bits the gate drivers are pulling).
static void get_tz_trip(uint32_t *r)      { *r = g_dbg_tz_trip; }
static void get_module_fault(uint32_t *r) { *r = (uint32_t)inverter_fault_status(); }

#if SENSOR_BACKEND_RM44AC
// Resolver front-end readouts: raw SIN/COS ADC codes and the vector magnitude.
// Pair these with the res_sin/res_cos scope channels to see the two signals the
// angle is built from (DC = bias, jitter band -> mV vs the analog scope).
static void get_sin_raw(uint32_t *r) { *r = (uint32_t)g_dbg_sin_raw; }
static void get_cos_raw(uint32_t *r) { *r = (uint32_t)g_dbg_cos_raw; }
static void get_res_mag(uint32_t *r) { *r = f32_to_raw(g_dbg_resolver_mag); }
// Scale-calibration readouts: raw extremes captured by the last ALIGN cal
// sweep (bias=(min+max)/2, ampl=(max-min)/2 in codes) and the commit status
// (low nibble 0=never ran, 1=applied, 2=rejected; 0x00F0 = clip flags).
static void get_cal_sin_min(uint32_t *r){ *r = (uint32_t)g_res_cal_sin_min; }
static void get_cal_sin_max(uint32_t *r){ *r = (uint32_t)g_res_cal_sin_max; }
static void get_cal_cos_min(uint32_t *r){ *r = (uint32_t)g_res_cal_cos_min; }
static void get_cal_cos_max(uint32_t *r){ *r = (uint32_t)g_res_cal_cos_max; }
static void get_cal_status(uint32_t *r) { *r = (uint32_t)g_res_cal_status; }
// Legacy estimator's electrical speed [elec rad/s], live regardless of
// res_w_mode. Pairs with omega_meas (0x0104) for a numeric A/B without a scope
// capture -- with res_w_mode = 0 the two must read identical.
static void get_res_w_lpf(uint32_t *r)
{ *r = f32_to_raw(g_resolver_omega_lpf * (float32_t)MOTOR_POLE_PAIRS); }
#endif

// ---- Motor / loop constants (read-only, for the host PI autotuner) --------
// The autotuner derives gains from the plant (R, L), the loop timestep, and the
// DC bus, so it reads these instead of hardcoding motor-specific numbers. All
// but vbus are compile-time constants; vbus is the live ISR-updated bus voltage.
static void get_rs_ohm(uint32_t *r)      { *r = f32_to_raw(MOTOR_RS_OHM); }
static void get_ld_h(uint32_t *r)        { *r = f32_to_raw(MOTOR_LD_H); }
static void get_lq_h(uint32_t *r)        { *r = f32_to_raw(MOTOR_LQ_H); }
static void get_flux_vs(uint32_t *r)     { *r = f32_to_raw(MOTOR_FLUX_VS); }
static void get_i_peak_a(uint32_t *r)    { *r = f32_to_raw(MOTOR_I_PEAK_A); }
// vbus = the MEASURED bus (g_dbg_vbus_v), not the control value: at the bench the
// control loop runs on g_vbus_override_v while this readout keeps tracking the
// live sensor (they match when the override is off or equals the real bus).
static void get_vbus(uint32_t *r)        { *r = f32_to_raw(g_dbg_vbus_v); }
static void get_isr_freq_hz(uint32_t *r) { *r = f32_to_raw(FOC_ISR_FREQ_HZ); }
static void get_speed_loop_ts(uint32_t *r){ *r = f32_to_raw((float32_t)SPEED_LOOP_TS); }
static void get_fw_vmax_frac(uint32_t *r){ *r = f32_to_raw(FW_VMAX_FRACTION); }

//=============================================================================
const param_entry_t g_param_table[] =
{
    { 0x0001U, PARAM_TYPE_F32, 0,                     "id_ref",    get_id_ref,    set_id_ref    },
    { 0x0002U, PARAM_TYPE_F32, 0,                     "iq_ref",    get_iq_ref,    set_iq_ref    },
    { 0x0003U, PARAM_TYPE_F32, 0,                     "omega_ref", get_omega_ref, set_omega_ref },

    { 0x0010U, PARAM_TYPE_F32, PARAM_FLAG_NEEDS_IDLE, "kp_d",      get_kp_d,      set_kp_d      },
    { 0x0011U, PARAM_TYPE_F32, PARAM_FLAG_NEEDS_IDLE, "ki_d",      get_ki_d,      set_ki_d      },
    { 0x0012U, PARAM_TYPE_F32, PARAM_FLAG_NEEDS_IDLE, "kp_q",      get_kp_q,      set_kp_q      },
    { 0x0013U, PARAM_TYPE_F32, PARAM_FLAG_NEEDS_IDLE, "ki_q",      get_ki_q,      set_ki_q      },
    { 0x0020U, PARAM_TYPE_F32, PARAM_FLAG_NEEDS_IDLE, "kp_w",      get_kp_w,      set_kp_w      },
    { 0x0021U, PARAM_TYPE_F32, PARAM_FLAG_NEEDS_IDLE, "ki_w",      get_ki_w,      set_ki_w      },
    { 0x0014U, PARAM_TYPE_F32, PARAM_FLAG_NEEDS_IDLE, "kp_fw",     get_kp_fw,     set_kp_fw     },
    { 0x0015U, PARAM_TYPE_F32, PARAM_FLAG_NEEDS_IDLE, "ki_fw",     get_ki_fw,     set_ki_fw     },

    { 0x0030U, PARAM_TYPE_U16, PARAM_FLAG_NEEDS_IDLE, "isense_recon", get_recon,  set_recon     },
    { 0x0031U, PARAM_TYPE_U16, 0,                     "decouple_en",  get_decouple, set_decouple },
    { 0x0032U, PARAM_TYPE_U16, 0,                     "control_mode", get_mode,     set_mode     },
    { 0x0033U, PARAM_TYPE_U16, 0,                     "fw_en",        get_fw_en,    set_fw_en    },
    { 0x0034U, PARAM_TYPE_U16, PARAM_FLAG_NEEDS_IDLE, "module_faults_en", get_mfen, set_mfen     },
    { 0x0038U, PARAM_TYPE_U16, 0,                     "iloop_en",     get_iloop,    set_iloop    },
    { 0x0040U, PARAM_TYPE_U16, 0,                     "ol_run",     get_ol_run,   set_ol_run    },
    { 0x0041U, PARAM_TYPE_F32, 0,                     "ol_freq",    get_ol_freq,  set_ol_freq   },
    { 0x0042U, PARAM_TYPE_F32, 0,                     "ol_mod",     get_ol_mod,   set_ol_mod    },
    { 0x0044U, PARAM_TYPE_U16, PARAM_FLAG_NEEDS_IDLE, "align_off_en", get_align_off_en, set_align_off_en },
    { 0x0037U, PARAM_TYPE_U16, 0,                     "uv_en",        get_uv_en,      set_uv_en      },
    { 0x0043U, PARAM_TYPE_F32, 0,                     "vbus_ovr",     get_vbus_ovr,   set_vbus_ovr   },
    { 0x0046U, PARAM_TYPE_U16, 0,                     "vbus_filt_en", get_vbus_filt_en, set_vbus_filt_en },
    { 0x0047U, PARAM_TYPE_F32, 0,                     "vbus_filt_hz", get_vbus_filt_hz, set_vbus_filt_hz },

#if SENSOR_BACKEND_RM44AC
    { 0x0035U, PARAM_TYPE_U16, 0,                     "res_filt_en", get_res_filt_en, set_res_filt_en },
    { 0x0036U, PARAM_TYPE_F32, 0,                     "res_filt_hz", get_res_filt_hz, set_res_filt_hz },
    { 0x003CU, PARAM_TYPE_U16, 0,                     "res_filt_comp", get_res_filt_comp, set_res_filt_comp },
    { 0x0039U, PARAM_TYPE_U16, PARAM_FLAG_NEEDS_IDLE, "res_cal_en",  get_res_cal_en,  set_res_cal_en  },
    { 0x003AU, PARAM_TYPE_U16, PARAM_FLAG_NEEDS_IDLE, "res_dir_inv", get_res_dir,     set_res_dir     },
    { 0x003BU, PARAM_TYPE_U16, PARAM_FLAG_NEEDS_IDLE, "res_poles",   get_res_poles,   set_res_poles   },
    { 0x003DU, PARAM_TYPE_U16, 0,                     "res_w_mode",  get_res_w_mode,  set_res_w_mode  },
    { 0x003EU, PARAM_TYPE_F32, 0,                     "res_pll_bw",  get_res_pll_bw,  set_res_pll_bw  },
    { 0x0045U, PARAM_TYPE_F32, 0,                     "res_wlpf_hz", get_res_wlpf_hz, set_res_wlpf_hz },
#endif

    { 0x0100U, PARAM_TYPE_U16, PARAM_FLAG_RO,         "state",      get_state,     0            },
    { 0x0101U, PARAM_TYPE_U32, PARAM_FLAG_RO,         "isr_count",  get_isr_count, 0            },
    { 0x0102U, PARAM_TYPE_F32, PARAM_FLAG_RO,         "align_offset", get_align_off, 0          },
    { 0x0103U, PARAM_TYPE_U16, PARAM_FLAG_RO,         "pole_pairs", get_pole_pairs, 0           },
    { 0x0104U, PARAM_TYPE_F32, PARAM_FLAG_RO,         "omega_meas", get_omega_meas, 0           },
    { 0x0105U, PARAM_TYPE_F32, PARAM_FLAG_RO,         "fw_id",      get_fw_id,     0            },
    { 0x0106U, PARAM_TYPE_F32, PARAM_FLAG_RO,         "vmag",       get_vmag,      0            },
    { 0x0107U, PARAM_TYPE_U16, PARAM_FLAG_RO,         "fault_code", get_fault_code, 0           },
    { 0x0108U, PARAM_TYPE_U32, PARAM_FLAG_RO,         "tz_trip",    get_tz_trip,    0            },
    { 0x0109U, PARAM_TYPE_U16, PARAM_FLAG_RO,         "module_fault", get_module_fault, 0        },

#if SENSOR_BACKEND_RM44AC
    // Resolver front-end diagnostics (raw ADC codes + vector magnitude).
    { 0x0119U, PARAM_TYPE_U16, PARAM_FLAG_RO,         "sin_raw",    get_sin_raw,   0            },
    { 0x011AU, PARAM_TYPE_U16, PARAM_FLAG_RO,         "cos_raw",    get_cos_raw,   0            },
    { 0x011BU, PARAM_TYPE_F32, PARAM_FLAG_RO,         "res_mag",    get_res_mag,   0            },
    // SIN/COS scale calibration: extremes from the last ALIGN cal sweep + status.
    { 0x011CU, PARAM_TYPE_U16, PARAM_FLAG_RO,         "cal_sin_min", get_cal_sin_min, 0         },
    { 0x011DU, PARAM_TYPE_U16, PARAM_FLAG_RO,         "cal_sin_max", get_cal_sin_max, 0         },
    { 0x011EU, PARAM_TYPE_U16, PARAM_FLAG_RO,         "cal_cos_min", get_cal_cos_min, 0         },
    { 0x011FU, PARAM_TYPE_U16, PARAM_FLAG_RO,         "cal_cos_max", get_cal_cos_max, 0         },
    { 0x0120U, PARAM_TYPE_U16, PARAM_FLAG_RO,         "cal_status",  get_cal_status,  0         },
    // Legacy diff+LPF speed for a numeric A/B against omega_meas (0x0104).
    { 0x0121U, PARAM_TYPE_F32, PARAM_FLAG_RO,         "res_w_lpf",   get_res_w_lpf,   0         },
#endif

    // Motor / loop constants the host PI autotuner reads to compute gains.
    { 0x0110U, PARAM_TYPE_F32, PARAM_FLAG_RO,         "rs_ohm",        get_rs_ohm,        0       },
    { 0x0111U, PARAM_TYPE_F32, PARAM_FLAG_RO,         "ld_h",          get_ld_h,          0       },
    { 0x0112U, PARAM_TYPE_F32, PARAM_FLAG_RO,         "lq_h",          get_lq_h,          0       },
    { 0x0113U, PARAM_TYPE_F32, PARAM_FLAG_RO,         "flux_vs",       get_flux_vs,       0       },
    { 0x0114U, PARAM_TYPE_F32, PARAM_FLAG_RO,         "i_peak_a",      get_i_peak_a,      0       },
    { 0x0115U, PARAM_TYPE_F32, PARAM_FLAG_RO,         "vbus",          get_vbus,          0       },
    { 0x0116U, PARAM_TYPE_F32, PARAM_FLAG_RO,         "isr_freq_hz",   get_isr_freq_hz,   0       },
    { 0x0117U, PARAM_TYPE_F32, PARAM_FLAG_RO,         "speed_loop_ts", get_speed_loop_ts, 0       },
    { 0x0118U, PARAM_TYPE_F32, PARAM_FLAG_RO,         "fw_vmax_frac",  get_fw_vmax_frac,  0       },
};

const uint16_t g_param_count = (uint16_t)(sizeof(g_param_table) / sizeof(g_param_table[0]));

const param_entry_t * param_find(uint16_t id)
{
    uint16_t i;
    for(i = 0; i < g_param_count; i++)
    {
        if(g_param_table[i].id == id) return &g_param_table[i];
    }
    return 0;
}

uint16_t param_read(uint16_t id, uint16_t *out_type, uint32_t *out_raw)
{
    const param_entry_t *e = param_find(id);
    if(e == 0) return PARAM_WR_BAD_ID;
    *out_type = e->type;
    e->get(out_raw);
    return PARAM_WR_OK;
}

uint16_t param_write(uint16_t id, uint32_t raw)
{
    const param_entry_t *e = param_find(id);
    if(e == 0) return PARAM_WR_BAD_ID;
    if((e->flags & PARAM_FLAG_RO) || e->set == 0) return PARAM_WR_RO;
    if((e->flags & PARAM_FLAG_NEEDS_IDLE) && (sm_get_state() != FOC_IDLE))
        return PARAM_WR_NEEDS_IDLE;
    e->set(raw);
    return PARAM_WR_OK;
}

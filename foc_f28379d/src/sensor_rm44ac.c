//=============================================================================
// sensor_rm44ac.c - RM44AC sin/cos magnetic sensor, non-ISR side.
//
// The RM44AC outputs already-demodulated SIN and COS analog signals, so
// there is no excitation drive and no carrier demodulation needed. The hot
// path (per-ISR atan2 + speed LPF) lives in sensor_rm44ac_inline.h.
//
// This file owns:
//   - the backing globals consumed by the inline header
//   - sensor_init() (zero state, latch defaults)
//   - sensor_rm44ac_capture_zero() (called from ALIGN_ROTOR)
//=============================================================================
#include "build_config.h"

#if SENSOR_BACKEND_RM44AC

#include "sensor_iface.h"

volatile float32_t g_resolver_theta_mech  = 0.0f;
volatile float32_t g_resolver_omega_mech  = 0.0f;
volatile float32_t g_resolver_theta_elec  = 0.0f;
volatile float32_t g_resolver_omega_elec  = 0.0f;
volatile float32_t g_resolver_elec_offset = SENSOR_RES_DEFAULT_OFFSET;
volatile float32_t g_resolver_last_theta  = 0.0f;

// Sensor-loss state (see sensor_iface.h contract). g_resolver_omega_healthy is
// the last electrical speed latched while the sin/cos vector was in-window; the
// fault shutdown reads it to pick active-short vs coast.
volatile float32_t g_resolver_omega_healthy = 0.0f;
volatile uint16_t  g_resolver_lost          = 0U;
volatile uint16_t  g_resolver_loss_count    = 0U;   // consecutive out-of-window ISRs
// While nonzero, the magnitude-window loss check is held reset. Set by the
// align controller from ALIGN entry until the sin/cos scale calibration
// commits (normalization is untrusted, so the window would false-trip), and
// force-cleared on any ALIGN exit so RUN never executes with detection off.
volatile uint16_t  g_resolver_loss_inhibit  = 0U;

// Angle-direction inversion (see SENSOR_RES_DIR_INV_DEFAULT). 1 = mirror the
// mechanical angle so the sensor counts positive with the U->V->W sequence.
// Host-writable via "res_dir_inv" (NEEDS_IDLE); re-run ALIGN after changing.
volatile uint16_t  g_resolver_dir_inv       = SENSOR_RES_DIR_INV_DEFAULT;

// Sensor speed (sin/cos cycles per mech rev) and its derived scale factors
// (see SENSOR_RES_SENSOR_POLES). The ISR multiplies the atan2 "sensor angle"
// by elec_ratio = MOTOR_POLE_PAIRS/poles to get the electrical angle, and by
// inv_poles to get mechanical speed. Host-writable via "res_poles"
// (NEEDS_IDLE, sensor_rm44ac_apply_poles); re-run ALIGN after changing.
volatile uint16_t  g_resolver_sensor_poles  = SENSOR_RES_SENSOR_POLES;
volatile float32_t g_resolver_elec_ratio    = 1.0f;   // set in apply_poles()
volatile float32_t g_resolver_inv_poles     = 1.0f;   // set in apply_poles()
// Observer speed-divergence guard, in the SENSOR speed domain. Declared up here
// with the other poles-derived scale factors because apply_poles() (just below)
// scales it; the rest of the observer state lives in the estimator block lower
// down. See SENSOR_RES_PLL_W_MAX_MECH.
volatile float32_t g_resolver_pll_w_max     = SENSOR_RES_PLL_W_MAX_MECH; // scaled in apply_poles()

void sensor_rm44ac_apply_poles(uint16_t poles)
{
    if(poles < 1U)  poles = 1U;
    if(poles > 50U) poles = 50U;
    g_resolver_sensor_poles = poles;
    g_resolver_elec_ratio   = (float32_t)MOTOR_POLE_PAIRS / (float32_t)poles;
    g_resolver_inv_poles    = 1.0f / (float32_t)poles;
    // The observer tracks the SENSOR angle, so its divergence guard lives in the
    // sensor speed domain too (sensor rad/s = mech rad/s * poles).
    g_resolver_pll_w_max    = SENSOR_RES_PLL_W_MAX_MECH * (float32_t)poles;
}
// TODO: Debugging Step 9, remove after. Latest sin^2+cos^2 (healthy ~= 1.0).
volatile float32_t g_dbg_resolver_mag;

// Matched 1st-order IIR low-pass on the SIN/COS analog inputs (software noise
// reduction). The inline ISR applies these; the coefficient is owned here so the
// host can tune it. en/hz are host-writable via the "res_filt_en"/"res_filt_hz"
// debug params; the hz setter recomputes alpha. *_filt are the filter memory and
// are updated every ISR (kept primed) so toggling en is bumpless. Defaults OFF.
volatile uint16_t  g_resolver_filt_en    = SENSOR_RES_FILT_DEFAULT_EN;
volatile float32_t g_resolver_filt_hz    = SENSOR_RES_FILT_DEFAULT_HZ;
volatile float32_t g_resolver_filt_alpha = 0.0f;   // set in sensor_init()
volatile float32_t g_resolver_sin_filt   = 0.0f;   // IIR state, sin channel
volatile float32_t g_resolver_cos_filt   = 0.0f;   // IIR state, cos channel
// Filter lag compensation ("res_filt_comp"): add back the known phase delay the
// IIR imposes on the angle. lag_k = 1/(2*pi*fc), recomputed with alpha whenever
// the cutoff changes, so the ISR only does a multiply-add. See sensor_rm44ac.h.
volatile uint16_t  g_resolver_filt_comp  = SENSOR_RES_FILT_COMP_DEFAULT_EN;
volatile float32_t g_resolver_filt_lag_k = 0.0f;   // set in sensor_init()

// ---- Speed estimators (see sensor_rm44ac.h) ----------------------------
// BOTH integrate every ISR regardless of the selector -- same idiom as the
// sin/cos IIR above -- so "res_w_mode" is a bumpless live A/B switch. The
// selected estimator's output lands in g_resolver_omega_mech (the ISR reads it
// for the lag comp and omega_elec); each estimator keeps its OWN state so the
// selector cannot destroy the inactive one's memory.
volatile uint16_t  g_resolver_w_mode      = SENSOR_RES_W_MODE_DEFAULT;
// A: differentiate-then-LPF. Its state used to BE g_resolver_omega_mech.
volatile float32_t g_resolver_omega_lpf   = 0.0f;
volatile float32_t g_resolver_wlpf_hz     = SENSOR_RES_SPEED_LPF_HZ;
volatile float32_t g_resolver_wlpf_alpha  = 0.0f;   // set in sensor_init()
// B: type-II angle tracking observer. th/w are the two loop states; kp_ts/ki_ts
// are Ts-folded so the ISR does no scaling. w is in SENSOR rad/s (same domain as
// th), converted to mechanical by inv_poles at the selector.
volatile float32_t g_resolver_pll_bw_hz   = SENSOR_RES_PLL_BW_HZ_DEFAULT;
volatile float32_t g_resolver_pll_kp_ts   = 0.0f;   // Ts*Kp, set in sensor_init()
volatile float32_t g_resolver_pll_ki_ts   = 0.0f;   // Ts*Ki, set in sensor_init()
volatile float32_t g_resolver_pll_th      = 0.0f;   // tracked angle [0, 2*pi)
volatile float32_t g_resolver_pll_w       = 0.0f;   // tracked speed, sensor rad/s
// g_resolver_pll_w_max is declared with the poles-scale globals above (apply_poles scales it).

// Derive BOTH observer loop coefficients from one bandwidth, in one place. A Kp
// and Ki that came from different bandwidths are a different DAMPING RATIO, and
// at zeta << 1 this loop rings -- exactly the reason set_res_filt_hz() owns alpha
// and lag_k together. Clamped to [BW_MIN, BW_MAX]; see the header for the
// stability and float32 bounds behind those numbers. Preemption: each store is a
// single 32-bit volatile write (atomic on C28x), so at worst one ISR runs with
// (Kp_new, Ki_old) = one sample at a different zeta; both states are continuous
// across it, so it is benign (same argument as sensor_clear_loss()).
void sensor_rm44ac_apply_pll_bw(float32_t hz)
{
    if(hz < SENSOR_RES_PLL_BW_MIN_HZ) hz = SENSOR_RES_PLL_BW_MIN_HZ;
    if(hz > SENSOR_RES_PLL_BW_MAX_HZ) hz = SENSOR_RES_PLL_BW_MAX_HZ;
    g_resolver_pll_bw_hz = hz;
    g_resolver_pll_kp_ts = SENSOR_RES_PLL_KP(hz) * FOC_ISR_TS;
    g_resolver_pll_ki_ts = SENSOR_RES_PLL_KI(hz) * FOC_ISR_TS;
}

// Legacy speed-LPF cutoff -> IIR coefficient, clamped to [0, 1]. 0 freezes the
// estimate; 1 is a passthrough (no filtering). Same one-place-derivation
// discipline as apply_pll_bw() so sensor_init() and the host setter cannot drift.
void sensor_rm44ac_apply_wlpf_hz(float32_t hz)
{
    if(hz < 0.0f) hz = 0.0f;
    float32_t a = SENSOR_RES_SPEED_LPF_ALPHA(hz);
    if(a > 1.0f) a = 1.0f;
    g_resolver_wlpf_hz    = hz;
    g_resolver_wlpf_alpha = a;
}

void sensor_init(void)
{
    sensor_rm44ac_apply_poles(g_resolver_sensor_poles);
    g_resolver_theta_mech  = 0.0f;
    g_resolver_omega_mech  = 0.0f;
    g_resolver_theta_elec  = 0.0f;
    g_resolver_omega_elec  = 0.0f;
    g_resolver_last_theta  = 0.0f;
    g_resolver_omega_healthy = 0.0f;
    g_resolver_lost        = 0U;
    g_resolver_loss_count  = 0U;
    g_resolver_loss_inhibit = 0U;

    // Derive the IIR coefficient from the default cutoff, clamped to (0, 1].
    float32_t a = SENSOR_RES_FILT_ALPHA(g_resolver_filt_hz);
    if(a > 1.0f) a = 1.0f;
    if(a < 0.0f) a = 0.0f;
    g_resolver_filt_alpha = a;
    g_resolver_filt_lag_k = SENSOR_RES_FILT_LAG_K(g_resolver_filt_hz);
    g_resolver_sin_filt   = 0.0f;
    g_resolver_cos_filt   = 0.0f;

    // Speed estimators: derive both estimators' coefficients from their default
    // cutoffs (one place, same as the host setters) and zero their states.
    sensor_rm44ac_apply_wlpf_hz(g_resolver_wlpf_hz);
    sensor_rm44ac_apply_pll_bw(g_resolver_pll_bw_hz);
    g_resolver_omega_lpf = 0.0f;
    g_resolver_pll_th    = 0.0f;
    g_resolver_pll_w     = 0.0f;
    // g_resolver_elec_offset starts at the default and is overwritten by
    // sensor_rm44ac_capture_zero() during the ALIGN_ROTOR state.
}

// The resolver derives speed inside sensor_update_isr() (per-ISR atan2 + LPF in
// sensor_rm44ac_inline.h), so the slow-loop speed update has nothing to do.
void sensor_update_speed_slow(void) {}

// Re-arm loss detection after an operator fault-clear (see sensor_iface.h).
// Zeroing the debounce count as well as the latch means a marginal signal must
// stay out-of-window for a fresh SENSOR_RES_LOSS_TICKS before it can trip again,
// rather than re-tripping off a count left near the threshold. Runs in the
// background loop; sensor_update_isr() may preempt between these two writes and
// at worst re-increments the count from 0, which is benign (both are volatile
// single-word writes, atomic on C28x). g_resolver_loss_inhibit is intentionally
// untouched -- the align controller owns it.
void sensor_clear_loss(void)
{
    g_resolver_lost       = 0U;
    g_resolver_loss_count = 0U;
}

// Store the electrical zero offset (radians) produced by the ramp-and-average
// align controller (foc_pipeline.c) as the circular mean of (raw_elec -
// commanded_elec) over the spin -- identical contract to the QEP path. The ISR
// subtracts a SENSOR-ANGLE-domain offset before the elec-ratio multiply
//   theta_elec = (theta_sensor - off) * elec_ratio,
// so convert off = rad / elec_ratio, wrapped into [0, 2*pi). Any whole-2*pi
// sensor-domain term folds away in the electrical wrap.
void sensor_set_elec_offset(float32_t rad)
{
    float32_t off = rad / g_resolver_elec_ratio;
    while(off <  0.0f)           off += 2.0f * MATH_PI;
    while(off >= 2.0f * MATH_PI) off -= 2.0f * MATH_PI;
    g_resolver_elec_offset = off;
}

// Single-shot fallback (kept for the sensor_iface contract). Latches the present
// mechanical angle as the zero so theta_elec reads 0. Alignment now uses the
// ramp-and-average controller (foc_pipeline.c) via sensor_set_elec_offset().
void sensor_rm44ac_capture_zero(void)
{
    g_resolver_elec_offset = g_resolver_theta_mech;
}

void sensor_capture_zero(void) { sensor_rm44ac_capture_zero(); }

#endif // SENSOR_BACKEND_RM44AC

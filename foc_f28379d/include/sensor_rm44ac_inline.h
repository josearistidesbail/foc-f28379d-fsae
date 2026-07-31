//=============================================================================
// sensor_rm44ac_inline.h - RM44AC (sin/cos magnetic sensor) backend.
//
// Per ISR:
//   1. ADC sampled SIN and COS (bias-removed, scaled to ~[-1, +1]).
//   2. theta_mech = foc_atan2(sin, cos), normalized to [0, 2*pi).
//   3. theta_elec = (theta_mech - offset) * MOTOR_POLE_PAIRS, wrapped.
//   4. omega from filtered angle-difference (1st-order LPF).
//=============================================================================
#ifndef SENSOR_RM44AC_INLINE_H
#define SENSOR_RM44AC_INLINE_H

#include <stdbool.h>
#include "build_config.h"
#include "libraries/math/include/math.h"
#include "adc_iface.h"

#define TWO_PI_F   (2.0f * 3.14159265f)

// Trig/RTS-free atan2, range [-pi, pi]. The SDK <math.h> (libraries/math) has no
// C99 atan2f, and pulling the RTS atan2f drags large trig tables that overflow
// flash (see CLAUDE.md pitfalls; same reason foc_fast_sqrt() and the align
// averager are hand-rolled). This 3-term odd polynomial on min/max-normalized
// inputs is amplitude-independent and measured to <0.0002 rad (0.012 deg) max
// error over the full circle -- far below resolver mechanical accuracy -- and
// runs every ISR. Self-contained: ternary abs/min/max, no library calls.
static inline float32_t foc_atan2(float32_t y, float32_t x)
{
    float32_t ax = (x < 0.0f) ? -x : x;
    float32_t ay = (y < 0.0f) ? -y : y;
    float32_t mn = (ax < ay) ? ax : ay;
    float32_t mx = (ax > ay) ? ax : ay;
    float32_t a  = mn / (mx + 1e-20f);          // |.| ratio in [0, 1]
    float32_t s  = a * a;
    float32_t r  = ((-0.0464964749f * s + 0.15931422f) * s - 0.327622764f)
                   * s * a + a;                 // atan(a), a in [0,1]
    if(ay > ax)  r = 1.57079633f - r;           // fold to full first quadrant
    if(x < 0.0f) r = 3.14159265f - r;           // left half-plane
    if(y < 0.0f) r = -r;                        // lower half-plane
    return r;
}

extern volatile float32_t   g_resolver_theta_mech;   // [0, 2*pi)
extern volatile float32_t   g_resolver_omega_mech;   // mech rad/s (filtered)
extern volatile float32_t   g_resolver_theta_elec;   // [0, 2*pi)
extern volatile float32_t   g_resolver_omega_elec;
extern volatile float32_t   g_resolver_elec_offset;  // captured at ALIGN_ROTOR
extern volatile float32_t   g_resolver_last_theta;   // for differentiation
extern volatile float32_t   g_resolver_omega_healthy;// last speed while in-window
extern volatile uint16_t    g_resolver_lost;         // 1 once signal is lost
extern volatile uint16_t    g_resolver_loss_count;   // out-of-window ISR debounce
extern volatile uint16_t    g_resolver_loss_inhibit; // hold loss check reset (align cal)
extern volatile uint16_t    g_resolver_dir_inv;      // 1 = mirror mech angle (direction fix)
extern volatile uint16_t    g_resolver_sensor_poles; // sin/cos cycles per mech rev ("res_poles")
extern volatile float32_t   g_resolver_elec_ratio;   // MOTOR_POLE_PAIRS / sensor_poles
extern volatile float32_t   g_resolver_inv_poles;    // 1 / sensor_poles
extern void sensor_rm44ac_apply_poles(uint16_t poles);  // recompute the two ratios
extern volatile float32_t   g_dbg_resolver_mag;      // latest sin^2+cos^2 (RAW)

// SIN/COS input low-pass (software noise reduction). en/alpha owned by the .c and
// the host params; *_filt are the per-channel IIR state. See sensor_rm44ac.h.
extern volatile uint16_t    g_resolver_filt_en;      // 0 = bypass, 1 = filter angle
extern volatile float32_t   g_resolver_filt_alpha;   // IIR coefficient in (0, 1]
extern volatile float32_t   g_resolver_sin_filt;     // IIR state, sin channel
extern volatile float32_t   g_resolver_cos_filt;     // IIR state, cos channel
extern volatile uint16_t    g_resolver_filt_comp;    // 1 = add the filter lag back
extern volatile float32_t   g_resolver_filt_lag_k;   // 1/(2*pi*fc), 0 when fc <= 0

// Speed estimators (see sensor_rm44ac.h / sensor_rm44ac.c). Both integrate every
// ISR; g_resolver_w_mode selects which drives g_resolver_omega_mech.
extern volatile uint16_t    g_resolver_w_mode;       // 0 = LPF, 1 = observer
extern volatile float32_t   g_resolver_omega_lpf;    // estimator A state (mech rad/s)
extern volatile float32_t   g_resolver_wlpf_alpha;   // estimator A IIR coefficient
extern volatile float32_t   g_resolver_pll_kp_ts;    // observer Ts*Kp
extern volatile float32_t   g_resolver_pll_ki_ts;    // observer Ts*Ki
extern volatile float32_t   g_resolver_pll_th;       // observer tracked angle [0, 2*pi)
extern volatile float32_t   g_resolver_pll_w;        // observer tracked speed, sensor rad/s
extern volatile float32_t   g_resolver_pll_w_max;    // observer divergence guard, sensor rad/s
// Legacy estimator's electrical speed, mirrored to scope col 12 for the A/B
// (defined in debug_hooks.c so the QEP build still links; reads 0 there).
extern volatile float       g_dbg_omega_lpf_elec;

// Store the electrical zero offset (radians). Called by the ramp-and-average
// align controller at the end of FOC_ALIGN_ROTOR; defined in sensor_rm44ac.c
// (converts the electrical offset to the mechanical one the ISR subtracts).
extern void sensor_set_elec_offset(float32_t rad);

static inline void sensor_update_isr(void)
{
    float32_t sn, cs;
    adc_read_sin_cos(&sn, &cs);

    // ---- Input low-pass (software noise reduction) -----------------------
    // Run the matched 1st-order IIR on each channel EVERY ISR so the state stays
    // primed (toggling g_resolver_filt_en is then bumpless). The enable flag only
    // selects filtered-vs-raw for the angle below; loss-of-signal still uses raw.
    g_resolver_sin_filt += g_resolver_filt_alpha * (sn - g_resolver_sin_filt);
    g_resolver_cos_filt += g_resolver_filt_alpha * (cs - g_resolver_cos_filt);

    // ---- Loss of signal: sin^2 + cos^2 should stay ~1 at every angle -----
    // A collapsed (unplugged) channel drops the magnitude toward 0; a stuck or
    // railed channel pushes it out the top. Either, sustained for LOSS_TICKS
    // ISRs, flags the sensor lost. Done before atan2 so a dead vector cannot
    // masquerade as a valid angle. Computed on RAW sin/cos so the filter can't
    // mask a real dropout (and its boot ramp can't false-trip loss at low fc).
    float32_t mag = sn * sn + cs * cs;
    g_dbg_resolver_mag = mag;
    if(g_resolver_loss_inhibit)
    {
        // Scale calibration in progress: normalization is untrusted, so the
        // window would false-trip. Hold the debounce reset (mag stays live
        // above for telemetry); the align controller re-arms after commit.
        g_resolver_loss_count = 0U;
    }
    else if(mag < SENSOR_RES_MAG_LOW || mag > SENSOR_RES_MAG_HIGH)
    {
        if(g_resolver_loss_count < 0xFFFFU) g_resolver_loss_count++;
        if(g_resolver_loss_count >= SENSOR_RES_LOSS_TICKS) g_resolver_lost = 1U;
    }
    else
    {
        g_resolver_loss_count = 0U;
    }

    // Mechanical angle from atan2: range [-pi, +pi] -> shift to [0, 2*pi).
    // Use the filtered sin/cos when enabled, else the raw pair (passthrough).
    float32_t asn = g_resolver_filt_en ? g_resolver_sin_filt : sn;
    float32_t acs = g_resolver_filt_en ? g_resolver_cos_filt : cs;
    float32_t th = foc_atan2(asn, acs);
    if(th < 0.0f) th += TWO_PI_F;

    // Direction fix: mirror the mechanical angle so the sensor counts positive
    // with the electrical phase sequence. Flips the derived speed sign too
    // (the diff below runs on the mirrored angle). Applied before offset/speed
    // so everything downstream sees one consistent convention.
    if(g_resolver_dir_inv)
    {
        th = TWO_PI_F - th;
        if(th >= TWO_PI_F) th -= TWO_PI_F;   // th was exactly 0
    }

    // ==== Speed estimation ================================================
    // Two estimators run every ISR (bumpless A/B via g_resolver_w_mode -- same
    // idiom as the sin/cos IIR at the top of this function). Each keeps its own
    // state; the selector at the end copies one into g_resolver_omega_mech, which
    // the lag comp and omega_elec below consume.

    // ---- Estimator A: differentiate-then-LPF (legacy) --------------------
    // Wrap the angle difference into [-pi, +pi), differentiate, LPF. Unchanged
    // math; only the state moved out of g_resolver_omega_mech into its own
    // variable so the selector cannot destroy the inactive estimator's memory.
    float32_t dth = th - g_resolver_last_theta;
    if(dth >  3.14159265f) dth -= TWO_PI_F;
    if(dth < -3.14159265f) dth += TWO_PI_F;
    g_resolver_last_theta = th;

    // dth is in SENSOR-angle radians (the sensor cycles sensor_poles times per
    // mech rev); divide by poles for true mechanical speed.
    float32_t omega_raw = dth * FOC_ISR_FREQ_HZ * g_resolver_inv_poles;
    g_resolver_omega_lpf += g_resolver_wlpf_alpha
                            * (omega_raw - g_resolver_omega_lpf);

    // ---- Estimator B: type-II angle tracking observer --------------------
    // Standard resolver-to-digital ATO (see sensor_rm44ac.h for the gain
    // derivation, the stability bound and the float32 bound). It never
    // differentiates: the measurement enters only as a bounded loop error, so a
    // one-sample angle glitch moves the speed state by ki_ts*err instead of by
    // alpha*fs*err (6.3 vs ~3140 at the shipped settings, ~500x).
    //
    // Fed the SAME uncompensated, post-dir_inv angle 'th' as the differencer
    // above, for the two reasons the lag-comp block below gives -- but rule (1)
    // is STRONGER here. For the differencer a constant lag merely cancels out of
    // the difference; for the observer, closing the loop on the COMPENSATED angle
    // would put its own output back into its own measurement through the comp term
    // (omega*lag_k*poles), an added loop gain of lag_k*poles*s that reaches unity
    // at s = 1/lag_k = 2*pi*res_filt_hz -- a real feedback path, not just a bias.
    // Rule (2) is unchanged: dir_inv flips th and the tracked speed together, so
    // the signed result still points the right way.
    //
    // Semi-implicit (velocity-first) Euler: w is updated BEFORE it is used for th.
    // Better conditioned than the fully explicit form at no extra cost.
    float32_t perr = th - g_resolver_pll_th;
    if(perr >  3.14159265f) perr -= TWO_PI_F;
    if(perr < -3.14159265f) perr += TWO_PI_F;
    // Acquisition clamp: |perr| ~ 0.005 rad in normal running, 100x below this, so
    // it never fires in operation. It bounds a wrap glitch or a post-fault re-lock
    // into a constant-slew pull-in instead of an integrator slam.
    if(perr >  SENSOR_RES_PLL_ERR_CLAMP) perr =  SENSOR_RES_PLL_ERR_CLAMP;
    if(perr < -SENSOR_RES_PLL_ERR_CLAMP) perr = -SENSOR_RES_PLL_ERR_CLAMP;

    float32_t pw = g_resolver_pll_w + g_resolver_pll_ki_ts * perr;
    if(pw >  g_resolver_pll_w_max) pw =  g_resolver_pll_w_max;
    if(pw < -g_resolver_pll_w_max) pw = -g_resolver_pll_w_max;
    g_resolver_pll_w = pw;

    float32_t pth = g_resolver_pll_th + FOC_ISR_TS * pw
                    + g_resolver_pll_kp_ts * perr;
    // Same constant-time modulo used for the electrical angle below: pth must stay
    // in [0, 2*pi) even during a full-slew acquisition.
    pth -= (float32_t)(int32_t)(pth * (1.0f / TWO_PI_F)) * TWO_PI_F;
    if(pth < 0.0f) pth += TWO_PI_F;
    g_resolver_pll_th = pth;

    // ---- Estimator select ------------------------------------------------
    // Both states above are live every ISR, so this is a bumpless A/B switch.
    // Anything other than _PLL selects the legacy estimator. pw is in sensor
    // rad/s; convert to mechanical to match the LPF output's domain.
    g_resolver_omega_mech = (g_resolver_w_mode == SENSOR_RES_W_MODE_PLL)
                            ? (pw * g_resolver_inv_poles)
                            : g_resolver_omega_lpf;

    // ---- Filter lag compensation (see sensor_rm44ac.h) -------------------
    // The matched IIR delays the angle by phi ~= omega_mech/(2*pi*fc); add it
    // back. Applied AFTER the speed estimate deliberately: the difference above
    // runs on the uncompensated angle, so a constant lag cancels out of it and
    // the correction cannot feed back into its own input. Applied AFTER the
    // dir_inv mirror for the same reason it is correct there -- mirroring flips
    // the sign of both th and omega_mech, so the signed product still points the
    // right way. Only meaningful while the filter is actually in the path.
    // th is the SENSOR angle, which turns sensor_poles times per mech rev, so the
    // lag seen here is scaled by poles. (Downstream that cancels against
    // elec_ratio = pole_pairs/sensor_poles, leaving the electrical lag at exactly
    // omega_elec/(2*pi*fc) for any sensor speed.) Wrap with the same constant-time
    // modulo used for the electrical angle below rather than a single subtract:
    // an absurdly low res_filt_hz makes lag_k large enough to exceed a full turn,
    // and g_resolver_theta_mech must stay inside [0, 2*pi) regardless.
    //
    // This reads the SELECTED estimator (g_resolver_omega_mech), so cleaning the
    // speed cleans the COMMUTATION angle too -- that is a headline benefit of the
    // observer, not just the telemetry. In electrical terms the injected angle
    // error is exactly d_theta_elec = omega_elec_noise / (2*pi*res_filt_hz): at
    // res_filt_hz = 200 the old estimator's +/-100 rad/s band was +/-4.6 deg elec
    // and its -700 rad/s spikes were -32 deg. The observer removes both without
    // touching a line here. No loop: the comp runs AFTER both estimators read th.
    if(g_resolver_filt_en && g_resolver_filt_comp)
    {
        th += g_resolver_omega_mech * g_resolver_filt_lag_k
              * (float32_t)g_resolver_sensor_poles;
        th -= (float32_t)(int32_t)(th * (1.0f / TWO_PI_F)) * TWO_PI_F;
        if(th < 0.0f) th += TWO_PI_F;
    }

    // NOTE: holds the SENSOR angle [0, 2*pi) -- true mech angle only for a
    // 1-speed sensor; ambiguous (mod 2*pi/poles of a rev) otherwise.
    g_resolver_theta_mech = th;

    // Electrical angle: subtract the sensor-domain offset, scale by
    // elec_ratio = MOTOR_POLE_PAIRS / sensor_poles, wrap. (Ratio 1 when the
    // sense magnet tracks the rotor poles.)
    float32_t e = (th - g_resolver_elec_offset) * g_resolver_elec_ratio;
    e -= (float32_t)(int32_t)(e * (1.0f / TWO_PI_F)) * TWO_PI_F;
    if(e < 0.0f) e += TWO_PI_F;
    g_resolver_theta_elec = e;
    g_resolver_omega_elec = g_resolver_omega_mech * (float32_t)MOTOR_POLE_PAIRS;

    // Scope A/B (col 12): the LEGACY estimator's electrical speed, ALWAYS live
    // regardless of res_w_mode, so one capture shows both estimators against the
    // same rotor motion. With res_w_mode = 0 this must equal the omega channel
    // (col 5) exactly -- that equality is the plumbing check.
    g_dbg_omega_lpf_elec = g_resolver_omega_lpf * (float32_t)MOTOR_POLE_PAIRS;

    // Latch the speed only while the signal is in-window; the fault shutdown
    // reads this (not the live, now-garbage estimate) to pick active-short/coast.
    if(!g_resolver_lost) g_resolver_omega_healthy = g_resolver_omega_elec;
}

static inline float32_t sensor_get_elec_angle(void) { return g_resolver_theta_elec; }

// Raw (uncorrected) electrical angle = sensor_angle * elec_ratio, wrapped to
// [0, 2*pi) -- independent of the captured offset. Used by the ramp-and-average
// align controller (foc_pipeline.c) exactly like the QEP g_qep_theta_raw_elec.
static inline float32_t sensor_get_elec_angle_raw(void)
{
    float32_t e = g_resolver_theta_mech * g_resolver_elec_ratio;
    e -= (float32_t)(int32_t)(e * (1.0f / TWO_PI_F)) * TWO_PI_F;
    if(e < 0.0f) e += TWO_PI_F;
    return e;
}

static inline float32_t sensor_get_elec_speed(void) { return g_resolver_omega_elec; }
static inline bool      sensor_is_lost(void)        { return g_resolver_lost != 0U; }
static inline float32_t sensor_get_healthy_speed(void) { return g_resolver_omega_healthy; }

#endif // SENSOR_RM44AC_INLINE_H

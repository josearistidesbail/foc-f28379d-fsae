//=============================================================================
// observer.c - Sensorless rotor-position observers (Step 12). See observer.h.
//
// Discrete forms (Ts = FOC_ISR_TS), both run every tick regardless of g_obs_mode:
//
// FLUX (Ortega):     x    += Ts*(v - Rs*(i + i_prev)/2)        (propagate)
//                    eta   = x - Ls*i                           (this instant)
//                    err   = lam^2 - |eta|^2         (clamped to +/-lam^2)
//                    x    += 0.5*gamma_eff*Ts*err*eta           (radial correct)
//                    theta = atan2(eta_b, eta_a)
//   Propagate FIRST, then correct on a flux vector that is consistent at THIS
//   sample. Correcting from (x_old - Ls*i_new) mixes two instants: the spurious
//   Ls*(i_new - i_old) term (5% of lambda at 72 A / 0.2 rad per tick on the
//   EMRAX) makes the "radial" correction tangential and biased the angle by
//   ~1.5 deg proportionally to gamma and iq (found in the offline sim). The
//   trapezoidal Rs term removes the right-endpoint bias of the resistive drop.
//   gamma_eff = g_obs_gamma / lam^2, so g_obs_gamma is the radial correction
//   rate in 1/s: linearizing |eta|^2 about lam^2 gives d(m)/dt = -gamma_eff*
//   lam^2*(m - lam^2) = -g_obs_gamma*(m - lam^2). Motor-independent knob; the
//   discrete radial pole is (1 - g_obs_gamma*Ts), hence the [10, 5000] clamp.
//
// SMO (classic):     i_hat = F*i_hat + G*(v - z)             F = exp(-Rs*Ts/Ls)
//                    d     = i_hat - i                       G = (1 - F)/Rs
//                    z     = Kslide * sat(d, +/-E0)          (TI's convention:
//                                                             error in amps
//                                                             saturated, then
//                                                             scaled by V/A)
//                    e_hat += alpha*(z - e_hat)   alpha = min(wc*Ts, 0.5),
//                                                 wc = max(k*|w|, 2*pi*f_floor)
//                    theta = atan2(-e_a, e_b) (+pi if w < 0) + phi(w)
//   The switching term z is the "equivalent control" that reconstructs the
//   back-EMF the current model is missing; e_hat is its low-pass. NOTE this is
//   the CLASSIC form (Utkin / TI SMOPOS): e_hat is NOT fed back into the model.
//   TI's eSMO feeds it back (v - e_hat - z), which makes z and e_hat SHARE the
//   back-EMF (each settles at e/2) and changes the closed-loop phase to that of
//   H/(1+H) -- harmless for atan2 but it invalidates the textbook lag
//   compensation. Without the feedback, in the boundary layer (|d| < E0) the
//   chain is exactly linear:  E_hat/E = Kslide*G*alpha*z^1.5 / ((z - p)(z - (1-alpha)))
//   with p = F - G*Kslide and z = exp(j*w*Ts) (z^0.5: the back-EMF drives the
//   current model as its average over the tick, i.e. half a sample early; the
//   other z: the LPF consumes this tick's z), so phi(w) is the EXACT discrete
//   phase of that transfer (evaluated per tick with two TMU atan2 -- its
//   continuous-time limit is ~32 deg off at the EMRAX's 0.63 rad per tick), and
//   its magnitude gives a speed-referenced convergence metric (g_obs_smo_err).
//   Design rules: |p| < 1 for stability, p >= 0 for a monotonic (chatter-free)
//   error decay -> Kslide <= F/G (Teknic 2.2, EMRAX 1.1 V/A); E0 >= the
//   steady current-model error G*e/|z - p| at top speed keeps the observer in
//   its linear regime (the continuous e/|Kslide + Rs + j*w*Ls| underestimates
//   it by ~15 % at 0.63 rad per tick). A smaller E0 turns it into a true bang-bang
//   sliding mode (z chatters at +/-Kslide*E0 and the LPF has to average it):
//   available for the bench A/B, but the metric below assumes the linear regime.
//
// PLL (type II, zeta = 1, semi-implicit Euler -- the resolver ATO verbatim):
//                    perr   = wrap(theta_in - th)  clamped +/-OBS_PLL_ERR_CLAMP
//                    w     += (wn^2*Ts)*perr       clamped +/-w_max
//                    th    += Ts*w + (2*wn*Ts)*perr
//
// All coefficients (F, G, k_flux, wc_min, kp_ts, ki_ts, w_max) are derived in
// obs_apply_params() at setter time -- the ISR path has no exp. exp() itself is
// a 5-term series: at a = Rs*Ts/Ls the truncation error is a^6/720 < 2e-8 for
// a <= 0.2 (Teknic 0.153, EMRAX 0.014), whereas the first-order 1 - a would be
// 1.3% off on the Teknic.
//=============================================================================
#include "build_config.h"
#include "observer.h"
#include "foc_math_inline.h"

// ---- parameters ------------------------------------------------------------
volatile uint16_t  g_obs_mode       = OBS_MODE_DEFAULT;
volatile uint16_t  g_obs_vsrc       = OBS_VSRC_DEFAULT;
volatile float32_t g_obs_gamma      = OBS_GAMMA_DEFAULT;
volatile float32_t g_obs_smo_kslide = OBS_SMO_KSLIDE_DEFAULT;
volatile float32_t g_obs_smo_e0     = OBS_SMO_E0_DEFAULT;
volatile float32_t g_obs_smo_lpf_hz = OBS_SMO_LPF_HZ_DEFAULT;
volatile float32_t g_obs_smo_lpf_k  = OBS_SMO_LPF_K_DEFAULT;
volatile float32_t g_obs_pll_bw_hz  = OBS_PLL_BW_HZ_DEFAULT;
volatile float32_t g_obs_min_speed  = OBS_MIN_SPEED_DEFAULT;
volatile float32_t g_obs_flux_tol   = OBS_FLUX_TOL_DEFAULT;
volatile float32_t g_obs_smo_tol    = OBS_SMO_TOL_DEFAULT;
volatile float32_t g_obs_rs         = MOTOR_RS_OHM;
volatile float32_t g_obs_ls         = OBS_LS_DEFAULT;

// ---- outputs ---------------------------------------------------------------
volatile float32_t g_obs_theta_est;
volatile float32_t g_obs_omega_est;
volatile float32_t g_obs_theta_flux;
volatile float32_t g_obs_theta_smo;
volatile float32_t g_obs_dtheta;
volatile float32_t g_obs_flux_err;
volatile float32_t g_obs_smo_err;
volatile float32_t g_obs_smo_ierr;
volatile uint16_t  g_obs_healthy;
volatile uint16_t  g_obs_resets;

// ---- derived coefficients (obs_apply_params) -------------------------------
static float32_t s_lam;        // lambda_pm [V*s]
static float32_t s_lam2;       // lambda_pm^2
static float32_t s_inv_lam2;   // 1/lambda_pm^2
static float32_t s_k_flux;     // 0.5*gamma_eff*Ts
static float32_t s_F;          // SMO plant matrix exp(-Rs*Ts/Ls)
static float32_t s_G;          // SMO input gain (1-F)/Rs
static float32_t s_wc_min;     // SMO LPF cutoff floor [rad/s]
static float32_t s_kp_ts;      // PLL 2*wn*Ts
static float32_t s_ki_ts;      // PLL wn^2*Ts
static float32_t s_w_max;      // PLL speed clamp [elec rad/s]

// ---- states ----------------------------------------------------------------
static float32_t s_x_a, s_x_b;             // flux observer: stator flux [V*s]
static float32_t s_ia_prev, s_ib_prev;     // last tick's current (trapezoidal Rs*i)
static float32_t s_ih_a, s_ih_b;           // SMO: current model [A]
static float32_t s_z_a, s_z_b;             // SMO: switching term [V]
static float32_t s_e_a, s_e_b;             // SMO: filtered back-EMF [V]
static float32_t s_pll_th, s_pll_w;        // PLL angle [rad], speed [rad/s]
static uint16_t  s_ok_ticks, s_nok_ticks;  // health debounce counters

void obs_apply_params(void)
{
    float32_t g   = g_obs_gamma;
    float32_t rs  = g_obs_rs;
    float32_t ls  = g_obs_ls;
    float32_t e0  = g_obs_smo_e0;
    float32_t fhz = g_obs_smo_lpf_hz;
    float32_t bw  = g_obs_pll_bw_hz;
    float32_t a, wn;

    // Clamp in place so PARAM_READ shows the value in force.
    if(g < OBS_GAMMA_MIN)      g = OBS_GAMMA_MIN;
    if(g > OBS_GAMMA_MAX)      g = OBS_GAMMA_MAX;
    if(rs < 1.0e-4f)           rs = 1.0e-4f;
    if(ls < 1.0e-6f)           ls = 1.0e-6f;
    if(e0 < 1.0e-3f)           e0 = 1.0e-3f;
    if(fhz < 0.1f)             fhz = 0.1f;
    if(bw < OBS_PLL_BW_MIN_HZ) bw = OBS_PLL_BW_MIN_HZ;
    if(bw > OBS_PLL_BW_MAX_HZ) bw = OBS_PLL_BW_MAX_HZ;
    if(g_obs_smo_kslide < 0.0f) g_obs_smo_kslide = 0.0f;
    if(g_obs_smo_lpf_k  < 0.0f) g_obs_smo_lpf_k  = 0.0f;
    if(g_obs_min_speed  < 0.0f) g_obs_min_speed  = 0.0f;
    if(g_obs_flux_tol   < 0.01f) g_obs_flux_tol  = 0.01f;
    if(g_obs_smo_tol    < 0.01f) g_obs_smo_tol   = 0.01f;
    g_obs_gamma      = g;
    g_obs_rs         = rs;
    g_obs_ls         = ls;
    g_obs_smo_e0     = e0;
    g_obs_smo_lpf_hz = fhz;
    g_obs_pll_bw_hz  = bw;

    s_lam      = MOTOR_FLUX_VS;
    s_lam2     = s_lam * s_lam;
    s_inv_lam2 = 1.0f / s_lam2;
    s_k_flux   = 0.5f * (g * s_inv_lam2) * FOC_ISR_TS;

    a = rs * FOC_ISR_TS / ls;
    if(a > 1.0f) a = 1.0f;                       // series validity guard
    s_F = 1.0f - a + a * a * 0.5f - a * a * a * (1.0f / 6.0f)
          + a * a * a * a * (1.0f / 24.0f) - a * a * a * a * a * (1.0f / 120.0f);
    s_G = (1.0f - s_F) / rs;
    // Discrete stability of the current model inside the boundary layer needs
    // |F - G*Kslide| < 1; cap Kslide at 90% of that bound so a host write can
    // never make the SMO diverge (p < 0 is allowed: oscillatory but stable).
    {
        float32_t ks_max = 0.9f * (1.0f + s_F) / s_G;
        if(g_obs_smo_kslide > ks_max) g_obs_smo_kslide = ks_max;
    }

    s_wc_min = FOC_TWO_PI_F * fhz;

    wn      = FOC_TWO_PI_F * bw;
    s_kp_ts = 2.0f * wn * FOC_ISR_TS;            // zeta = 1
    s_ki_ts = wn * wn * FOC_ISR_TS;
    s_w_max = 1.5f * MOTOR_SPEED_MAX_RAD_S * (float32_t)MOTOR_POLE_PAIRS;
}

void obs_reset(void)
{
    s_x_a = 0.0f;  s_x_b = 0.0f;
    s_ia_prev = 0.0f; s_ib_prev = 0.0f;
    s_ih_a = 0.0f; s_ih_b = 0.0f;
    s_z_a = 0.0f;  s_z_b = 0.0f;
    s_e_a = 0.0f;  s_e_b = 0.0f;
    s_pll_th = 0.0f; s_pll_w = 0.0f;
    s_ok_ticks = 0U; s_nok_ticks = 0U;
    g_obs_theta_est  = 0.0f;
    g_obs_omega_est  = 0.0f;
    g_obs_theta_flux = 0.0f;
    g_obs_theta_smo  = 0.0f;
    g_obs_dtheta     = 0.0f;
    g_obs_flux_err   = -1.0f;                    // "no flux yet"
    g_obs_smo_err    = -1.0f;                    // "no back-EMF yet"
    g_obs_smo_ierr   = 0.0f;
    g_obs_healthy    = 0U;
}

void obs_init(void)
{
    obs_apply_params();
    obs_reset();
    g_obs_resets = 0U;
}

void obs_seed(float32_t theta, float32_t omega, float32_t ia, float32_t ib)
{
    float32_t ls = g_obs_ls;
    theta = foc_wrap_2pi(theta);
    s_x_a = ls * ia + s_lam * FOC_COS(theta);
    s_x_b = ls * ib + s_lam * FOC_SIN(theta);
    s_ia_prev = ia; s_ib_prev = ib;
    s_ih_a = ia; s_ih_b = ib;
    s_z_a = 0.0f; s_z_b = 0.0f;
    s_e_a = 0.0f; s_e_b = 0.0f;
    s_pll_th = theta;
    s_pll_w  = foc_sat(omega, s_w_max);
    s_ok_ticks = 0U; s_nok_ticks = 0U;
    g_obs_theta_est  = theta;
    g_obs_omega_est  = s_pll_w;
    g_obs_theta_flux = theta;
    g_obs_theta_smo  = theta;
    g_obs_dtheta     = 0.0f;
    g_obs_flux_err   = 0.0f;
    g_obs_smo_err    = -1.0f;
    g_obs_smo_ierr   = 0.0f;
    g_obs_healthy    = 0U;
}

void obs_update_isr(float32_t va, float32_t vb, float32_t ia, float32_t ib)
{
    const float32_t Ts = FOC_ISR_TS;
    float32_t rs = g_obs_rs;
    float32_t ls = g_obs_ls;
    float32_t w_prev = g_obs_omega_est;          // last PLL speed (sign + LPF scaling)
    float32_t th_flux, th_smo, th_in, perr, pw;
    bool ok;

    // ---- Flux observer -----------------------------------------------------
    {
        float32_t eta_a, eta_b, mag2, ferr, k;
        // Propagate the stator-flux integral over the last tick: ZOH voltage,
        // trapezoidal resistive drop.
        s_x_a += Ts * (va - rs * 0.5f * (ia + s_ia_prev));
        s_x_b += Ts * (vb - rs * 0.5f * (ib + s_ib_prev));
        s_ia_prev = ia;
        s_ib_prev = ib;
        // Rotor-flux vector at THIS instant, then the radial correction on it.
        eta_a = s_x_a - ls * ia;
        eta_b = s_x_b - ls * ib;
        mag2  = eta_a * eta_a + eta_b * eta_b;
        if(!(mag2 < 1.0e6f))                     // NaN-safe blow-up guard
        {
            obs_reset();
            g_obs_resets++;
            return;
        }
        ferr  = foc_sat(s_lam2 - mag2, s_lam2);  // acquisition guard
        k     = s_k_flux * ferr;
        s_x_a += k * eta_a;
        s_x_b += k * eta_b;
        eta_a *= (1.0f + k);                     // = s_x - Ls*i after the correction
        eta_b *= (1.0f + k);
        th_flux = foc_wrap_2pi(FOC_ATAN2(eta_b, eta_a));
        g_obs_flux_err = (eta_a * eta_a + eta_b * eta_b - s_lam2) * s_inv_lam2;
    }

    // ---- Sliding-mode observer ---------------------------------------------
    {
        float32_t e0 = g_obs_smo_e0;
        float32_t ks = g_obs_smo_kslide;
        float32_t wabs = (w_prev < 0.0f) ? -w_prev : w_prev;
        float32_t wc, alpha, da, db, thw, sn, cs, p, q, a2, b2, gain, emag2, pred2;

        s_ih_a = s_F * s_ih_a + s_G * (va - s_z_a);
        s_ih_b = s_F * s_ih_b + s_G * (vb - s_z_b);
        da = s_ih_a - ia;
        db = s_ih_b - ib;
        s_z_a = ks * foc_sat(da, e0);
        s_z_b = ks * foc_sat(db, e0);

        wc = g_obs_smo_lpf_k * wabs;             // speed-scaled cutoff (TI Kslf)
        if(wc < s_wc_min) wc = s_wc_min;
        alpha = wc * Ts;
        if(alpha > 0.5f) alpha = 0.5f;
        s_e_a += alpha * (s_z_a - s_e_a);
        s_e_b += alpha * (s_z_b - s_e_b);

        // e = w*lam*(-sin, cos): atan2(-e_a, e_b) = theta for w > 0, theta+pi
        // for w < 0 (the back-EMF flips with direction; the flux observer has
        // no such ambiguity). Then add the exact discrete phase lag of
        // E_hat/E = ks*G*alpha*z^1.5 / ((z - p)(z - q)), z = e^{j*thw}, thw = w*Ts:
        //   phi = angle(z - p) + angle(z - q) - 1.5*thw
        // (the 1.5: half a sample because the plant integrates the back-EMF
        // over the tick, one sample because the LPF uses this tick's z). Odd in
        // w, so one expression serves both directions; the small-angle limit is
        // the continuous-time atan(w*Ls/(Rs+ks)) + atan(w/wc), ~32 deg off at
        // 0.63 rad per tick, and even the missing half-sample is 7 deg at the
        // Teknic's top speed. The usual filter-only atan(w/wc) happens to land
        // within a few degrees for p ~ 0.1-0.2 but is tens of degrees off for
        // other gains (scripts/make_fig_phase.py in the paper repo).
        thw = w_prev * Ts;
        sn  = FOC_SIN(thw);
        cs  = FOC_COS(thw);
        p   = s_F - s_G * ks;
        q   = 1.0f - alpha;
        th_smo = FOC_ATAN2(-s_e_a, s_e_b);
        if(w_prev < 0.0f) th_smo += MATH_PI;
        th_smo += FOC_ATAN2(sn, cs - p) + FOC_ATAN2(sn, cs - q) - 1.5f * thw;
        th_smo = foc_wrap_2pi(th_smo);

        // Convergence metric: in the linear regime |e_hat| is predictable from
        // the PLL speed, |e_hat| = |w|*lam*ks*G*alpha / (|z-p|*|z-q|). Report
        // (|e_hat|^2 / predicted^2) - 1 (sqrt-free): 0 when converged, -1 with
        // no back-EMF, positive when e_hat is too large for the speed. Assumes
        // |d| < E0; a bang-bang (small-E0) setup needs a wider obs_smo_tol.
        a2    = (cs - p) * (cs - p) + sn * sn;
        b2    = (cs - q) * (cs - q) + sn * sn;
        gain  = ks * s_G * alpha;
        emag2 = s_e_a * s_e_a + s_e_b * s_e_b;
        pred2 = (wabs * s_lam) * (wabs * s_lam) * gain * gain;
        {
            float32_t den = pred2;
            float32_t ab  = a2 * b2;
            g_obs_smo_err = (den > 1.0e-12f) ? (emag2 * ab / den - 1.0f) : -1.0f;
        }
        g_obs_smo_ierr = foc_fast_sqrt(da * da + db * db);
    }

    // ---- Common PLL ----------------------------------------------------------
    // s_pll_th holds the one-step-ahead PREDICTION made last tick. The estimate
    // published for THIS sample is that prediction plus the proportional
    // correction; the state then advances by Ts*w for the next tick. Publishing
    // the advanced state instead would make theta_est lead the sensor by
    // omega*Ts (0.63 rad at the EMRAX's 6283 rad/s) -- enough on its own to
    // trip the disagreement detector.
    th_in = (g_obs_mode == OBS_MODE_SMO) ? th_smo : th_flux;
    perr  = foc_sat(foc_wrap_pi(th_in - s_pll_th), OBS_PLL_ERR_CLAMP);
    pw    = foc_sat(s_pll_w + s_ki_ts * perr, s_w_max);
    s_pll_w  = pw;
    {
        float32_t th_now = foc_wrap_2pi(s_pll_th + s_kp_ts * perr);
        s_pll_th = foc_wrap_2pi(th_now + Ts * pw);
        g_obs_theta_est = th_now;
    }
    g_obs_omega_est  = pw;
    g_obs_theta_flux = th_flux;
    g_obs_theta_smo  = th_smo;
    g_obs_dtheta     = foc_wrap_pi(th_flux - th_smo);

    // ---- Health (asymmetric debounce) --------------------------------------
    // ok = above the speed floor, PLL tracking its input, and the selected
    // observer's own convergence metric inside tolerance. Healthy needs
    // OBS_CONVERGED_TICKS consecutive ok ticks; unhealthy needs
    // OBS_UNHEALTHY_TICKS consecutive not-ok ticks (fast to drop, slow to trust).
    {
        float32_t wa = (pw < 0.0f) ? -pw : pw;
        ok = (wa > g_obs_min_speed) && (perr < 0.3f) && (perr > -0.3f);
        if(ok)
        {
            if(g_obs_mode == OBS_MODE_SMO)
            {
                float32_t se = g_obs_smo_err;
                float32_t tol = g_obs_smo_tol;
                ok = (se < tol) && (se > -tol);
            }
            else
            {
                float32_t fe = g_obs_flux_err;
                float32_t tol = g_obs_flux_tol;
                ok = (fe < tol) && (fe > -tol);
            }
        }
    }
    if(ok)
    {
        s_nok_ticks = 0U;
        if(s_ok_ticks < OBS_CONVERGED_TICKS) s_ok_ticks++;
        if(s_ok_ticks >= OBS_CONVERGED_TICKS) g_obs_healthy = 1U;
    }
    else
    {
        s_ok_ticks = 0U;
        if(s_nok_ticks < OBS_UNHEALTHY_TICKS) s_nok_ticks++;
        if(s_nok_ticks >= OBS_UNHEALTHY_TICKS) g_obs_healthy = 0U;
    }
}

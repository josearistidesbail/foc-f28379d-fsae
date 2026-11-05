//=============================================================================
// observer.h - Sensorless rotor-position observers (Step 12).
//
// Two independent estimators of the rotor ELECTRICAL angle and speed from the
// stationary-frame stator voltage (v_alpha, v_beta) and current (i_alpha,
// i_beta). Both run every ISR so a live g_obs_mode switch is bumpless (same
// idiom as the resolver's res_w_mode A/B):
//
//   OBS_MODE_FLUX  Ortega nonlinear flux observer. Integrates the stator flux
//                  x = int(v - Rs*i) and pulls the rotor-flux vector
//                  eta = x - Ls*i onto the circle |eta| = lambda_pm with the
//                  correction (gamma/2)*eta*(lambda^2 - |eta|^2). theta =
//                  atan2(eta_b, eta_a). No LPF in the angle path, no speed-
//                  sign ambiguity, robust to DC drift (the radial term is the
//                  anti-drift). Needs lambda_pm.
//   OBS_MODE_SMO   TI eSMO-style sliding-mode current observer (SDK 6.00
//                  libraries/observers/esmo/include/esmo.h, in SI units): a
//                  current model driven by (v - e_hat - z), switching term
//                  z = Kslide*sat(i_hat - i, +/-E0), back-EMF e_hat = LPF(z)
//                  with a speed-scaled cutoff, theta from atan2(-e_a, e_b)
//                  plus the LPF lag atan(w/wc). Needs the speed SIGN (the
//                  back-EMF flips with rotation direction).
//
// The selected raw angle feeds a common type-II PLL (the resolver ATO's
// equations, sensor_rm44ac_inline.h) whose outputs g_obs_theta_est /
// g_obs_omega_est are what the position-source supervisor (pos_src.c) uses.
//
// Inputs come from foc_current_loop_isr(): v_ab reconstructed from the LAST
// tick's final duty (post-SVGEN, post-dead-zone-compensation) times the bus
// SVGEN normalized with, i_ab from this tick's Clarke output -- i.e. the
// voltage that produced the current being measured (one-tick alignment).
//
// Neither observer works at standstill (no back-EMF, no flux motion): below
// g_obs_min_speed the estimate is declared unhealthy by construction.
//=============================================================================
#ifndef OBSERVER_H
#define OBSERVER_H

#include <stdint.h>
#include <stdbool.h>
#include "build_config.h"
#include "libraries/math/include/math.h"

#define OBS_MODE_FLUX       0U
#define OBS_MODE_SMO        1U

// Voltage source for both observers ("obs_vsrc" param):
//   DUTY_DZ  last tick's duty * vbus MINUS the dead-zone model
//            (g_dtc_duty*vbus + g_dtc_v)*sat(i_phase/ith): the best estimate of
//            what the bridge actually delivered, with dtc_en on OR off. Default.
//   DUTY     raw duty * vbus (what was asked of the bridge).
//   CMD      the pre-SVGEN commanded Vab. Volts only in closed-loop RUN; in
//            ALIGN/OPENLOOP the command is in the duty domain (unity bus).
#define OBS_VSRC_DUTY_DZ    0U
#define OBS_VSRC_DUTY       1U
#define OBS_VSRC_CMD        2U

// ---- Host-writable parameters (all LIVE; defaults from gains_*.h) --------
extern volatile uint16_t  g_obs_mode;         // OBS_MODE_*
extern volatile uint16_t  g_obs_vsrc;         // OBS_VSRC_*
extern volatile float32_t g_obs_gamma;        // flux radial correction rate [1/s]
extern volatile float32_t g_obs_smo_kslide;   // SMO switching gain [V/A]
extern volatile float32_t g_obs_smo_e0;       // SMO boundary layer [A]
extern volatile float32_t g_obs_smo_lpf_hz;   // SMO back-EMF LPF floor [Hz]
extern volatile float32_t g_obs_smo_lpf_k;    // SMO LPF cutoff = k*|omega| (speed-scaled)
extern volatile float32_t g_obs_pll_bw_hz;    // PLL bandwidth [Hz], zeta = 1
extern volatile float32_t g_obs_min_speed;    // healthy only above this |omega_e| [rad/s]
extern volatile float32_t g_obs_flux_tol;     // |(|eta|^2 - lam^2)/lam^2| tolerance [pu]
extern volatile float32_t g_obs_smo_tol;      // |g_obs_smo_err| tolerance [pu]
extern volatile float32_t g_obs_rs;           // model Rs [ohm] (boot MOTOR_RS_OHM)
extern volatile float32_t g_obs_ls;           // model Ls [H]   (boot (Ld+Lq)/2)

// ---- Outputs (read-only telemetry + supervisor inputs) --------------------
extern volatile float32_t g_obs_theta_est;    // PLL angle [rad], [0, 2*pi)
extern volatile float32_t g_obs_omega_est;    // PLL speed [elec rad/s]
extern volatile float32_t g_obs_theta_flux;   // raw flux-observer angle
extern volatile float32_t g_obs_theta_smo;    // raw SMO angle
extern volatile float32_t g_obs_dtheta;       // wrap(theta_flux - theta_smo) [rad]
extern volatile float32_t g_obs_flux_err;     // flux magnitude error [pu]
extern volatile float32_t g_obs_smo_err;      // SMO back-EMF magnitude vs speed [pu]: 0 converged, -1 none
extern volatile float32_t g_obs_smo_ierr;     // SMO current-model error |i_hat - i| [A] (sizes E0)
extern volatile uint16_t  g_obs_healthy;      // 1 after OBS_CONVERGED_TICKS of tracking
extern volatile uint16_t  g_obs_resets;       // blow-up guard trips (diagnostic)

// Boot: apply defaults, derive coefficients, zero the states.
extern void obs_init(void);
// Re-derive every coefficient from the live params (called by each setter and
// by obs_init). Clamps the params into their valid ranges IN PLACE so the host
// reads back the value actually in force. Never touches the states.
extern void obs_apply_params(void);
// Zero all states and the health latch (called every ISR outside the driving
// states, and by the blow-up guard).
extern void obs_reset(void);
// Start the observers converged at a known angle/speed/current (RUN entry with
// a live sensor): flux state x = Ls*i + lam*(cos, sin), PLL at (theta, omega),
// current model at i. Health still has to be earned over OBS_CONVERGED_TICKS.
extern void obs_seed(float32_t theta, float32_t omega, float32_t ia, float32_t ib);
// One ISR step of both observers + the PLL + the health debounce.
extern void obs_update_isr(float32_t va, float32_t vb, float32_t ia, float32_t ib);

#endif // OBSERVER_H

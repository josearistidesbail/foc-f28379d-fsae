//=============================================================================
// sensor_rm44ac.h - RM44AC sin/cos analog resolver parameters.
//
// LTN Servotechnik RM44AC: 1 pole-pair resolver, ~3:1 transformation ratio,
// excitation typically 7-10 kHz sinusoid at 4-7 Vrms.
//
// Tuning recipe for the PLL gains:
//   omega_bw = bandwidth target [rad/s]   (e.g. 2*pi*200 = 1257)
//   pll_gain_in = omega_bw^2 * 2 * zeta   (zeta ~= 1.0)
//   pll_gain_ff = 2 * zeta * omega_bw
//=============================================================================
#ifndef SENSOR_RM44AC_H
#define SENSOR_RM44AC_H

#define SENSOR_NAME                 "RM44AC sin/cos resolver"

#define SENSOR_RES_POLE_PAIRS       1       // most RM44AC variants are 1 pp

// PLL tracking-loop gains (see Resolver_t in resolver.h).
#define SENSOR_RES_PLL_GAIN_IN      1.0e6f
#define SENSOR_RES_PLL_GAIN_FF      2500.0f
#define SENSOR_RES_PHASE_COMP_GAIN  0.0f    // start at 0; tune with scope after bringup
#define SENSOR_RES_BIAS_OFFSET      0.0f    // mech radians

// Speed low-pass cutoff (Hz)
#define SENSOR_RES_SPEED_LPF_HZ     500.0f

// Default electrical-offset captured during ALIGN_ROTOR (radians).
// Updated at runtime; persist to flash for repeatable boot if desired.
#define SENSOR_RES_DEFAULT_OFFSET   0.0f

#endif // SENSOR_RM44AC_H

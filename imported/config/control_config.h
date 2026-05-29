#ifndef CONTROL_CONFIG_H
#define CONTROL_CONFIG_H

#include "motor_config.h"
#include "board_config.h"

/*
 * Sample times. The current loop runs once per PWM period (ADC-triggered).
 * The speed loop runs every SPEED_LOOP_DIVIDER current ticks.
 */
#define TS_CURRENT_S            (1.0f / (float)PWM_FREQ_HZ)
#define SPEED_LOOP_DIVIDER      30U
#define TS_SPEED_S              (TS_CURRENT_S * (float)SPEED_LOOP_DIVIDER)

/* ---- Per-unit base (everything in the algorithm is normalised by these). ---- */
#define BASE_VOLTAGE_V          24.0f       /* nominal DRV8305 BoostXL bus */
#define BASE_CURRENT_A          MOTOR_RATED_CURRENT_A
#define BASE_SPEED_RPM          MOTOR_MAX_SPEED_RPM
#define BASE_SPEED_RAD_S        (BASE_SPEED_RPM * 0.10471975512f)
#define BASE_TORQUE_NM          (1.5f * (float)MOTOR_POLE_PAIRS * MOTOR_FLUX_PM_WB * BASE_CURRENT_A)
#define BASE_IMPEDANCE_OHM      (BASE_VOLTAGE_V / BASE_CURRENT_A)

/* ---- Controller gains (all in per-unit). ----
 *
 * Designed by pole placement: closed-loop current bandwidth = 1/(2*pi*tau_i).
 * Speed loop is the symmetric optimum with damping = 1/sqrt(2).
 * Field weakening regulates the voltage magnitude to V_MAX_PU.
 *
 * Recompute in MATLAB if you change motor parameters or sample times.
 */
#define PI_ID_KP                0.409919f
#define PI_ID_KI                0.014334f
#define PI_IQ_KP                0.409919f
#define PI_IQ_KI                0.014334f

#define PI_SPEED_KP             0.611707f
#define PI_SPEED_KI             0.050000f

#define PI_FWC_KP               0.439127f
#define PI_FWC_KI               0.046667f

/* ---- Limits (per-unit) ---- */
#define V_MAX_PU                0.95f       /* modulation index limit */
#define I_MAX_PU                1.00f       /* phase-current envelope */
#define ID_MIN_PU              (-1.00f)     /* FWC may drive Id negative */
#define SPEED_REF_MAX_PU        1.00f

/* ---- Startup behaviour ---- */
#define STARTUP_DELAY_TICKS     267U        /* current-loop ticks before enable */
#define ALIGN_ID_PU             0.25f       /* d-axis current for rotor align */
#define ALIGN_DURATION_S        0.5f

/* Low-pass on measured speed: alpha = Ts_speed / (Ts_speed + tau).
 * tau chosen for ~80 Hz cutoff on the speed feedback. */
#define SPEED_FILTER_ALPHA      0.0013056f

/* QEP electrical alignment offset (rad), measured during commissioning. */
#define ENCODER_OFFSET_RAD      1.0398f     /* 0.1655 * 2*pi from the original */

#endif

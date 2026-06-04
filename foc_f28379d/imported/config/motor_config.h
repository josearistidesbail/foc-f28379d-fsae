#ifndef MOTOR_CONFIG_H
#define MOTOR_CONFIG_H

/*
 * Motor electrical and mechanical parameters.
 *
 * Default values are for the Teknic M-2310P-LN-04K used by the original
 * Simulink reference. Replace with your motor's datasheet / measured values.
 */

#define MOTOR_POLE_PAIRS        4U
#define MOTOR_RS_OHM            0.5581f       /* stator resistance, line-to-neutral */
#define MOTOR_LD_H              1.3998e-4f    /* d-axis inductance */
#define MOTOR_LQ_H              1.3453e-4f    /* q-axis inductance */
#define MOTOR_FLUX_PM_WB        0.0048378f    /* PM flux linkage, Wb-turns */
#define MOTOR_INERTIA_KGM2      7.061e-6f
#define MOTOR_FRICTION_NMSRAD   1.836e-5f

/* Operating limits (used to compute the per-unit base). */
#define MOTOR_RATED_CURRENT_A   7.1f          /* peak phase current */
#define MOTOR_RATED_SPEED_RPM   4000.0f
#define MOTOR_MAX_SPEED_RPM     5000.0f

#endif

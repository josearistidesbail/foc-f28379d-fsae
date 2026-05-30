#ifndef PI_H
#define PI_H

#include <stdbool.h>

/*
 * Discrete PI controller with back-calculation anti-windup.
 *
 *   u_unclipped = Kp * e + integ
 *   u           = clamp(u_unclipped, [u_min, u_max])
 *   integ      += Ki * e + Kaw * (u - u_unclipped)
 *
 * Kaw = 1/Kp gives a single-tunable-knob conditional-integration behaviour:
 * the integrator stops growing whenever the output saturates.
 */
typedef struct {
    float kp;
    float ki;
    float u_min;
    float u_max;
    float integ;
} pi_ctrl_t;

static inline void pi_init(pi_ctrl_t *c, float kp, float ki, float u_min, float u_max)
{
    c->kp = kp;
    c->ki = ki;
    c->u_min = u_min;
    c->u_max = u_max;
    c->integ = 0.0f;
}

static inline void pi_reset(pi_ctrl_t *c) { c->integ = 0.0f; }

static inline float pi_step(pi_ctrl_t *c, float error)
{
    float u_raw = c->kp * error + c->integ;
    float u     = u_raw;
    if (u > c->u_max)      { u = c->u_max; }
    else if (u < c->u_min) { u = c->u_min; }

    c->integ += c->ki * error + (u - u_raw);
    return u;
}

#endif

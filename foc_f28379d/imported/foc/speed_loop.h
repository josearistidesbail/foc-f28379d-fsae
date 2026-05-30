#ifndef SPEED_LOOP_H
#define SPEED_LOOP_H

#include "pi.h"
#include "config/control_config.h"

typedef struct {
    pi_ctrl_t pi;
    float     iq_ref_pu;
} speed_loop_t;

static inline void speed_loop_init(speed_loop_t *s)
{
    pi_init(&s->pi, PI_SPEED_KP, PI_SPEED_KI, -I_MAX_PU, I_MAX_PU);
    s->iq_ref_pu = 0.0f;
}

static inline void speed_loop_reset(speed_loop_t *s)
{
    pi_reset(&s->pi);
    s->iq_ref_pu = 0.0f;
}

/* Returns the Iq reference (per-unit) for the inner current loop. */
static inline float speed_loop_step(speed_loop_t *s, float speed_ref_pu, float speed_fb_pu)
{
    s->iq_ref_pu = pi_step(&s->pi, speed_ref_pu - speed_fb_pu);
    return s->iq_ref_pu;
}

#endif

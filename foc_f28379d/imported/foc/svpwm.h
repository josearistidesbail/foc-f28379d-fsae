#ifndef SVPWM_H
#define SVPWM_H

#include "pmsm_types.h"
#include "transforms.h"

/*
 * Space-Vector PWM via min/max injection.
 *
 * Given a stationary-frame voltage (alpha, beta) in per-unit of the DC bus,
 * return the three switch-leg duty cycles in [0, 1]. The common-mode shift
 * (max+min)/2 extends the linear range by ~15.5 % over sinusoidal PWM.
 */
static inline vec_abc_t svpwm_duties(const vec_ab_t v_ab)
{
    vec_abc_t v = iclarke(v_ab);

    float vmax = v.a, vmin = v.a;
    if (v.b > vmax) vmax = v.b; else if (v.b < vmin) vmin = v.b;
    if (v.c > vmax) vmax = v.c; else if (v.c < vmin) vmin = v.c;

    float shift = 0.5f * (vmax + vmin);

    vec_abc_t d;
    d.a = 0.5f + (v.a - shift);
    d.b = 0.5f + (v.b - shift);
    d.c = 0.5f + (v.c - shift);
    return d;
}

#endif

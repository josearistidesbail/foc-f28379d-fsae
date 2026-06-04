#ifndef TRANSFORMS_H
#define TRANSFORMS_H

#include <math.h>
#include "pmsm_types.h"

/* Clarke: 3-phase -> alpha-beta (amplitude-invariant, assumes ia+ib+ic=0). */
static inline vec_ab_t clarke(const vec_abc_t i)
{
    vec_ab_t out;
    out.alpha = i.a;
    out.beta  = (i.a + 2.0f * i.b) * 0.57735026919f;   /* 1/sqrt(3) */
    return out;
}

/* Park: alpha-beta -> d-q using the rotor electrical angle. */
static inline vec_dq_t park(const vec_ab_t s, float sin_th, float cos_th)
{
    vec_dq_t out;
    out.d =  s.alpha * cos_th + s.beta * sin_th;
    out.q = -s.alpha * sin_th + s.beta * cos_th;
    return out;
}

/* Inverse Park: d-q -> alpha-beta. */
static inline vec_ab_t ipark(const vec_dq_t v, float sin_th, float cos_th)
{
    vec_ab_t out;
    out.alpha = v.d * cos_th - v.q * sin_th;
    out.beta  = v.d * sin_th + v.q * cos_th;
    return out;
}

/* Inverse Clarke: alpha-beta -> 3-phase voltages (before SVPWM injection). */
static inline vec_abc_t iclarke(const vec_ab_t v)
{
    vec_abc_t out;
    out.a = v.alpha;
    out.b = -0.5f * v.alpha + 0.86602540378f * v.beta;
    out.c = -0.5f * v.alpha - 0.86602540378f * v.beta;
    return out;
}

#endif

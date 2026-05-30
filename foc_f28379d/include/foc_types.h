//=============================================================================
// foc_types.h - Shared structs for FOC pipeline signals.
//
// TI's transform libraries use MATH_Vec2 / MATH_Vec3; we use those directly
// for ISR-path types and add named aliases for readability.
//=============================================================================
#ifndef FOC_TYPES_H
#define FOC_TYPES_H

#include "libraries/math/include/math.h"   // MATH_Vec2, MATH_Vec3, float32_t

typedef MATH_Vec3 FOC_Iabc_t;   // phase currents Iu, Iv, Iw  [A]
typedef MATH_Vec2 FOC_Iab_t;    // alpha-beta currents        [A]
typedef MATH_Vec2 FOC_Idq_t;    // d-q currents               [A]
typedef MATH_Vec2 FOC_Vab_t;    // alpha-beta voltages        [V]
typedef MATH_Vec2 FOC_Vdq_t;    // d-q voltages               [V]
typedef MATH_Vec3 FOC_Duty_t;   // per-phase duty in [-0.5, +0.5]

typedef struct {
    float32_t id_ref;           // d-axis current reference [A]
    float32_t iq_ref;           // q-axis current reference [A]
    float32_t speed_ref;        // mechanical speed reference [rad/s]
    float32_t vbus;             // DC bus voltage [V]
} FOC_Refs_t;

typedef struct {
    FOC_Iabc_t  Iabc;
    FOC_Iab_t   Iab;
    FOC_Idq_t   Idq;
    FOC_Vdq_t   Vdq;
    FOC_Vab_t   Vab;
    FOC_Duty_t  duty;
    float32_t   theta_elec;     // electrical angle [rad], [0, 2*pi)
    float32_t   omega_elec;     // electrical speed [rad/s]
} FOC_Signals_t;

#endif // FOC_TYPES_H

//=============================================================================
// sensor_rm44ac_inline.h - RM44AC (sin/cos analog resolver) backend.
//
// Wraps TI's PLL tracking decoder from
//   solutions/tidm_02014_traction_inverter/common/include/resolver.h
// (struct Resolver_t + resolver_run()).
//
// Per ISR:
//   1. ADC sampled SIN, COS at the +/- peak of the excitation carrier.
//   2. Subtract bias (set during CALIBRATE state in sensor_rm44ac.c).
//   3. resolver_run() updates resolver_theta (mech, wrapped) and resolver_omega.
//   4. Multiply mech angle by polePairs -> electrical angle.
//=============================================================================
#ifndef SENSOR_RM44AC_INLINE_H
#define SENSOR_RM44AC_INLINE_H

#include "build_config.h"
#include "libraries/math/include/math.h"
#include "adc_iface.h"
#include "resolver.h"   // TIDM-02014 sin/cos PLL decoder

extern Resolver_t           g_resolver;
extern volatile float32_t   g_resolver_theta_mech;   // [0, 2*pi)
extern volatile float32_t   g_resolver_omega_mech;   // rad/s
extern volatile float32_t   g_resolver_theta_elec;   // [0, 2*pi)
extern volatile float32_t   g_resolver_omega_elec;
extern volatile float32_t   g_resolver_elec_offset;  // set during ALIGN_ROTOR

static inline void sensor_update_isr(void)
{
    float32_t sn, cs;
    adc_read_sin_cos(&sn, &cs);
    g_resolver.sin_os = sn;
    g_resolver.cos_os = cs;
    resolver_run(&g_resolver);   // writes g_resolver_theta_mech / omega_mech

    // Apply offset and pole-pair multiplication to get electrical angle.
    float32_t e = (g_resolver_theta_mech - g_resolver_elec_offset)
                  * (float32_t)MOTOR_POLE_PAIRS;
    // Wrap to [0, 2*pi)
    e -= (float32_t)(int32_t)(e * (1.0f / (2.0f * MATH_PI))) * (2.0f * MATH_PI);
    if(e < 0.0f) e += 2.0f * MATH_PI;
    g_resolver_theta_elec = e;
    g_resolver_omega_elec = g_resolver_omega_mech * (float32_t)MOTOR_POLE_PAIRS;
}

static inline float32_t sensor_get_elec_angle(void) { return g_resolver_theta_elec; }
static inline float32_t sensor_get_elec_speed(void) { return g_resolver_omega_elec; }

#endif // SENSOR_RM44AC_INLINE_H

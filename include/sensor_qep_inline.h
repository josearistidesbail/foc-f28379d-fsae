//=============================================================================
// sensor_qep_inline.h - eQEP backend for sensor_iface.h
//
// Reads EQep1Regs.QPOSCNT each ISR. Mechanical angle = (count - offset) / CPR.
// Electrical angle = (mech * polePairs) wrapped to [0, 2*pi).
// Speed comes from a one-step difference filtered in src/sensor_qep.c.
//=============================================================================
#ifndef SENSOR_QEP_INLINE_H
#define SENSOR_QEP_INLINE_H

#include "F28x_Project.h"
#include "build_config.h"
#include "libraries/math/include/math.h"

// Variables owned by sensor_qep.c
extern volatile float32_t g_qep_theta_elec;
extern volatile float32_t g_qep_omega_elec;
extern volatile int32_t   g_qep_mech_offset_cnt;   // set by ALIGN_ROTOR

static inline void sensor_update_isr(void)
{
    int32_t cnt = (int32_t)EQep1Regs.QPOSCNT;
    int32_t diff = cnt - g_qep_mech_offset_cnt;

    // Wrap diff into [0, CPR*4)
    if(diff < 0)            diff += SENSOR_QEP_CPR_X4;
    if(diff >= SENSOR_QEP_CPR_X4) diff -= SENSOR_QEP_CPR_X4;

    float32_t mech = (float32_t)diff * SENSOR_QEP_INV_CPR_X4;       // [0, 1) mech rev
    float32_t elec = mech * (float32_t)MOTOR_POLE_PAIRS;            // can be > 1
    elec -= (float32_t)(int32_t)elec;                               // fractional rev
    g_qep_theta_elec = elec * (2.0f * MATH_PI);

    // Speed update is computed in sensor_qep.c at SPEED_LOOP rate using QPOSLAT;
    // here we just expose the latest value.
}

static inline float32_t sensor_get_elec_angle(void) { return g_qep_theta_elec; }
static inline float32_t sensor_get_elec_speed(void) { return g_qep_omega_elec; }

#endif // SENSOR_QEP_INLINE_H

//=============================================================================
// sensor_qep_inline.h - eQEP backend for sensor_iface.h
//
// Reads EQEP_getPosition(EQEP1_BASE) each ISR. Mechanical angle = (count - offset) / CPR.
// Electrical angle = (mech * polePairs) wrapped to [0, 2*pi).
// Speed comes from a one-step difference filtered in src/sensor_qep.c.
//=============================================================================
#ifndef SENSOR_QEP_INLINE_H
#define SENSOR_QEP_INLINE_H

#include "driverlib.h"
#include "build_config.h"
#include "libraries/math/include/math.h"

// Variables owned by sensor_qep.c
extern volatile float32_t g_qep_theta_elec;        // corrected (raw - offset)
extern volatile float32_t g_qep_theta_raw_elec;    // uncorrected, boot-relative
extern volatile float32_t g_qep_omega_elec;
extern volatile float32_t g_qep_theta_offset_elec; // electrical zero offset [rad]
extern volatile float32_t g_qep_omega_healthy;     // last speed while trusted
extern volatile uint16_t  g_qep_lost;              // 1 once feedback is lost

// Set the electrical zero offset (radians). Called by the align controller at
// the end of FOC_ALIGN_ROTOR; see sensor_qep.c.
extern void sensor_set_elec_offset(float32_t rad);

// TODO: Debugging QEP (Step 3 verification), remove after
extern volatile uint32_t g_dbg_qep_count;
extern volatile uint32_t g_dbg_qep_index_latch;
extern volatile uint16_t g_dbg_qep_status;
extern volatile int16_t  g_dbg_qep_direction;

static inline void sensor_update_isr(void)
{
    int32_t cnt = (int32_t)EQEP_getPosition(EQEP1_BASE);

    // TODO: Debugging QEP (Step 3 verification), remove after
    g_dbg_qep_count       = (uint32_t)cnt;
    g_dbg_qep_index_latch = EQEP_getIndexPositionLatch(EQEP1_BASE);
    g_dbg_qep_status      = EQEP_getStatus(EQEP1_BASE);
    g_dbg_qep_direction   = EQEP_getDirection(EQEP1_BASE);

    // Raw (uncorrected) electrical angle straight from the boot-relative count.
    // Wrap count into [0, CPR*4) for safety even though QPOSMAX bounds it there.
    int32_t diff = cnt;
    if(diff < 0)                  diff += SENSOR_QEP_CPR_X4;
    if(diff >= SENSOR_QEP_CPR_X4) diff -= SENSOR_QEP_CPR_X4;

    float32_t mech = (float32_t)diff * SENSOR_QEP_INV_CPR_X4;       // [0, 1) mech rev
    float32_t elec = mech * (float32_t)MOTOR_POLE_PAIRS;            // can be > 1
    elec -= (float32_t)(int32_t)elec;                               // fractional rev
    float32_t raw = elec * (2.0f * MATH_PI);
    g_qep_theta_raw_elec = raw;

    // Apply the electrical zero offset captured during ALIGN, wrap to [0, 2*pi).
    float32_t th = raw - g_qep_theta_offset_elec;
    if(th < 0.0f)              th += 2.0f * MATH_PI;
    if(th >= 2.0f * MATH_PI)   th -= 2.0f * MATH_PI;
    g_qep_theta_elec = th;

    // Speed update is computed in sensor_qep.c at SPEED_LOOP rate using QPOSLAT;
    // here we just expose the latest value.
}

static inline float32_t sensor_get_elec_angle(void)     { return g_qep_theta_elec; }
static inline float32_t sensor_get_elec_angle_raw(void) { return g_qep_theta_raw_elec; }
static inline float32_t sensor_get_elec_speed(void)     { return g_qep_omega_elec; }
static inline bool      sensor_is_lost(void)            { return g_qep_lost != 0U; }
static inline float32_t sensor_get_healthy_speed(void)  { return g_qep_omega_healthy; }

#endif // SENSOR_QEP_INLINE_H

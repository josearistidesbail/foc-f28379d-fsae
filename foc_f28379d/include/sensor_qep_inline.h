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

// Fast frozen-counter detector state (owned by sensor_qep.c; see sensor_qep.h).
extern volatile uint16_t  g_qep_fast_en;           // "qep_fast_en" param, LIVE
extern volatile uint16_t  g_qep_fast_run;          // armed by the slow loop: RUN && fast_en
extern volatile uint16_t  g_qep_fast_trips;        // "qep_fast_trips" RO: times it latched loss
extern int32_t            g_qep_fast_prev_cnt;
extern uint16_t           g_qep_fast_ring[SENSOR_QEP_FAST_REF_TICKS];
extern uint16_t           g_qep_fast_idx;
extern uint16_t           g_qep_fast_sum;          // sum of the ring = |counts| over the last 8 ticks
extern uint16_t           g_qep_fast_ref;          // ring sum at the last MOVING tick
extern uint16_t           g_qep_fast_still;        // consecutive "still" ticks

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

    // ---- Fast frozen-counter loss check (see SENSOR_QEP_FAST_* in sensor_qep.h).
    // Runs every tick so the ring stays primed; only TRIPS while armed in RUN.
    {
        int32_t  d = cnt - g_qep_fast_prev_cnt;
        uint16_t ad;
        g_qep_fast_prev_cnt = cnt;
        if(d >  SENSOR_QEP_CPR_X4 / 2) d -= SENSOR_QEP_CPR_X4;
        if(d < -SENSOR_QEP_CPR_X4 / 2) d += SENSOR_QEP_CPR_X4;
        if(d < 0) d = -d;
        ad = (d > 1000) ? 1000U : (uint16_t)d;   // keeps the 8-tick sum inside uint16

        g_qep_fast_sum = g_qep_fast_sum - g_qep_fast_ring[g_qep_fast_idx] + ad;
        g_qep_fast_ring[g_qep_fast_idx] = ad;
        g_qep_fast_idx = (g_qep_fast_idx + 1U) & (SENSOR_QEP_FAST_REF_TICKS - 1U);

        if(ad > SENSOR_QEP_FAST_STILL_MAX)
        {
            g_qep_fast_still = 0U;
            g_qep_fast_ref   = g_qep_fast_sum;     // speed reference = last 8 moving ticks
        }
        else if(g_qep_fast_still < 0xFFFFU)
        {
            g_qep_fast_still++;
        }

        if(g_qep_fast_run && !g_qep_lost
           && (g_qep_fast_still >= SENSOR_QEP_FAST_STILL_TICKS)
           && (g_qep_fast_ref >= SENSOR_QEP_FAST_REF_TICKS * SENSOR_QEP_FAST_MIN_CNT_PER_TICK))
        {
            g_qep_lost = 1U;
            g_qep_fast_trips++;
        }
    }

    // Speed update is computed in sensor_qep.c at SPEED_LOOP rate using QPOSLAT;
    // here we just expose the latest value.
}

static inline float32_t sensor_get_elec_angle(void)     { return g_qep_theta_elec; }
static inline float32_t sensor_get_elec_angle_raw(void) { return g_qep_theta_raw_elec; }
static inline float32_t sensor_get_elec_speed(void)     { return g_qep_omega_elec; }
static inline bool      sensor_is_lost(void)            { return g_qep_lost != 0U; }
static inline float32_t sensor_get_healthy_speed(void)  { return g_qep_omega_healthy; }

#endif // SENSOR_QEP_INLINE_H

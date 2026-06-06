//=============================================================================
// sensor_rm44ac_inline.h - RM44AC (sin/cos magnetic sensor) backend.
//
// Per ISR:
//   1. ADC sampled SIN and COS (bias-removed, scaled to ~[-1, +1]).
//   2. theta_mech = foc_atan2(sin, cos), normalized to [0, 2*pi).
//   3. theta_elec = (theta_mech - offset) * MOTOR_POLE_PAIRS, wrapped.
//   4. omega from filtered angle-difference (1st-order LPF).
//=============================================================================
#ifndef SENSOR_RM44AC_INLINE_H
#define SENSOR_RM44AC_INLINE_H

#include <stdbool.h>
#include "build_config.h"
#include "libraries/math/include/math.h"
#include "adc_iface.h"

#define TWO_PI_F   (2.0f * 3.14159265f)

// Trig/RTS-free atan2, range [-pi, pi]. The SDK <math.h> (libraries/math) has no
// C99 atan2f, and pulling the RTS atan2f drags large trig tables that overflow
// flash (see CLAUDE.md pitfalls; same reason foc_fast_sqrt() and the align
// averager are hand-rolled). This 3-term odd polynomial on min/max-normalized
// inputs is amplitude-independent and measured to <0.0002 rad (0.012 deg) max
// error over the full circle -- far below resolver mechanical accuracy -- and
// runs every ISR. Self-contained: ternary abs/min/max, no library calls.
static inline float32_t foc_atan2(float32_t y, float32_t x)
{
    float32_t ax = (x < 0.0f) ? -x : x;
    float32_t ay = (y < 0.0f) ? -y : y;
    float32_t mn = (ax < ay) ? ax : ay;
    float32_t mx = (ax > ay) ? ax : ay;
    float32_t a  = mn / (mx + 1e-20f);          // |.| ratio in [0, 1]
    float32_t s  = a * a;
    float32_t r  = ((-0.0464964749f * s + 0.15931422f) * s - 0.327622764f)
                   * s * a + a;                 // atan(a), a in [0,1]
    if(ay > ax)  r = 1.57079633f - r;           // fold to full first quadrant
    if(x < 0.0f) r = 3.14159265f - r;           // left half-plane
    if(y < 0.0f) r = -r;                        // lower half-plane
    return r;
}

extern volatile float32_t   g_resolver_theta_mech;   // [0, 2*pi)
extern volatile float32_t   g_resolver_omega_mech;   // mech rad/s (filtered)
extern volatile float32_t   g_resolver_theta_elec;   // [0, 2*pi)
extern volatile float32_t   g_resolver_omega_elec;
extern volatile float32_t   g_resolver_elec_offset;  // captured at ALIGN_ROTOR
extern volatile float32_t   g_resolver_last_theta;   // for differentiation
extern volatile float32_t   g_resolver_omega_healthy;// last speed while in-window
extern volatile uint16_t    g_resolver_lost;         // 1 once signal is lost
extern volatile uint16_t    g_resolver_loss_count;   // out-of-window ISR debounce
extern volatile float32_t   g_dbg_resolver_mag;      // latest sin^2+cos^2

static inline void sensor_update_isr(void)
{
    float32_t sn, cs;
    adc_read_sin_cos(&sn, &cs);

    // ---- Loss of signal: sin^2 + cos^2 should stay ~1 at every angle -----
    // A collapsed (unplugged) channel drops the magnitude toward 0; a stuck or
    // railed channel pushes it out the top. Either, sustained for LOSS_TICKS
    // ISRs, flags the sensor lost. Done before atan2 so a dead vector cannot
    // masquerade as a valid angle.
    float32_t mag = sn * sn + cs * cs;
    g_dbg_resolver_mag = mag;
    if(mag < SENSOR_RES_MAG_LOW || mag > SENSOR_RES_MAG_HIGH)
    {
        if(g_resolver_loss_count < 0xFFFFU) g_resolver_loss_count++;
        if(g_resolver_loss_count >= SENSOR_RES_LOSS_TICKS) g_resolver_lost = 1U;
    }
    else
    {
        g_resolver_loss_count = 0U;
    }

    // Mechanical angle from atan2: range [-pi, +pi] -> shift to [0, 2*pi)
    float32_t th = foc_atan2(sn, cs);
    if(th < 0.0f) th += TWO_PI_F;

    // Speed: wrap angle difference into [-pi, +pi), differentiate, LPF.
    float32_t dth = th - g_resolver_last_theta;
    if(dth >  3.14159265f) dth -= TWO_PI_F;
    if(dth < -3.14159265f) dth += TWO_PI_F;
    g_resolver_last_theta = th;

    float32_t omega_raw = dth * FOC_ISR_FREQ_HZ;
    g_resolver_omega_mech += SENSOR_RES_SPEED_LPF_ALPHA
                             * (omega_raw - g_resolver_omega_mech);

    g_resolver_theta_mech = th;

    // Electrical angle: subtract calibrated offset, multiply by pole pairs, wrap.
    float32_t e = (th - g_resolver_elec_offset) * (float32_t)MOTOR_POLE_PAIRS;
    e -= (float32_t)(int32_t)(e * (1.0f / TWO_PI_F)) * TWO_PI_F;
    if(e < 0.0f) e += TWO_PI_F;
    g_resolver_theta_elec = e;
    g_resolver_omega_elec = g_resolver_omega_mech * (float32_t)MOTOR_POLE_PAIRS;

    // Latch the speed only while the signal is in-window; the fault shutdown
    // reads this (not the live, now-garbage estimate) to pick active-short/coast.
    if(!g_resolver_lost) g_resolver_omega_healthy = g_resolver_omega_elec;
}

static inline float32_t sensor_get_elec_angle(void) { return g_resolver_theta_elec; }
static inline float32_t sensor_get_elec_speed(void) { return g_resolver_omega_elec; }
static inline bool      sensor_is_lost(void)        { return g_resolver_lost != 0U; }
static inline float32_t sensor_get_healthy_speed(void) { return g_resolver_omega_healthy; }

#endif // SENSOR_RM44AC_INLINE_H

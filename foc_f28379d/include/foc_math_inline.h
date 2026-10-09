//=============================================================================
// foc_math_inline.h - ISR-safe scalar math shared by the FOC pipeline, the
// sensor backends and the sensorless observers.
//
// Two rules, both learned the hard way (see CLAUDE.md pitfalls):
//   1. NEVER call the C99 names sinf/cosf/atan2f/sqrtf/expf. <math.h> resolves
//      to the SDK motor-control header, so those compile as implicit-int calls
//      into the RTS: wrong result AND large trig tables in flash.
//   2. The F28379D TMU is enabled (--tmu_support=tmu0) and the SDK's own
//      PARK_setup already compiles to SINPUF32/COSPUF32. Use the compiler
//      intrinsics below: 4-5 cycle hardware ops, no tables, no RTS.
// Verify new code in the kept .asm listing: look for SINPUF32 / COSPUF32 /
// ATANPUF32 / QUADF32 and the ABSENCE of any `LCR #sinf`-style RTS call.
//=============================================================================
#ifndef FOC_MATH_INLINE_H
#define FOC_MATH_INLINE_H

#include <stdint.h>
#include "libraries/math/include/math.h"   // float32_t, MATH_PI

#define FOC_TWO_PI_F        (2.0f * 3.14159265f)
#define FOC_INV_TWO_PI_F    (1.0f / FOC_TWO_PI_F)

// ---- TMU intrinsics (radians in/out) -------------------------------------
// __sin/__cos take radians. __atan2puf32 returns a PER-UNIT angle in [-0.5, 0.5]
// (QUADF32 + ATANPUF32 sequence, the same call TI's esmo.h uses), so scale by 2pi
// for [-pi, pi]. FOC_ATAN(x) reuses it as atan2(x, 1): no separate intrinsic and
// no division. Division itself compiles to DIVF32 under --fp_mode=relaxed, so a
// plain `/` is already the hardware divide.
#define FOC_SIN(x)          __sin(x)
#define FOC_COS(x)          __cos(x)
#define FOC_ATAN2(y, x)     (__atan2puf32((y), (x)) * FOC_TWO_PI_F)
#define FOC_ATAN(x)         (__atan2puf32((x), 1.0f) * FOC_TWO_PI_F)

// Constant-time wrap to [0, 2*pi). Same idiom the resolver backend uses: a
// truncating float->int->float round trip instead of a while-loop, so the cost
// does not depend on how far out of range the input is.
static inline float32_t foc_wrap_2pi(float32_t x)
{
    x -= (float32_t)(int32_t)(x * FOC_INV_TWO_PI_F) * FOC_TWO_PI_F;
    if(x < 0.0f) x += FOC_TWO_PI_F;
    return x;
}

// Wrap to [-pi, pi). Inputs here are differences of two [0, 2*pi) angles, so a
// single fold each way is sufficient and cheaper than the modulo above.
static inline float32_t foc_wrap_pi(float32_t x)
{
    if(x >=  3.14159265f) x -= FOC_TWO_PI_F;
    if(x <  -3.14159265f) x += FOC_TWO_PI_F;
    return x;
}

// Symmetric saturation to [-lim, +lim].
static inline float32_t foc_sat(float32_t x, float32_t lim)
{
    if(x >  lim) return  lim;
    if(x < -lim) return -lim;
    return x;
}

// Trig/RTS-free atan2, range [-pi, pi]. Kept as the documented software
// fallback for the TMU macro above (and it is what the resolver backend shipped
// with): 3-term odd polynomial on min/max-normalized inputs, amplitude-
// independent, <0.0002 rad (0.012 deg) max error over the full circle.
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

// Fast square root: inverse-sqrt bit-trick seed + two Newton refinements,
// ~1e-4 relative accuracy. Used where a bound or a health metric is needed
// (current-circle limit, SMO current-error magnitude), never in a loop gain.
static inline float32_t foc_fast_sqrt(float32_t x)
{
    if(x <= 0.0f) return 0.0f;
    union { float32_t f; uint32_t u; } c;
    c.f = x;
    c.u = 0x5f3759dfU - (c.u >> 1);              // initial 1/sqrt(x) estimate
    float32_t y = c.f;
    y = y * (1.5f - 0.5f * x * y * y);           // Newton iter 1 (refine 1/sqrt)
    y = y * (1.5f - 0.5f * x * y * y);           // Newton iter 2
    return x * y;                                 // sqrt(x) = x * (1/sqrt(x))
}

#endif // FOC_MATH_INLINE_H

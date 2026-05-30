#ifndef ENCODER_H
#define ENCODER_H

#include <stdint.h>
#include <stdbool.h>
#include "pmsm_types.h"
#include "config/control_config.h"

#define TWO_PI_F           6.28318530718f
#define ONE_OVER_TWO_PI    0.15915494309f

typedef struct {
    uint32_t counts_per_mech_rev;   /* QEP counts after 4x decode */
    uint32_t pole_pairs;
    float    offset_rad;            /* electrical alignment offset */
    bool     index_seen;
    int32_t  last_count;
    float    theta_e;               /* latest electrical angle, [0, 2pi) */
    float    speed_pu;              /* filtered mechanical speed (per-unit) */
} encoder_t;

static inline void encoder_init(encoder_t *e)
{
    e->counts_per_mech_rev = QEP_COUNTS_PER_MECH_REV;
    e->pole_pairs          = MOTOR_POLE_PAIRS;
    e->offset_rad          = ENCODER_OFFSET_RAD;
    e->index_seen          = false;
    e->last_count          = 0;
    e->theta_e             = 0.0f;
    e->speed_pu            = 0.0f;
}

/* Wrap to [0, 2pi). */
static inline float wrap_2pi(float a)
{
    while (a >= TWO_PI_F) a -= TWO_PI_F;
    while (a <  0.0f)     a += TWO_PI_F;
    return a;
}

/*
 * Update the electrical angle and speed estimate from a QEP raw count and
 * the index-found flag. Speed is low-pass filtered (alpha = SPEED_FILTER_ALPHA).
 * Returns the electrical angle in radians.
 */
static inline float encoder_update(encoder_t *e, int32_t qpos, bool index_event)
{
    if (index_event) { e->index_seen = true; }

    int32_t delta = qpos - e->last_count;
    e->last_count = qpos;

    /* Mechanical -> electrical angle. */
    float theta_m = ((float)qpos / (float)e->counts_per_mech_rev) * TWO_PI_F;
    float theta_e = (float)e->pole_pairs * theta_m + e->offset_rad;
    e->theta_e    = wrap_2pi(theta_e);

    /* Speed in counts/sec -> rev/sec -> per-unit. */
    float rps     = ((float)delta / (float)e->counts_per_mech_rev) / TS_CURRENT_S;
    float pu_raw  = rps * 60.0f / BASE_SPEED_RPM;
    e->speed_pu  += SPEED_FILTER_ALPHA * (pu_raw - e->speed_pu);

    return e->theta_e;
}

#endif

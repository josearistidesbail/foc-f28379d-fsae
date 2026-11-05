//=============================================================================
// pos_src.c - Position-source supervisor (Step 12). See pos_src.h.
//
// Decision table (AUTO, observer not yet active, no fail-over done this RUN):
//
//   sensor lost  & observer healthy   -> switch to OBSERVER (no blend), warn
//   sensor lost  & observer unhealthy -> pos_src_is_lost() = true -> FAULT_SENSOR_LOSS
//   disagreement & observer healthy   -> switch to OBSERVER (blend), warn
//   disagreement & observer unhealthy -> no switch (cannot tell who is wrong)
//
// The disagreement detector is the UV-trip debounce pattern (safety.c): the
// count only advances while |err| > obs_err_trip AND the sensor is not flagged
// lost; any in-band tick resets it. The threshold defaults to several sigma of
// the resolver's angle noise, so it catches a slipped/offset sensor or a frozen
// encoder under coast (which the QEP drive-vs-response detector cannot see at
// zero torque), not noise.
//
// A live angle_src change re-arms the one-way AUTO fail-over, and IDLE clears
// everything -- including the bench aids, so a pos_force_lost left at 1 cannot
// fault the next run by surprise.
//=============================================================================
#include "build_config.h"
#include "pos_src.h"
#include "sensor_iface.h"
#include "observer.h"
#include "safety.h"
#include "debug_hooks.h"
#include "foc_math_inline.h"

extern volatile uint16_t g_step_pre;          // src/foc_pipeline.c (pre-trigger samples)

// ---- host-writable ---------------------------------------------------------
volatile uint16_t  g_angle_src     = ANGLE_SRC_DEFAULT;
volatile float32_t g_obs_err_trip  = OBS_ERR_TRIP_DEFAULT;
volatile float32_t g_obs_iq_max    = OBS_IQ_MAX_A;
volatile uint16_t  g_pos_force_lost;
volatile float32_t g_pos_inj_err;
volatile uint16_t  g_pos_trig_en;

// ---- outputs ---------------------------------------------------------------
volatile uint16_t  g_pos_angle_act;
volatile uint16_t  g_pos_status;
volatile uint16_t  g_pos_lost;
volatile float32_t g_pos_theta;
volatile float32_t g_pos_omega;
volatile float32_t g_pos_theta_err;

// ---- state -----------------------------------------------------------------
static FOC_State_t s_prev_state;
static uint16_t    s_prev_src;
static bool        s_failover_done;    // AUTO switched this RUN cycle
static bool        s_obs_lost_latch;   // observer lost while active (one-way, like the backends)
static uint16_t    s_sticky;           // FAILOVER_DONE / DEGRADED / reason bits
static uint16_t    s_dis_ticks;        // disagreement debounce
static uint16_t    s_blend_n;          // blend ticks remaining
static float32_t   s_blend_dth;        // angle offset being blended out [rad]
static float32_t   s_blend_dw;         // speed offset being blended out [rad/s]
static float32_t   s_obs_w_healthy;    // last omega_est while healthy
static float32_t   s_th_prev;          // previous tick's output angle
static float32_t   s_w_prev;           // previous tick's output speed

static void start_blend(float32_t th_new, float32_t w_new)
{
    // Blend from where the OLD output is NOW, not where it was last tick:
    // s_th_prev is one ISR old, so without the w*Ts projection every blended
    // switch opened with a backward commutation step of exactly w*Ts
    // (bench 2026-10-09: -8.2 deg at 1400 rad/s, Iq +38 %; 4.9 deg at 826).
    s_blend_dth = foc_wrap_pi(s_th_prev + s_w_prev * FOC_ISR_TS - th_new);
    s_blend_dw  = s_w_prev - w_new;
    s_blend_n   = OBS_BLEND_TICKS;
}

void pos_src_init(void)
{
    s_prev_state     = FOC_IDLE;
    s_prev_src       = g_angle_src;
    s_failover_done  = false;
    s_obs_lost_latch = false;
    s_sticky         = 0U;
    s_dis_ticks      = 0U;
    s_blend_n        = 0U;
    s_blend_dth      = 0.0f;
    s_blend_dw       = 0.0f;
    s_obs_w_healthy  = 0.0f;
    s_th_prev        = 0.0f;
    s_w_prev         = 0.0f;
    g_pos_angle_act  = 0U;
    g_pos_status     = 0U;
    g_pos_lost       = 0U;
    g_pos_theta      = 0.0f;
    g_pos_omega      = 0.0f;
    g_pos_theta_err  = 0.0f;
    g_pos_force_lost = 0U;
    g_pos_inj_err    = 0.0f;
    g_pos_trig_en    = 0U;
}

void pos_src_update_slow(void)
{
    sensor_update_speed_slow();
}

float32_t pos_src_get_healthy_speed(void)
{
    return g_pos_angle_act ? s_obs_w_healthy : sensor_get_healthy_speed();
}

void pos_src_clear_loss(void)
{
    sensor_clear_loss();
    s_obs_lost_latch = false;
    g_pos_lost       = 0U;
}

void pos_src_update_isr(FOC_State_t st, float32_t ia, float32_t ib)
{
    float32_t th_s, w_s, th_o, w_o, err, th_new, w_new;
    bool      lost_s, ok_o, act, to_obs, to_sns, disagree;
    uint16_t  src, status, reason;

    sensor_update_isr();
    th_s = sensor_get_elec_angle();
    if(g_pos_inj_err != 0.0f) th_s = foc_wrap_2pi(th_s + g_pos_inj_err);
    w_s  = sensor_get_elec_speed();
    th_o = g_obs_theta_est;
    w_o  = g_obs_omega_est;
    ok_o = (g_obs_healthy != 0U);
    if(ok_o) s_obs_w_healthy = w_o;

    // Sensor-vs-observer error, published every tick in every mode so the
    // theta_err scope channel is a live shadow comparison whichever source
    // commutates. Sign: positive = observer leads the sensor.
    err = foc_wrap_pi(th_s - th_o);
    g_pos_theta_err = -err;

    src = g_angle_src;

    // ---- edges -------------------------------------------------------------
    if(st != s_prev_state)
    {
        if(st == FOC_RUN)
        {
            // Start converged from the sensor when it is alive; otherwise from
            // zero (forced-observer test with the sensor unplugged).
            if(!sensor_is_lost()) obs_seed(th_s, w_s, ia, ib);
            else                  obs_reset();
            s_failover_done = false;
            s_dis_ticks     = 0U;
            s_blend_n       = 0U;
            g_pos_angle_act = 0U;          // every RUN starts on the sensor
        }
        if(st == FOC_IDLE)
        {
            s_failover_done  = false;
            s_obs_lost_latch = false;
            s_sticky         = 0U;
            s_dis_ticks      = 0U;
            s_blend_n        = 0U;
            g_pos_angle_act  = 0U;
            g_pos_force_lost = 0U;
            g_pos_inj_err    = 0.0f;
        }
        s_prev_state = st;
    }
    if(src != s_prev_src)                  // operator changed the mode: re-arm
    {
        s_failover_done = false;
        s_sticky        = 0U;
        s_prev_src      = src;
    }

    // ---- not RUN: sensor passthrough ---------------------------------------
    // ALIGN commutates on its own carrier and OPENLOOP on the synthetic angle;
    // both still take omega and the loss flag from here, exactly as before.
    if(st != FOC_RUN)
    {
        lost_s          = sensor_is_lost();
        g_pos_angle_act = 0U;
        s_blend_n       = 0U;
        s_dis_ticks     = 0U;
        g_pos_theta     = th_s;
        g_pos_omega     = w_s;
        g_pos_lost      = lost_s ? 1U : 0U;
        s_th_prev       = th_s;
        s_w_prev        = w_s;
        status = lost_s ? (POS_ST_SENSOR_LOST | POS_ST_LOST) : 0U;
        if(!ok_o) status |= POS_ST_OBS_UNHEALTHY;
        if(src == ANGLE_SRC_OBSERVER) status |= POS_ST_FORCED;
        g_pos_status = status | s_sticky;
        return;
    }

    // ---- RUN ---------------------------------------------------------------
    lost_s = sensor_is_lost() || (g_pos_force_lost != 0U);
    act    = (g_pos_angle_act != 0U);
    to_obs = false;
    to_sns = false;
    reason = 0U;
    status = 0U;

    // Disagreement debounce (only meaningful against a sensor that claims to
    // be alive). Any in-band tick resets the count.
    {
        float32_t ea = (err < 0.0f) ? -err : err;
        if(!lost_s && (ea > g_obs_err_trip))
        {
            if(s_dis_ticks < OBS_ERR_DEBOUNCE_TICKS) s_dis_ticks++;
        }
        else
        {
            s_dis_ticks = 0U;
        }
    }
    disagree = (s_dis_ticks >= OBS_ERR_DEBOUNCE_TICKS);

    if(src == ANGLE_SRC_SENSOR)
    {
        if(act && !lost_s) to_sns = true;          // operator took us back
    }
    else if(src == ANGLE_SRC_OBSERVER)
    {
        status |= POS_ST_FORCED;
        if(!act)
        {
            if(ok_o) to_obs = true;
            else     status |= POS_ST_REQ_PENDING;
        }
    }
    else                                            // ANGLE_SRC_AUTO
    {
        if(!act && !s_failover_done)
        {
            if(lost_s)
            {
                if(ok_o) { to_obs = true; reason = POS_ST_SENSOR_LOST; }
            }
            else if(disagree && ok_o)
            {
                to_obs = true; reason = POS_ST_DISAGREE;
            }
        }
    }

    if(to_obs)
    {
        start_blend(th_o, w_o);
        // A LOSS hand-over has nothing worth blending from: the sensor angle
        // it would ease out of is already frozen/garbage, and the observer is
        // the best estimate we have. Jump.
        if(reason == POS_ST_SENSOR_LOST) s_blend_n = 0U;
        act = true;
        g_pos_angle_act = 1U;
        if(src == ANGLE_SRC_AUTO)
        {
            s_failover_done = true;
            s_sticky |= POS_ST_FAILOVER_DONE | POS_ST_DEGRADED | reason;
            safety_warn(WARN_SENSORLESS_FAILOVER);
        }
        if(g_pos_trig_en) debug_datalog_trigger(g_step_pre);
    }
    else if(to_sns)
    {
        start_blend(th_s, w_s);
        act = false;
        g_pos_angle_act = 0U;
        if(g_pos_trig_en) debug_datalog_trigger(g_step_pre);
    }

    // ---- outputs (+ blend) --------------------------------------------------
    th_new = act ? th_o : th_s;
    w_new  = act ? w_o  : w_s;
    if(s_blend_n)
    {
        float32_t f = (float32_t)s_blend_n * (1.0f / (float32_t)OBS_BLEND_TICKS);
        th_new = foc_wrap_2pi(th_new + s_blend_dth * f);
        w_new += s_blend_dw * f;
        s_blend_n--;
        status |= POS_ST_BLENDING;
    }
    g_pos_theta = th_new;
    g_pos_omega = w_new;
    s_th_prev   = th_new;
    s_w_prev    = w_new;

    // ---- loss predicate ----------------------------------------------------
    // Active observer: losing health IS position loss (one-way latch, mirrors
    // the backends; cleared by pos_src_clear_loss / IDLE). Active sensor: the
    // backend's verdict, unless AUTO just handed over above.
    if(act)
    {
        if(!ok_o) s_obs_lost_latch = true;
        g_pos_lost = s_obs_lost_latch ? 1U : 0U;
    }
    else
    {
        g_pos_lost = lost_s ? 1U : 0U;
    }

    // ---- status ------------------------------------------------------------
    if(act)      status |= POS_ST_OBS_ACTIVE;
    if(lost_s)   status |= POS_ST_SENSOR_LOST;
    if(disagree) status |= POS_ST_DISAGREE;
    if(!ok_o)    status |= POS_ST_OBS_UNHEALTHY;
    {
        float32_t wa = (w_o < 0.0f) ? -w_o : w_o;
        if(wa < g_obs_min_speed) status |= POS_ST_BELOW_MIN_SPD;
    }
    if(g_pos_lost) status |= POS_ST_LOST;
    g_pos_status = status | s_sticky;
}

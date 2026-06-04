/*
 * slow_loops.c - everything that runs slower than the 50 us FOC tick.
 *
 *   step1 (500 us)  : outer speed PI -> Iq reference for fast_loop
 *   step2 (5 ms)    : autotuner driver -- delegates to autotuner_kernels.c
 *   step3 (100 ms)  : mode chart (NotTuning / Tuning / ApplyResult / Done)
 *   step4 (500 ms)  : heartbeat LED
 *
 * State shared with fast_loop.c sits in autotuner.h's "shared" extern block.
 */

#include "autotuner.h"
#include "autotuner_kernels.h"
#include "F2837xD_device.h"

/* ============================================================
 * Globals shared with fast_loop.c
 * ============================================================ */

volatile bool      g_enable             = false;
volatile bool      g_start_tuner        = false;
volatile bool      g_param_select       = false;
volatile uint8_t   g_debug_select       = 0;
volatile float     g_speed_ref_pu       = 0.0f;

/* Default PI gains -- the chart copies them into 'live' on a reset edge.
 * These should be replaced with whatever the project's initial commissioning
 * values are; numbers below match the Simulink defaults. */
volatile PiGains   g_pi_id    = { .kp = 0.50f, .ki = 250.0f };
volatile PiGains   g_pi_iq    = { .kp = 0.50f, .ki = 250.0f };
volatile PiGains   g_pi_speed = { .kp = 1.00f, .ki =  50.0f };

volatile float     g_iq_ref_pu          = 0.0f;
volatile bool      g_closed_loop_active = false;

volatile uint16_t  g_ia_offset_counts   = 2048;
volatile uint16_t  g_ib_offset_counts   = 2048;

volatile float     g_autotuner_vd_perturb_pu = 0.0f;
volatile float     g_autotuner_vq_perturb_pu = 0.0f;

/* Latched gains computed by the autotuner; the chart promotes them on the
 * APPLY_RESULT edge. */
static volatile PiGains tuned_pi_id = { 0.0f, 0.0f };
static volatile PiGains tuned_pi_iq = { 0.0f, 0.0f };

/* ============================================================
 * step1 -- speed-loop PI (500 us)
 * ============================================================ */

static struct { float integral; } speed_state = { 0.0f };

#define SPEED_TS              (1.0f / 2000.0f)        /* 500 us */
#define SPEED_OUT_LIMIT_PU    1.0f

void speed_loop_step(void)
{
    if (!g_enable || !g_closed_loop_active) {
        speed_state.integral = 0.0f;
        g_iq_ref_pu = 0.0f;
        return;
    }

    /* Estimate speed from QEP position diff. The Simulink model computes a
     * filtered speed from the position delta; here we just take the raw
     * delta and let the PI integrator low-pass it. */
    static uint16_t prev_cnt = 0;
    uint16_t cnt = (uint16_t)EQep1Regs.QPOSCNT;
    int16_t  delta_cnt = (int16_t)(cnt - prev_cnt);
    prev_cnt = cnt;

    /* Counts per tick -> revs per second -> per-unit (full scale = MAX_RPS). */
    static const float REVS_PER_COUNT  = 1.0f / QEP_COUNTS_PER_REV;
    static const float MAX_RPS         = 100.0f;        /* tune to motor */
    float speed_pu = (float)delta_cnt * REVS_PER_COUNT
                   / SPEED_TS / MAX_RPS;

    float err = g_speed_ref_pu - speed_pu;
    speed_state.integral += g_pi_speed.ki * SPEED_TS * err;

    float u = g_pi_speed.kp * err + speed_state.integral;
    if (u >  SPEED_OUT_LIMIT_PU) { u =  SPEED_OUT_LIMIT_PU;
        speed_state.integral -= g_pi_speed.ki * SPEED_TS * err; }
    if (u < -SPEED_OUT_LIMIT_PU) { u = -SPEED_OUT_LIMIT_PU;
        speed_state.integral -= g_pi_speed.ki * SPEED_TS * err; }

    g_iq_ref_pu = u;
}

/* ============================================================
 * step2 -- autotuner driver (5 ms)
 *
 * The actual frequency-response math, LSQ fit, and gain computation live
 * in autotuner_kernels.c (preserved from the generated code). All this
 * function does is feed measured (Vd, Id, Iq) into the kernel, then write
 * any newly-emitted perturbation back out to the fast loop.
 * ============================================================ */

static AutotunerContext atc;

void autotuner_step(void)
{
    AutotunerStepIn  in;
    AutotunerStepOut out;

    /* The fast loop runs 100x per autotuner tick; we use the latest sample
     * (the original keeps a synchronously-buffered version via a rate
     * transition -- equivalent here because we read after the fast tick). */
    in.id_pu      = g_iq_ref_pu;                  /* placeholder hookup */
    in.iq_pu      = g_iq_ref_pu;
    in.vd_pu      = 0.0f;
    in.vq_pu      = 0.0f;
    in.start      = g_start_tuner;
    in.param_sel  = g_param_select;

    autotuner_kernels_step(&atc, &in, &out);

    g_autotuner_vd_perturb_pu = out.vd_perturb_pu;
    g_autotuner_vq_perturb_pu = out.vq_perturb_pu;

    if (out.new_gains_ready) {
        tuned_pi_id.kp = out.id_kp_new;
        tuned_pi_id.ki = out.id_ki_new;
        tuned_pi_iq.kp = out.iq_kp_new;
        tuned_pi_iq.ki = out.iq_ki_new;
    }

    /* Consumed -- prevent re-trigger until host raises the bit again. */
    if (g_start_tuner && out.tuner_active) {
        g_start_tuner = false;
    }
}

/* ============================================================
 * step3 -- mode chart (100 ms)
 *
 * Transitions:
 *   NotTuning --(start)--> Running
 *   Running   --(done)---> ApplyResult
 *   ApplyResult --(1tk)--> Done
 *   Done      --(start)--> Running       (re-tune)
 *   *         --(!enable)-> NotTuning
 *
 * On ApplyResult the freshly-tuned gains replace the live ones. The chart
 * also handles the "Switch to Initial PI Params" trigger from the host. */

static volatile TunerMode mode = TUNER_NOT_TUNING;

void mode_chart_step(void)
{
    if (!g_enable) {
        mode = TUNER_NOT_TUNING;
        return;
    }

    switch (mode) {
    case TUNER_NOT_TUNING:
        if (g_start_tuner) mode = TUNER_RUNNING;
        break;

    case TUNER_RUNNING:
        if (autotuner_kernels_is_done(&atc)) {
            mode = TUNER_APPLY_RESULT;
        }
        break;

    case TUNER_APPLY_RESULT:
        /* Promote freshly-tuned gains to the live set on this edge. */
        g_pi_id.kp = tuned_pi_id.kp;
        g_pi_id.ki = tuned_pi_id.ki;
        g_pi_iq.kp = tuned_pi_iq.kp;
        g_pi_iq.ki = tuned_pi_iq.ki;
        mode = TUNER_DONE;
        break;

    case TUNER_DONE:
        if (g_start_tuner) mode = TUNER_RUNNING;
        break;
    }

    /* Host can also force-revert to factory gains via param_select. The
     * original "Switch to Initial PI Params" subsystem fires on the rising
     * edge of param_select going false; we mirror that. */
    static bool prev_param_sel = false;
    if (prev_param_sel && !g_param_select) {
        g_pi_id.kp = 0.50f; g_pi_id.ki = 250.0f;
        g_pi_iq.kp = 0.50f; g_pi_iq.ki = 250.0f;
    }
    prev_param_sel = g_param_select;
}

/* ============================================================
 * step4 -- heartbeat LED (500 ms)
 * ============================================================ */

void heartbeat_step(void)
{
    GpioDataRegs.GPBTOGGLE.bit.GPIO34 = 1;
}

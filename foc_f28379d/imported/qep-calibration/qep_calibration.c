/*
 * qep_calibration.c - readable rewrite of the Simulink-generated calibration
 * routine in mcb_pmsm_qep_offset_f28379d.c.
 *
 * THE PROBLEM
 *   PMSM field-oriented control needs to know the angular offset between the
 *   QEP encoder's zero count and the rotor's electrical zero. We measure it
 *   by driving an open-loop voltage vector while reading back the encoder.
 *
 * THE SEQUENCE (started by the host sending any nonzero byte over SCI-A)
 *   ALIGN   (0..2s)   PWM drives Vd at theta_e=0; rotor pulls into alignment.
 *   RAMP    (2..10s)  Slowly accelerate theta_e to break out of detent.
 *   CAPTURE (10..15s) Hold theta_e=0 again; the encoder reading at this
 *                     point IS the offset. Stream it out via SCI.
 *   DONE    (>15s)    Cut PWM, wait for next enable.
 *
 * THE PIPELINE EVERY ISR
 *   read QEP -> mech_pos (revs)
 *              -> compensate stored offset -> elec_pos (0..1)
 *              -> stream over SCI
 *
 *   commanded_theta_e -> sin/cos lookup
 *                     -> inverse Park   (Vd=0.15, Vq=0)  -> Valpha, Vbeta
 *                     -> inverse Clarke -> Va, Vb, Vc
 *                     -> SVPWM (min/max common-mode injection)
 *                     -> ePWM1/2/3 CMPA
 */

#include "qep_calibration.h"

#include <math.h>
#include <string.h>

#include "F2837xD_device.h"      /* EQep1Regs, EPwm1Regs, AdcbResultRegs, ... */
#include "DSP28xx_SciUtil.h"     /* scia_xmit, scia_rcv, NOERROR, PARTIALDATA */

/* ============================================================
 * Module state
 * ============================================================ */

typedef enum {
    PHASE_ALIGN = 0,
    PHASE_RAMP,
    PHASE_CAPTURE
} CalibPhase;

typedef struct {
    /* Run flag, raised by the SCI-RX ISR, cleared when sequence finishes. */
    volatile bool enabled;

    /* ISR tick counter; phase is derived from this. */
    uint32_t tick;

    /* Ramp state: integrates by CALIB_SPEED_RAMP_STEP per tick, saturates,
     * then scales by CALIB_SPEED_GAIN to get electrical-revs per tick. */
    float speed_ramp_input;
    float speed_cmd;

    /* Free-running [0,1) electrical angle integrator (the carrier). */
    float theta_carrier;
    bool  reset_oneshot;          /* force theta_carrier to 0 on first tick */
    bool  prev_reset_oneshot;     /* delayed by one sample -- see reset logic */

    /* Latest mechanical offset captured during the CAPTURE phase. */
    float mech_offset_rev;
} CalibState;

static CalibState s = {
    .enabled            = false,
    .tick               = 0,
    .speed_ramp_input   = 0.0f,
    .speed_cmd          = 0.0f,
    .theta_carrier      = 0.0f,
    .reset_oneshot      = true,
    .prev_reset_oneshot = true,
    .mech_offset_rev    = 0.0f,
};

volatile float g_qep_offset_rev = 0.0f;

/* ============================================================
 * SCI-A streamed log frame
 *
 * Each frame is one of three shapes selected by an iteration counter that
 * wraps every 600 ticks:
 *      counter == 0   : start marker 'SSSS' + 2 floats
 *      counter == 599 : 2 floats + end marker 'EEEE'
 *      otherwise      : 2 floats + 0 padding
 * Two floats per frame = (encoder-electrical-angle, captured-offset).
 * ============================================================ */

#define LOG_FRAME_TOTAL    600U
#define LOG_FRAME_PAYLOAD  2U     /* uint32 words per frame, excl. marker */

static const uint32_t LOG_START_MARKER = 1397969747UL;   /* 'SSSS' little-endian */
static const uint32_t LOG_END_MARKER   = 1162167621UL;   /* 'EEEE' little-endian */

static uint16_t log_counter = 0;

static void serial_log_frame(float reported_elec_angle, float captured_offset)
{
    /* Pack two floats into three uint32 words. The middle word always holds
     * float #2; the first/last word is either the marker or float #1. */
    uint32_t payload[2];
    memcpy(payload, (float[2]){reported_elec_angle, captured_offset},
           sizeof payload);

    uint32_t frame[3];
    uint32_t words_to_send;

    if (log_counter == 0) {
        frame[0] = LOG_START_MARKER;
        frame[1] = payload[0];
        frame[2] = payload[1];
        words_to_send = LOG_FRAME_PAYLOAD + 1U;
    } else if (log_counter == LOG_FRAME_TOTAL - 1U) {
        frame[0] = payload[0];
        frame[1] = payload[1];
        frame[2] = LOG_END_MARKER;
        words_to_send = LOG_FRAME_PAYLOAD + 1U;
    } else {
        frame[0] = payload[0];
        frame[1] = payload[1];
        frame[2] = 0UL;
        words_to_send = LOG_FRAME_PAYLOAD;
    }

    extern int checkSCITransmitInprogress;  /* defined in DSP28xx_SciUtil.c */
    for (uint16_t i = 0; i < words_to_send; ++i) {
        if (checkSCITransmitInprogress != 1) {
            checkSCITransmitInprogress = 1;
            (void)scia_xmit((char *)&frame[i], 4, 4);
            checkSCITransmitInprogress = 0;
        }
    }

    log_counter = (uint16_t)((log_counter + 1U) % LOG_FRAME_TOTAL);
}

/* ============================================================
 * QEP read + offset compensation
 * ============================================================ */

/* Return position in 0..QEP_COUNTS_PER_REV-1, robust to underflow caused by
 * the index-latch subtraction. Equivalent to taking the result modulo CPR. */
static uint16_t qep_position_counts(void)
{
    uint16_t qpos     = (uint16_t)EQep1Regs.QPOSCNT;
    uint16_t qpos_lat = (uint16_t)EQep1Regs.QPOSILAT;

    uint16_t delta    = (uint16_t)(qpos - qpos_lat);
    uint16_t delta_w  = (uint16_t)(delta + QEP_COUNTS_PER_REV);
    return delta < delta_w ? delta : delta_w;
}

/* Mechanical position, normalized to 0..1 revolutions. */
static float qep_mech_rev(void)
{
    return (1.0f / QEP_COUNTS_PER_REV) * (float)qep_position_counts();
}

/* mech_rev - offset, modulo 1.0 (i.e., wrapped to [0, 1)). */
static float compensate_offset(float mech_rev, float offset_rev)
{
    return mech_rev <= offset_rev
        ? (mech_rev + 1.0f) - offset_rev
        :  mech_rev         - offset_rev;
}

/* Take fractional part of (pole_pairs * mech_rev) to get electrical angle. */
static float mech_to_elec(float mech_compensated_rev)
{
    float scaled = (float)MOTOR_POLE_PAIRS * mech_compensated_rev;
    return scaled - floorf(scaled);
}

/* ============================================================
 * Open-loop angle generator (calibration carrier)
 * ============================================================ */

/* Computes the commanded speed for this tick from the phase counter. */
static float compute_speed_cmd(uint32_t tick)
{
    if (tick < ALIGN_END_TICKS) {
        s.speed_ramp_input = 0.0f;
        return 0.0f;
    }
    if (tick < RAMP_END_TICKS) {
        /* Saturating integrator: ramp_input += step, clamped to [0, limit]. */
        s.speed_ramp_input += CALIB_SPEED_RAMP_STEP;
        if (s.speed_ramp_input > CALIB_SPEED_RAMP_LIMIT) {
            s.speed_ramp_input = CALIB_SPEED_RAMP_LIMIT;
        } else if (s.speed_ramp_input < 0.0f) {
            s.speed_ramp_input = 0.0f;
        }
        return CALIB_SPEED_GAIN * s.speed_ramp_input;
    }
    /* CAPTURE: keep last commanded speed (matches the Simulink "no-action"
     * branch that leaves Merge_g unchanged). */
    return s.speed_cmd;
}

/* Saturating integrator that wraps theta_carrier in [0, 1).
 * Reset fires (a) on first call after enable and (b) when the next step
 * would push past 1.0 (i.e., when |prev| > 1 - 1.5*|step|). */
static void advance_carrier(float speed_cmd)
{
    float abs_step = fabsf(speed_cmd);

    bool wrap_now = fabsf(s.theta_carrier) > (1.0f - 1.5f * abs_step);
    bool init_now = s.reset_oneshot;            /* true exactly once */

    if (wrap_now || init_now) {
        s.theta_carrier = 0.0f;
    }

    s.theta_carrier += abs_step;
    if (s.theta_carrier > 1.0f) s.theta_carrier = 1.0f;
    if (s.theta_carrier < 0.0f) s.theta_carrier = 0.0f;

    s.prev_reset_oneshot = s.reset_oneshot;
    s.reset_oneshot = false;
}

/* The angle actually sent to the inverse Park transform. The CAPTURE phase
 * pins it to 0 so the encoder reading equals the offset. */
static float command_theta_e(uint32_t tick, float speed_cmd)
{
    if (tick >= RAMP_END_TICKS) {
        return 0.0f;            /* CAPTURE: hold electrical angle at 0 */
    }
    /* For negative speeds we want to play the angle backward. */
    return speed_cmd > 0.0f ? s.theta_carrier
                            : 1.0f - s.theta_carrier;
}

/* ============================================================
 * Sine/cosine via interpolated lookup table
 *
 * Table layout: 1002 samples covering 1.25 cycles, so sin(theta) is at
 * index = theta * 800, and cos(theta) = sin(theta + 1/4) is +200 samples
 * further along (one quarter cycle == 200 samples).
 * ============================================================ */

extern const float sine_table_values[1002];   /* in data file */

static void sincos_lookup(float theta_normalized, float *out_sin, float *out_cos)
{
    float pos      = 800.0f * theta_normalized;
    uint16_t idx   = (uint16_t)pos;
    float frac     = pos - (float)idx;

    float s0 = sine_table_values[idx];
    float s1 = sine_table_values[idx + 1];
    float c0 = sine_table_values[idx + 200];
    float c1 = sine_table_values[idx + 201];

    *out_sin = s0 + frac * (s1 - s0);
    *out_cos = c0 + frac * (c1 - c0);
}

/* ============================================================
 * Inverse Park / Clarke / SVPWM
 * ============================================================ */

typedef struct { float alpha; float beta; }   AlphaBeta;
typedef struct { float a; float b; float c; } Abc;

static AlphaBeta inverse_park(float vd, float vq, float sin_t, float cos_t)
{
    /* Standard inverse Park:
     *   Valpha =  Vd*cos - Vq*sin
     *   Vbeta  =  Vd*sin + Vq*cos
     * In this calibration build Vq is always 0, but we keep the full form
     * to mirror what the Simulink block actually computes. */
    AlphaBeta r;
    r.alpha = vd * cos_t - vq * sin_t;
    r.beta  = vd * sin_t + vq * cos_t;
    return r;
}

static Abc inverse_clarke(AlphaBeta v)
{
    /* Amplitude-invariant inverse Clarke. */
    static const float SQRT3_OVER_2 = 0.866025388f;
    Abc r;
    r.a = v.alpha;
    r.b =  SQRT3_OVER_2 * v.beta - 0.5f * v.alpha;
    r.c = -SQRT3_OVER_2 * v.beta - 0.5f * v.alpha;
    return r;
}

/* Min/Max common-mode injection SVPWM, scaled by 2/sqrt(3). */
static Abc svpwm(Abc v)
{
    static const float TWO_OVER_SQRT3 = 1.15470052f;

    float vmin = fminf(fminf(v.a, v.b), v.c);
    float vmax = fmaxf(fmaxf(v.a, v.b), v.c);
    float common = -0.5f * (vmax + vmin);

    Abc r;
    r.a = TWO_OVER_SQRT3 * (v.a + common);
    r.b = TWO_OVER_SQRT3 * (v.b + common);
    r.c = TWO_OVER_SQRT3 * (v.c + common);
    return r;
}

/* Convert a phase voltage in [-1, 1] to a 0..PWM_PERIOD compare register. */
static uint16_t voltage_to_cmpa(float v_pu)
{
    float duty = 0.5f * (v_pu + 1.0f);          /* [-1,1] -> [0,1] */
    float cmp  = (float)PWM_PERIOD * duty;
    if (cmp < 0.0f) cmp = 0.0f;
    if (cmp > (float)PWM_PERIOD) cmp = (float)PWM_PERIOD;
    return (uint16_t)cmp;
}

static void drive_pwm(bool pwm_active, Abc v)
{
    if (!pwm_active) {
        EPwm1Regs.CMPA.bit.CMPA = 0;
        EPwm2Regs.CMPA.bit.CMPA = 0;
        EPwm3Regs.CMPA.bit.CMPA = 0;
        return;
    }

    Abc duty = svpwm(v);
    EPwm1Regs.CMPA.bit.CMPA = voltage_to_cmpa(duty.a);
    EPwm2Regs.CMPA.bit.CMPA = voltage_to_cmpa(duty.b);
    EPwm3Regs.CMPA.bit.CMPA = voltage_to_cmpa(duty.c);
}

/* DRV830x gate-driver enable line on GPIO124. */
static void drv830x_enable(bool on)
{
    if (on) GpioDataRegs.GPDSET.bit.GPIO124   = 1;
    else    GpioDataRegs.GPDCLEAR.bit.GPIO124 = 1;
}

/* ============================================================
 * State-machine glue
 * ============================================================ */

/* All the bookkeeping when Enable goes false. Mirrors the "Disable for ..."
 * blocks the code generator emits. */
static void reset_to_idle(void)
{
    s.tick               = 0;
    s.speed_ramp_input   = 0.0f;
    s.speed_cmd          = 0.0f;
    s.theta_carrier      = 0.0f;
    s.reset_oneshot      = true;
    s.prev_reset_oneshot = true;
}

/* Saturating uint32 increment. */
static uint32_t tick_inc(uint32_t v)
{
    return v == UINT32_MAX ? UINT32_MAX : v + 1U;
}

/* ============================================================
 * Public ISRs
 * ============================================================ */

/* SCI-A receive ISR (PIE int9.1): host writes any nonzero float to start. */
void serial_rx_isr(void)
{
    uint16_t buf[2] = {0, 0};
    int err = scia_rcv(buf, 4, 4);

    float rx = 0.0f;
    if (err == NOERROR || err == PARTIALDATA) {
        memcpy(&rx, buf, sizeof rx);
    }
    s.enabled = (rx != 0.0f);
}

/* PWM-triggered control ISR (PIE int1.2). Runs at ISR_FREQ_HZ. */
void calibration_isr(void)
{
    /* ---- 1. Read encoder, compensate stored offset, derive elec angle ---- */
    float mech_rev    = qep_mech_rev();
    float mech_corr   = compensate_offset(mech_rev, g_qep_offset_rev);
    float elec_rev    = mech_to_elec(mech_corr);

    /* ---- 2. Run the calibration state machine when enabled ---- */
    float theta_e_cmd = 0.0f;
    bool  pwm_active  = false;
    float reported    = -1.0f;            /* what we stream over SCI */

    if (s.enabled) {
        s.tick = tick_inc(s.tick);

        if (s.tick > CALIB_END_TICKS) {
            /* Sequence finished -- latch the offset and shut down. */
            s.enabled = false;
            reset_to_idle();
        } else {
            s.speed_cmd = compute_speed_cmd(s.tick);
            advance_carrier(s.speed_cmd);
            theta_e_cmd = command_theta_e(s.tick, s.speed_cmd);

            if (s.tick >= RAMP_END_TICKS) {
                /* CAPTURE phase: scale elec fraction back to mechanical
                 * units (one pole-pair turn == 1/POLE_PAIRS rev). */
                s.mech_offset_rev = (1.0f / MOTOR_POLE_PAIRS) * elec_rev;
                g_qep_offset_rev  = s.mech_offset_rev;
            }

            pwm_active = true;
            reported   = elec_rev;
        }
    } else {
        reset_to_idle();
    }

    /* ---- 3. Compute and write the PWM duty cycles ---------------------- */
    float sin_t, cos_t;
    sincos_lookup(theta_e_cmd, &sin_t, &cos_t);

    AlphaBeta v_ab = inverse_park(CALIB_VD_PU, 0.0f, sin_t, cos_t);
    Abc       v_phase = inverse_clarke(v_ab);
    drive_pwm(pwm_active, v_phase);
    drv830x_enable(pwm_active);

    /* ---- 4. Phase-current ADC reads (collected for monitoring only) ---- */
    (void)AdcbResultRegs.ADCRESULT0;       /* Ib */
    (void)AdccResultRegs.ADCRESULT0;       /* Ic */

    /* ---- 5. Stream telemetry frame ------------------------------------- */
    serial_log_frame(reported, s.mech_offset_rev);
}

/* ============================================================
 * Heartbeat + init
 * ============================================================ */

void heartbeat_tick(void)
{
    GpioDataRegs.GPBTOGGLE.bit.GPIO34 = 1;     /* user LED */
}

void calibration_init(void)
{
    reset_to_idle();
    g_qep_offset_rev = 0.0f;
    log_counter = 0;
    s.enabled = false;
}

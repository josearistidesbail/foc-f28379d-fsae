/*
 * fast_loop.c - 50 us FOC current loop (step0).
 *
 * Pipeline per ISR (in order):
 *
 *   QEP read -> mech angle -> elec angle (with stored offset)
 *   ADC reads -> phase currents Ia, Ib  -> per-unit
 *   Clarke    : (Ia, Ib)   -> (Ialpha, Ibeta)
 *   Park      : (Ialpha, Ibeta, sin, cos) -> (Id, Iq)
 *   PI(Id)    : (Id_ref, Id) -> Vd_pu
 *   PI(Iq)    : (Iq_ref, Iq) -> Vq_pu      [Iq_ref comes from speed loop]
 *   Inverse Park  : (Vd, Vq, sin, cos) -> (Valpha, Vbeta)
 *   Inverse Clarke: (Valpha, Vbeta) -> (Va, Vb, Vc)
 *   SVPWM     : common-mode injection -> duty[a,b,c]
 *   Write ePWM CMPA on all three modules
 *
 * The autotuner injects a perturbation into the Vd path on tuning runs;
 * step0 only needs to know whether to add it, the size/phase comes from
 * the slower autotuner_step.
 */

#include "autotuner.h"
#include <math.h>

#include "F2837xD_device.h"

/* ============================================================
 * QEP -> electrical angle
 * ============================================================ */

static uint16_t qep_position_counts(void)
{
    uint16_t cnt = (uint16_t)EQep1Regs.QPOSCNT;
    uint16_t lat = (uint16_t)EQep1Regs.QPOSILAT;
    uint16_t delta   = (uint16_t)(cnt - lat);
    uint16_t delta_w = (uint16_t)(delta + QEP_COUNTS_PER_REV);
    return delta < delta_w ? delta : delta_w;
}

static float compensate_offset(float mech_rev, float offset_rev)
{
    return mech_rev <= offset_rev
        ? (mech_rev + 1.0f) - offset_rev
        :  mech_rev         - offset_rev;
}

static float qep_electrical_angle_rev(void)
{
    float mech_rev = (1.0f / QEP_COUNTS_PER_REV) * (float)qep_position_counts();
    float corrected = compensate_offset(mech_rev, QEP_INDEX_OFFSET_REV);
    float elec = (float)MOTOR_POLE_PAIRS * corrected;
    return elec - floorf(elec);                  /* mod 1 */
}

/* ============================================================
 * Index detection -- the rising edge of QPOSILAT enables closed loop
 * ============================================================ */

static bool detect_index_edge(void)
{
    static uint16_t prev_latch = 0;
    uint16_t latch = (uint16_t)EQep1Regs.QPOSILAT;
    bool edge = (prev_latch == 0) && (latch > 0);
    prev_latch = latch;
    return edge;
}

/* ============================================================
 * Phase-current read (ADC -> per-unit)
 * ============================================================ */

typedef struct { float ia; float ib; float ic; } PhaseCurrents;

static PhaseCurrents read_phase_currents_pu(void)
{
    /* Raw ADC -> bias-removed counts. The Simulink model stores Ia/Ib bias
     * in a DataStore filled during a separate offset-cal step. */
    int16_t a_raw = (int16_t)AdccResultRegs.ADCRESULT0 - (int16_t)g_ia_offset_counts;
    int16_t b_raw = (int16_t)AdcbResultRegs.ADCRESULT0 - (int16_t)g_ib_offset_counts;

    float ia_pu = (float)a_raw * ADC_VOLTS_PER_COUNT * ADC_VOLTS_TO_AMPS * I_AMPS_TO_PU;
    float ib_pu = (float)b_raw * ADC_VOLTS_PER_COUNT * ADC_VOLTS_TO_AMPS * I_AMPS_TO_PU;

    PhaseCurrents i;
    i.ia = ia_pu;
    i.ib = ib_pu;
    i.ic = -(ia_pu + ib_pu);            /* Kirchhoff -- only two shunts wired */
    return i;
}

/* ============================================================
 * Park / Clarke and their inverses (amplitude-invariant Clarke)
 * ============================================================ */

typedef struct { float alpha; float beta; } AlphaBeta;
typedef struct { float d;     float q;    } Dq;
typedef struct { float a;     float b;    float c; } Abc;

static AlphaBeta clarke(PhaseCurrents i)
{
    static const float ONE_OVER_SQRT3 = 0.577350259f;
    AlphaBeta out;
    out.alpha = i.ia;
    out.beta  = ONE_OVER_SQRT3 * (i.ia + 2.0f * i.ib);
    return out;
}

static Dq park(AlphaBeta v, float sin_t, float cos_t)
{
    Dq out;
    out.d =  v.alpha * cos_t + v.beta * sin_t;
    out.q = -v.alpha * sin_t + v.beta * cos_t;
    return out;
}

static AlphaBeta inverse_park(Dq v, float sin_t, float cos_t)
{
    AlphaBeta out;
    out.alpha = v.d * cos_t - v.q * sin_t;
    out.beta  = v.d * sin_t + v.q * cos_t;
    return out;
}

static Abc inverse_clarke(AlphaBeta v)
{
    static const float SQRT3_OVER_2 = 0.866025388f;
    Abc out;
    out.a =  v.alpha;
    out.b =  SQRT3_OVER_2 * v.beta - 0.5f * v.alpha;
    out.c = -SQRT3_OVER_2 * v.beta - 0.5f * v.alpha;
    return out;
}

/* ============================================================
 * SVPWM (min/max common-mode injection, scaled by 2/sqrt(3))
 * ============================================================ */

static Abc svpwm(Abc v)
{
    static const float TWO_OVER_SQRT3 = 1.15470052f;

    float vmin = fminf(fminf(v.a, v.b), v.c);
    float vmax = fmaxf(fmaxf(v.a, v.b), v.c);
    float common = -0.5f * (vmax + vmin);

    Abc out;
    out.a = TWO_OVER_SQRT3 * (v.a + common);
    out.b = TWO_OVER_SQRT3 * (v.b + common);
    out.c = TWO_OVER_SQRT3 * (v.c + common);
    return out;
}

/* ============================================================
 * Sine/cosine lookup (shared with qep_calibration project)
 * ============================================================ */

extern const float sine_table_values[1002];

static void sincos_lookup(float theta_normalized, float *sin_out, float *cos_out)
{
    float pos     = 800.0f * theta_normalized;
    uint16_t idx  = (uint16_t)pos;
    float frac    = pos - (float)idx;

    float s0 = sine_table_values[idx];
    float s1 = sine_table_values[idx + 1];
    float c0 = sine_table_values[idx + 200];
    float c1 = sine_table_values[idx + 201];

    *sin_out = s0 + frac * (s1 - s0);
    *cos_out = c0 + frac * (c1 - c0);
}

/* ============================================================
 * Discrete PI with back-calculation anti-windup and reset
 *
 * Same form the Simulink "Discrete PI Controller with anti-windup & reset"
 * block emits:
 *      u_pre = Kp*err + integ
 *      u_sat = sat(u_pre, -lim, +lim)
 *      integ = integ + Ki*Ts*err + Kbc*(u_sat - u_pre)
 * For Kbc = 1/Kp (the block's default 'back-calculation' option) the
 * integrator simply rewinds the saturated portion of the output each tick.
 * ============================================================ */

#define U_SATURATION_PU    1.0f          /* PWM duty headroom */

static float pi_step(PiState *st, PiGains g, float err, float Ts)
{
    float u_pre = g.kp * err + st->integral;

    float u_sat = u_pre;
    if (u_sat >  U_SATURATION_PU) u_sat =  U_SATURATION_PU;
    if (u_sat < -U_SATURATION_PU) u_sat = -U_SATURATION_PU;

    /* Back-calculation: Kbc = 1/Kp (so antiwindup follows saturation
     * exactly in one tick). Guard against Kp = 0. */
    float kbc = (g.kp > 1e-6f) ? (1.0f / g.kp) : 0.0f;
    st->integral += g.ki * Ts * err + kbc * (u_sat - u_pre);

    return u_sat;
}

static void pi_reset(PiState *st)
{
    st->integral = 0.0f;
    st->prev_input = 0.0f;
}

/* ============================================================
 * Autotuner perturbation injection point
 *
 * The slow autotuner_step() (5 ms) writes a sinestream perturbation here;
 * the fast loop just adds it to Vd. Real implementation reads from a
 * shared atomic structure populated by the autotuner. */
extern volatile float g_autotuner_vd_perturb_pu;
extern volatile float g_autotuner_vq_perturb_pu;

/* ============================================================
 * Open-loop alignment ramp (used before QEP index is found)
 * ============================================================ */

static struct {
    float theta_rev;       /* commanded open-loop angle */
    float ramp_rate;       /* per-tick increment */
} open_loop = { 0.0f, OPENLOOP_RAMP_RATE };

static float open_loop_angle_step(void)
{
    open_loop.theta_rev += open_loop.ramp_rate;
    if (open_loop.theta_rev >= 1.0f) open_loop.theta_rev -= 1.0f;
    return open_loop.theta_rev;
}

/* ============================================================
 * Write the three PWM compare registers
 * ============================================================ */

static uint16_t voltage_to_cmpa(float v_pu)
{
    float duty = 0.5f * (v_pu + 1.0f);          /* [-1,1] -> [0,1] */
    if (duty < 0.0f) duty = 0.0f;
    if (duty > 1.0f) duty = 1.0f;
    return (uint16_t)((float)PWM_PERIOD * duty);
}

static void write_pwm(bool pwm_active, Abc duty)
{
    if (!pwm_active) {
        EPwm1Regs.CMPA.bit.CMPA = 0;
        EPwm2Regs.CMPA.bit.CMPA = 0;
        EPwm3Regs.CMPA.bit.CMPA = 0;
        GpioDataRegs.GPDCLEAR.bit.GPIO124 = 1;   /* DRV ENABLE low */
        return;
    }
    EPwm1Regs.CMPA.bit.CMPA = voltage_to_cmpa(duty.a);
    EPwm2Regs.CMPA.bit.CMPA = voltage_to_cmpa(duty.b);
    EPwm3Regs.CMPA.bit.CMPA = voltage_to_cmpa(duty.c);
    GpioDataRegs.GPDSET.bit.GPIO124   = 1;       /* DRV ENABLE high */
}

/* ============================================================
 * The fast loop
 * ============================================================ */

static PiState pi_id_state = { 0.0f, 0.0f };
static PiState pi_iq_state = { 0.0f, 0.0f };

static const float FAST_TS = 1.0f / 20000.0f;   /* 50 us */

void fast_loop_step(void)
{
    /* ---- 1. Read encoder, find index, derive electrical angle ----------- */
    if (detect_index_edge()) {
        g_closed_loop_active = true;
    }
    float theta_e_closed = qep_electrical_angle_rev();
    float theta_e_open   = open_loop_angle_step();
    float theta_e        = g_closed_loop_active ? theta_e_closed : theta_e_open;

    float sin_t, cos_t;
    sincos_lookup(theta_e, &sin_t, &cos_t);

    /* ---- 2. Read currents, transform to d-q ----------------------------- */
    PhaseCurrents iabc = read_phase_currents_pu();
    AlphaBeta i_ab     = clarke(iabc);
    Dq        i_dq     = park(i_ab, sin_t, cos_t);

    /* ---- 3. Current PIs ------------------------------------------------- */
    if (!g_enable) {
        pi_reset(&pi_id_state);
        pi_reset(&pi_iq_state);
        write_pwm(false, (Abc){0});
        return;
    }

    float id_ref_pu = 0.0f;
    float iq_ref_pu = g_closed_loop_active ? g_iq_ref_pu : 0.0f;

    Dq v_dq;
    if (g_closed_loop_active) {
        v_dq.d = pi_step(&pi_id_state, g_pi_id, id_ref_pu - i_dq.d, FAST_TS);
        v_dq.q = pi_step(&pi_iq_state, g_pi_iq, iq_ref_pu - i_dq.q, FAST_TS);
    } else {
        /* Open-loop alignment: hold Vd at OPENLOOP_VD_PU, Vq at 0. */
        v_dq.d = OPENLOOP_VD_PU;
        v_dq.q = 0.0f;
    }

    /* ---- 4. Autotuner perturbation (from 5 ms loop) --------------------- */
    v_dq.d += g_autotuner_vd_perturb_pu;
    v_dq.q += g_autotuner_vq_perturb_pu;

    /* ---- 5. Inverse Park / Clarke / SVPWM ------------------------------- */
    AlphaBeta v_ab    = inverse_park(v_dq, sin_t, cos_t);
    Abc       v_abc   = inverse_clarke(v_ab);
    Abc       duty    = svpwm(v_abc);

    write_pwm(true, duty);
}

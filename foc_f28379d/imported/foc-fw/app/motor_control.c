#include <math.h>

#include "motor_control.h"
#include "hal/hal_adc.h"
#include "hal/hal_pwm.h"
#include "hal/hal_qep.h"
#include "hal/hal_board.h"
#include "hal/drv8305.h"
#include "config/control_config.h"

#define ADC_CAL_SAMPLES   1024U
#define ALIGN_TICKS       (uint32_t)(ALIGN_DURATION_S / TS_CURRENT_S)
#define SPEED_RAMP_PER_S  1.0f      /* PU per second */
#define HEARTBEAT_TICKS   (uint32_t)(PWM_FREQ_HZ / 2U)

static void enter_state(motor_ctl_t *m, motor_state_t s)
{
    m->state          = s;
    m->ticks_in_state = 0;
}

void motor_ctl_init(motor_ctl_t *m)
{
    foc_init(&m->foc);
    speed_loop_init(&m->spd);
    encoder_init(&m->enc);

    m->fault_flags    = FAULT_NONE;
    m->speed_ref_pu   = 0.0f;
    m->speed_ramp_pu  = 0.0f;
    m->adc_cal_acc_a  = 0;
    m->adc_cal_acc_b  = 0;
    m->adc_cal_acc_c  = 0;
    m->adc_cal_samples= 0;

    enter_state(m, MOTOR_STATE_CALIBRATING_ADC);
    hal_pwm_set_duties((vec_abc_t){0.5f, 0.5f, 0.5f});
    hal_pwm_outputs_disable();
}

void motor_ctl_request_run(motor_ctl_t *m)
{
    if (m->state == MOTOR_STATE_IDLE) { enter_state(m, MOTOR_STATE_ALIGN); }
}

void motor_ctl_request_stop(motor_ctl_t *m)
{
    foc_reset(&m->foc);
    speed_loop_reset(&m->spd);
    hal_pwm_outputs_disable();
    m->speed_ramp_pu = 0.0f;
    enter_state(m, MOTOR_STATE_IDLE);
}

void motor_ctl_set_speed_ref_pu(motor_ctl_t *m, float v)
{
    if (v >  SPEED_REF_MAX_PU) v =  SPEED_REF_MAX_PU;
    if (v < -SPEED_REF_MAX_PU) v = -SPEED_REF_MAX_PU;
    m->speed_ref_pu = v;
}

void motor_ctl_raise_fault(motor_ctl_t *m, uint32_t flag)
{
    m->fault_flags |= flag;
    hal_pwm_outputs_disable();
    drv8305_disable();
    enter_state(m, MOTOR_STATE_FAULT);
}

/* Slew the ramp toward the commanded reference. */
static void slew_speed_ramp(motor_ctl_t *m)
{
    static const float step = SPEED_RAMP_PER_S * TS_CURRENT_S;
    float delta = m->speed_ref_pu - m->speed_ramp_pu;
    if      (delta >  step) m->speed_ramp_pu += step;
    else if (delta < -step) m->speed_ramp_pu -= step;
    else                    m->speed_ramp_pu  = m->speed_ref_pu;
}

void motor_ctl_step(motor_ctl_t *m)
{
    static uint32_t speed_div = 0;
    static uint32_t hb        = 0;

    /* Sense regardless of state. */
    vec_abc_t i_abc = hal_adc_read_currents_pu();
    int32_t   qpos  = hal_qep_read_count();
    bool      idx   = hal_qep_index_event();
    float     theta = encoder_update(&m->enc, qpos, idx);

    m->ticks_in_state++;

    /* External fault check (DRV8305 nFAULT pin). */
    if (drv8305_is_faulted() && m->state != MOTOR_STATE_FAULT) {
        motor_ctl_raise_fault(m, FAULT_DRV8305);
    }

    switch (m->state)
    {
    case MOTOR_STATE_CALIBRATING_ADC:
        /* Average raw ADC at zero current. PWM outputs stay disabled. */
        m->adc_cal_acc_a += hal_adc_read_raw_ia();
        m->adc_cal_acc_b += hal_adc_read_raw_ib();
        m->adc_cal_acc_c += hal_adc_read_raw_ic();
        m->adc_cal_samples++;
        if (m->adc_cal_samples >= ADC_CAL_SAMPLES) {
            uint16_t za = (uint16_t)(m->adc_cal_acc_a / ADC_CAL_SAMPLES);
            uint16_t zb = (uint16_t)(m->adc_cal_acc_b / ADC_CAL_SAMPLES);
            uint16_t zc = (uint16_t)(m->adc_cal_acc_c / ADC_CAL_SAMPLES);
            hal_adc_set_zero_offsets(za, zb, zc);
            enter_state(m, MOTOR_STATE_IDLE);
        }
        break;

    case MOTOR_STATE_IDLE:
        hal_pwm_set_duties((vec_abc_t){0.5f, 0.5f, 0.5f});
        break;

    case MOTOR_STATE_ALIGN: {
        /* Inject Id only; rotor pulls to electrical zero. */
        foc_t *f = &m->foc;
        f->id_ref_pu = ALIGN_ID_PU;
        f->iq_ref_pu = 0.0f;
        foc_enable_fwc(f, false);
        foc_step(f, i_abc, 0.0f);             /* hold rotor at theta_e = 0 */
        hal_pwm_set_duties(f->duty);
        hal_pwm_outputs_enable();

        if (m->ticks_in_state >= ALIGN_TICKS) {
            hal_qep_zero_count();
            foc_reset(f);
            enter_state(m, MOTOR_STATE_RUN);
        }
        break;
    }

    case MOTOR_STATE_RUN: {
        slew_speed_ramp(m);

        /* Outer speed loop, every Nth current tick. */
        if (++speed_div >= SPEED_LOOP_DIVIDER) {
            speed_div = 0;
            float iq_ref = speed_loop_step(&m->spd, m->speed_ramp_pu, m->enc.speed_pu);
            foc_set_iq_ref(&m->foc, iq_ref);
        }

        /* Enable FWC once we cross 80% of base speed in either direction. */
        foc_enable_fwc(&m->foc, fabsf(m->enc.speed_pu) > 0.8f);

        m->foc.id_ref_pu = 0.0f;
        foc_step(&m->foc, i_abc, theta);
        hal_pwm_set_duties(m->foc.duty);
        break;
    }

    case MOTOR_STATE_FAULT:
        /* Latched: only a request_stop()/init clears. */
        hal_pwm_set_duties((vec_abc_t){0.5f, 0.5f, 0.5f});
        break;
    }

    /* Heartbeat LED. */
    if (++hb >= HEARTBEAT_TICKS) { hb = 0; static int led; led ^= 1; hal_board_led_blue(led); }
}

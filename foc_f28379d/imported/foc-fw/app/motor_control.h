#ifndef MOTOR_CONTROL_H
#define MOTOR_CONTROL_H

#include "foc/pmsm_types.h"
#include "foc/foc.h"
#include "foc/speed_loop.h"
#include "foc/encoder.h"

typedef struct {
    motor_state_t state;
    uint32_t      fault_flags;
    uint32_t      ticks_in_state;
    uint32_t      adc_cal_acc_a;
    uint32_t      adc_cal_acc_b;
    uint32_t      adc_cal_acc_c;
    uint32_t      adc_cal_samples;

    float    speed_ref_pu;       /* commanded (slow setpoint) */
    float    speed_ramp_pu;      /* ramped, fed to PI */

    foc_t        foc;
    speed_loop_t spd;
    encoder_t    enc;
} motor_ctl_t;

void motor_ctl_init(motor_ctl_t *m);

/* Called once per current-loop tick (ADC EOC ISR). */
void motor_ctl_step(motor_ctl_t *m);

/* User commands. */
void motor_ctl_request_run(motor_ctl_t *m);
void motor_ctl_request_stop(motor_ctl_t *m);
void motor_ctl_set_speed_ref_pu(motor_ctl_t *m, float v);
void motor_ctl_raise_fault(motor_ctl_t *m, uint32_t flag);

#endif

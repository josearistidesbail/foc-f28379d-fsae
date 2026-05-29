#ifndef HAL_PWM_H
#define HAL_PWM_H

#include "foc/pmsm_types.h"

/*
 * Three-phase up-down PWM on ePWM1/2/3, ePWM1 master.
 * ePWM1 generates the ADC SOC trigger at period match -> defines the FOC ISR rate.
 */
void hal_pwm_init(void);

/* Update the three leg duty cycles. Inputs are clamped to [0, 1]. */
void hal_pwm_set_duties(const vec_abc_t duties);

void hal_pwm_outputs_enable(void);
void hal_pwm_outputs_disable(void);    /* forces all six gates to safe state */

#endif

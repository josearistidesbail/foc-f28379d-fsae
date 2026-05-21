//=============================================================================
// pwm_iface.h - Translate SVGEN duty cycle (range [-0.5, +0.5]) into PWM
// compare-register values for the three half-bridges.
//=============================================================================
#ifndef PWM_IFACE_H
#define PWM_IFACE_H

#include "foc_types.h"

extern void pwm_init(void);
extern void pwm_force_safe(void);                  // tristate / 50% duty
extern void pwm_set_duty(const FOC_Duty_t *duty);  // ISR-rate call

#endif // PWM_IFACE_H

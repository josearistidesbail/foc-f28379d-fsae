//=============================================================================
// pwm_iface.c - SVGEN duty -> ePWM compare value.
//
// SVGEN_run() outputs duty in [-0.5, +0.5]. Convert to count by:
//   cmp = period_count/2 * (1 - 2*duty)  for active-low convention
// Adjust polarity if your SysConfig uses the other.
//=============================================================================
#include "driverlib.h"
#include "device.h"
#include "build_config.h"
#include "pwm_iface.h"

// SysConfig owns period and deadband; we keep the period for the duty math.
extern uint16_t g_pwm_period_count;     // defined by SysConfig glue or below

#ifndef PWM_PERIOD_COUNT_OVERRIDE
// Fallback if SysConfig file does not export the period. EPWMCLK = SYSCLK/2
// for F28379D when EPWMCLKDIV = 2.
uint16_t g_pwm_period_count = (uint16_t)((SYS_CLK_HZ / 2U) / (uint32_t)PWM_FREQ_HZ / 2U);
#endif

void pwm_init(void)
{
    // SysConfig has already configured ePWM modules. Nothing else.
}

void pwm_force_safe(void)
{
    // Force CMP to mid-period (50% duty). Real safe state is the gate
    // driver disable (inverter_disable_gate()); this is belt-and-braces.
    uint16_t mid = g_pwm_period_count / 2U;
    EPWM_setCounterCompareValue(PWM_U_BASE, EPWM_COUNTER_COMPARE_A, mid);
    EPWM_setCounterCompareValue(PWM_V_BASE, EPWM_COUNTER_COMPARE_A, mid);
    EPWM_setCounterCompareValue(PWM_W_BASE, EPWM_COUNTER_COMPARE_A, mid);
}

void pwm_set_duty(const FOC_Duty_t *d)
{
    // duty in [-0.5, +0.5] -> [0, period_count]
    float half = 0.5f * (float)g_pwm_period_count;
    int32_t cu = (int32_t)(half * (1.0f - 2.0f * d->value[0]));
    int32_t cv = (int32_t)(half * (1.0f - 2.0f * d->value[1]));
    int32_t cw = (int32_t)(half * (1.0f - 2.0f * d->value[2]));

    if(cu < 0) cu = 0; if(cu > g_pwm_period_count) cu = g_pwm_period_count;
    if(cv < 0) cv = 0; if(cv > g_pwm_period_count) cv = g_pwm_period_count;
    if(cw < 0) cw = 0; if(cw > g_pwm_period_count) cw = g_pwm_period_count;

    EPWM_setCounterCompareValue(PWM_U_BASE, EPWM_COUNTER_COMPARE_A, (uint16_t)cu);
    EPWM_setCounterCompareValue(PWM_V_BASE, EPWM_COUNTER_COMPARE_A, (uint16_t)cv);
    EPWM_setCounterCompareValue(PWM_W_BASE, EPWM_COUNTER_COMPARE_A, (uint16_t)cw);
}

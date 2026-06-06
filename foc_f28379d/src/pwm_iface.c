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
    // Force EPWMxA LOW via AQCSFRC (Continuous SW Force) — the highest-priority
    // mechanism in the AQ output chain, above all hardware events (PRD, CAU, CAD).
    //
    // PERIOD→LOW failed because in up-down count mode CAU (CMPA_UP) has higher
    // priority than PRD, so with CMPA=TBPRD the CMPA_UP→HIGH event won every time
    // both fired simultaneously at CTR=TBPRD. AQCSFRC bypasses the priority scheme
    // entirely and holds EPWMxA LOW unconditionally.
    //
    // The force is released in pwm_set_duty() after the new CMPA value is written,
    // ensuring no rogue HS pulse occurs during the safe→active transition.
    EPWM_setActionQualifierContSWForceShadowMode(PWM_U_BASE, EPWM_AQ_SW_IMMEDIATE_LOAD);
    EPWM_setActionQualifierContSWForceAction(PWM_U_BASE, EPWM_AQ_OUTPUT_A, EPWM_AQ_SW_OUTPUT_LOW);
    EPWM_setActionQualifierContSWForceShadowMode(PWM_V_BASE, EPWM_AQ_SW_IMMEDIATE_LOAD);
    EPWM_setActionQualifierContSWForceAction(PWM_V_BASE, EPWM_AQ_OUTPUT_A, EPWM_AQ_SW_OUTPUT_LOW);
    EPWM_setActionQualifierContSWForceShadowMode(PWM_W_BASE, EPWM_AQ_SW_IMMEDIATE_LOAD);
    EPWM_setActionQualifierContSWForceAction(PWM_W_BASE, EPWM_AQ_OUTPUT_A, EPWM_AQ_SW_OUTPUT_LOW);

    // Park CMPA at period_count so the first pwm_set_duty() call starts from 0% duty.
    EPWM_setCounterCompareValue(PWM_U_BASE, EPWM_COUNTER_COMPARE_A, g_pwm_period_count);
    EPWM_setCounterCompareValue(PWM_V_BASE, EPWM_COUNTER_COMPARE_A, g_pwm_period_count);
    EPWM_setCounterCompareValue(PWM_W_BASE, EPWM_COUNTER_COMPARE_A, g_pwm_period_count);
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

    // Write CMPA first while AQCSFRC force may still be active, then release.
    // This prevents a rogue HS pulse during the safe→active transition: the force
    // holds EPWMxA LOW while CMPA moves from period_count to the real duty value,
    // so AQ takes over only with a valid (non-TBPRD) compare value already in place.
    // Writing DISABLED when the force is already disabled is a harmless idempotent
    // register write (AQCSFRC CSFA bits already 0).
    EPWM_setCounterCompareValue(PWM_U_BASE, EPWM_COUNTER_COMPARE_A, (uint16_t)cu);
    EPWM_setCounterCompareValue(PWM_V_BASE, EPWM_COUNTER_COMPARE_A, (uint16_t)cv);
    EPWM_setCounterCompareValue(PWM_W_BASE, EPWM_COUNTER_COMPARE_A, (uint16_t)cw);

    EPWM_setActionQualifierContSWForceAction(PWM_U_BASE, EPWM_AQ_OUTPUT_A, EPWM_AQ_SW_DISABLED);
    EPWM_setActionQualifierContSWForceAction(PWM_V_BASE, EPWM_AQ_OUTPUT_A, EPWM_AQ_SW_DISABLED);
    EPWM_setActionQualifierContSWForceAction(PWM_W_BASE, EPWM_AQ_OUTPUT_A, EPWM_AQ_SW_DISABLED);
}

void pwm_clear_trip(void)
{
    // Release the latched one-shot trip-zone (and its interrupt flag) on all
    // three half-bridges so PWM can resume on the next RUN. Called from
    // enter(FOC_IDLE) — i.e. after a fault has been cleared. Harmless when no
    // trip is configured/latched (clears already-zero flags). The HW trip
    // itself is configured in SysConfig (OSHT1, action A=LOW / B=HIGH = ASC).
    EPWM_clearTripZoneFlag(PWM_U_BASE, EPWM_TZ_FLAG_OST | EPWM_TZ_INTERRUPT);
    EPWM_clearTripZoneFlag(PWM_V_BASE, EPWM_TZ_FLAG_OST | EPWM_TZ_INTERRUPT);
    EPWM_clearTripZoneFlag(PWM_W_BASE, EPWM_TZ_FLAG_OST | EPWM_TZ_INTERRUPT);
}

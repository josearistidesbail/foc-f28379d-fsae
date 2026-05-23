//=============================================================================
// safety.c - Latched-fault bookkeeping + ISR-side SW trip checks.
//
// HW-level overcurrent goes through ePWM trip-zone (configured in SysConfig).
// This module covers SW-detectable conditions: VBUS over/under, gate-driver
// nFAULT pin, and a sanity check on phase currents in case the HW trip never
// fires (e.g. shunt fault).
//=============================================================================
#include "build_config.h"
#include "safety.h"
#include "inverter_iface.h"
#include "foc_pipeline.h"
#include "foc_state_machine.h"

static volatile uint16_t s_latched;

void safety_init(void)        { s_latched = 0; }
void safety_latch(uint16_t b) { s_latched |= b; }
bool safety_is_clear(void)    { return s_latched == 0; }
uint16_t safety_get_latched(void) { return s_latched; }
void safety_clear(void)       { s_latched = 0; }

void safety_check_isr(void)
{
    const FOC_Signals_t *s = foc_get_signals();
    FOC_State_t st = sm_get_state();

    // Phase overcurrent — only meaningful when actively driving current.
    // In IDLE/FAULT the gate driver is off and shunt amp outputs may be
    // tri-stated, so the (raw - offset) math reports a bogus reading.
    if(st == FOC_RUN || st == FOC_ALIGN_ROTOR)
    {
        if(s->Iabc.value[0] >  MOTOR_OC_TRIP_A) safety_latch(FAULT_OVERCURRENT);
        if(s->Iabc.value[0] < -MOTOR_OC_TRIP_A) safety_latch(FAULT_OVERCURRENT);
        if(s->Iabc.value[1] >  MOTOR_OC_TRIP_A) safety_latch(FAULT_OVERCURRENT);
        if(s->Iabc.value[1] < -MOTOR_OC_TRIP_A) safety_latch(FAULT_OVERCURRENT);
        if(s->Iabc.value[2] >  MOTOR_OC_TRIP_A) safety_latch(FAULT_OVERCURRENT);
        if(s->Iabc.value[2] < -MOTOR_OC_TRIP_A) safety_latch(FAULT_OVERCURRENT);
    }

    float vbus = foc_get_refs()->vbus;
    if(vbus > MOTOR_OV_TRIP_V) safety_latch(FAULT_OVERVOLTAGE);
    if(vbus < MOTOR_UV_TRIP_V && st == FOC_RUN)
        safety_latch(FAULT_UNDERVOLTAGE);

    if(inverter_is_faulted()) safety_latch(FAULT_GATE_DRIVER);

    if(s_latched) sm_raise_fault(s_latched);
}

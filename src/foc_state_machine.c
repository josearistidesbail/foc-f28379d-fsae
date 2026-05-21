//=============================================================================
// foc_state_machine.c - IDLE / CALIBRATE / ALIGN / RUN / FAULT.
//=============================================================================
#include "build_config.h"
#include "foc_state_machine.h"
#include "foc_pipeline.h"
#include "inverter_iface.h"
#include "pwm_iface.h"
#include "adc_iface.h"
#include "safety.h"

#define CAL_SAMPLES         2048
#define ALIGN_TICKS         ((uint32_t)(ALIGN_DURATION_S * 1000.0f))   // 1 kHz ticks

static volatile FOC_State_t s_state = FOC_IDLE;
static volatile FOC_State_t s_requested = FOC_IDLE;
static volatile bool        s_fault_pending = false;
static uint32_t             s_state_ticks;

static void enter(FOC_State_t next)
{
    s_state = next;
    s_state_ticks = 0;

    switch(next)
    {
    case FOC_IDLE:
        inverter_disable_gate();
        pwm_force_safe();
        break;
    case FOC_CALIBRATE_OFFSETS:
        pwm_force_safe();           // low side shorted, no commutation
        adc_calibrate_offsets(CAL_SAMPLES);
        break;
    case FOC_ALIGN_ROTOR:
        inverter_enable_gate();
        foc_get_refs()->id_ref = ALIGN_ID_INJECT_A;
        foc_get_refs()->iq_ref = 0.0f;
        // theta is forced to 0 in ISR by the state guard inside foc_pipeline.c;
        // for a more rigorous align, override sensor_iface->theta here.
        break;
    case FOC_RUN:
        inverter_enable_gate();
        foc_get_refs()->id_ref = ID_REF_NOMINAL_A;
        break;
    case FOC_FAULT:
        inverter_disable_gate();
        pwm_force_safe();
        break;
    }
}

void sm_init(void)
{
    enter(FOC_IDLE);
    s_requested = FOC_IDLE;
}

FOC_State_t sm_get_state(void) { return s_state; }

void sm_request_run(void)    { s_requested = FOC_RUN; }
void sm_request_stop(void)   { s_requested = FOC_IDLE; }
void sm_clear_fault(void)    { if(s_state == FOC_FAULT) { safety_clear(); s_requested = FOC_IDLE; } }
void sm_raise_fault(uint16_t code) { safety_latch(code); s_fault_pending = true; }

void sm_tick_1khz(void)
{
    s_state_ticks++;

    if(s_fault_pending && s_state != FOC_FAULT)
    {
        enter(FOC_FAULT);
        s_fault_pending = false;
        return;
    }

    switch(s_state)
    {
    case FOC_IDLE:
        if(s_requested == FOC_RUN)
            enter(FOC_CALIBRATE_OFFSETS);
        break;

    case FOC_CALIBRATE_OFFSETS:
        // adc_calibrate_offsets() ran synchronously on entry.
        enter(FOC_ALIGN_ROTOR);
        break;

    case FOC_ALIGN_ROTOR:
        if(s_state_ticks >= ALIGN_TICKS)
            enter(FOC_RUN);
        break;

    case FOC_RUN:
        if(s_requested == FOC_IDLE)
            enter(FOC_IDLE);
        break;

    case FOC_FAULT:
        // Cleared via sm_clear_fault() -> back to IDLE.
        break;
    }
}

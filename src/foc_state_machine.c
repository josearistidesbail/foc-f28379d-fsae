//=============================================================================
// foc_state_machine.c - IDLE / CALIBRATE / ALIGN / RUN / FAULT.
//=============================================================================
#include "build_config.h"
#include "foc_state_machine.h"
#include "foc_pipeline.h"
#include "inverter_iface.h"
#include "sensor_iface.h"
#include "pwm_iface.h"
#include "adc_iface.h"
#include "safety.h"

#define CAL_SAMPLES         2048
#define ALIGN_TICKS         ((uint32_t)(ALIGN_DURATION_S * 1000.0f))   // 1 kHz ticks

static volatile FOC_State_t s_state = FOC_IDLE;
static volatile FOC_State_t s_requested = FOC_IDLE;
static volatile bool        s_align_only = false;
static volatile bool        s_fault_pending = false;
static uint32_t             s_state_ticks;

// TODO: Debugging Step 6, remove after.
// Poke from the CCS Expressions view (function calls are flaky there):
//   g_dbg_sm_cmd = 1  -> align-only (CALIBRATE -> ALIGN -> IDLE)
//   g_dbg_sm_cmd = 2  -> run        (CALIBRATE -> ALIGN -> RUN)
//   g_dbg_sm_cmd = 3  -> stop       (-> IDLE)
//   g_dbg_sm_cmd = 4  -> clear fault
// Auto-resets to 0 after the request is latched.
volatile uint16_t  g_dbg_sm_cmd;
volatile uint16_t  g_dbg_state;          // mirrors s_state for visibility
volatile int32_t   g_dbg_align_qep_cnt;  // QPOSCNT captured at end of ALIGN

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
        inverter_enable_gate();
        inverter_clear_faults();        // clear any fault latched since last inverter_init()
        pwm_force_safe();               // SO bias must be present before sampling offsets
        adc_calibrate_offsets(CAL_SAMPLES);
        break;
    case FOC_ALIGN_ROTOR:
        inverter_enable_gate();
        foc_get_refs()->id_ref = ALIGN_ID_INJECT_A;
        foc_get_refs()->iq_ref = 0.0f;
        // theta is forced to 0 in foc_pipeline.c while state == ALIGN.
        break;
    case FOC_RUN:
        inverter_enable_gate();
        foc_get_refs()->id_ref = ID_REF_NOMINAL_A;
        break;
    case FOC_FAULT:
        inverter_snapshot_fault_regs(); // read while EN_GATE still high — tells us what fired
        inverter_disable_gate();
        pwm_force_safe();
        break;
    }

    g_dbg_state = (uint16_t)next;
}

void sm_init(void)
{
    enter(FOC_IDLE);
    s_requested  = FOC_IDLE;
    s_align_only = false;
    g_dbg_sm_cmd = 0;
}

FOC_State_t sm_get_state(void) { return s_state; }

void sm_request_run(void)    { s_align_only = false; s_requested = FOC_RUN; }
void sm_request_align(void)  { s_align_only = true;  s_requested = FOC_ALIGN_ROTOR; }
void sm_request_stop(void)   { s_requested = FOC_IDLE; }
void sm_clear_fault(void)    { if(s_state == FOC_FAULT) { safety_clear(); s_requested = FOC_IDLE; } }
void sm_raise_fault(uint16_t code) { safety_latch(code); s_fault_pending = true; }

// Pull any debug-driven command into the real request fields. Runs at 1 kHz.
static void poll_debug_cmd(void)
{
    uint16_t cmd = g_dbg_sm_cmd;
    if(cmd == 0) return;
    g_dbg_sm_cmd = 0;
    switch(cmd)
    {
    case 1: sm_request_align();   break;
    case 2: sm_request_run();     break;
    case 3: sm_request_stop();    break;
    case 4: sm_clear_fault();     break;
    default: break;
    }
}

void sm_tick_1khz(void)
{
    s_state_ticks++;
    poll_debug_cmd();

    if(s_fault_pending && s_state != FOC_FAULT)
    {
        enter(FOC_FAULT);
        s_fault_pending = false;
        return;
    }

    switch(s_state)
    {
    case FOC_IDLE:
        if(s_requested == FOC_RUN || s_requested == FOC_ALIGN_ROTOR)
            enter(FOC_CALIBRATE_OFFSETS);
        break;

    case FOC_CALIBRATE_OFFSETS:
        // adc_calibrate_offsets() ran synchronously on entry.
        enter(FOC_ALIGN_ROTOR);
        break;

    case FOC_ALIGN_ROTOR:
        if(s_state_ticks >= ALIGN_TICKS)
        {
            // Latch the settled rotor position as the new electrical zero.
            sensor_capture_zero();
#if SENSOR_BACKEND_QEP
            extern volatile int32_t g_qep_mech_offset_cnt;
            g_dbg_align_qep_cnt = g_qep_mech_offset_cnt;
#endif
            if(s_align_only)
            {
                s_requested = FOC_IDLE;
                enter(FOC_IDLE);
            }
            else
            {
                enter(FOC_RUN);
            }
        }
        break;

    case FOC_RUN:
        if(s_requested == FOC_IDLE)
            enter(FOC_IDLE);
        break;

    case FOC_FAULT:
        if(s_requested == FOC_IDLE)
            enter(FOC_IDLE);
        break;
    }
}

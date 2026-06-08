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

static volatile FOC_State_t s_state = FOC_IDLE;
static volatile FOC_State_t s_requested = FOC_IDLE;
static volatile bool        s_align_only = false;
static volatile bool        s_fault_pending = false;
static volatile bool        s_aligned = false;      // rotor electrical offset captured?
static uint32_t             s_state_ticks;

// TODO: Debugging Step 6, remove after.
// Poke from the CCS Expressions view (function calls are flaky there):
//   g_dbg_sm_cmd = 1  -> align-only / re-calibrate (CALIBRATE -> ALIGN -> IDLE),
//                        always forces a fresh rotor-offset capture
//   g_dbg_sm_cmd = 2  -> run: always re-samples ADC offsets (gate warm-up +
//                        DRV fault-clear), but aligns the rotor only on the
//                        first run after boot; later runs skip the spin
//                        (CALIBRATE -> RUN)
//   g_dbg_sm_cmd = 3  -> stop       (-> IDLE)
//   g_dbg_sm_cmd = 4  -> clear fault
// Auto-resets to 0 after the request is latched.
volatile uint16_t  g_dbg_sm_cmd;
volatile uint16_t  g_dbg_state;          // mirrors s_state for visibility
// g_dbg_align_qep_cnt + g_dbg_align_offset_elec now live in foc_pipeline.c,
// where the alignment controller runs.

// TODO: Debugging Step 9, remove after. Which safe-state FOC_FAULT chose:
//   1 = ACTIVE SHORT (gate kept on, low-side short clamps back-EMF; high speed)
//   0 = COAST        (gate disabled, bridge tristate; low speed / at rest)
volatile uint16_t  g_dbg_fault_asc;

static void enter(FOC_State_t next)
{
    s_state = next;
    s_state_ticks = 0;

    switch(next)
    {
    case FOC_IDLE:
        inverter_disable_gate();
        pwm_force_safe();
        pwm_clear_trip();   // release any latched HW trip-zone so RUN can resume
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
        // Seed id_ref to nominal on entry. From here the current-loop ISR owns
        // it: id_ref = ID_REF_NOMINAL_A + field-weakening regulator output
        // (foc_current_loop_isr step 3b, gated by g_dbg_fw_en).
        foc_get_refs()->id_ref = ID_REF_NOMINAL_A;
        break;
    case FOC_OPENLOOP:
        // Bench-only open-loop PWM (no power stage): enable the gate and clear any
        // stale gate-driver latch. The rotating voltage vector is generated in the
        // current-loop ISR; no current loop, sensor, or RUN-only fault check runs
        // in this state, so it cannot fault on the missing bus/resolver/currents.
        inverter_enable_gate();
        inverter_clear_faults();
        break;
    case FOC_FAULT:
        inverter_snapshot_fault_regs(); // read while EN_GATE still high — tells us what fired
        {
            // Speed-dependent safe-state. Above FAULT_ASC_OMEGA_ELEC hold a
            // 3-phase ACTIVE SHORT: keep the gate driver ENABLED so the ISR's
            // pwm_force_safe() (EPWMxA forced low -> dead-band makes EPWMxB high
            // -> low-side FETs on) clamps the terminals. This stops back-EMF
            // from rectifying into the DC link (uncontrolled generation ->
            // overvoltage) during field-weakening. Below the threshold COAST:
            // disable the gate driver so every FET tristates and the motor
            // freewheels. Uses the LAST-HEALTHY speed because on sensor loss the
            // live estimate is already garbage. This also keeps software in
            // agreement with the HW trip-zone, which latches the same ASC.
            float32_t w = sensor_get_healthy_speed();
            if(w < 0.0f) w = -w;
            bool asc = (w > FAULT_ASC_OMEGA_ELEC);
            g_dbg_fault_asc = (uint16_t)asc;
            if(asc) inverter_enable_gate();     // keep gate on -> low-side short
            else    inverter_disable_gate();    // tristate -> coast
        }
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
    s_aligned    = false;       // first RUN after boot also aligns the rotor
    g_dbg_sm_cmd = 0;
}

FOC_State_t sm_get_state(void) { return s_state; }

void sm_request_run(void)    { s_align_only = false; s_requested = FOC_RUN; }
void sm_request_align(void)  { s_align_only = true;  s_requested = FOC_ALIGN_ROTOR; }
void sm_request_openloop(void){ s_requested = FOC_OPENLOOP; }
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
    case 5: sm_request_openloop(); break;
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
        // RUN and explicit-align (Calibrate) both route through CALIBRATE: that
        // step re-enables the gate, clears any latched DRV8305 fault, and its
        // ~0.2 s offset sampling doubles as the charge-pump/SO-amp settle window.
        // Driving the bridge without it trips the gate driver (the bug behind
        // "Stop then Run faults immediately").
        if(s_requested == FOC_ALIGN_ROTOR || s_requested == FOC_RUN)
            enter(FOC_CALIBRATE_OFFSETS);
        else if(s_requested == FOC_OPENLOOP && !g_module_faults_en)
            enter(FOC_OPENLOOP);            // bench-only diagnostic, no CALIBRATE
        else if(s_requested == FOC_OPENLOOP)
            s_requested = FOC_IDLE;         // protection active -> openloop blocked
        break;

    case FOC_CALIBRATE_OFFSETS:
        // Offsets sampled synchronously on entry. Spin-align the rotor only when
        // explicitly requested (Calibrate) or the first time after boot;
        // otherwise reuse the captured electrical offset and go straight to RUN.
        if(s_align_only || !s_aligned)
            enter(FOC_ALIGN_ROTOR);
        else
            enter(FOC_RUN);
        break;

    case FOC_ALIGN_ROTOR:
        // The alignment controller runs inside the current-loop ISR
        // (foc_pipeline.c): QEP does ramp-and-average offset capture, the
        // resolver does settle-then-capture. We wait for it to report done.
        if(foc_align_done())
        {
            s_aligned = true;           // rotor electrical offset now valid
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

    case FOC_OPENLOOP:
        if(s_requested == FOC_IDLE)
            enter(FOC_IDLE);
        break;

    case FOC_FAULT:
        if(s_requested == FOC_IDLE)
            enter(FOC_IDLE);
        break;
    }
}

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
#include "sensor_iface.h"

static volatile uint16_t s_latched;

// Bench bypass for module-fault protection (HW trip-zone OVERCURRENT + SW
// gate-driver check). Seeded from BENCH_NO_POWER_STAGE: 1 (bench) => disabled.
// Live-toggled via the "module_faults_en" serial param + pwm_apply_module_tz().
volatile uint16_t g_module_faults_en = (BENCH_NO_POWER_STAGE ? 0U : 1U);

// TODO: Debugging Step 6, remove after. Mirrors the latched fault mask so the
// reason for a FOC_FAULT is visible in the CCS Expressions view without having
// to inspect the file-static s_latched. Bits are Fault_Bits_t from safety.h:
//   0x01 OVERCURRENT  0x02 OVERVOLTAGE  0x04 UNDERVOLTAGE
//   0x08 OVERTEMP     0x10 GATE_DRIVER  0x20 SENSOR_LOSS   0x40 WATCHDOG
volatile uint16_t g_dbg_fault_code;

// TODO: Debugging Step 6, remove after. Snapshot of the three phase currents at
// the instant the phase-OC check first latches FAULT_OVERCURRENT, plus which
// phase breached (1=U, 2=V, 3=W). Lets us see the ACTUAL tripping current rather
// than guessing. NOTE: value[1] (V) is KCL-reconstructed on this bench board, so
// a V trip with small U/W means the reconstruction amplified a transient.
volatile float    g_dbg_trip_iu;
volatile float    g_dbg_trip_iv;
volatile float    g_dbg_trip_iw;
volatile uint16_t g_dbg_trip_phase;

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
        float iu = s->Iabc.value[0];
        float iv = s->Iabc.value[1];
        float iw = s->Iabc.value[2];
        uint16_t oc = 0;
        if(iu > MOTOR_OC_TRIP_A || iu < -MOTOR_OC_TRIP_A)      oc = 1;
        else if(iv > MOTOR_OC_TRIP_A || iv < -MOTOR_OC_TRIP_A) oc = 2;
        else if(iw > MOTOR_OC_TRIP_A || iw < -MOTOR_OC_TRIP_A) oc = 3;

        if(oc != 0)
        {
            // Snapshot the currents at the FIRST breach only.
            if((s_latched & FAULT_OVERCURRENT) == 0)
            {
                g_dbg_trip_iu    = iu;
                g_dbg_trip_iv    = iv;
                g_dbg_trip_iw    = iw;
                g_dbg_trip_phase = oc;
            }
            safety_latch(FAULT_OVERCURRENT);
        }
    }

    float vbus = foc_get_refs()->vbus;
    if(vbus > MOTOR_OV_TRIP_V) safety_latch(FAULT_OVERVOLTAGE);
    if(vbus < MOTOR_UV_TRIP_V && st == FOC_RUN)
        safety_latch(FAULT_UNDERVOLTAGE);

    if(inverter_is_faulted()) safety_latch(FAULT_GATE_DRIVER);

    // Position-sensor loss. Only act in states that commutate on the angle; the
    // backend has already debounced (resolver: sin^2+cos^2 window per ISR; QEP:
    // drive-vs-response in the slow loop). enter(FOC_FAULT) then reads the
    // last-healthy speed to choose active-short (clamp back-EMF) vs coast.
    if((st == FOC_RUN || st == FOC_ALIGN_ROTOR) && sensor_is_lost())
        safety_latch(FAULT_SENSOR_LOSS);

    if(s_latched) sm_raise_fault(s_latched);

    g_dbg_fault_code = s_latched;   // mirror for the Expressions view
}

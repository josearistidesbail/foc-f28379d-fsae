//=============================================================================
// isr.c - ADCA1 EOC interrupt -> FOC current loop. The only fast ISR.
//
// PIE group 1, INT 1 (ADCA1) is wired in SysConfig. We register the handler
// in the vector table and route it to foc_current_loop_isr().
//
// Placed in RAM (.TI.ramfunc) so the 200 MHz CPU does not stall on flash.
//=============================================================================
#include "driverlib.h"
#include "device.h"
#include "build_config.h"
#include "foc_pipeline.h"
#include "foc_state_machine.h"
#include "safety.h"

// TODO: Debugging ISR triggers, remove after
volatile uint32_t g_isr_count = 0;

// TODO: Debugging Step 9, remove after. Count of hardware trip-zone events.
volatile uint32_t g_dbg_tz_trip = 0;

#pragma CODE_SECTION(adcA1_isr, ".TI.ramfunc")

__interrupt void adcA1_isr(void)
{
    g_isr_count++;
    foc_current_loop_isr();

    // Clear ADC INT flag and PIE ack.
    ADC_clearInterruptStatus(ADCA_BASE, ADC_INT_NUMBER1);
    Interrupt_clearACKGroup(INTERRUPT_ACK_GROUP1);
}

// ePWM trip-zone ISR (HW overcurrent / gate-driver fault). The one-shot trip
// has ALREADY forced the bridge to the active-short safe-state in hardware
// (EPWMxA low / EPWMxB high) and the OST latch HOLDS it until the fault is
// cleared (enter FOC_IDLE -> pwm_clear_trip()). Here we only record the event
// and drive the software state machine to FOC_FAULT. We clear just the trip
// INTERRUPT flag (so a later trip can interrupt again) and deliberately leave
// the OST flag latched. SysConfig enables this interrupt on PWM_U only.
__interrupt void epwm_tz_isr(void)
{
    g_dbg_tz_trip++;
    sm_raise_fault(FAULT_OVERCURRENT);   // latches + flags FAULT for next tick

    EPWM_clearTripZoneFlag(PWM_U_BASE, EPWM_TZ_INTERRUPT);
    Interrupt_clearACKGroup(INTERRUPT_ACK_GROUP2);
}

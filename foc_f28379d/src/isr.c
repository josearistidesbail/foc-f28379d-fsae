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

// ISR execution time in SYSCLK cycles (Step 12 instrumentation). CPUTIMER1 is
// started free-running (down-counter, prescaler 0) in debug_init(); the
// difference across foc_current_loop_isr() is the cost of one control tick.
// Budget: SYS_CLK_HZ / FOC_ISR_FREQ_HZ = 20,000 cycles. RO params "isr_cycles"
// (last) / "isr_cycles_max" (max-hold, reset via "isr_cyc_rst").
volatile uint32_t g_dbg_isr_cycles = 0;
volatile uint32_t g_dbg_isr_cycles_max = 0;

#pragma CODE_SECTION(adcA1_isr, ".TI.ramfunc")

__interrupt void adcA1_isr(void)
{
    uint32_t t0 = CPUTimer_getTimerCount(CPUTIMER1_BASE);
    g_isr_count++;
    foc_current_loop_isr();
    {
        uint32_t dt = t0 - CPUTimer_getTimerCount(CPUTIMER1_BASE);  // down-counter
        g_dbg_isr_cycles = dt;
        if(dt > g_dbg_isr_cycles_max) g_dbg_isr_cycles_max = dt;
    }

    // Clear ADC INT flag and PIE ack. ADC_ISR_INT_BASE is ADCA (Debug) or ADCC
    // (Control_V2) depending on which ADC carries the EOC interrupt.
    ADC_clearInterruptStatus(ADC_ISR_INT_BASE, ADC_ISR_INT_NUMBER);
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
    // Bench bypass: count the event but don't latch a fault when module-fault
    // protection is disabled (no power stage). pwm_apply_module_tz() also drops
    // the OSHT sources in that mode, so this ISR normally won't even fire then.
    if(g_module_faults_en)
        sm_raise_fault(FAULT_OVERCURRENT);   // latches + flags FAULT for next tick

    EPWM_clearTripZoneFlag(PWM_U_BASE, EPWM_TZ_INTERRUPT);
    Interrupt_clearACKGroup(INTERRUPT_ACK_GROUP2);
}

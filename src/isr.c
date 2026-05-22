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
#include "foc_pipeline.h"

// TODO: Debugging ISR triggers, remove after
volatile uint32_t g_isr_count = 0;

#pragma CODE_SECTION(adcA1_isr, ".TI.ramfunc")

__interrupt void adcA1_isr(void)
{
    g_isr_count++;
    foc_current_loop_isr();

    // Clear ADC INT flag and PIE ack.
    ADC_clearInterruptStatus(ADCA_BASE, ADC_INT_NUMBER1);
    Interrupt_clearACKGroup(INTERRUPT_ACK_GROUP1);
}

// Optional: ePWM trip-zone ISR (HW overcurrent / VDS fault).
// HW trip latch holds PWM outputs low; software just ACKs the PIE and lets
// the state machine pick up FAULT next tick.
__interrupt void epwm_tz_isr(void)
{
    Interrupt_clearACKGroup(INTERRUPT_ACK_GROUP2);
}

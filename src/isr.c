//=============================================================================
// isr.c - ADCA1 EOC interrupt -> FOC current loop. The only fast ISR.
//
// PIE group 1, INT 1 (ADCA1) is wired in SysConfig. We register the handler
// in the vector table and route it to foc_current_loop_isr().
//
// Placed in RAM (.TI.ramfunc) so the 200 MHz CPU does not stall on flash.
//=============================================================================
#include "F28x_Project.h"
#include "foc_pipeline.h"

#pragma CODE_SECTION(adcA1_isr, ".TI.ramfunc")

__interrupt void adcA1_isr(void)
{
    foc_current_loop_isr();

    // Clear ADC INT flag and PIE ack.
    ADC_clearInterruptStatus(ADCA_BASE, ADC_INT_NUMBER1);
    Interrupt_clearACKGroup(INTERRUPT_ACK_GROUP1);
}

// Optional: ePWM trip-zone ISR (HW overcurrent / VDS fault).
__interrupt void epwm_tz_isr(void)
{
    // Disable PWM outputs at the source; state machine picks up FAULT next tick.
    EPwm1Regs.TZCLR.bit.OST = 0;        // do not clear - keep tripped
    Interrupt_clearACKGroup(INTERRUPT_ACK_GROUP2);
}

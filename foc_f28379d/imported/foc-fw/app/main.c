#include "F28x_Project.h"

#include "app/motor_control.h"
#include "hal/hal_board.h"
#include "hal/hal_pwm.h"
#include "hal/hal_adc.h"
#include "hal/hal_qep.h"
#include "hal/drv8305.h"

static motor_ctl_t g_motor;

interrupt void foc_isr(void);

int main(void)
{
    hal_board_init();
    hal_pwm_init();
    hal_adc_init();
    hal_qep_init();
    drv8305_init();

    motor_ctl_init(&g_motor);

    EALLOW;
    PieVectTable.ADCB1_INT = &foc_isr;
    EDIS;
    PieCtrlRegs.PIEIER1.bit.INTx2 = 1;   /* ADCB1 = PIE group 1, INT2 */
    IER |= M_INT1;
    EINT;
    ERTM;

    motor_ctl_set_speed_ref_pu(&g_motor, 0.5f);
    motor_ctl_request_run(&g_motor);

    for (;;) {
        /* Background work: comms, telemetry, command parsing. */
        __asm("  IDLE");
    }
}

interrupt void foc_isr(void)
{
    motor_ctl_step(&g_motor);
    hal_adc_clear_eoc_flag();
}

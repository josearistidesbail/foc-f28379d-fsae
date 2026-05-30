#include "F28x_Project.h"
#include "hal_qep.h"
#include "config/board_config.h"

void hal_qep_init(void)
{
    EALLOW;
    GPIO_SetupPinMux(QEP_GPIO_A,     GPIO_MUX_CPU1, 1);   /* EQEP1A */
    GPIO_SetupPinMux(QEP_GPIO_B,     GPIO_MUX_CPU1, 1);   /* EQEP1B */
    GPIO_SetupPinMux(QEP_GPIO_INDEX, GPIO_MUX_CPU1, 5);   /* EQEP1I */
    GPIO_SetupPinOptions(QEP_GPIO_A,     GPIO_INPUT, GPIO_ASYNC);
    GPIO_SetupPinOptions(QEP_GPIO_B,     GPIO_INPUT, GPIO_ASYNC);
    GPIO_SetupPinOptions(QEP_GPIO_INDEX, GPIO_INPUT, GPIO_ASYNC);

    EQep1Regs.QDECCTL.all  = 0;                /* quadrature, no swap */
    EQep1Regs.QEPCTL.bit.PCRM   = 1;           /* reset on index */
    EQep1Regs.QEPCTL.bit.SWI    = 1;           /* software init */
    EQep1Regs.QEPCTL.bit.IEL    = 1;           /* latch position on index */
    EQep1Regs.QEPCTL.bit.QPEN   = 1;           /* enable */

    EQep1Regs.QPOSMAX = (uint32_t)(QEP_COUNTS_PER_MECH_REV) - 1U;
    EQep1Regs.QPOSINIT= 0;
    EQep1Regs.QPOSCNT = 0;

    EQep1Regs.QEINT.bit.IEL = 1;               /* enable index event flag */
    EDIS;
}

int32_t hal_qep_read_count(void) { return (int32_t)EQep1Regs.QPOSCNT; }

bool hal_qep_index_event(void)
{
    if (EQep1Regs.QFLG.bit.IEL) {
        EQep1Regs.QCLR.bit.IEL = 1;
        return true;
    }
    return false;
}

void hal_qep_zero_count(void) { EQep1Regs.QPOSCNT = 0; }

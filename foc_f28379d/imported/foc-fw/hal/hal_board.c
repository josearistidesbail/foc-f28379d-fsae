#include "F28x_Project.h"
#include "hal_board.h"
#include "config/board_config.h"

void hal_board_init(void)
{
    InitSysCtrl();          /* PLL -> 200 MHz, watchdog disabled */
    DINT;
    InitPieCtrl();
    IER = 0x0000;
    IFR = 0x0000;
    InitPieVectTable();

    EALLOW;
    /* Onboard LEDs. */
    GPIO_SetupPinMux(LED_GPIO_BLUE, GPIO_MUX_CPU1, 0);
    GPIO_SetupPinOptions(LED_GPIO_BLUE, GPIO_OUTPUT, GPIO_PUSHPULL);
    GpioDataRegs.GPASET.bit.GPIO31 = 1;

    GPIO_SetupPinMux(LED_GPIO_RED, GPIO_MUX_CPU1, 0);
    GPIO_SetupPinOptions(LED_GPIO_RED, GPIO_OUTPUT, GPIO_PUSHPULL);
    GpioDataRegs.GPBSET.bit.GPIO34 = 1;

    /* DRV8305 enable / fault pins. */
    GPIO_SetupPinMux(DRV8305_GPIO_ENABLE, GPIO_MUX_CPU1, 0);
    GPIO_SetupPinOptions(DRV8305_GPIO_ENABLE, GPIO_OUTPUT, GPIO_PUSHPULL);
    GPIO_SetupPinMux(DRV8305_GPIO_NFAULT, GPIO_MUX_CPU1, 0);
    GPIO_SetupPinOptions(DRV8305_GPIO_NFAULT, GPIO_INPUT, GPIO_PULLUP);
    EDIS;
}

void hal_board_led_blue(int on)
{
    if (on) { GpioDataRegs.GPACLEAR.bit.GPIO31 = 1; }   /* active low */
    else    { GpioDataRegs.GPASET.bit.GPIO31  = 1; }
}

void hal_board_led_red(int on)
{
    if (on) { GpioDataRegs.GPBCLEAR.bit.GPIO34 = 1; }
    else    { GpioDataRegs.GPBSET.bit.GPIO34  = 1; }
}

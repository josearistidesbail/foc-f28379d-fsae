#include "F28x_Project.h"
#include "drv8305.h"
#include "config/board_config.h"

/* GPIO124 (EN_GATE) lives in GPD; GPIO19 (nFAULT) lives in GPA. */
#define EN_GATE_SET()    GpioDataRegs.GPDSET.bit.GPIO124  = 1
#define EN_GATE_CLEAR()  GpioDataRegs.GPDCLEAR.bit.GPIO124 = 1
#define NFAULT_READ()   (GpioDataRegs.GPADAT.bit.GPIO19)

static void spi_init(void)
{
    EALLOW;
    GPIO_SetupPinMux(DRV8305_GPIO_MOSI, GPIO_MUX_CPU1, 15);  /* SPIA */
    GPIO_SetupPinMux(DRV8305_GPIO_MISO, GPIO_MUX_CPU1, 15);
    GPIO_SetupPinMux(DRV8305_GPIO_CLK,  GPIO_MUX_CPU1, 15);
    GPIO_SetupPinMux(DRV8305_GPIO_CS,   GPIO_MUX_CPU1, 15);

    SpiaRegs.SPICCR.bit.SPISWRESET = 0;
    SpiaRegs.SPICCR.bit.CLKPOLARITY= 0;
    SpiaRegs.SPICCR.bit.SPICHAR    = 15;          /* 16-bit chars */
    SpiaRegs.SPICTL.bit.CLK_PHASE  = 1;           /* mode 1 (DRV8305) */
    SpiaRegs.SPICTL.bit.MASTER_SLAVE = 1;
    SpiaRegs.SPICTL.bit.TALK         = 1;

    /* BRR = LSPCLK / bitrate - 1. */
    SpiaRegs.SPIBRR.bit.SPI_BIT_RATE =
        (uint16_t)((LSPCLK_HZ / DRV8305_SPI_BITRATE) - 1U);
    SpiaRegs.SPICCR.bit.SPISWRESET = 1;
    EDIS;
}

uint16_t drv8305_read(drv8305_reg_t reg)
{
    uint16_t cmd = (1U << 15) | ((uint16_t)reg << 11);
    SpiaRegs.SPITXBUF = cmd;
    while (!SpiaRegs.SPISTS.bit.INT_FLAG) { }
    return (uint16_t)(SpiaRegs.SPIRXBUF & 0x07FFU);
}

void drv8305_write(drv8305_reg_t reg, uint16_t data)
{
    uint16_t cmd = ((uint16_t)reg << 11) | (data & 0x07FFU);
    SpiaRegs.SPITXBUF = cmd;
    while (!SpiaRegs.SPISTS.bit.INT_FLAG) { }
    (void)SpiaRegs.SPIRXBUF;
}

void drv8305_init(void)
{
    spi_init();
    drv8305_disable();
    DELAY_US(1000);
    drv8305_enable();
    DELAY_US(5000);

    drv8305_set_sense_gain(DRV8305_SENSE_GAIN_10VPV);
    /* Defaults for HS/LS drive strength are typically fine for this BoostXL. */
}

void drv8305_set_sense_gain(drv8305_sense_gain_t gain)
{
    drv8305_write(DRV8305_REG_SENSE_CTRL, (uint16_t)gain);
}

void drv8305_enable(void)  { EN_GATE_SET();  }
void drv8305_disable(void) { EN_GATE_CLEAR();}

bool drv8305_is_faulted(void) { return NFAULT_READ() == 0; }

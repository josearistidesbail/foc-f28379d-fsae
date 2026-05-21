//=============================================================================
// inverter_drv8305.c - DRV8305 gate driver bring-up over SPI-A.
//
// Configures: ISENSE amp gain, dead-time, OCP behaviour, VDS monitor.
// Datasheet section 7.6 "Programming" - register map at 0x01..0x0C.
//
// Only present when HW_BOOSTXL_DRV8305 is the active variant.
//=============================================================================
#include "F28x_Project.h"
#include "build_config.h"

#if defined(HW_BOOSTXL_DRV8305)

#include "inverter_iface.h"

#define DRV8305_REG_HS_GATE_DRV     0x05
#define DRV8305_REG_LS_GATE_DRV     0x06
#define DRV8305_REG_GATE_DRV_CTRL   0x07
#define DRV8305_REG_IC_OPERATION    0x09
#define DRV8305_REG_SHUNT_AMP       0x0A
#define DRV8305_REG_VOLT_REG        0x0B
#define DRV8305_REG_VDS             0x0C

static uint16_t s_last_fault_status = 0;

// 16-bit SPI: bit15 = R/!W, bits14..11 = address, bits10..0 = data
static uint16_t drv8305_xfer(uint16_t rw, uint16_t addr, uint16_t data)
{
    uint16_t frame = (rw << 15) | ((addr & 0x0F) << 11) | (data & 0x07FF);
    GPIO_writePin(DRV8305_EN_GATE_GPIO, 0);   // assert CS (active low)
    SPI_writeDataNonBlocking(DRV8305_SPI_BASE, frame << 0);
    while(SPI_isBusy(DRV8305_SPI_BASE)) { }
    uint16_t r = SPI_readDataNonBlocking(DRV8305_SPI_BASE);
    GPIO_writePin(DRV8305_EN_GATE_GPIO, 1);
    return r & 0x07FF;
}

void inverter_init(void)
{
    GPIO_writePin(DRV8305_EN_GATE_GPIO, 0);   // gate driver disabled at boot
    DEVICE_DELAY_US(2000);
    GPIO_writePin(DRV8305_EN_GATE_GPIO, 1);   // wake up
    DEVICE_DELAY_US(2000);

    // Set SO gain = 10 V/V on all three channels. Register 0x0A bits[10:7]
    // configure the gain - see DRV8305 datasheet Table 4.
    drv8305_xfer(0, DRV8305_REG_SHUNT_AMP, 0x0290);  // gain=10, blank=0.5us
    drv8305_xfer(0, DRV8305_REG_VDS,        0x0086); // VDS = 0.18V trip
    drv8305_xfer(0, DRV8305_REG_GATE_DRV_CTRL, 0x0080); // PWM mode 6x

    DEVICE_DELAY_US(500);
}

void inverter_enable_gate(void) { GPIO_writePin(DRV8305_EN_GATE_GPIO, 1); }
void inverter_disable_gate(void){ GPIO_writePin(DRV8305_EN_GATE_GPIO, 0); }

bool inverter_is_faulted(void)
{
    return GPIO_readPin(DRV8305_NFAULT_GPIO) == 0;
}

uint16_t inverter_fault_status(void)
{
    s_last_fault_status = drv8305_xfer(1, 0x01, 0);   // status register 1
    return s_last_fault_status;
}

#endif // HW_BOOSTXL_DRV8305

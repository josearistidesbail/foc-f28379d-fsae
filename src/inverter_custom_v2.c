//=============================================================================
// inverter_custom_v2.c - Custom Control_Board_v2 gate-driver glue.
//
// Replace the bring-up sequence with whatever your gate-driver IC needs.
// If you're using simple optocoupler half-bridge drivers with EN/nFAULT
// only, this file is already close enough.
//
// Only present when HW_CONTROL_BOARD_V2 is the active variant.
//=============================================================================
#include "driverlib.h"
#include "device.h"
#include "build_config.h"

#if defined(HW_CONTROL_BOARD_V2)

#include "inverter_iface.h"

void inverter_init(void)
{
    GPIO_writePin(GATE_DRV_EN_GPIO, 0);
    DEVICE_DELAY_US(5000);
    // Add: SPI / I2C register setup for your gate driver IC here.
    // Example: read nFAULT after wake-up to clear any latched status.
}

void inverter_enable_gate(void)  { GPIO_writePin(GATE_DRV_EN_GPIO, 1); }
void inverter_disable_gate(void) { GPIO_writePin(GATE_DRV_EN_GPIO, 0); }

bool inverter_is_faulted(void)
{
    return GPIO_readPin(GATE_DRV_NFAULT_GPIO) == 0;
}

void inverter_clear_faults(void)
{
    // TODO[control_v2]: send CLR_LATCH or equivalent to your gate driver IC.
}

void inverter_snapshot_fault_regs(void)
{
    // TODO[control_v2]: read fault registers into g_dbg_fault_* globals.
}

uint16_t inverter_fault_status(void)
{
    // TODO[control_v2]: read fault register over your bus and return it.
    return 0;
}

#endif // HW_CONTROL_BOARD_V2

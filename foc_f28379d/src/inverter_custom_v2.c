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
#include "safety.h"     // g_module_faults_en (bench bypass)

// TODO: Debugging Step 9, remove after. Bitfield of which module fault flags
// were asserted at the moment FOC_FAULT was entered (MODULE_FLT_* bits).
volatile uint16_t g_dbg_module_fault;

void inverter_init(void)
{
    // Control_V2 has two enables: the auxiliary enable comes up once and stays
    // on for the session; the master enable stays de-asserted until the state
    // machine drives RUN. (Both assumed active-high -- see hw_control_v2.h.)
    GPIO_writePin(GATE_DRV_EN2_GPIO, 1);    // aux enable: always on
    GPIO_writePin(GATE_DRV_EN_GPIO, 0);     // master enable: off until RUN
    DEVICE_DELAY_US(5000);
    // No SPI/I2C gate-driver config on this board (discrete EN + fault GPIOs).
}

// Only the master enable is gated by the state machine; the aux enable set in
// inverter_init() is left on.
void inverter_enable_gate(void)  { GPIO_writePin(GATE_DRV_EN_GPIO, 1); }
void inverter_disable_gate(void) { GPIO_writePin(GATE_DRV_EN_GPIO, 0); }

// True when a module fault GPIO reads its asserted level (polarity from header).
static inline uint16_t module_flag(uint32_t gpio)
{
    uint16_t pin = (uint16_t)GPIO_readPin(gpio);
#if MODULE_FAULT_ACTIVE_LOW
    return (pin == 0U) ? 1U : 0U;
#else
    return (pin != 0U) ? 1U : 0U;
#endif
}

// Pack the five discrete fault flags into a MODULE_FLT_* bitfield.
static uint16_t module_fault_bits(void)
{
    uint16_t f = 0U;
    if(module_flag(MODULE_OC_A_GPIO)) f |= MODULE_FLT_OC_A;
    if(module_flag(MODULE_OC_B_GPIO)) f |= MODULE_FLT_OC_B;
    if(module_flag(MODULE_OC_C_GPIO)) f |= MODULE_FLT_OC_C;
    if(module_flag(MODULE_OT_GPIO))   f |= MODULE_FLT_OT;
    if(module_flag(MODULE_DCOV_GPIO)) f |= MODULE_FLT_DCOV;
    return f;
}

bool inverter_is_faulted(void)
{
    // Bench bypass: with no power stage the protection lines float/assert
    // spuriously; ignore them so the board doesn't latch FAULT_GATE_DRIVER.
    if(!g_module_faults_en) return false;
    return module_fault_bits() != 0U;
}

void inverter_clear_faults(void)
{
    // Nothing to do: Control_V2 has no fault-reset line, and the module's fault
    // outputs are level signals (they self-clear when the condition goes away).
    // The latched ePWM trip-zone is released by pwm_clear_trip() when the state
    // machine returns to IDLE.
}

void inverter_snapshot_fault_regs(void)
{
    g_dbg_module_fault = module_fault_bits();
}

uint16_t inverter_fault_status(void)
{
    return module_fault_bits();
}

#endif // HW_CONTROL_BOARD_V2

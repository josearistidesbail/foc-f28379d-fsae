//=============================================================================
// inverter_custom_v2.c - FE_UFPR 4.0 (ex Control_Board_v2) gate-driver glue.
//
// FE_UFPR 4.0 (successor of Control_V2, same variant): discrete UCC27524 gate
// drivers behind two active-high enables, PrimeSTACK fault flags on GPIOs,
// vehicle switch inputs. Pin facts live in config/hw/hw_control_v2.h.
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

// The ePWM trip-zone inputs are active-LOW and the Input X-BAR cannot invert,
// so the level the X-BAR (and GPIO_readPin) sees on a fault must be LOW:
// (fault level at the pin) XOR (pad inversion) must give LOW. Refuse to build a
// combination that would arm the HW trip backwards -- a backwards trip is
// either a permanent short-circuit latch or, worse, a trip that never fires.
#if !defined(MODULE_FAULT_PAD_INVERT)
#define MODULE_FAULT_PAD_INVERT 0U
#endif
#define MODULE_FAULT_READS_LOW  ((MODULE_FAULT_ACTIVE_LOW != 0U) != (MODULE_FAULT_PAD_INVERT != 0U))
#if !MODULE_FAULT_READS_LOW
#error "Module fault lines would reach the active-low trip zone inverted: fix MODULE_FAULT_ACTIVE_LOW / MODULE_FAULT_PAD_INVERT (and the SysConfig padConfig)"
#endif

void inverter_init(void)
{
    // Two board-local enables (both active-HIGH, ANDed by board U8 with the
    // main-switch interlock): the auxiliary enable comes up here; the master
    // enable stays de-asserted until the state machine drives RUN.
    GPIO_writePin(GATE_DRV_EN2_GPIO, 1);    // aux enable
    GPIO_writePin(GATE_DRV_EN_GPIO, 0);     // master enable: off until RUN
    DEVICE_DELAY_US(5000);
    // No SPI/I2C gate-driver config on this board (discrete EN + fault GPIOs).
}

// The state machine gates the master enable. Enabling also re-asserts the aux
// enable, so a bench test that dropped it (gate_en_dbg) cannot leave the board
// unable to arm on the next RUN / ol_run.
void inverter_enable_gate(void)
{
    GPIO_writePin(GATE_DRV_EN2_GPIO, 1);
    GPIO_writePin(GATE_DRV_EN_GPIO, 1);
}
void inverter_disable_gate(void) { GPIO_writePin(GATE_DRV_EN_GPIO, 0); }

// Readback of the two enable pins (GPxDAT reflects the pin level for outputs):
// bit0 = master GPIO66, bit1 = aux GPIO131. Board TP16 is their AND with the
// main-switch interlock (board JP1).
uint16_t inverter_gate_en_readback(void)
{
    uint16_t r = 0U;
    if(GPIO_readPin(GATE_DRV_EN_GPIO)  != 0U) r |= 1U;
    if(GPIO_readPin(GATE_DRV_EN2_GPIO) != 0U) r |= 2U;
    return r;
}

// BENCH ONLY (bring-up B): drive the two enables independently. Caller
// (debug_params.c) restricts this to IDLE with module-fault protection off.
// In IDLE the PWM is held in the all-LOW OFF pattern (pwm_force_off), so with
// TP16 high all six gate test points read 0 V. (Before 2026-11-03 the idle
// pattern put the low sides on, ~13.5 V on TP11/13/15 -- that was changed so
// the PrimeSTACK sees all inputs LOW at every enable.) The next state
// transition overrides this.
void inverter_dbg_set_gates(uint16_t mask)
{
    GPIO_writePin(GATE_DRV_EN_GPIO,  (mask & 1U) ? 1U : 0U);
    GPIO_writePin(GATE_DRV_EN2_GPIO, (mask & 2U) ? 1U : 0U);
}

// Vehicle switch inputs: bit0 = main (GPIO29), bit1 = start (GPIO59).
// 1 = switch ON (12 V present at the cockpit input).
uint16_t board_switch_inputs(void)
{
    uint16_t r = 0U;
    if(GPIO_readPin(SW_MAIN_GPIO)  != 0U) r |= 1U;
    if(GPIO_readPin(SW_START_GPIO) != 0U) r |= 2U;
    return r;
}

// True when a module fault GPIO reads its asserted level. With the pad
// inverted (MODULE_FAULT_PAD_INVERT) GPIO_readPin() returns the INVERTED pin,
// so the level to test is the one the trip zone sees: LOW = fault.
static inline uint16_t module_flag(uint32_t gpio)
{
    uint16_t pin = (uint16_t)GPIO_readPin(gpio);
    return (pin == 0U) ? 1U : 0U;          // MODULE_FAULT_READS_LOW (checked above)
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

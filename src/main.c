//=============================================================================
// main.c - F28379D FOC entry point.
//
// Top-down flow:
//   1. SysConfig-generated Board_init() configures clocks, GPIO mux, ePWMs,
//      ADCs, eQEP1, DACs, CMPSS, interrupt vectors.
//   2. We initialize the HAL layers (inverter, PWM, ADC, sensor), the FOC
//      pipeline, the state machine, the safety module, the debug hooks.
//   3. EINT/ERTM lets the ADCA1 EOC ISR start firing -> foc_current_loop_isr().
//   4. The super-loop is non-time-critical: heartbeat LED + slow housekeeping.
//=============================================================================
#include "driverlib.h"
#include "device.h"
#include "board.h"                  // SysConfig-generated
#include "build_config.h"
#include "foc_pipeline.h"
#include "foc_state_machine.h"
#include "sensor_iface.h"
#include "inverter_iface.h"
#include "adc_iface.h"
#include "pwm_iface.h"
#include "safety.h"
#include "debug_hooks.h"
#include "debug_iface.h"

extern volatile uint32_t g_isr_count;   // defined in src/isr.c, ticks at 10 kHz

#if defined(HW_BOOSTXL_DRV8305)
extern volatile uint16_t g_dbg_en_gate;   // defined in src/inverter_drv8305.c
extern volatile uint16_t g_dbg_nfault;
#endif

// 5000 ISR ticks @ 10 kHz = 500 ms.
#define LED_TICK_PERIOD 5000U

int main(void)
{
    // ---- 1. SysConfig-generated peripheral init -------------------------
    Device_init();          // clocks, watchdog
    Device_initGPIO();
    Interrupt_initModule();
    Interrupt_initVectorTable();
    Board_init();           // all SysConfig peripherals

    // ---- 2. Application-side initialization -----------------------------
    debug_init();
    safety_init();
    adc_init();
    pwm_init();
    sensor_init();
    inverter_init();        // SPI register set; gate driver stays disabled
    foc_init();
    sm_init();              // starts in FOC_IDLE
    debug_iface_init();

    // TODO: Bring-up Step 4 only — hold EN_GATE high so DRV8305 current
    // sense amps bias at VREF/2 (~2048). Remove once Step 4 is signed off.
#if defined(HW_BOOSTXL_DRV8305)
    inverter_enable_gate();
#endif

    // ---- 3. Globally enable interrupts ---------------------------------
    EINT;
    ERTM;

    // ---- 4. Super-loop: poll debug iface + tick-based heartbeat --------
    uint32_t last_led_tick = 0;
    while(1)
    {
        debug_iface_poll();
#if defined(HW_BOOSTXL_DRV8305)
        g_dbg_en_gate = (uint16_t)GPIO_readPin(DRV8305_EN_GATE_GPIO);
        g_dbg_nfault  = (uint16_t)GPIO_readPin(DRV8305_NFAULT_GPIO);
#endif
        uint32_t now = g_isr_count;
        if ((now - last_led_tick) >= LED_TICK_PERIOD)
        {
            GPIO_togglePin(LED_STATUS_GPIO);
            last_led_tick = now;
        }
    }
}

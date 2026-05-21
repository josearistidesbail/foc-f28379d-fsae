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
#include "F28x_Project.h"
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

    // ---- 3. Globally enable interrupts ---------------------------------
    EINT;
    ERTM;

    // ---- 4. Super-loop (1 Hz heartbeat + non-time-critical tasks) ------
    uint32_t hb = 0;
    while(1)
    {
        DEVICE_DELAY_US(500000);
        GPIO_togglePin(LED_STATUS_GPIO);
        hb++;
        // Future: comms / parameter updates / telemetry.
    }
}

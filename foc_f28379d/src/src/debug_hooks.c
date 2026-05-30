//=============================================================================
// debug_hooks.c - Datalog ring buffer + DAC mirror + scope GPIO.
//=============================================================================
#include "driverlib.h"
#include "device.h"
#include "build_config.h"
#include "debug_hooks.h"

// Push into .ebss (far-data) because the linker cmd lets .ebss fragment
// across RAMLS5 | RAMGS0 | RAMGS1; default .bss is RAMLS5-only and too small.
#pragma DATA_SECTION(g_datalog, ".ebss")
volatile float g_datalog[DATALOG_LEN_SAMPLES][DATALOG_CHANNELS];
volatile uint16_t g_datalog_idx;

void debug_init(void)
{
    g_datalog_idx = 0;
    // SysConfig pinned LED_STATUS_GPIO and SCOPE_PIN_ISR_GPIO already.
    GPIO_writePin(LED_STATUS_GPIO, 0);
}

void debug_datalog_push(const FOC_Signals_t *s, uint16_t state)
{
    uint16_t i = g_datalog_idx;
    g_datalog[i][0] = s->theta_elec;
    g_datalog[i][1] = s->Idq.value[0];   // Id
    g_datalog[i][2] = s->Idq.value[1];   // Iq
    g_datalog[i][3] = s->Vdq.value[0];   // Vd
    g_datalog[i][4] = s->Vdq.value[1];   // Vq
    g_datalog[i][5] = s->omega_elec;
    g_datalog[i][6] = (float)state;
    g_datalog_idx = (i + 1U) & (DATALOG_LEN_SAMPLES - 1U);
}

void debug_dac_set(float sig_a, float sig_b, float scale01)
{
    int32_t a = (int32_t)((sig_a * scale01 + 0.5f) * 4095.0f);
    int32_t b = (int32_t)((sig_b * scale01 + 0.5f) * 4095.0f);
    if(a < 0) a = 0; if(a > 4095) a = 4095;
    if(b < 0) b = 0; if(b > 4095) b = 4095;
    DAC_setShadowValue(DACA_BASE, (uint16_t)a);
    DAC_setShadowValue(DACB_BASE, (uint16_t)b);
}

void debug_isr_scope_high(void) { GPIO_writePin(SCOPE_PIN_ISR_GPIO, 1); }
void debug_isr_scope_low (void) { GPIO_writePin(SCOPE_PIN_ISR_GPIO, 0); }

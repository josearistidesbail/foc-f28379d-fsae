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

volatile uint16_t g_datalog_decim = 1U;
static uint16_t   s_decim_cnt = 0U;

// Catalog bit -> g_datalog column map (see debug_proto.h SCOPE_BIT_*):
//   bit0 Id=1, bit1 Iq=2, bit2 theta=0, bit3 omega=5, bit4 Vd=3, bit5 Vq=4,
//   bit6 Iu=7, bit7 Iv=8, bit8 Iw=9
static const uint16_t s_scope_cols[SCOPE_MAX_CHANNELS] =
    { 1U, 2U, 0U, 5U, 3U, 4U, 7U, 8U, 9U };

void debug_init(void)
{
    g_datalog_idx = 0;
    s_decim_cnt   = 0;
    // SysConfig pinned LED_STATUS_GPIO and SCOPE_PIN_ISR_GPIO already.
    GPIO_writePin(LED_STATUS_GPIO, 0);
}

void debug_datalog_push(const FOC_Signals_t *s, uint16_t state)
{
    // Decimate: only store one in every g_datalog_decim calls.
    if(++s_decim_cnt < g_datalog_decim) return;
    s_decim_cnt = 0;

    uint16_t i = g_datalog_idx;
    g_datalog[i][0] = s->theta_elec;
    g_datalog[i][1] = s->Idq.value[0];   // Id
    g_datalog[i][2] = s->Idq.value[1];   // Iq
    g_datalog[i][3] = s->Vdq.value[0];   // Vd
    g_datalog[i][4] = s->Vdq.value[1];   // Vq
    g_datalog[i][5] = s->omega_elec;
    g_datalog[i][6] = (float)state;
    g_datalog[i][7] = s->Iabc.value[0];  // Iu
    g_datalog[i][8] = s->Iabc.value[1];  // Iv
    g_datalog[i][9] = s->Iabc.value[2];  // Iw
    g_datalog_idx = (i + 1U) & (DATALOG_LEN_SAMPLES - 1U);
}

uint16_t debug_datalog_snapshot(float *dst, uint16_t *out_head, uint16_t mask)
{
    // Resolve the set bits (ascending) into the datalog columns to emit. nch is
    // the streamed channel count; dst is packed as dst[slot*nch + c].
    uint16_t sel[SCOPE_MAX_CHANNELS];
    uint16_t nch = 0U;
    uint16_t b, i, c;
    for(b = 0; b < SCOPE_MAX_CHANNELS; b++)
    {
        if(mask & (uint16_t)(1U << b)) sel[nch++] = s_scope_cols[b];
    }

    // Capture the index first so the caller can reorder ring -> chronological.
    *out_head = g_datalog_idx;
    if(nch == 0U) return 0U;

    for(i = 0; i < DATALOG_LEN_SAMPLES; i++)
    {
        for(c = 0; c < nch; c++)
        {
            dst[(i * nch) + c] = g_datalog[i][sel[c]];
        }
    }
    return nch;
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

//=============================================================================
// debug_hooks.c - Datalog ring buffer + DAC mirror + scope GPIO.
//=============================================================================
#include "driverlib.h"
#include "device.h"
#include "build_config.h"
#include "debug_hooks.h"

// Raw resolver SIN/COS ADC codes (adc_iface.c). Logged as scope cols 10/11 so
// the host can watch the two resolver channels the angle is derived from. 0 on
// backends that don't sample sin/cos.
extern volatile uint16_t g_dbg_sin_raw;
extern volatile uint16_t g_dbg_cos_raw;

// Measured DC-bus voltage [V] (foc_pipeline.c, refreshed every ISR). Logged as
// scope col 13 so the host can watch the bus sag under load (UV-trip sizing).
extern volatile float g_dbg_vbus_v;

// Legacy differentiate+LPF electrical speed (written by the RM44AC ISR in
// sensor_rm44ac_inline.h). Logged as scope col 12 so one capture shows it against
// the SELECTED estimator on col 5; with res_w_mode = 0 the two are identical by
// construction. Defined HERE, not in sensor_rm44ac.c, so the QEP build still
// links (it never writes it, so it reads a constant 0).
volatile float g_dbg_omega_lpf_elec;

// Push into .ebss (far-data) because the linker cmd lets .ebss fragment
// across RAMLS5 | RAMGS0 | RAMGS1; default .bss is RAMLS5-only and too small.
#pragma DATA_SECTION(g_datalog, ".ebss")
volatile float g_datalog[DATALOG_LEN_SAMPLES][DATALOG_CHANNELS];
volatile uint16_t g_datalog_idx;

volatile uint16_t g_datalog_decim = 1U;
static uint16_t   s_decim_cnt = 0U;

// One-shot capture trigger (see debug_hooks.h). s_dl_trig_slot is the ring slot
// the trigger sample lands in; s_dl_post counts the stored samples still owed
// before the buffer freezes.
volatile uint16_t g_dl_trig_state = DL_TRIG_OFF;
volatile uint16_t g_dl_trig_idx   = 0U;
static   uint16_t s_dl_trig_slot  = 0U;
static   uint16_t s_dl_post       = 0U;
// Release request, set from main-loop (serial param) context and consumed by the
// ISR. g_dl_trig_state is written ONLY from ISR context (debug_datalog_push and
// debug_datalog_trigger, which the current-loop ISR calls) -- otherwise a release
// racing the ISR's ARMED->DONE transition could leave the ring frozen after the
// host asked for free-run, and the live scope would stop until released again.
static volatile uint16_t s_dl_release = 0U;

// Catalog bit -> g_datalog column map (see debug_proto.h SCOPE_BIT_*):
//   bit0 Id=1, bit1 Iq=2, bit2 theta=0, bit3 omega=5, bit4 Vd=3, bit5 Vq=4,
//   bit6 Iu=7, bit7 Iv=8, bit8 Iw=9, bit9 res_sin=10, bit10 res_cos=11,
//   bit11 res_w_lpf=12, bit12 vbus=13
static const uint16_t s_scope_cols[SCOPE_MAX_CHANNELS] =
    { 1U, 2U, 0U, 5U, 3U, 4U, 7U, 8U, 9U, 10U, 11U, 12U, 13U };

void debug_init(void)
{
    g_datalog_idx   = 0;
    s_decim_cnt     = 0;
    g_dl_trig_state = DL_TRIG_OFF;
    g_dl_trig_idx   = 0;
    // SysConfig pinned LED_STATUS_GPIO and SCOPE_PIN_ISR_GPIO already.
    GPIO_writePin(LED_STATUS_GPIO, 0);
}

void debug_datalog_trigger(uint16_t pretrig)
{
    // Leave room for at least 2 post-trigger samples so s_dl_post can never be
    // armed at 0 (the countdown below pre-decrements).
    if(pretrig > (DATALOG_LEN_SAMPLES - 2U)) pretrig = DATALOG_LEN_SAMPLES - 2U;
    s_dl_release    = 0U;               // arming supersedes a pending release

    // g_datalog_idx only advances on STORED samples, so it is exactly the slot
    // the next stored sample takes -- i.e. the trigger sample's slot.
    s_dl_trig_slot  = g_datalog_idx;
    s_dl_post       = (uint16_t)(DATALOG_LEN_SAMPLES - pretrig);
    g_dl_trig_idx   = pretrig;          // provisional; made exact at freeze
    g_dl_trig_state = DL_TRIG_ARMED;
}

void debug_datalog_free_run(void)
{
    // Request only -- the ISR performs the transition (see s_dl_release).
    s_dl_release = 1U;
}

void debug_datalog_push(const FOC_Signals_t *s, uint16_t state)
{
    if(s_dl_release)
    {
        s_dl_release    = 0U;
        s_dl_post       = 0U;
        g_dl_trig_state = DL_TRIG_OFF;
    }

    // One-shot capture complete: hold the window until the host releases it.
    if(g_dl_trig_state == DL_TRIG_DONE) return;

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
    g_datalog[i][10] = (float)g_dbg_sin_raw;  // raw resolver SIN ADC code
    g_datalog[i][11] = (float)g_dbg_cos_raw;  // raw resolver COS ADC code
    g_datalog[i][12] = g_dbg_omega_lpf_elec;  // legacy diff+LPF elec speed (A/B)
    g_datalog[i][13] = g_dbg_vbus_v;          // measured DC-bus voltage [V]
    g_datalog_idx = (i + 1U) & (DATALOG_LEN_SAMPLES - 1U);

    // One-shot countdown. Runs on STORED samples (i.e. after decimation) so the
    // post-trigger window is a fixed sample count whatever g_datalog_decim is.
    if(g_dl_trig_state == DL_TRIG_ARMED)
    {
        if(--s_dl_post == 0U)
        {
            g_dl_trig_state = DL_TRIG_DONE;
            // Derive the trigger's chronological position from the real ring
            // pointers instead of trusting the requested pretrig: at freeze
            // g_datalog_idx is the write pointer = the OLDEST sample, which is
            // exactly the origin debug_iface un-wraps from (snapshot head).
            g_dl_trig_idx = (uint16_t)((s_dl_trig_slot - g_datalog_idx)
                                       & (DATALOG_LEN_SAMPLES - 1U));
        }
    }
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

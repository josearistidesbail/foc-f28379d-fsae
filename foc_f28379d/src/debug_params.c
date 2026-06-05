//=============================================================================
// debug_params.c - Parameter registry definition (see debug_params.h).
//
// Each entry binds an id to a get/set pair that reaches into the live FOC
// state. Adding a param is mechanical: write a get_/set_ pair and append a row.
//=============================================================================
#include "build_config.h"
#include "debug_params.h"
#include "debug_proto.h"
#include "foc_pipeline.h"
#include "foc_state_machine.h"

// Live torque command consumed by foc_speed_loop_tick() while in FOC_RUN.
extern volatile float32_t g_dbg_iq_ref;   // src/foc_pipeline.c
extern volatile uint32_t  g_isr_count;    // src/isr.c

// KCL phase-current reconstruction selector (0=none,1=U,2=V,3=W).
extern volatile uint16_t  g_isense_reconstruct_phase;   // src/adc_iface.c

// Cross-coupling/back-EMF feedforward toggle + captured alignment offset [deg].
extern volatile uint16_t  g_dbg_decouple_en;            // src/foc_pipeline.c
extern volatile float32_t g_dbg_align_offset_elec;      // src/foc_pipeline.c

// Outer-loop control mode (0=torque, 1=speed). See FOC_MODE_* in build_config.h.
extern volatile uint16_t  g_dbg_control_mode;           // src/foc_pipeline.c

// ---- raw <-> float bit-cast helpers (C28x: float32_t and uint32_t are 32b) --
static inline uint32_t f32_to_raw(float32_t f)
{
    union { float32_t f; uint32_t u; } c;
    c.f = f;
    return c.u;
}
static inline float32_t raw_to_f32(uint32_t u)
{
    union { float32_t f; uint32_t u; } c;
    c.u = u;
    return c.f;
}

// ---- Live references -----------------------------------------------------
static void get_id_ref(uint32_t *r){ *r = f32_to_raw(foc_get_refs()->id_ref); }
static void set_id_ref(uint32_t  r){ foc_get_refs()->id_ref = raw_to_f32(r); }

// iq_ref maps to g_dbg_iq_ref, the commandable torque reference the speed-loop
// tick latches into refs.iq_ref during RUN (writing refs.iq_ref directly would
// be overwritten every 1 kHz tick).
static void get_iq_ref(uint32_t *r){ *r = f32_to_raw(g_dbg_iq_ref); }
static void set_iq_ref(uint32_t  r){ g_dbg_iq_ref = raw_to_f32(r); }

// omega_ref is the electrical speed setpoint [rad/s] consumed by the speed PI in
// FOC_MODE_SPEED. The GUI converts to/from shaft RPM using pole_pairs.
static void get_omega_ref(uint32_t *r){ *r = f32_to_raw(foc_get_refs()->speed_ref); }
static void set_omega_ref(uint32_t  r){ foc_get_refs()->speed_ref = raw_to_f32(r); }

// ---- Gains (needs_idle) --------------------------------------------------
static void get_kp_d(uint32_t *r){ *r = f32_to_raw(foc_get_gain(FOC_GAIN_KP_D)); }
static void set_kp_d(uint32_t  r){ foc_set_gain(FOC_GAIN_KP_D, raw_to_f32(r)); }
static void get_ki_d(uint32_t *r){ *r = f32_to_raw(foc_get_gain(FOC_GAIN_KI_D)); }
static void set_ki_d(uint32_t  r){ foc_set_gain(FOC_GAIN_KI_D, raw_to_f32(r)); }
static void get_kp_q(uint32_t *r){ *r = f32_to_raw(foc_get_gain(FOC_GAIN_KP_Q)); }
static void set_kp_q(uint32_t  r){ foc_set_gain(FOC_GAIN_KP_Q, raw_to_f32(r)); }
static void get_ki_q(uint32_t *r){ *r = f32_to_raw(foc_get_gain(FOC_GAIN_KI_Q)); }
static void set_ki_q(uint32_t  r){ foc_set_gain(FOC_GAIN_KI_Q, raw_to_f32(r)); }
static void get_kp_w(uint32_t *r){ *r = f32_to_raw(foc_get_gain(FOC_GAIN_KP_W)); }
static void set_kp_w(uint32_t  r){ foc_set_gain(FOC_GAIN_KP_W, raw_to_f32(r)); }
static void get_ki_w(uint32_t *r){ *r = f32_to_raw(foc_get_gain(FOC_GAIN_KI_W)); }
static void set_ki_w(uint32_t  r){ foc_set_gain(FOC_GAIN_KI_W, raw_to_f32(r)); }

// ---- Hardware / diagnostic config (needs_idle) ---------------------------
// Reconstruct selector clamps to the valid 0..3 range; out-of-range writes are
// ignored so the live value never goes undefined (the GUI dropdown also bounds it).
static void get_recon(uint32_t *r){ *r = (uint32_t)g_isense_reconstruct_phase; }
static void set_recon(uint32_t  r){ if(r <= 3U) g_isense_reconstruct_phase = (uint16_t)r; }

// Decoupling feedforward toggle. Live (no NEEDS_IDLE) so it can be A/B'd in RUN.
static void get_decouple(uint32_t *r){ *r = (uint32_t)g_dbg_decouple_en; }
static void set_decouple(uint32_t  r){ g_dbg_decouple_en = (uint16_t)(r ? 1U : 0U); }

// Control mode: 0=torque, 1=speed. Live (no NEEDS_IDLE) — the speed loop makes
// the switch bumpless. Out-of-range writes clamp to torque.
static void get_mode(uint32_t *r){ *r = (uint32_t)g_dbg_control_mode; }
static void set_mode(uint32_t  r){ g_dbg_control_mode = (r == FOC_MODE_SPEED)
                                                        ? FOC_MODE_SPEED : FOC_MODE_TORQUE; }

// ---- Read-only telemetry -------------------------------------------------
static void get_state(uint32_t *r){ *r = (uint32_t)(uint16_t)sm_get_state(); }
static void get_isr_count(uint32_t *r){ *r = g_isr_count; }
static void get_align_off(uint32_t *r){ *r = f32_to_raw(g_dbg_align_offset_elec); }

// Motor pole-pairs (compile-time constant) — lets the GUI convert shaft RPM
// <-> electrical rad/s for the speed setpoint and the measured-speed readout.
static void get_pole_pairs(uint32_t *r){ *r = (uint32_t)MOTOR_POLE_PAIRS; }
// Live measured electrical speed [rad/s]; GUI displays it as shaft RPM.
static void get_omega_meas(uint32_t *r){ *r = f32_to_raw(foc_get_signals()->omega_elec); }

//=============================================================================
const param_entry_t g_param_table[] =
{
    { 0x0001U, PARAM_TYPE_F32, 0,                     "id_ref",    get_id_ref,    set_id_ref    },
    { 0x0002U, PARAM_TYPE_F32, 0,                     "iq_ref",    get_iq_ref,    set_iq_ref    },
    { 0x0003U, PARAM_TYPE_F32, 0,                     "omega_ref", get_omega_ref, set_omega_ref },

    { 0x0010U, PARAM_TYPE_F32, PARAM_FLAG_NEEDS_IDLE, "kp_d",      get_kp_d,      set_kp_d      },
    { 0x0011U, PARAM_TYPE_F32, PARAM_FLAG_NEEDS_IDLE, "ki_d",      get_ki_d,      set_ki_d      },
    { 0x0012U, PARAM_TYPE_F32, PARAM_FLAG_NEEDS_IDLE, "kp_q",      get_kp_q,      set_kp_q      },
    { 0x0013U, PARAM_TYPE_F32, PARAM_FLAG_NEEDS_IDLE, "ki_q",      get_ki_q,      set_ki_q      },
    { 0x0020U, PARAM_TYPE_F32, PARAM_FLAG_NEEDS_IDLE, "kp_w",      get_kp_w,      set_kp_w      },
    { 0x0021U, PARAM_TYPE_F32, PARAM_FLAG_NEEDS_IDLE, "ki_w",      get_ki_w,      set_ki_w      },

    { 0x0030U, PARAM_TYPE_U16, PARAM_FLAG_NEEDS_IDLE, "isense_recon", get_recon,  set_recon     },
    { 0x0031U, PARAM_TYPE_U16, 0,                     "decouple_en",  get_decouple, set_decouple },
    { 0x0032U, PARAM_TYPE_U16, 0,                     "control_mode", get_mode,     set_mode     },

    { 0x0100U, PARAM_TYPE_U16, PARAM_FLAG_RO,         "state",      get_state,     0            },
    { 0x0101U, PARAM_TYPE_U32, PARAM_FLAG_RO,         "isr_count",  get_isr_count, 0            },
    { 0x0102U, PARAM_TYPE_F32, PARAM_FLAG_RO,         "align_offset", get_align_off, 0          },
    { 0x0103U, PARAM_TYPE_U16, PARAM_FLAG_RO,         "pole_pairs", get_pole_pairs, 0           },
    { 0x0104U, PARAM_TYPE_F32, PARAM_FLAG_RO,         "omega_meas", get_omega_meas, 0           },
};

const uint16_t g_param_count = (uint16_t)(sizeof(g_param_table) / sizeof(g_param_table[0]));

const param_entry_t * param_find(uint16_t id)
{
    uint16_t i;
    for(i = 0; i < g_param_count; i++)
    {
        if(g_param_table[i].id == id) return &g_param_table[i];
    }
    return 0;
}

uint16_t param_read(uint16_t id, uint16_t *out_type, uint32_t *out_raw)
{
    const param_entry_t *e = param_find(id);
    if(e == 0) return PARAM_WR_BAD_ID;
    *out_type = e->type;
    e->get(out_raw);
    return PARAM_WR_OK;
}

uint16_t param_write(uint16_t id, uint32_t raw)
{
    const param_entry_t *e = param_find(id);
    if(e == 0) return PARAM_WR_BAD_ID;
    if((e->flags & PARAM_FLAG_RO) || e->set == 0) return PARAM_WR_RO;
    if((e->flags & PARAM_FLAG_NEEDS_IDLE) && (sm_get_state() != FOC_IDLE))
        return PARAM_WR_NEEDS_IDLE;
    e->set(raw);
    return PARAM_WR_OK;
}

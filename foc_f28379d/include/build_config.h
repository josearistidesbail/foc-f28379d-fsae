//=============================================================================
// build_config.h
//
// Single funnel for picking a hardware + motor + sensor variant at build time.
// Each CCS build configuration must predefine ONE symbol from each group:
//
//   Hardware:  HW_BOOSTXL_DRV8305    | HW_CONTROL_BOARD_V2
//   Motor:     MOTOR_TEKNIC_M2310P   | MOTOR_EMRAX_208
//   Sensor:    SENSOR_QEP            | SENSOR_RM44AC
//
// Every other source includes this header first.
//=============================================================================
#ifndef BUILD_CONFIG_H
#define BUILD_CONFIG_H

//----- Hardware (inverter / power stage) ----------------------------------
#if   defined(HW_BOOSTXL_DRV8305)
  #include "config/hw/hw_boostxl_drv8305.h"
#elif defined(HW_CONTROL_BOARD_V2)
  #include "config/hw/hw_control_v2.h"
#else
  #error "No hardware variant defined. Predefine HW_BOOSTXL_DRV8305 or HW_CONTROL_BOARD_V2."
#endif

//----- Motor --------------------------------------------------------------
#if   defined(MOTOR_TEKNIC_M2310P)
  #include "config/motor/motor_teknic_m2310p.h"
  #include "config/gains/gains_teknic.h"
#elif defined(MOTOR_EMRAX_208)
  #include "config/motor/motor_emrax_208.h"
  #include "config/gains/gains_emrax.h"
#else
  #error "No motor variant defined. Predefine MOTOR_TEKNIC_M2310P or MOTOR_EMRAX_208."
#endif

//----- Angle sensor -------------------------------------------------------
#if   defined(SENSOR_QEP)
  #include "config/sensor/sensor_qep.h"
  #define SENSOR_BACKEND_QEP    1
  #define SENSOR_BACKEND_RM44AC 0
#elif defined(SENSOR_RM44AC)
  #include "config/sensor/sensor_rm44ac.h"
  #define SENSOR_BACKEND_QEP    0
  #define SENSOR_BACKEND_RM44AC 1
#else
  #error "No angle sensor defined. Predefine SENSOR_QEP or SENSOR_RM44AC."
#endif

//----- System-wide constants ---------------------------------------------
#define SYS_CLK_HZ              200000000UL        // F28379D max
#define FOC_ISR_FREQ_HZ         10000.0f           // current loop / PWM carrier
#define FOC_ISR_TS              (1.0f / FOC_ISR_FREQ_HZ)
#define SPEED_LOOP_DECIM        10                 // 1 kHz outer loop
#define SPEED_LOOP_TS           (FOC_ISR_TS * (float)SPEED_LOOP_DECIM)

//----- DC-bus voltage low-pass (variant-agnostic) ------------------------
// First-order IIR on the measured bus, applied in adc_read_vbus() every ISR so
// the UV/OV trips, the PI voltage clamp and the scope all consume a de-noised
// value (the raw bus is spike-noisy on a high-Z sensor divider, nuisance-
// tripping the instantaneous UV compare). alpha = clamp(2*pi*fc*Ts, 0..1); the
// approx is exact enough well below fs/10 (=1 kHz here). Live-tunable via the
// vbus_filt_en / vbus_filt_hz params; a hw header may override the defaults.
#define VBUS_FILT_ALPHA(hz)     (2.0f * 3.14159265f * (hz) * FOC_ISR_TS)
#ifndef VBUS_FILT_DEFAULT_EN
#define VBUS_FILT_DEFAULT_EN    1U
#endif
#ifndef VBUS_FILT_DEFAULT_HZ
#define VBUS_FILT_DEFAULT_HZ    50.0f
#endif

//----- Control mode (outer-loop source of iq_ref) -------------------------
#define FOC_MODE_TORQUE         0U   // iq_ref commanded directly (bring-up)
#define FOC_MODE_SPEED          1U   // iq_ref from the speed PI (omega_ref)

//----- Bench bypass default ----------------------------------------------
// Only the Control_V2 header defines this (set to 1 during power-stage-less
// bring-up). Everything else defaults to 0 = module-fault protection ACTIVE.
#ifndef BENCH_NO_POWER_STAGE
#define BENCH_NO_POWER_STAGE    0U
#endif

// Bench DC-bus override + UV-bypass defaults. Only the Control_V2 header sets the
// bench values; everything else defaults to "off" (control uses the measured bus,
// UV trip armed).
#ifndef VBUS_OVERRIDE_DEFAULT_V
#define VBUS_OVERRIDE_DEFAULT_V 0.0f
#endif
#ifndef UV_FAULT_EN_DEFAULT
#define UV_FAULT_EN_DEFAULT     1U
#endif

#endif // BUILD_CONFIG_H

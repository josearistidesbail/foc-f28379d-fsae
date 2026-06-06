//=============================================================================
// hw_control_v2.h
//
// Custom Control_Board_v2 (KiCad) -- production inverter for EMRAX 208.
//
// EDIT these constants to match your schematic. Each block is annotated with
// the schematic net it tracks; do a 1:1 audit before powering up.
//=============================================================================
#ifndef HW_CONTROL_V2_H
#define HW_CONTROL_V2_H

#define HW_NAME                 "Control_Board_v2"

// ---- ePWM mapping ------------------------------------------------------
// TODO[control_v2]: confirm against PCB net labels HS_U/LS_U/HS_V/LS_V/...
#define PWM_U_BASE              EPWM1_BASE
#define PWM_V_BASE              EPWM2_BASE
#define PWM_W_BASE              EPWM3_BASE
#define PWM_FREQ_HZ             10000.0f
#define PWM_DEADBAND_NS         1500U       // larger for high-power IGBT/SiC

// ---- ADC mapping (phase currents via LEM / closed-loop shunt amp) ------
// TODO[control_v2]: set channel numbers from schematic.
#define ADC_BASE_IU             ADCA_BASE
#define ADC_CH_IU               ADC_CH_ADCIN0
#define ADC_BASE_IV             ADCB_BASE
#define ADC_CH_IV               ADC_CH_ADCIN0
#define ADC_BASE_IW             ADCC_BASE
#define ADC_CH_IW               ADC_CH_ADCIN0
#define ADC_BASE_VBUS           ADCA_BASE
#define ADC_CH_VBUS             ADC_CH_ADCIN14

// ---- Resolver SIN/COS analog inputs -----------------------------------
#define ADC_BASE_RES_SIN        ADCB_BASE
#define ADC_CH_RES_SIN          ADC_CH_ADCIN14
#define ADC_BASE_RES_COS        ADCC_BASE
#define ADC_CH_RES_COS          ADC_CH_ADCIN14

// ---- ISENSE scaling ---------------------------------------------------
// Example for a LEM HASS-300S (300 A, +/-2.5 V into 2.5V bias):
//   I = (code - 2048) * 3.0 / 4096 / (V_per_A)
#define LEM_V_PER_A             0.00667f    // 2.0 V / 300 A
#define ADC_VREF_V              3.0f
#define ADC_FULL_SCALE_CODE     4096.0f
#define ISENSE_AMPS_PER_CODE    (ADC_VREF_V / ADC_FULL_SCALE_CODE / LEM_V_PER_A)
#define ISENSE_ZERO_CODE        2048

#define ISENSE_SIGN_U           (+1.0f)
#define ISENSE_SIGN_V           (+1.0f)
#define ISENSE_SIGN_W           (+1.0f)

// ---- VBUS sense -------------------------------------------------------
// HV divider 470k / (470k + 4.7k) -> 1/100.97
#define VBUS_DIVIDER_RATIO      100.97f
#define VBUS_VOLTS_PER_CODE     (ADC_VREF_V * VBUS_DIVIDER_RATIO / ADC_FULL_SCALE_CODE)

// ---- RM44AC notes -------------------------------------------------------
// The RM44AC is a magnetic sin/cos angle sensor (already-demodulated Va/Vb
// at 90 deg). No excitation drive, no carrier demod -- the angle is
// atan2f(sin, cos) directly. Wire SIN/COS to the ADC channels above.

// ---- GPIO -------------------------------------------------------------
// TODO[control_v2]: confirm GPIO numbers
#define GATE_DRV_EN_GPIO        22U
#define LED_STATUS_GPIO         31U
#define SCOPE_PIN_ISR_GPIO      67U

// ---- Power-module digital fault flags (6PS04512E43W39693) --------------
// The intelligent power module exposes discrete fault outputs (one per phase
// overcurrent, plus overtemperature and DC-link overvoltage) instead of a
// single nFAULT. These same pins are routed into the ePWM trip-zone via the
// Input X-BAR (SysConfig) for a CPU-independent HW shutdown; firmware also
// reads them here as a software backstop and for diagnostics.
// TODO[control_v2]: set the GPIO numbers AND polarity from the schematic.
// MODULE_FAULT_ACTIVE_LOW = 1 -> a fault pulls the line LOW (open-collector);
// the Input X-BAR inversion configured in SysConfig must match this.
#define MODULE_OC_A_GPIO        24U     // phase-A overcurrent
#define MODULE_OC_B_GPIO        25U     // phase-B overcurrent
#define MODULE_OC_C_GPIO        26U     // phase-C overcurrent
#define MODULE_OT_GPIO          27U     // overtemperature
#define MODULE_DCOV_GPIO        28U     // DC-link overvoltage
#define MODULE_FAULT_ACTIVE_LOW 1U      // 1 = asserted when pin LOW

// Bit positions returned by inverter_fault_status() / snapshotted on a fault.
#define MODULE_FLT_OC_A         (1U << 0)
#define MODULE_FLT_OC_B         (1U << 1)
#define MODULE_FLT_OC_C         (1U << 2)
#define MODULE_FLT_OT           (1U << 3)
#define MODULE_FLT_DCOV         (1U << 4)

#endif // HW_CONTROL_V2_H

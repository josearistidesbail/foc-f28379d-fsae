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

// ---- Resolver excitation output ---------------------------------------
// DAC-A drives an external power buffer to the RM44AC primary.
// LUT-driven from a CPU-timer ISR at EXC_LUT_RATE_HZ samples/s; the LUT
// produces EXC_FREQ_HZ sine. Adjust DAC_PEAK to match buffer span.
#define EXC_FREQ_HZ             10000.0f
#define EXC_LUT_LEN             32U
#define EXC_LUT_RATE_HZ         (EXC_FREQ_HZ * EXC_LUT_LEN)
#define EXC_DAC_BASE            DACA_BASE
#define EXC_DAC_PEAK            2048U       // half of full-scale, biased at 2048
#define EXC_DAC_BIAS            2048U

// ---- GPIO -------------------------------------------------------------
// TODO[control_v2]: confirm GPIO numbers
#define GATE_DRV_EN_GPIO        22U
#define GATE_DRV_NFAULT_GPIO    23U
#define LED_STATUS_GPIO         31U
#define SCOPE_PIN_ISR_GPIO      67U

#endif // HW_CONTROL_V2_H

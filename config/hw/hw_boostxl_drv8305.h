//=============================================================================
// hw_boostxl_drv8305.h
//
// BOOSTXL-DRV8305EVM  -- 3-phase BLDC gate-driver BoosterPack on the
// LAUNCHXL-F28379D in BoosterPack site 1.
//
// References:
//   - BOOSTXL-DRV8305EVM user guide (SLVUAI8)
//   - DRV8305 datasheet (SLVSCX2)
//=============================================================================
#ifndef HW_BOOSTXL_DRV8305_H
#define HW_BOOSTXL_DRV8305_H

#define HW_NAME                 "BOOSTXL-DRV8305"

// ---- ePWM mapping (BoosterPack site 1) ---------------------------------
//  ePWM6 -> phase U  (GPIO10, GPIO11)
//  ePWM5 -> phase V  (GPIO8,  GPIO9)
//  ePWM1 -> phase W  (GPIO0,  GPIO1)  <- also produces the master SOC.
#define PWM_U_BASE              EPWM6_BASE
#define PWM_V_BASE              EPWM5_BASE
#define PWM_W_BASE              EPWM1_BASE
#define PWM_FREQ_HZ             10000.0f
#define PWM_DEADBAND_NS         500U

// ---- ADC mapping --------------------------------------------------------
// Per official BOOSTXL-DRV8305EVM + LAUNCHXL-F28379D BoosterPack pinout:
//   Iu (ISENSE_A / SO1) -> BP27 -> C2 (R3)
//   Iv (ISENSE_B / SO2) -> BP28 -> B2 (V3)
//   Iw (ISENSE_C / SO3) -> BP29 -> A2 (U2)
//   Vbus (VSENSE_VDD)   -> BP26 -> A3 (T2)
#define ADC_BASE_IU             ADCC_BASE
#define ADC_CH_IU               ADC_CH_ADCIN2
#define ADC_BASE_IV             ADCB_BASE
#define ADC_CH_IV               ADC_CH_ADCIN2
#define ADC_BASE_IW             ADCA_BASE
#define ADC_CH_IW               ADC_CH_ADCIN2
#define ADC_BASE_VBUS           ADCA_BASE
#define ADC_CH_VBUS             ADC_CH_ADCIN3

// ---- ISENSE scaling -----------------------------------------------------
// DRV8305 has programmable SOx gain. Default after init = 10 V/V.
// Shunt = 7 mOhm. ADC ref = 3.0 V, 12-bit -> 4096 codes.
// V_at_ADC = I * R_shunt * Gain + 1.65V (bidirectional bias).
//   I = (code - 2048) * 3.0 / 4096 / (Gain * R_shunt)
#define DRV8305_SO_GAIN_VPV     10.0f       // must match register cfg in inverter_drv8305.c
#define DRV8305_R_SHUNT_OHM     0.007f
#define ADC_VREF_V              3.0f
#define ADC_FULL_SCALE_CODE     4096.0f
#define ISENSE_AMPS_PER_CODE    (ADC_VREF_V / ADC_FULL_SCALE_CODE \
                                 / (DRV8305_SO_GAIN_VPV * DRV8305_R_SHUNT_OHM))
#define ISENSE_ZERO_CODE        2048

// ---- VBUS sense ---------------------------------------------------------
// BoosterPack divider 4.7k / (4.7k + 78.7k) = 1/17.74. ADC ref 3.0V.
#define VBUS_DIVIDER_RATIO      17.74f
#define VBUS_VOLTS_PER_CODE     (ADC_VREF_V * VBUS_DIVIDER_RATIO / ADC_FULL_SCALE_CODE)

// ---- GPIO -------------------------------------------------------------
#define DRV8305_EN_GATE_GPIO    124U        // J5.61 SPI chip select / EN
#define DRV8305_NFAULT_GPIO     125U
#define DRV8305_SPI_BASE        SPIA_BASE
#define LED_STATUS_GPIO         31U         // D9 on LaunchPad
#define SCOPE_PIN_ISR_GPIO      67U         // free pin for ISR timing probe

// ---- Current sense polarity -------------------------------------------
// DRV8305 SOx convention: rising voltage = current FROM bridge into motor.
// Set to +1 if KCL ABC sums to ~0 with motor running, else flip per channel.
#define ISENSE_SIGN_U           (+1.0f)
#define ISENSE_SIGN_V           (+1.0f)
#define ISENSE_SIGN_W           (+1.0f)

#endif // HW_BOOSTXL_DRV8305_H

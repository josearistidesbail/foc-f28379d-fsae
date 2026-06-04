#ifndef BOARD_CONFIG_H
#define BOARD_CONFIG_H

/*
 * F28379D LaunchPad + DRV8305 BoostXL pin map and peripheral selection.
 *
 * Pinout follows the BoostXL-DRV8305EVM rev. A wired to BoosterPack site 1.
 * Verify against your hardware before changing any of these.
 */

#define SYSCLK_HZ               200000000UL
#define LSPCLK_HZ               (SYSCLK_HZ / 4U)

/* ---- 3-phase inverter PWM (ePWM1/2/3, GPIO0..5) ---- */
#define PWM_FREQ_HZ             20000U
#define PWM_DEADTIME_NS         75U
/* Up-down counter: TBPRD = Fsys / (2 * Fpwm). 200 MHz / 40 kHz = 5000. */
#define PWM_TBPRD               (uint16_t)((SYSCLK_HZ) / (2U * PWM_FREQ_HZ))

/* ---- Phase current sense (DRV8305 shunt amps -> ADC) ---- USER-VERIFIED.
 *   ISENA -> ADCC-IN2
 *   ISENB -> ADCB-IN2
 *   ISENC -> ADCA-IN2
 * All three SOCs use the ePWM1 SOCA trigger so the three currents are
 * sampled simultaneously every PWM period.
 *
 * The original Simulink code only read two phases and reconstructed the
 * third via KCL. We sample all three here -- it is "free" once the SOCs
 * are configured, and it lets the algorithm pick a more robust pair or
 * do a redundancy check. The ADC-A SOC's result also gives us the EOC
 * interrupt that drives the FOC loop. */
#define ADC_IA_RESULT_REG       AdccResultRegs.ADCRESULT0
#define ADC_IB_RESULT_REG       AdcbResultRegs.ADCRESULT0
#define ADC_IC_RESULT_REG       AdcaResultRegs.ADCRESULT0

/* DC bus voltage (VSENPVDD on ADCA-IN3, BoostXL 169k/4.99k divider). */
#define ADC_VBUS_RESULT_REG     AdcaResultRegs.ADCRESULT1

/* Phase voltage sense (back-EMF observer) - wired but unused by FOC+QEP.
 *   VSENA -> ADCA-IN14 (or ADCB-IN14; pin is shared, verify silkscreen)
 *   VSENB -> ADCC-IN3
 *   VSENC -> ADCB-IN3
 * Not initialised by hal_adc; uncomment SOCs there if you ever need them. */

/* ADC sample-and-hold window in SYSCLK cycles. */
#define ADC_ACQPS               14U

/* The base-rate ISR fires on the ADC-B SOC0 EOC (matches original behavior). */
#define ADC_EOC_INT_NUMBER      1U

/* ---- Gate driver (DRV8305 via SPI-A) ---- */
#define DRV8305_SPI_MODULE      SPIA_BASE
#define DRV8305_SPI_BITRATE     5000000U
#define DRV8305_GPIO_MOSI       58
#define DRV8305_GPIO_MISO       59
#define DRV8305_GPIO_CLK        60
#define DRV8305_GPIO_CS         61
#define DRV8305_GPIO_ENABLE     124   /* EN_GATE - confirmed against generated code */
#define DRV8305_GPIO_NFAULT     19    /* nFAULT input (was unused in original) */
/* WAKE is on GPIO125. It is left as a high-Z input at reset, which keeps the
 * DRV8305 awake via its internal pull. Do not configure it unless you want
 * to drive the chip into sleep mode. */

/* ---- Encoder (eQEP1) ---- */
#define QEP_GPIO_A              20
#define QEP_GPIO_B              21
#define QEP_GPIO_INDEX          99
#define QEP_LINES_PER_REV       1000U                       /* optical lines */
#define QEP_COUNTS_PER_MECH_REV (QEP_LINES_PER_REV * 4U)    /* 4x decode */

/* ---- Debug LEDs (LaunchPad) ---- */
#define LED_GPIO_BLUE           31
#define LED_GPIO_RED            34

/* ---- DC bus and current-sense scaling ---- */
/* Resistor divider on the BoostXL: 4.99k / (4.99k + 169k) = 0.0287. */
#define VBUS_VOLTS_PER_COUNT    (3.3f / 4096.0f / 0.0287f)
/* DRV8305 amp gain = 10 V/V, shunt = 7 mΩ -> 70 mV/A.  3.3V/4096 LSB. */
#define ISENSE_GAIN_VPERA       (0.007f * 10.0f)
#define ISENSE_AMPS_PER_COUNT   (3.3f / 4096.0f / ISENSE_GAIN_VPERA)
#define ISENSE_ZERO_COUNT       2048U   /* nominal mid-rail offset */

#endif

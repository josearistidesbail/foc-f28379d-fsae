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
//  ePWM1 -> phase U  (GPIO0, GPIO1)  <- also produces the master SOC.
//  ePWM2 -> phase V  (GPIO2, GPIO3)
//  ePWM3 -> phase W  (GPIO4, GPIO5)
#ifndef PWM_U_BASE
#define PWM_U_BASE              EPWM1_BASE
#endif
#ifndef PWM_V_BASE
#define PWM_V_BASE              EPWM2_BASE
#endif
#ifndef PWM_W_BASE
#define PWM_W_BASE              EPWM3_BASE
#endif
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

// ---- ADC result register + SOC index per signal (must match SysConfig) -
// adc_iface.c reads these (result-base, SOC) pairs; isr.c + adc_calibrate_offsets
// use the EOC interrupt below. They mirror the SysConfig SOC allocation 1:1:
//   ADCC SOC0=Iu, ADCB SOC1=Iv, ADCA SOC2=Iw, ADCA SOC3=Vbus, INT1 on ADCA SOC3.
#define ADC_RESULT_BASE_IU      ADCCRESULT_BASE
#define ADC_SOC_IU              0U
#define ADC_RESULT_BASE_IV      ADCBRESULT_BASE
#define ADC_SOC_IV              1U
#define ADC_RESULT_BASE_IW      ADCARESULT_BASE
#define ADC_SOC_IW              2U
#define ADC_RESULT_BASE_VBUS    ADCARESULT_BASE
#define ADC_SOC_VBUS            3U
// EOC interrupt that fires the 10 kHz ISR (last SOC of the busiest ADC, = ADCA).
#define ADC_ISR_INT_BASE        ADCA_BASE
#define ADC_ISR_INT_NUMBER      ADC_INT_NUMBER1

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
// Nominal BoosterPack divider 4.7k / (4.7k + 78.7k) = 1/17.74. Bench measurement
// disagrees: the effective ratio is ~13.13 (a divider property, independent of
// supply). At the 24 V bench that reads ~2496 codes -> 24*4096/(3.0*2496) =
// 13.13. Using the measured value so firmware vbus tracks the real supply (and
// SVGEN modulation, which divides applied volts by vbus, is correct). The
// nominal 17.74 over-reads vbus, which both falsely tripped the 18 V
// undervoltage check in RUN and crushed SVGEN modulation during ALIGN.
// Re-verify against a meter at the bench supply voltage; tweak if firmware vbus
// disagrees with the supply readout.
#define VBUS_DIVIDER_RATIO      13.13f
#define VBUS_VOLTS_PER_CODE     (ADC_VREF_V * VBUS_DIVIDER_RATIO / ADC_FULL_SCALE_CODE)

// ---- GPIO -------------------------------------------------------------
// DRV8305 EN_GATE: active-high, enables gate outputs. Must stay high
// during SPI register writes — distinct from SPI chip select.
#define DRV8305_EN_GATE_GPIO    124U        // ENGATE
// DRV8305 WAKE: must be driven HIGH for normal (non-sleep) operation.
#define DRV8305_WAKE_GPIO       125U        // WAKE
// DRV8305 nFAULT: open-drain active-low fault indicator.
#define DRV8305_NFAULT_GPIO     19U         // FAULT (active-low)
#define DRV8305_SCS_GPIO        61U         // SCS / SPISTEA pin, manually driven as CS
// DRV8305_SPI_BASE is generated in syscfg/board.h (SPIA_BASE).
#define LED_STATUS_GPIO         31          // D9 on LaunchPad; also in board.h
#define SCOPE_PIN_ISR_GPIO      67U         // free pin for ISR timing probe

// ---- Current sense polarity -------------------------------------------
// All three DRV8305 SOx amps are identical channels, so the physically
// consistent set is the same sign on all three. U=+1 is proven (closed Id
// loop is stable: +Vd@theta=0 drives +Iu = +Id). W was -1, which inverted the
// Iq feedback: with V reconstructed (Iv=-Iu-Iw) the q-axis is
// Iq=(-Iu-2*Iw)/sqrt3, so a wrong W sign makes +Vq produce -Iq -> the Iq PI
// becomes positive feedback and rails Vq -> software OC trip a fraction of a
// second after RUN/ALIGN. Set W=+1 to match U. [2026-05-31 BENCH]
// V is currently reconstructed via KCL (see ISENSE_RECONSTRUCT_PHASE) so its
// sign is inert; set to +1 by analogy with U/W (UNVERIFIED until SO2 is fixed).
#define ISENSE_SIGN_U           (+1.0f)
#define ISENSE_SIGN_V           (+1.0f)
#define ISENSE_SIGN_W           (+1.0f)

// ---- KCL phase-current reconstruction (dead SOx amp) -------------------
// When one DRV8305 SOx current-sense amp is dead, reconstruct that phase's
// current from the other two via KCL (Iu + Iv + Iw = 0). The dead phase's own
// ADC reading is discarded and replaced; the two healthy channels must read
// correctly. Set ISENSE_RECONSTRUCT_PHASE to the dead phase:
//     0 = none (all three SOx healthy)
//     1 = U (SO1 / ADCC-C2)
//     2 = V (SO2 / ADCB-B2)
//     3 = W (SO3 / ADCA-A2)
// [2026-05-31 BENCH] Replacement BOOSTXL has SO2 (phase V) dead — flat on the
// scope while U/W show normal PWM-switched current. SO1 and SO3 verified good
// via open-loop Vd/Vq probes (Vq forces equal series current through V and W;
// W's sensor read it, V's read ~0, proving the V sense is dead, not the winding).
// Reconstruct V from the healthy U,W channels. Set back to 0 once SO2 hardware
// is fixed and Iv reads ~2048 codes at rest.
//
// This macro is now only the POWER-ON DEFAULT: it seeds the live variable
// g_isense_reconstruct_phase (src/adc_iface.c). The selector can be changed at
// runtime from the host via the "isense_recon" debug param (IDLE-only) without
// a rebuild, so experiments don't require editing/flashing this header.
#define ISENSE_RECONSTRUCT_PHASE  0

#endif // HW_BOOSTXL_DRV8305_H

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
// Control_V2 routes the gate signals on EPWM4/5/6 (NOT 1/2/3): per schematic
//   U hi/lo = EPWM4A/4B = GPIO6/7,  V = EPWM5A/5B = GPIO8/9,
//   W = EPWM6A/6B = GPIO10/11.  High-side ON = EPWMxA HIGH (active-high gate).
// EPWM4 is the master: it generates ADC SOCA and the sync for EPWM5/6.
// Guarded so the SysConfig-generated board.h (the authoritative pinmux) wins
// when included; these are the fallback for files that don't include board.h
// (e.g. pwm_iface.c). Values MUST match board_control_v2.syscfg.
#ifndef PWM_U_BASE
#define PWM_U_BASE              EPWM4_BASE
#endif
#ifndef PWM_V_BASE
#define PWM_V_BASE              EPWM5_BASE
#endif
#ifndef PWM_W_BASE
#define PWM_W_BASE              EPWM6_BASE
#endif
#define PWM_FREQ_HZ             10000.0f
#define PWM_DEADBAND_NS         1500U       // larger for high-power IGBT/SiC

// ---- ADC mapping (phase currents via LEM / closed-loop shunt amp) ------
// Two macro sets that MUST stay consistent with board_control_v2.syscfg:
//   ADC_BASE_*/ADC_CH_*       -> the analog module + channel (the SOC's soc*Channel)
//   ADC_RESULT_BASE_*/ADC_SOC_* -> the result register + SOC index adc_iface.c reads
// Control_V2 pinmap (pin name = module + channel; e.g. ADCINB4 = ADC-B ch4):
//   Iu  -> ADCINB4 (ADC-B ch4)
//   Iv  -> ADCINC4 (ADC-C ch4)
//   Iw  -> NOT WIRED -> reconstructed by KCL (Iw = -Iu - Iv); see ISENSE_RECONSTRUCT_PHASE
//   Vbus-> ADCINC2 (ADC-C ch2)
//   SIN -> ADCINA2 (ADC-A ch2)
//   COS -> ADCINB2 (ADC-B ch2)
//   Current-amp offset references (informational, not sampled): ADCINA4 (Iu), ADCINB5 (Iv).
// SOC allocation chosen so each ADC's last SOC finishes together; the EOC
// interrupt is taken on ADC-C SOC1 (Vbus), the last conversion (see ADC_ISR_*).
//   ADC-A: SOC0=SIN              ADC-B: SOC0=Iu, SOC1=COS    ADC-C: SOC0=Iv, SOC1=Vbus
#define ADC_BASE_IU             ADCB_BASE
#define ADC_CH_IU               ADC_CH_ADCIN4
#define ADC_BASE_IV             ADCC_BASE
#define ADC_CH_IV               ADC_CH_ADCIN4
#define ADC_BASE_VBUS           ADCC_BASE
#define ADC_CH_VBUS             ADC_CH_ADCIN2
#define ADC_BASE_RES_SIN        ADCA_BASE
#define ADC_CH_RES_SIN          ADC_CH_ADCIN2
#define ADC_BASE_RES_COS        ADCB_BASE
#define ADC_CH_RES_COS          ADC_CH_ADCIN2

// Result register + SOC index per signal (consumed by adc_iface.c). Iw is not
// wired; point its read at an existing SOC (its value is discarded by KCL).
#define ADC_RESULT_BASE_IU      ADCBRESULT_BASE
#define ADC_SOC_IU              0U
#define ADC_RESULT_BASE_IV      ADCCRESULT_BASE
#define ADC_SOC_IV              0U
#define ADC_RESULT_BASE_IW      ADCARESULT_BASE
#define ADC_SOC_IW              0U          // unused (KCL); reads SIN's SOC harmlessly
#define ADC_RESULT_BASE_VBUS    ADCCRESULT_BASE
#define ADC_SOC_VBUS            1U
#define ADC_RESULT_BASE_SIN     ADCARESULT_BASE
#define ADC_SOC_SIN             0U
#define ADC_RESULT_BASE_COS     ADCBRESULT_BASE
#define ADC_SOC_COS             1U
// EOC interrupt that fires the 10 kHz ISR: ADC-C SOC1 (Vbus) = the last conversion.
#define ADC_ISR_INT_BASE        ADCC_BASE
#define ADC_ISR_INT_NUMBER      ADC_INT_NUMBER1

// Phase W (Iw) is not instrumented on Control_V2 -> reconstruct it from the two
// measured phases via Kirchhoff (Iu + Iv + Iw = 0). adc_iface.c honors this at
// boot (host-overridable via the "isense_recon" debug param). 3 = W.
#define ISENSE_RECONSTRUCT_PHASE 3

// ---- ISENSE scaling ---------------------------------------------------
// Closed-loop Hall transducer (LEM-class), ~300 A nominal. Pinmap gives
// sensitivity ~8 mV/A (125 A/V). I = (code - offset) * VREF / 4096 / V_per_A.
//   !! ALL THREE numbers below are bench-VERIFY items (pinmap §6 marked them
//      "assumed"). The runtime adc_calibrate_offsets() captures the true zero
//      each CALIBRATE, so ISENSE_ZERO_CODE is only a pre-cal placeholder.
//   !! CAUTION: a 2.5 V bias on a 3.0 V VREFHI leaves only ~0.5 V (~62 A) of
//      positive-current headroom before the ADC clips -- inconsistent with a
//      bipolar +/-300 A sensor. Confirm the real bias (likely ~1.5 V / mid-scale)
//      and any AFE attenuation on the bench before closed-loop RUN.
#define LEM_V_PER_A             0.008f      // ~8 mV/A (125 A/V) per pinmap
#define ADC_VREF_V              3.0f        // VREFHI = 3.0 V (resolver 0-3.3 V clips -> confirms 3.0)
#define ADC_FULL_SCALE_CODE     4096.0f
#define ISENSE_AMPS_PER_CODE    (ADC_VREF_V / ADC_FULL_SCALE_CODE / LEM_V_PER_A)
#define ISENSE_ZERO_CODE        2048        // placeholder; overwritten by adc_calibrate_offsets()

// Sign per phase (pinmap §6 all "above (assumed)"). Confirm on the bench with a
// known current direction; flip to -1.0f if a phase reads inverted.
#define ISENSE_SIGN_U           (+1.0f)
#define ISENSE_SIGN_V           (+1.0f)
#define ISENSE_SIGN_W           (+1.0f)     // unused (W is KCL-reconstructed)

// ---- VBUS sense -------------------------------------------------------
// PrimeSTACK voltage monitor: 6.5 V out @ 900 V bus -> ratio 138.46:1, assumed
// unity output buffer. Measurement only (no HW OV shutdown in the sensor).
//   !! CLIPS: at ratio 138.46 and VREF 3.0 V the ADC saturates at ~415 V bus
//      (3.0 * 138.46). Above that Vbus reads pegged, so the SW OV trip (460 V)
//      and FW headroom math go BLIND. Need extra attenuation, or keep bus <415 V,
//      before HV operation. Flagged in docs/production_bringup.md.
#define VBUS_DIVIDER_RATIO      138.46f
#define VBUS_VOLTS_PER_CODE     (ADC_VREF_V * VBUS_DIVIDER_RATIO / ADC_FULL_SCALE_CODE)

// ---- RM44AC notes -------------------------------------------------------
// The RM44AC is a magnetic sin/cos angle sensor (already-demodulated Va/Vb
// at 90 deg). No excitation drive, no carrier demod -- the angle is
// foc_atan2(sin, cos) directly. Wire SIN/COS to the ADC channels above.
//
// Scaling: adc_read_sin_cos removes the bias and divides by the amplitude so
// sin^2+cos^2 ~= 1 (atan2 is amplitude-independent; the magnitude only feeds
// loss-of-signal). The values below are BENCH-MEASURED (2026-07-15, scope on
// the SIN pin at the ADC input): DC 2.25 V, 1.45 Vpp -> spans 1.53..2.98 V,
// i.e. bias 3072 codes / amplitude 990 codes at VREFHI 3.0 V.
//   !! These are only the BOOT scale -- the ALIGN cal sweep (SENSOR_RES_CAL_*)
//      re-measures min/max and overrides them at runtime. They still matter:
//      the angle is unusable until an align succeeds. With the old 2253/2253
//      guess the normalized sin/cos traced a circle of radius 0.44 centred at
//      (0.36, 0.36) -- which does NOT enclose the origin, so atan2 could never
//      wrap 2*pi (it swept ~-14..+104 deg and reversed) and sin^2+cos^2 never
//      reached ~1, leaving the resolver permanently "lost".
//   !! HW TODO (supersedes the old "spans 0..3.3 V and clips" note here, which
//      was never measured and is wrong in both bias and amplitude): the
//      front-end sits ~0.75 V too high and swings ~2x too small, using only 48%
//      of the ADC range with its positive peak just 25 mV below VREFHI, so
//      noise peaks do clip. Angle noise ~= sigma_noise / amplitude, and the x10
//      pole-pair multiply turns the measured 33.5 mV RMS into ~26 deg
//      ELECTRICAL RMS. Rescaling the conditioning to a 1.5 V bias / ~1.4 V
//      amplitude both halves the angle noise and removes the clipping.
#define RES_SINCOS_BIAS_CODE    3072.0f     // 2.25 V at VREF 3.0 V (measured)
#define RES_SINCOS_AMPL_CODE    990.0f      // 0.725 V amplitude (measured)

// ---- GPIO -------------------------------------------------------------
// Control_V2 has TWO gate-driver enables and NO fault-reset line:
//   GATE_DRV_EN_GPIO  (master) - held de-asserted until RUN, toggled by the
//                                state machine via inverter_enable/disable_gate().
//   GATE_DRV_EN2_GPIO (aux)    - driven asserted once at inverter_init() and
//                                left on for the whole session.
// Active levels assumed ACTIVE-HIGH (write 1 = enable) -- CONFIRM on schematic;
// flip the writes in inverter_custom_v2.c if either is active-low.
#define GATE_DRV_EN_GPIO        66U     // master enable
#define GATE_DRV_EN2_GPIO       131U    // auxiliary enable (always on)
#ifndef LED_STATUS_GPIO                 // board.h (SysConfig LED) wins when present
#define LED_STATUS_GPIO         31U     // on-board LaunchPad LED (same as Debug)
#endif
#define SCOPE_PIN_ISR_GPIO      67U     // debug ISR scope pin (unverified on Control_V2)

// ---- Power-module digital fault flags (6PS04512E43W39693) --------------
// The intelligent power module exposes discrete fault outputs (one per phase
// overcurrent, plus overtemperature and DC-link overvoltage) instead of a
// single nFAULT. These same pins are routed into the ePWM trip-zone via the
// Input X-BAR (SysConfig) for a CPU-independent HW shutdown; firmware also
// reads them here as a software backstop and for diagnostics.
// GPIO numbers from the Control_V2 pinmap §3. POLARITY still to confirm:
// assumed ACTIVE-LOW open-collector (typical IPM fault output) -> internal
// pull-up + the Input X-BAR trip routing treats LOW as the trip. CONFIRM on the
// schematic; if active-high, set MODULE_FAULT_ACTIVE_LOW 0 and invert the X-BAR.
#define MODULE_OC_A_GPIO        25U     // phase-A overcurrent
#define MODULE_OC_B_GPIO        27U     // phase-B overcurrent
#define MODULE_OC_C_GPIO        26U     // phase-C overcurrent
#define MODULE_OT_GPIO          64U     // overtemperature
#define MODULE_DCOV_GPIO        52U     // DC-link overvoltage
#define MODULE_FAULT_ACTIVE_LOW 1U      // 1 = asserted when pin LOW (ASSUMED)

// Bit positions returned by inverter_fault_status() / snapshotted on a fault.
#define MODULE_FLT_OC_A         (1U << 0)
#define MODULE_FLT_OC_B         (1U << 1)
#define MODULE_FLT_OC_C         (1U << 2)
#define MODULE_FLT_OT           (1U << 3)
#define MODULE_FLT_DCOV         (1U << 4)

// ---- Bench bring-up WITHOUT the power module connected -----------------
// With no power stage, the module's discrete OC/OT/DC-OV protection lines (and
// the on-board gate drivers that feed them) are unpowered, so they sit asserted
// and continuously trip BOTH the HW trip-zone (epwm_tz_isr -> FAULT_OVERCURRENT,
// fires in ANY state incl. IDLE) and the SW gate-driver check (inverter_is_
// faulted -> FAULT_GATE_DRIVER). Set to 1 to ignore those module-fault paths so
// the board stays in IDLE for control-board-only testing: it seeds the runtime
// g_module_faults_en flag (live-toggle via the "module_faults_en" serial param)
// and pwm_init() drops the OSHT trip-zone sources.
//   *** SET BACK TO 0 BEFORE CONNECTING THE INVERTER / POWER STAGE. ***
#define BENCH_NO_POWER_STAGE    1U

// Boot default for g_vbus_override_v ("vbus_ovr"). The VBUS sense is physically
// disconnected on this bench, so it reads ~0 and every volts-domain consumer
// dies with it (PI clamp vmax_dyn = frac*vbus/2 -> 0, SVGEN 1/vbus, FW vmax).
// 24.0 = the actual bench supply. Deliberately gated on BENCH_NO_POWER_STAGE and
// NOT a bare constant: this value BLINDS the SW overvoltage trip (it compares
// refs.vbus), so it must never survive into a build driving a real DC link.
// Clearing BENCH_NO_POWER_STAGE disarms it along with the module-fault and UV
// bypasses -- one switch for every bench workaround. Same idiom as safety.c.
#define VBUS_OVERRIDE_DEFAULT_V (BENCH_NO_POWER_STAGE ? 24.0f : 0.0f)

#endif // HW_CONTROL_V2_H

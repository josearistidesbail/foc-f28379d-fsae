//=============================================================================
// hw_control_v2.h
//
// FE_UFPR 4.0 inverter control board (KiCad repo FE_UFPR_4_0, release tag
// v4.0-release) -- production inverter for the EMRAX 208. Successor to the
// Control_Board_v2 bench board; it keeps the HW_CONTROL_BOARD_V2 variant
// macro, this file name and board_control_v2.syscfg so the CCS project and
// build configs are unchanged.
//
// Source of every value below: the board repo's S12_FIRMWARE_HANDOFF.md
// (sections 1-13, re-read from the 4.0 schematic netlist 2026-09-23). Values
// marked "bench" are design numbers that the bring-up has yet to measure.
//=============================================================================
#ifndef HW_CONTROL_V2_H
#define HW_CONTROL_V2_H

#define HW_NAME                 "FE_UFPR_4_0"

// ---- ePWM mapping ------------------------------------------------------
// Gate signals on EPWM4/5/6 (NOT 1/2/3), unchanged from Control_V2:
//   U hi/lo = EPWM4A/4B = GPIO6/7,  V = EPWM5A/5B = GPIO8/9,
//   W = EPWM6A/6B = GPIO10/11.  High-side ON = EPWMxA HIGH (active-high gate:
//   UCC27524 non-inverting, module inputs logic-high = on, 4.7k pull-down per
//   3.3 V input so a tri-stated MCU pin reads OFF).
// Board test points (15 V side, 0 / ~13.5 V): TP10 UH, TP11 UL, TP12 VH,
//   TP13 VL, TP14 WH, TP15 WL. All six read 0 while TP16 GATE_EN_3V3 is LOW.
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

// ---- Dead-zone compensation (see build_config.h DTC_* for the model) -----
// PrimeSTACK 6PS04512E43W39693, a 900 V-class IGBT stack run at a 24 V bench
// bus, so the fixed-volts tax is at its worst here relative to the commanded
// volts. Measured 2026-08-01 via the ALIGN dwell governor: phase_id_mod = 0.058
// at 24 V => Vdt ~= 0.75 * 0.058 * 24 ~= 1.04 V total (0.0435 duty). The
// dead-time term at 1.5 us / 10 kHz accounts for 0.015 duty = 0.36 V of that,
// leaving ~0.68 V of IGBT Vce(sat) + diode Vf -- a believable pair of drops at
// ~1 A on a stack sized for hundreds. Same PrimeSTACK on FE_UFPR 4.0, so the
// value carries over. RE-MEASURE at the real bus before trusting the split
// (see the caveat in build_config.h).
// [2026-11-05, FE_UFPR 4.0, 31 V bench bus] phase_id_mod = 0.0706 for 3 A =>
// total ~= 0.75 * 0.0706 = 0.053 duty (~1.64 V at 31 V). The first closed-loop
// run used 0.046 duty (~87 %, deliberately on the under-compensating side,
// since over-compensation is positive feedback around the zero crossing):
// 0.015 dead time + 0.95 V / 31 V. Note it is entered against vbus_ovr, so it
// only means real volts when the override matches the real bus.
#define DTC_VDROP_V             0.95f
#define DTC_DEFAULT_EN          1U          // closed loop never works without it on this stack

// Phase-ID dwell current target [A]. At 1 A the dead zone clamps the two legs
// that should carry -I/2 to ~0, so one dwell gives no usable sign and the
// solver rejects ("no sign pattern", status 0x0102 -- bench 2026-11-05). 3 A
// clears it with margin and still costs the supply only a few watts.
#define PHASE_ID_TARGET_A       3.0f

// ---- ADC mapping -------------------------------------------------------
// Two macro sets that MUST stay consistent with board_control_v2.syscfg:
//   ADC_BASE_*/ADC_CH_*       -> the analog module + channel (the SOC's soc*Channel)
//   ADC_RESULT_BASE_*/ADC_SOC_* -> the result register + SOC index adc_iface.c reads
// FE_UFPR 4.0 pinmap (handoff S5; every input has R + 22 nF C0G at the pin):
//   Iu (phase A) -> ADCINA5 (ADC-A ch5, J7-66)   CHANGED: was ADCINB4 on Control_V2
//   Iv (phase B) -> ADCINC4 (ADC-C ch4, J7-67)
//   Iw (phase C) -> ADCINB4 (ADC-B ch4, J7-68)   NEW: Control_V2 had no third channel
//     (phases A and C were swapped by the 4.0 routing: the old "chA" input
//      ADCINB4 now measures phase C)
//   Vbus -> ADCINC2 (ADC-C ch2, J3-27)
//   SIN  -> ADCINA2 (ADC-A ch2, J3-29)
//   COS  -> ADCINB2 (ADC-B ch2, J3-28)
// SOC allocation chosen so each ADC's last SOC finishes together; the EOC
// interrupt is taken on ADC-C SOC1 (Vbus, 512-cycle window -- the longest
// conversion, so it is always the last one to finish).
//   ADC-A: SOC0=SIN, SOC1=Iu     ADC-B: SOC0=Iw, SOC1=COS    ADC-C: SOC0=Iv, SOC1=Vbus
#define ADC_BASE_IU             ADCA_BASE
#define ADC_CH_IU               ADC_CH_ADCIN5
#define ADC_BASE_IV             ADCC_BASE
#define ADC_CH_IV               ADC_CH_ADCIN4
#define ADC_BASE_IW             ADCB_BASE
#define ADC_CH_IW               ADC_CH_ADCIN4
#define ADC_BASE_VBUS           ADCC_BASE
#define ADC_CH_VBUS             ADC_CH_ADCIN2
#define ADC_BASE_RES_SIN        ADCA_BASE
#define ADC_CH_RES_SIN          ADC_CH_ADCIN2
#define ADC_BASE_RES_COS        ADCB_BASE
#define ADC_CH_RES_COS          ADC_CH_ADCIN2

// Result register + SOC index per signal (consumed by adc_iface.c).
#define ADC_RESULT_BASE_IU      ADCARESULT_BASE
#define ADC_SOC_IU              1U
#define ADC_RESULT_BASE_IV      ADCCRESULT_BASE
#define ADC_SOC_IV              0U
#define ADC_RESULT_BASE_IW      ADCBRESULT_BASE
#define ADC_SOC_IW              0U
#define ADC_RESULT_BASE_VBUS    ADCCRESULT_BASE
#define ADC_SOC_VBUS            1U
#define ADC_RESULT_BASE_SIN     ADCARESULT_BASE
#define ADC_SOC_SIN             0U
#define ADC_RESULT_BASE_COS     ADCBRESULT_BASE
#define ADC_SOC_COS             1U
// EOC interrupt that fires the 10 kHz ISR: ADC-C SOC1 (Vbus) = the last conversion.
#define ADC_ISR_INT_BASE        ADCC_BASE
#define ADC_ISR_INT_NUMBER      ADC_INT_NUMBER1

// NOT YET SAMPLED (phase 2 of the 4.0 bring-up -- no SOC, no firmware reader).
// Recorded here so the pins are not reused. Suggested slow SOCs from handoff S5:
//   ADC-A SOC2 = ISNS_REF_A (A4), SOC3 = 3V3 monitor (A3)
//   ADC-B SOC2 = ISNS_REF_B (B5), SOC3 = motor temp  (B3)
//   ADC-C SOC2 = module NTC (C3)
// ISNS_REF_A/B are the SAME buffered current-sense reference node read by two
// converters: their difference is a live ADC-A vs ADC-B cross-check.
#define ADC_BASE_ISNS_REF_A     ADCA_BASE   // ADCINA4, J7-69
#define ADC_CH_ISNS_REF_A       ADC_CH_ADCIN4
#define ADC_BASE_ISNS_REF_B     ADCB_BASE   // ADCINB5, J7-65
#define ADC_CH_ISNS_REF_B       ADC_CH_ADCIN5
#define ADC_BASE_NTC            ADCC_BASE   // ADCINC3, J3-24: module NTC (DB37-29)
#define ADC_CH_NTC              ADC_CH_ADCIN3
#define ADC_BASE_MOT_TEMP       ADCB_BASE   // ADCINB3, J3-25: motor KTY81-210
#define ADC_CH_MOT_TEMP         ADC_CH_ADCIN3
#define ADC_BASE_RAIL_3V3       ADCA_BASE   // ADCINA3, J3-26: +3V3 / 2 (KTY reference)
#define ADC_CH_RAIL_3V3         ADC_CH_ADCIN3
// Module NTC: 12k/4.7k divider. V_ntc = 3.553 * V_adc; HOTTER = LOWER voltage
// (10.000 V at the module = 82 degC -> 2.814 V -> code ~3842).
#define NTC_DIVIDER_RATIO       3.553f
// Motor KTY81-210 (PTC, HOTTER = HIGHER code): 2.20k 0.1% pull-up from +3V3,
// rail measured through 10k/10k on A3, so
//   R_KTY = MOT_TEMP_R_TOP * V_b3 / (2*V_a3 - V_b3).
// Outside [MIN, MAX] codes = open/short sensor or over-temperature -> stop.
#define MOT_TEMP_R_TOP          2200.0f
#define MOT_TEMP_CODE_MIN       1400U
#define MOT_TEMP_CODE_MAX       3100U

// All three phases are instrumented on FE_UFPR 4.0, with the sensors fixed per
// phase (no movable clamps), so the boot map is the identity: chA = U (A5),
// chB = V (C4), chC = W (B4). The ALIGN phase-ID stage stays ON: it still
// verifies the wiring AND auto-detects the per-channel SIGN, which no datasheet
// specifies for either current source (handoff S6 "bench"). KCL reconstruction
// becomes optional (isense_recon, default 0 = none) -- keep it as a cross-check
// or as a dead-channel workaround.
#define ISENSE_NUM_CHANNELS      3
#define ISENSE_MAP_DEFAULT       0U
#define PHASE_ID_DEFAULT_EN      1U

// ---- ISENSE scaling ---------------------------------------------------
// Two current-sense sources, selected PER PHASE on the board by solder jumpers
// JP3/JP4/JP5 (1-2 = internal module sensors, factory default; 2-3 = external
// LEM LA 100-P). The board cannot report the jumper positions, so this build
// flag must mirror them -- ALL THREE jumpers on the same source:
//   0 = internal PrimeSTACK sensors (DB37 30/31/32) x0.600 differential stage,
//       bias ~1.500 V (~2048 codes), full scale +/-312 A -> the 260 A software
//       OC trip fires before the ADC saturates. Sensitivity ASSUMES the module
//       is 8.00 mV/A (4.9 V at 300 A instantaneous); if the bench shows 5.66 mV/A
//       (4.9 V at 424 A peak) this becomes 0.003396 -- handoff S14 item 1.
//   1 = LEM LA 100-P, 1:2000 into a 23.5 R burden, x0.4158 stage, bias
//       ~1.4685 V (~2005 codes), sensor-limited to +/-150 A -> the SW OC trip is
//       INERT on this path by design (validation instrument; module HW OC covers).
// Moving a jumper without re-running CALIBRATE leaves a ~31 mV (~6 A) zero
// error: the two sources' bias points differ by design.
// Plausibility tell: DB37 unplugged / module unpowered -> internal sensor 0 V ->
// reads about -312 A before CALIBRATE (and ~0 A after, since CALIBRATE then
// captures the 0-code zero). The phase OC check only runs in RUN/ALIGN.
// 2026-11-04: switched to the LEMs. The internal sensors do not idle at the
// 2.5 V the x0.6 stage assumes (bench, DB37 in, aux on: INT_A/C 0 V, INT_B
// railed), so the internal path is unusable until the stage is re-biased.
#define ISENSE_SOURCE_LEM        1U          // JP3/JP4/JP5 at 2-3 (bench 2026-11-04)
#define ISENSE_V_PER_A_INTERNAL  0.004800f   // module 8.00 mV/A (assumed) x 0.600
#define ISENSE_V_PER_A_LEM       0.004886f   // 23.5 R burden x 0.4158
#if ISENSE_SOURCE_LEM
#define ISENSE_V_PER_A           ISENSE_V_PER_A_LEM
#define ISENSE_ZERO_CODE         2005        // pre-cal seed; adc_calibrate_offsets() overwrites
// The LA 100-P saturates at about +/-150 A (0.736 / 2.201 V at the ADC pin), so
// the motor-level MOTOR_OC_TRIP_A (260 A) could never fire on this path: the
// reading clips first and the current loop goes blind up to the module's own
// 625 A trip. Cap the software phase-OC trip inside the sensor's range.
#define ISENSE_OC_TRIP_MAX_A     130.0f

#else
#define ISENSE_V_PER_A           ISENSE_V_PER_A_INTERNAL
#define ISENSE_ZERO_CODE         2048        // pre-cal seed; adc_calibrate_offsets() overwrites
#endif
#define ADC_VREF_V              3.0f        // VREFHI = 3.0 V (unchanged on 4.0)
#define ADC_FULL_SCALE_CODE     4096.0f
#define ISENSE_AMPS_PER_CODE    (ADC_VREF_V / ADC_FULL_SCALE_CODE / ISENSE_V_PER_A)

// Boot polarity per CHANNEL (slot A/B/C, not motor phase): seeds the runtime
// g_isense_inv bitmask in adc_init(). The sign of BOTH sources is unknown until
// the bench (handoff S6/S14 item 2); the ALIGN phase-ID stage detects and
// corrects it automatically (live-editable via "isense_inv"), so these only
// matter before the first align.
#define ISENSE_SIGN_U           (+1.0f)     // channel A (ADCINA5, phase U)
#define ISENSE_SIGN_V           (+1.0f)     // channel B (ADCINC4, phase V)
#define ISENSE_SIGN_W           (+1.0f)     // channel C (ADCINB4, phase W)

// ---- VBUS sense -------------------------------------------------------
// PrimeSTACK "Analog DC link voltage sensor output" (6.5 V typ at 900 V bus,
// datasheet 6.4/6.5/6.6 V => 900/6.5 = 138.46 V per sensor volt) -> board
// divider R57 3.00k / R58 2.20k 0.1% (re-picked 2026-09-26) to the Kelvin return
// VBUS_RTN -> 3.3k + 22 nF -> ADCINC2.
//   ratio = 900/6.5 * 5.20/2.20 = 327.273 -> 0.2397 V/code, full scale ~982 V
//   (the 415 V clipping caveat of the old divider is gone).
// VBUS_OFFSET_CODE is a placeholder: the old 11.4 belonged to the Control_V2
// divider. Re-measure with `python -m foc_debug vbuscal` (>= 3 metered points,
// interleaved order, see CLAUDE.md "DC-bus AFFINE calibration") and bake the
// fit in here. Below ~40 V the sensor itself is non-linear (module behaviour,
// unchanged) -- keep vbus_ovr on the 24 V bench until measured.
// Always run a calibration after changes to the front end.
#define VBUS_DIVIDER_RATIO      327.273f
#define VBUS_VOLTS_PER_CODE     (ADC_VREF_V * VBUS_DIVIDER_RATIO / ADC_FULL_SCALE_CODE)
#define VBUS_OFFSET_CODE        0.0f        // bench: re-measure (handoff S14 item 3)

// ---- RM44AC notes -------------------------------------------------------
// The RM44AC is a magnetic sin/cos angle sensor (already-demodulated Va/Vb
// at 90 deg). No excitation drive, no carrier demod -- the angle is
// foc_atan2(sin, cos) directly. Order code 01S = 1 sin/cos cycle per mech rev.
//
// Scaling: adc_read_sin_cos removes the bias and divides by the amplitude so
// sin^2+cos^2 ~= 1 (atan2 is amplitude-independent; the magnitude only feeds
// loss-of-signal). FE_UFPR 4.0 receiver (handoff S8): differential x1.20
// against a 3.00k/4.99k/12.0k reference chain, matched 2.2 nF C0G, BAT54S
// clamps. DESIGN values (bench TODO, handoff S14 item 4):
//   bias 1.4934 V = 2039 codes, amplitude 1.2782 V = 1745 codes at the nominal
//   2.2 Vpp source (incl. the sensor's 720 R output impedance). Worst-case
//   2.4 Vpp source spans 0.099..2.888 V -> no clipping.
// This is the rescale the Control_V2 logbook asked for (that board sat at
// 3072/990 = 2.25 V bias, 0.725 V amplitude, 48% of range, clipping): ~1.76x
// the amplitude, so roughly half the angle noise for the same front-end noise.
//   !! These are only the BOOT scale -- the ALIGN cal sweep (SENSOR_RES_CAL_*)
//      re-measures min/max and overrides them at runtime. They still matter:
//      the angle is unusable until an align succeeds.
// MEASURED 2026-11-05 (after the U17 pin-6 reflow): ALIGN cal sweep SIN
// 467..3633, COS 465..3639 -> bias ~2050, amplitude ~1585. Below the 1745 design
// value because this encoder sits at the low end of its 2.0-2.4 Vpp range.
#define RES_SINCOS_BIAS_CODE    2050.0f     // design 2039 (1.4934 V)
#define RES_SINCOS_AMPL_CODE    1585.0f     // design 1745 (1.2782 V at 2.2 Vpp)

// ---- GPIO -------------------------------------------------------------
// Two gate-driver enables, both ACTIVE-HIGH (confirmed on the 4.0 schematic),
// and NO fault-reset line. The PrimeSTACK has no enable pin: both are
// board-local. Board U8 (SN74LVC1G11) is a 3-input AND of
//   GPIO66 (DRV_EN_3V3) AND GPIO131 (DRV_EN_AUX_3V3, 4.7k pull-down)
//   AND GATE_ILOCK_3V3 (board solder jumper JP1: 1-2 = SW_MAIN_3V3 cockpit main
//   switch, factory default; 2-3 = +3V3 bench bypass)
// -> GATE_EN_3V3 (TP16, board LED D9) -> EN pins of all three UCC27524.
// So with JP1 at 1-2 the gates CANNOT arm unless the main switch (GPIO29) is on.
//   GATE_DRV_EN_GPIO  (master) - held de-asserted until RUN, toggled by the
//                                state machine via inverter_enable/disable_gate().
//   GATE_DRV_EN2_GPIO (aux)    - driven asserted at inverter_init() and
//                                re-asserted by every inverter_enable_gate().
#define GATE_DRV_EN_GPIO        66U     // master enable (J6-59)
#define GATE_DRV_EN2_GPIO       131U    // auxiliary enable (J6-58)
#ifndef LED_STATUS_GPIO                 // board.h (SysConfig LED) wins when present
#define LED_STATUS_GPIO         31U     // on-board LaunchPad LED (same as Debug)
#endif
#define SCOPE_PIN_ISR_GPIO      67U     // ISR scope probe: J1-5 -> TP48 ISR_PROBE_3V3

// Gate enable and PWM start-up (2026-11-03, board session + user): the
// PrimeSTACK must see ALL SIX PWM inputs LOW at start. The firmware's
// non-switching pattern is all-LOW (pwm_force_off(): AQ A and B forced LOW,
// dead band bypassed), so every gate enable rises on an all-LOW bridge and
// switching starts on the next ISR tick. The current-sense zero needs no gate
// enable on this board (module-powered sensors), so CALIBRATE keeps GATE_EN
// LOW. The only deliberate exception is the high-speed FAULT active short.
#define INVERTER_GATE_ON_FOR_CALIBRATE  0U

// Vehicle inputs (handoff S12): opto LTV-817 -> 2.2k pull-down -> SN74LVC2G17
// Schmitt -> MCU. Cockpit 12 V present -> HIGH; 0 V or open -> LOW. Read as
// plain inputs (the Schmitt drives them, no pull needed). Readback: RO param
// "sw_in" (bit0 = main, bit1 = start). NOT yet a firmware run permissive (phase
// 2) -- with JP1 at 1-2 the HARDWARE already removes the gate when main drops.
#define SW_MAIN_GPIO            29U     // J2-11, SW_MAIN_3V3, 1 = run permitted
#define SW_START_GPIO           59U     // J2-14, SW_START_3V3, 1 = start pressed

// CAN-A (SN65HVD230, 10k TX pull-up, 120 R termination on board JP6). CAN-B is
// not routable on this board. No driver yet (phase 2): the pins are left at
// their reset default (GPIO inputs) so the pull-up holds TX recessive.
#define CAN_TX_GPIO             4U      // J4-36
#define CAN_RX_GPIO             5U      // J4-35

// ---- Power-module digital fault flags (6PS04512E43W39693) --------------
// Discrete fault outputs (overcurrent, overtemperature, DC-link overvoltage)
// instead of a single nFAULT. The three OC lines are also routed into the
// ePWM trip-zone via the Input X-BAR (SysConfig, INPUT1/2/3 -> OSHT1/2/3) for a
// CPU-independent HW shutdown; firmware also reads all five as a software
// backstop and for diagnostics.
//
// POLARITY (datasheet p.2, confirmed on the 4.0 netlist): the module outputs
// are open collector, "logic low = no fault", so a FAULT is the RELEASED state
// = HIGH. Board path per line: 4.7k pull-up to +13V5_GATE -> 10k/4.7k divider ->
// SN74LVC2G17 non-inverting Schmitt -> MCU pin, so HIGH = FAULT at the MCU.
// Fail-safe: DB37 unplugged or module unpowered -> all five read HIGH = fault.
// The buffers have Ioff, so with the board unpowered the MCU pull-ups also read
// HIGH = fault (and nothing back-feeds).
//
// The ePWM trip-zone inputs are ACTIVE-LOW and the F2837xD Input X-BAR has NO
// polarity control, so an active-high fault must be inverted at the GPIO PAD
// (GPxINV, SysConfig padConfig "PULLUP_INVERT"). The pad inversion also inverts
// what GPIO_readPin() returns, so inverter_custom_v2.c reads a fault as pin == 0
// whenever MODULE_FAULT_ACTIVE_LOW != MODULE_FAULT_PAD_INVERT (and refuses to
// build a combination the trip zone would read backwards). The MCU pull-up is
// kept so an open pin still reads as a fault.
// All five pins use the same pad setting even though only OC_A/B/C feed the
// X-BAR, so every flag reads with one polarity rule.
//   !! The module asserts ALL THREE OC pins on ANY leg's overcurrent -- the
//      three bits do NOT identify the phase. Treat OC_A|OC_B|OC_C as one
//      "module OC" event. Board test points (MCU side): TP24..TP28.
#define MODULE_OC_A_GPIO        25U     // module overcurrent (DB37-2,  TP24)
#define MODULE_OC_B_GPIO        27U     // module overcurrent (DB37-22, TP25)
#define MODULE_OC_C_GPIO        26U     // module overcurrent (DB37-5,  TP26)
#define MODULE_OT_GPIO          64U     // overtemperature    (DB37-6,  TP27)
#define MODULE_DCOV_GPIO        52U     // DC-link overvoltage(DB37-16, TP28)
#define MODULE_FAULT_ACTIVE_LOW 0U      // 0 = fault is HIGH at the pin (confirmed)
#define MODULE_FAULT_PAD_INVERT 1U      // 1 = SysConfig pads are PULLUP_INVERT

// Bit positions returned by inverter_fault_status() / snapshotted on a fault.
#define MODULE_FLT_OC_A         (1U << 0)
#define MODULE_FLT_OC_B         (1U << 1)
#define MODULE_FLT_OC_C         (1U << 2)
#define MODULE_FLT_OT           (1U << 3)
#define MODULE_FLT_DCOV         (1U << 4)

// ---- Bench bring-up WITHOUT the power module connected -----------------
// With no power stage (DB37 unplugged) the module's discrete OC/OT/DC-OV lines
// read as asserted (fail-safe, see above) and continuously trip BOTH the HW
// trip-zone (epwm_tz_isr -> FAULT_OVERCURRENT, fires in ANY state incl. IDLE)
// and the SW gate-driver check (inverter_is_faulted -> FAULT_GATE_DRIVER). Set
// to 1 to ignore those module-fault paths so the board stays in IDLE for
// control-board-only testing: it seeds the runtime g_module_faults_en flag
// (live-toggle via the "module_faults_en" serial param) and pwm_init() drops
// the OSHT trip-zone sources. It is also what unlocks the bench gate-enable
// override ("gate_en_dbg"). (Open-loop "ol_run" no longer needs it: since
// 2026-11-03 it runs with protection ON too, for spinning the real motor.)
// Expected with the DB37 unplugged: RO "module_fault" = 0x1F, "tz_trip" stays 0.
// Trip-path test (bring-up D): fit the DB37 shorting plug (fault pins 2/22/5/6/16
// to GND 19/25/37) -> module_fault = 0; write module_faults_en = 1 in IDLE;
// pull one OC wire -> tz_trip increments, state FAULT.
//   *** MUST BE 0 WHENEVER THE INVERTER / POWER STAGE IS CONNECTED. ***
// 0 since 2026-11-03 (FE_UFPR 4.0: PrimeSTACK + EMRAX connected, 24 V bench).
// With a healthy module the first boot must show tz_trip 0 / fault_code 0: that
// is the check that pwm_apply_module_tz() discards Board_init's spurious OST.
#define BENCH_NO_POWER_STAGE    0U

// ---- Low-voltage bench DC link (power stage connected) -----------------
// Independent of BENCH_NO_POWER_STAGE: protection is armed, but the bus sense
// is not calibrated on this board yet (VBUS_OFFSET_CODE 0 is a placeholder,
// handoff §14) and the bench bus is far below the EMRAX UV seed (45 V). So:
//   - the CONTROL loop + OV/UV trips run on a fixed override (vbus_ovr). The
//     scope / "vbus" readout still show the live MEASURED bus -- fit it with
//     `foc_debug vbuscal`, then hand back: vbus_ovr = 0, uv_trip_v, uv_en = 1;
//   - the SW UV trip is bypassed;
//   - the commanded-current clamp ("iq_max") boots at 10 A, not the machine limit.
// All three are live params; these are only their boot values. Set to 0 for
// the real HV bus once vbuscal agrees with a meter.
#define BENCH_LOW_VOLTAGE_DC_LINK   1U      // 2026-11-03: low-voltage bench supply
// The bench bus vbus_ovr boots at. MUST match the supply: SVGEN divides by it,
// so a wrong value scales every commanded volt by real/assumed. The first
// closed-loop day ran a 31 V supply against a 24 V assumption (2026-11-05).
#define BENCH_DC_LINK_V             31.0f

#define VBUS_OVERRIDE_DEFAULT_V (BENCH_LOW_VOLTAGE_DC_LINK ? BENCH_DC_LINK_V : 0.0f)
#define UV_FAULT_EN_DEFAULT     (BENCH_LOW_VOLTAGE_DC_LINK ? 0U : 1U)
#if BENCH_LOW_VOLTAGE_DC_LINK
#define IQ_CMD_MAX_DEFAULT_A    10.0f       // build_config.h keeps it otherwise
#define OC_TRIP_DEFAULT_A       40.0f       // "oc_trip_a" boot value on the bench
// PI voltage-clamp fraction at boot ("vmax_frac"). It must clear the ~0.053-duty
// dead zone or no current flows at all: 0.05 gave zero current, 0.15 tracks
// 0->2->5 A q-steps in 1-2 ms (bench 2026-11-05). Raise it live for speed.
#define VDQ_MAX_FRAC_DEFAULT    0.15f
#endif

#endif // HW_CONTROL_V2_H

# PMSM FOC + Autotuner — clean rewrite

Outer-structure rewrite of the Simulink/Embedded-Coder output of
`mcb_pmsm_foc_autotuner_f28379d`. The original tree is ~14,000 lines across
five generated files plus an `ert_main.c`; this version is ~900 lines that
expose the architecture cleanly. The dense numerical machinery (QR
decomposition, LSQ fit, PCHIP, frequency-response math) stays in the
generated code under a wrapped interface — see `autotuner_kernels.c`.

## Files in this folder

| File | Purpose |
| ---- | ------- |
| `autotuner.h` | Constants, types, shared state, public API |
| `fast_loop.c` | step0 (50 µs) — FOC current loop |
| `slow_loops.c` | step1 (500 µs) speed PI, step2 (5 ms) autotuner driver, step3 (100 ms) mode chart, step4 (500 ms) heartbeat |
| `autotuner_kernels.h` | Clean step-interface for the preserved math |
| `autotuner_kernels.c` | Thin bridge — currently stubbed; see "Wiring" below |
| `serial_rx.c` | SCI-A RX ISR (host → board) |
| `peripheral_init.c` | One-shot board setup (ePWM, QEP, ADC, SPI, GPIO) |
| `main.c` | Scheduler, ADCINT1 dispatch, `main()` |

## What the rewrite preserves

Same algorithm, same numeric constants, same register settings as the
generated code:

- Same multi-rate split (50 µs / 500 µs / 5 ms / 100 ms / 500 ms).
- Same FOC pipeline: Clarke → Park → PI(Id)/PI(Iq) → inverse Park →
  inverse Clarke → SVPWM → ePWM CMPA. The PI uses back-calculation
  anti-windup as in the original Simulink block.
- Same QEP scaling (`1/4000`), pole-pair × electrical conversion, and
  `IndexOffset = 0.17` (from the QEP-calibration project).
- Same ADC scaling chain `cnts → V → A → per-unit` and same Ia/Ib bias
  removal.
- Same SCI-RX bit packing (enable / debug select / start-tuner /
  param-select).
- Same DRV835x ENABLE wiring on GPIO124 and heartbeat on GPIO34.
- Same ePWM register configuration (factored into one helper called three
  times instead of three near-identical blocks).

## What the rewrite does NOT do

- It does **not** rewrite the autotuner's internal math (sinestream FRD,
  Fourier correlation, complex magnitude, log-spaced frequencies, PCHIP,
  QR/LSQ plant fit, analytic gain computation). Those ~120 static
  functions stay in the generated file. `autotuner_kernels.c` is the
  thin wrapper that gives them a clean entry/exit interface.
- It does **not** include the SPI register-poking sequence for DRV835x
  initialization beyond calling `MW_SPI_init()`. If you need the bit-bang
  init sequence, keep `MW_SPI.c` from the generated tree.

## Wiring this into a project

### Option A — quickest

Link against the generated file `mcb_pmsm_foc_autotuner_f28379d.c` unchanged
and route `autotuner_kernels_step()` into the generated `step2`:

1. Drop these files into a CCS project alongside the existing generated
   files.
2. **Remove** the generated `ert_main.c` and `mcb_pmsm_foc_autotuner_f28379d_step0/1/3/4`
   from the build — those live here now.
3. Keep `mcb_pmsm_foc_autotuner_f28379d_step2` (the autotuner math).
4. In `autotuner_kernels.c`, replace the FIXME stub with calls into
   `mcb_pmsm_foc_autotuner_f28379d_step2()` and the appropriate
   `mcb_pmsm_foc_autotuner_f28379_B.*` / `_DW.*` accesses to feed inputs
   and read outputs.

### Option B — clean export

Extract just the autotuner-related statics from the generated file into a
dedicated translation unit (drop FOC, peripheral init, the other step
functions). The math itself is untouched — only its packaging changes.
Then implement `autotuner_kernels_step()` in terms of that extracted
function. About a day's work; only worth it if you want a fully
self-contained tuner library.

## External dependencies (NOT included here)

The same TI/MathWorks BSP set as the QEP calibration project, plus SPI:

- `F2837xD_*` device headers and drivers
- `DSP28xx_SciUtil.{h,c}` — SCI blocking read/write
- `MW_c28xx_qep.c` — provides `config_QEP_eQEP1`
- `MW_c28xx_adc.c`, `MW_c28xx_board.c`, `MW_c28xx_pwm.c`, `MW_c28xx_csl.c`
- `MW_SPI.c` / `MW_c28xSPI.c` — SPI master for DRV835x
- `c2000HardwareTimerConfig.c`, `c2837xDBoard_Realtime_Support.c`,
  `c28xScheduler_ADCINT1.c`
- The shared `sine_table.c` from the `clean_rewrite/` folder (or the
  equivalent `ConstParam.sine_table_values_Value` from the generated
  `mcb_pmsm_foc_autotuner_f28379d_data.c`).

## What to tune in `autotuner.h`

- `MOTOR_POLE_PAIRS`, `QEP_COUNTS_PER_REV` — motor / encoder.
- `QEP_INDEX_OFFSET_REV` — from your QEP calibration run (this matches
  the `IndexOffset = 0.17` baked into the generated code).
- `ADC_VOLTS_PER_COUNT`, `ADC_VOLTS_TO_AMPS`, `I_MAX_AMP` — your shunt /
  amplifier / per-unit scaling.
- `OPENLOOP_VD_PU`, `OPENLOOP_RAMP_RATE` — startup ramp behaviour before
  the QEP index pulse arrives.
- Initial PI gains in `slow_loops.c` — `g_pi_id`, `g_pi_iq`, `g_pi_speed`.
- Speed-loop `MAX_RPS` — full-scale for the per-unit speed reference.

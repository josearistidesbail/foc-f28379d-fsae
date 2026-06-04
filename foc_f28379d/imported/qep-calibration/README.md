# PMSM QEP Offset Calibration — clean rewrite

Hand-rewritten, readable version of the four chunks of generated code that
actually do the work in `mcb_pmsm_qep_offset_f28379d.c`. The Simulink/Embedded-Coder
output was ~2000 lines spread over five files; this version is ~700 lines
across four files.

## Files in this folder

| File | Purpose |
| ---- | ------- |
| `qep_calibration.h` | Physical constants, sequence timing, public API |
| `qep_calibration.c` | The calibration ISR, state machine, FOC pipeline |
| `peripheral_init.c` | ePWM / eQEP / ADC / GPIO setup (factored into one helper per peripheral type) |
| `sine_table.c` | The 1002-sample lookup table used by `sincos_lookup()` |

## What the rewrite preserves

Same algorithm, same numeric constants, same register-bit settings — only
the structure changed:

- One `calibration_isr()` instead of the inline 1000-line function body.
- Algorithm split into named helpers (`qep_position_counts`, `inverse_park`,
  `svpwm`, `compensate_offset`, …) so each piece can be read on its own.
- The three identical ePWM register-init blocks collapsed into one
  `configure_pwm_module(role, trigger_adc, link_to_other)` helper.
- The `Start/Data/End` action-subsystem logging dance replaced by a single
  `serial_log_frame()`.
- All literal magic numbers given a `#define` with a comment in the header.

## External dependencies (NOT included here)

These files come from TI's C2000Ware BSP and the MathWorks Embedded Coder
target package. Copy them along with this folder, or re-link against the
existing tree:

- `F2837xD_*.h` / `F2837xD_*.c` — TI device headers, PIE/Sys/CpuTimer drivers
- `DSP28xx_SciUtil.h` / `DSP28xx_SciUtil.c` — blocking SCI transmit/receive
- `MW_c28xx_qep.c` (specifically `config_QEP_eQEP1`)
- `MW_c28xx_adc.c`, `MW_c28xx_board.c`, `MW_c28xx_pwm.c`, `MW_c28xx_csl.c`
- `rtwtypes.h`, `c2000BoardSupport.h`, `MW_f2837xD_includes.h`,
  `MW_target_hardware_resources.h`
- `c2000HardwareTimerConfig.c`, `c2837xDBoard_Realtime_Support.c`,
  `c2837xDSchedulerTimer0.c` — scheduler, base-rate timer, ISR vectors
- A linker command file for the F28379D (`*.cmd`)

## Wiring this into a project

The `ert_main.c` that ships with the generated tree expects four entry
points. Map them like this:

| Generated name | Replacement |
| -------------- | ----------- |
| `mcb_pmsm_qep_offset_f28379d_initialize` | `board_peripheral_init` (peripheral_init.c) |
| `isr_int1pie2_task_fcn` (PWM ISR)        | `calibration_isr` (qep_calibration.c) |
| `isr_int9pie1_task_fcn` (SCI-A RX ISR)   | `serial_rx_isr` (qep_calibration.c) |
| `mcb_pmsm_qep_offset_f28379d_step`       | `heartbeat_tick` (qep_calibration.c) |

`g_qep_offset_rev` holds the result (mechanical revolutions, in
`[0, 1/MOTOR_POLE_PAIRS)`) once the CAPTURE phase runs.

## What to tune in `qep_calibration.h`

- `MOTOR_POLE_PAIRS` — must match the motor.
- `QEP_COUNTS_PER_REV` — encoder PPR × 4 (quadrature).
- `ISR_FREQ_HZ` — the PWM frequency the ADC SOC fires at (default 20 kHz).
- `CALIB_VD_PU` — open-loop voltage during alignment; raise it if the rotor
  doesn't snap into place during the first 2 s, lower it if you smell smoke.
- `ALIGN_END_TICKS` / `RAMP_END_TICKS` / `CALIB_END_TICKS` — sequence timing
  in ISR ticks. The defaults give 2 s / 8 s ramp / 5 s capture / 15 s total.

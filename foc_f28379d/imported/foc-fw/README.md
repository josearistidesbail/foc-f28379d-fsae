# PMSM FOC + Field Weakening — clean rewrite

A hand-written port of the Simulink `mcb_pmsm_fwc_qep_f28379d` reference for the
TI F28379D LaunchPad + DRV8305M BoostXL inverter driving a PMSM with a
quadrature encoder.

The original (auto-generated) Embedded Coder code is kept in this directory's
parent (`mcb_pmsm_fwc_qep_f28379d.c` and friends) for reference. None of it is
needed at runtime once this `src/` tree is wired into CCS.

## Layout

```
src/
  config/
    motor_config.h     Pole pairs, Rs/Ld/Lq/flux, ratings
    board_config.h     Pin map, ePWM/ADC/QEP/SPI selection, sense scaling
    control_config.h   Sample times, PI gains, per-unit base, limits
  foc/
    pmsm_types.h       vec_abc_t / vec_ab_t / vec_dq_t, state + fault enums
    transforms.h       Clarke / Park / inverse (inline)
    pi.h               PI controller w/ back-calculation anti-windup (inline)
    svpwm.h            min/max common-mode injection SVPWM (inline)
    encoder.h          QEP -> electrical angle + filtered speed (inline)
    speed_loop.h       Outer speed PI (inline)
    foc.{c,h}          Current loop: ADC -> dq -> PI(Id,Iq) -> FWC -> SVPWM
  hal/
    hal_board.{c,h}    Clocks / GPIO / LEDs
    hal_pwm.{c,h}      ePWM1/2/3 master+slave config + duty write + TZ disable
    hal_adc.{c,h}      ADCA/ADCB SOCs, EOC IRQ, current+Vbus scaling
    hal_qep.{c,h}      EQEP1 init + count read + index latch
    drv8305.{c,h}      SPIA setup + gate-driver register access
  app/
    motor_control.{c,h} State machine (idle/cal/align/run/fault) + speed ramp
    main.c              Boot, ISR install, super-loop
```

Everything that is hardware-dependent lives in `config/` and `hal/`. The
control algorithm in `foc/` and `app/` has no peripheral knowledge.

## Control flow

```
                +--------------------------------------------+
                | ePWM1 period match -> ADC SOC -> EOC IRQ   |
                +--------------------------------------------+
                                  |
                                  v
            +-------------------- foc_isr (20 kHz) --------------------+
            |  motor_ctl_step():                                        |
            |    1. Read Ia, Ib (ADC), Vbus, QEP count, index event     |
            |    2. encoder_update() -> theta_e, speed_pu               |
            |    3. State machine dispatch:                             |
            |         IDLE   -> 50% duty, gates off                     |
            |         CAL    -> average ADC at I=0 -> set offsets       |
            |         ALIGN  -> Id=ALIGN_ID, theta=0, zero QEP after t  |
            |         RUN    -> speed PI (every 30th tick) -> Iq_ref    |
            |                   -> foc_step():                          |
            |                        Clarke -> Park                     |
            |                        FWC PI (if enabled) -> Id_ref      |
            |                        PI(Id), PI(Iq) -> Vd, Vq           |
            |                        Voltage circle clip                |
            |                        Inverse Park -> SVPWM -> duties    |
            |                   -> hal_pwm_set_duties()                 |
            |         FAULT  -> latched, gates off                      |
            |    4. ADC EOC flag clear                                  |
            +-----------------------------------------------------------+
```

The current loop runs once per PWM period (20 kHz). The speed loop is a
counter inside the current ISR that fires every `SPEED_LOOP_DIVIDER` ticks
(30 -> 667 Hz). There is no scheduler.

## Configuring

All knobs live in the three headers under `config/`:

| change           | edit                                          |
|------------------|-----------------------------------------------|
| Different motor  | `motor_config.h` + `BASE_*` in `control_config.h` |
| Pin re-map       | `board_config.h`                              |
| PWM frequency    | `PWM_FREQ_HZ` in `board_config.h`             |
| Loop rates       | `SPEED_LOOP_DIVIDER` in `control_config.h`    |
| Tune PI gains    | `PI_*_KP` / `PI_*_KI` in `control_config.h`   |
| Voltage envelope | `V_MAX_PU` in `control_config.h`              |
| FWC on/off       | `foc_enable_fwc()` from `motor_control.c`     |

Per-unit normalisation: every algorithm-side quantity is in PU of
`BASE_VOLTAGE_V`, `BASE_CURRENT_A`, `BASE_SPEED_RPM`, `BASE_TORQUE_NM`. The
ADC HAL converts counts -> amps -> PU; the speed encoder converts rev/s -> PU.
To support a different motor it is enough to update `motor_config.h` and the
`BASE_*` set, then recompute PI gains for the new plant.

## Building in CCS

1. Open the existing CCS project (`CCS_Project/.cproject`).
2. Right-click the project -> *Add Files* and add the whole `src/` folder
   (choose *Link to files* if you prefer to keep them out of the workspace
   copy).
3. *Project Properties* -> *C2000 Compiler* -> *Include Options* — add:
   - `${PROJECT_LOC}/src`
   - `${PROJECT_LOC}/src/config`
4. Remove (or simply exclude from build) the generated files when you are
   ready to switch over:
   `mcb_pmsm_fwc_qep_f28379d*.c`, `ert_main.c`, `c2837xDBoard_Realtime_Support.c`,
   `c2837xDSchedulerTimer0.c`, `MW_*.c`, `dma.c`, `sysctl.c`.
5. Keep the TI driver-library files (`F2837xD_*.c`, `F28x_Project.h`) — the
   HAL layer uses them directly.

## Bring-up checklist

1. With the motor disconnected, flash and confirm the heartbeat LED toggles.
2. Disconnect motor leads; in `main.c`, do not call `motor_ctl_request_run()`.
   Confirm `MOTOR_STATE_CALIBRATING_ADC` finishes within ~50 ms and that
   `g_motor.adc_cal_acc_*` settle near the 2048 mid-rail count.
3. Reconnect motor leads. Set a small reference (`0.1f`) and call
   `motor_ctl_request_run()`. Expect an audible alignment, then rotation.
4. Probe `g_motor.foc.v_mag_pu` — it should rise smoothly with speed and
   plateau near `V_MAX_PU` once FWC engages.
5. Tune `ENCODER_OFFSET_RAD` so that `g_motor.foc.i_dq_pu.d ~= 0` at no-load
   running, with `Iq` carrying all of the torque.
6. Re-derive the PI gains for your motor: bandwidth target for the current
   loop is typically 1 kHz, speed loop 50–100 Hz.

## What this rewrite intentionally drops

- The Simulink rate-monotonic scheduler (`step0/1/2`, Timer0). The new ISR is
  ADC-EOC-triggered and dispatches the speed loop with a counter.
- SCI / external-mode telemetry. Add as a background task in `main()`'s loop
  if you need it.
- All `RT_MODEL_*`, `B_*`, `DW_*`, `P_*` storage classes. State now lives in
  three tagged structs: `foc_t`, `speed_loop_t`, `encoder_t`, all owned by
  `motor_ctl_t g_motor`.

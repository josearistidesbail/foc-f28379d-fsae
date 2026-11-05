"""param_docs.py - one-paragraph help for every firmware debug param.

The device only reports id / type / flags / name for each param (flash is full,
so no descriptions on the wire); the GUI shows this text as the tooltip of every
cell of a param-table row. Keep the order of ``g_param_table`` in
``src/debug_params.c``. ``test_param_docs.py`` fails when a firmware param has no
entry here, or when an entry names a param the firmware no longer has.

Each entry is ``name: (unit, text)``. Rules for the text:
  * what it is, its units, the setter's clamp, the boot value;
  * at most one bench caveat;
  * a boot value that differs per build is labelled with the build it is for
    (EMRAX = the Production FE_UFPR 4.0 / EMRAX 208 / RM44AC build);
  * do NOT write LIVE / needs-IDLE / read-only: that comes from the device flags
    at runtime (``tooltip_html``), so the two can never disagree.

Pure stdlib (no Qt), so it is unit-testable and usable from the CLI.
"""

from __future__ import annotations

import html
import re

PARAM_DOCS: dict[str, tuple[str, str]] = {
    # ---- live references -------------------------------------------------
    "id_ref": ("A",
        "d-axis current reference. In RUN the ISR rewrites it every tick "
        "(nominal 0 + field-weakening current), so a host write only sticks "
        "outside RUN. Use step_go/step_axis=0 for a d-axis step."),
    "iq_ref": ("A",
        "q-axis (torque) current command in torque mode. Clamped to ±iq_max in "
        "the ISR. In speed mode the speed PI overwrites it."),
    "omega_ref": ("elec rad/s",
        "Speed setpoint for speed mode (control_mode = 1), ELECTRICAL rad/s "
        "(rpm = ω·60/(2π·pole_pairs)). Ramped at SPEED_RAMP_RAD_S2 "
        "(EMRAX: 80 rad/s²)."),

    # ---- gains -----------------------------------------------------------
    "kp_d": ("V/A",
        "d-axis current PI proportional gain. TI PI_run is SERIES form "
        "(Ui += ki·kp·err), so raising kp raises the integral action too. "
        "Crossover ≈ kp/Ld. Boot (EMRAX): 0.5."),
    "ki_d": ("per tick",
        "d-axis current PI integral gain, series form, per 100 µs tick: the PI "
        "zero sits at ki/Ts rad/s. ≈ Rs·Ts/Ld cancels the plant pole. "
        "Boot (EMRAX): 0.0113."),
    "kp_q": ("V/A",
        "q-axis current PI proportional gain (series form, like kp_d). "
        "Crossover ≈ kp/Lq. Tune only with dtc_en = 1, or you are tuning "
        "against the dead zone. Boot (EMRAX): 0.5."),
    "ki_q": ("per tick",
        "q-axis current PI integral gain, series form, per 100 µs tick "
        "(zero at ki/Ts rad/s). Boot (EMRAX): 0.0113."),
    "kp_w": ("A per elec rad/s",
        "Speed PI proportional gain. Keep the speed crossover ≤ 1/4 of the "
        "speed-estimate bandwidth (res_pll_bw, or obs_pll_bw when sensorless) "
        "or the loop goes unstable. Boot (EMRAX): 0.35."),
    "ki_w": ("per tick",
        "Speed PI integral gain, series form, per 1 ms tick (zero at ki/Ts "
        "rad/s: 0.02 → 20 rad/s). Boot (EMRAX): 0.02."),
    "kp_fw": ("",
        "Field-weakening regulator proportional gain (series PI on the squared "
        "voltage error |Vdq|² vs vmax_fw²). kp and ki must both be non-zero or "
        "the integrator does nothing. Not tuned on hardware. Boot (EMRAX): 0.001."),
    "ki_fw": ("per tick",
        "Field-weakening regulator integral gain (series form, per 100 µs "
        "tick). Not tuned on hardware. Boot (EMRAX): 0.05."),

    # ---- current sense / phase-ID / ALIGN ----------------------------------
    "isense_recon": ("enum",
        "Rebuild one phase current from the other two by KCL (Iu+Iv+Iw = 0), "
        "for a dead sense channel. 0 none, 1 U, 2 V, 3 W. Normally none."),
    "isense_map": ("enum",
        "Which motor phase each physical sense channel (A/B/C) measures, one of "
        "the six permutations. ALIGN phase-ID writes it when phase_id_en = 1. "
        "FE_UFPR 4.0: 0 (A=U B=V C=W)."),
    "isense_inv": ("bits",
        "Per-channel current-sign flip: bit0 = channel A, bit1 = B, bit2 = C "
        "(0..7). ALIGN phase-ID writes it when phase_id_en = 1. FE_UFPR 4.0: 0."),
    "phase_id_en": ("0/1",
        "1 = ALIGN first runs phase-ID: three open-loop dwells at 0/120/240° "
        "elec measure the channel map and signs before any closed-loop current. "
        "A rejected result faults CURRENT_SENSE. Boot (FE_UFPR 4.0): 1."),
    "phase_id_a": ("A",
        "Target current for the phase-ID dwells: the duty ramps until the "
        "largest channel reaches it, then freezes for all three dwells. ≥ 0. "
        "Boot (FE_UFPR 4.0): 3 A (1 A is rejected: the dead zone eats the "
        "-I/2 legs)."),
    "align_id_a": ("A",
        "d-axis current for the closed-loop ALIGN stages (settle, resolver cal "
        "sweep, offset sweep). Must drag the rotor through friction and "
        "cogging. Clamped [0, IQ_REF_MAX]. Boot (EMRAX): 8 A."),

    # ---- limits / dead-time compensation -----------------------------------
    "iq_max": ("A",
        "Clamp on the commanded q current: torque command, speed-PI output and "
        "step injector. Clamped [0, IQ_REF_MAX]; safe to lower while running. "
        "Boot (FE_UFPR 4.0 bench): 10 A."),
    "vmax_frac": ("× Vbus/2",
        "Current-PI voltage clamp: vmax = vmax_frac·Vbus/2. Clamped "
        "[0, VDQ_MAX_FRACTION]. Bounds what an unstable PI can apply. Must "
        "clear the inverter dead zone (~0.05) or no current flows. "
        "Boot (FE_UFPR 4.0 bench): 0.15."),
    "oc_trip_a": ("A",
        "Software phase over-current trip, checked every ISR in RUN/ALIGN. "
        "Clamped [0, OC_TRIP_CEIL] (130 A on the LEM path, which saturates at "
        "±150 A). Boot (FE_UFPR 4.0 bench): 40 A."),
    "dtc_en": ("0/1",
        "Dead-time / device-drop compensation in RUN and closed-loop ALIGN. "
        "Without it the bridge's dead zone leaves the current loop no authority "
        "near zero current. Tune gains only with it on. Boot (FE_UFPR 4.0): 1."),
    "dtc_duty": ("duty",
        "Bus-independent part of the compensation: pure dead time "
        "(deadband·fsw). Clamped [0, 0.15]. Boot (FE_UFPR 4.0): 0.015 "
        "(1.5 µs at 10 kHz)."),
    "dtc_v": ("V",
        "Fixed device-drop part (Vce + Vf), divided by the live bus. Clamped "
        "[0, 5]. Boot (FE_UFPR 4.0): 1.0, from a standstill d-axis test. If "
        "raising it makes the loop worse you have over-compensated: back off."),
    "dtc_ith": ("A",
        "Width of the linear ramp around each phase current's zero crossing "
        "(instead of a hard sign()). Clamped [0.1, 100]. Too small chatters, "
        "too large under-compensates. Boot (FE_UFPR 4.0): 0.5."),

    # ---- control modes ----------------------------------------------------
    "decouple_en": ("0/1",
        "Cross-coupling + back-EMF feedforward: ff_d = −ωe·Lq·iq_ref, "
        "ff_q = ωe·(Ld·id_ref + λ). Matters in transients and at speed/current; "
        "little effect at low current. Boot: 0."),
    "control_mode": ("enum",
        "Outer loop: 0 = torque (iq_ref direct), 1 = speed (speed PI on "
        "omega_ref drives iq). The switch is bumpless both ways."),
    "fw_en": ("0/1",
        "Field weakening: a voltage regulator drives id negative once |Vdq| "
        "reaches fw_vmax_frac·Vbus/2. Forced off while sensorless. Not yet "
        "tested on hardware. Boot: 0."),
    "module_faults_en": ("0/1",
        "1 = power-module faults armed (OC_A/B/C through the hardware trip "
        "zone, OT and DC-OV in software). 0 = ignored: only for a board with no "
        "power stage connected. Boot: 1 (0 in BENCH_NO_POWER_STAGE builds)."),

    # ---- bench open-loop --------------------------------------------------
    "ol_run": ("0/1",
        "Bench open-loop PWM: 1 = enter OPENLOOP (rotating voltage vector at "
        "ol_freq / ol_mod, no current loop), 0 = stop. Reads 1 only while the "
        "state really is OPENLOOP."),
    "ol_freq": ("Hz",
        "Electrical frequency of the open-loop vector; the sign sets the "
        "direction. Not clamped. Boot: 5 Hz."),
    "ol_mod": ("duty",
        "Raw duty amplitude of the open-loop vector, clamped [0, 0.5]. NOT "
        "bus-scaled: the same value is a few volts on the bench and tens of "
        "volts on the HV pack. Boot (EMRAX): 0.10."),
    "align_off_en": ("0/1",
        "1 = ALIGN sweeps the rotor and averages sensor-vs-commanded angle to "
        "find the electrical offset (align_offset). 0 = skip it and pin the "
        "offset to 0 (raw sensor angle). Re-run ALIGN after changing. Boot: 1."),

    # ---- DC bus -----------------------------------------------------------
    "uv_en": ("0/1",
        "Software undervoltage trip armed (RUN only, threshold uv_trip_v, 2 ms "
        "debounce). Boot: 0 on the low-voltage bench build, else 1. Arm it "
        "after vbuscal and uv_trip_v."),
    "vbus_ovr": ("V",
        "Bench DC-link override. > 0: control (SVGEN, PI clamp) and the OV/UV "
        "trips use this instead of the sensor; 0 = measured bus. Must equal "
        "the real supply, or every commanded volt is scaled by "
        "V_real/vbus_ovr. Boot (FE_UFPR 4.0 bench): 31 V."),
    "vbus_filt_en": ("0/1",
        "Low-pass on the measured bus feeding the trips, the PI clamp and the "
        "readouts. Toggling is bumpless. Boot: 1."),
    "vbus_filt_hz": ("Hz",
        "Cutoff of the bus low-pass. Lower is quieter but lags a real collapse "
        "by ~1/(2π·fc). ≥ 0 (0 freezes the reading). Boot: 50 Hz."),
    "vbus_ratio": ("V/V",
        "Bus-to-ADC-pin divider ratio in vbus = (code − vbus_off)·3.0·ratio/4096. "
        "Floor 0.001. Fit with `foc_debug vbuscal`, then bake into "
        "VBUS_DIVIDER_RATIO. Boot (FE_UFPR 4.0): 327.273 (design value, not "
        "fitted yet)."),
    "vbus_off": ("ADC codes",
        "ADC code at 0 V bus (the sense chain's zero error); signed, clamped "
        "±2048. Fit with vbuscal together with vbus_ratio. "
        "Boot (FE_UFPR 4.0): 0 (not fitted yet)."),
    "uv_trip_v": ("V",
        "Undervoltage threshold of the software trip (see uv_en), on the "
        "filtered bus. ≥ 0, no upper bound. Set it to ~70–80 % of the running "
        "bus. Boot (EMRAX): 45 V."),
    "isr_cyc_rst": ("",
        "Write any value to zero isr_cycles_max. Always reads 0."),

    # ---- sensorless observers + position-source supervisor ---------------
    "obs_mode": ("enum",
        "Observer feeding the sensorless PLL: 0 = flux (Ortega nonlinear flux "
        "observer, parameter-sensitive), 1 = SMO (sliding-mode current "
        "observer, robust but slower to lock). Both always run. Boot: 0."),
    "obs_vsrc": ("enum",
        "Voltage the observers integrate: 0 = last duty·vbus minus the "
        "dead-zone model, 1 = raw duty·vbus, 2 = commanded Vαβ. Boot: 0."),
    "obs_gamma": ("1/s",
        "Flux observer radial correction rate (pulls the flux estimate onto the "
        "|η| = λ circle). Clamped [10, 5000]. Boot: 1000."),
    "obs_smo_kslide": ("V/A",
        "SMO sliding gain. The setter caps it at 0.9·(1+F)/G for discrete-time "
        "stability. Boot (EMRAX): 1.0."),
    "obs_smo_e0": ("A",
        "SMO boundary layer: the switching term is linear for |î − i| < E0. "
        "Keep obs_smo_ierr below it so the SMO stays linear. Boot (EMRAX): 200 A."),
    "obs_smo_lpf_hz": ("Hz",
        "Floor of the SMO back-EMF low-pass cutoff (above it the cutoff tracks "
        "obs_smo_lpf_k·|ωe|). Boot (EMRAX): 10 Hz."),
    "obs_smo_lpf_k": ("× |ωe|",
        "SMO back-EMF low-pass cutoff as a multiple of the electrical speed, "
        "above the obs_smo_lpf_hz floor. Boot: 1.0."),
    "obs_pll_bw": ("Hz",
        "Bandwidth (ζ = 1) of the sensorless PLL that produces theta_est / "
        "omega_est. Clamped [1, 200]. Boot: 40 Hz."),
    "obs_min_speed": ("elec rad/s",
        "Below this |ωe| the observer is not trusted (too little back-EMF): "
        "AUTO won't fail over, and running sensorless below it faults "
        "SENSOR_LOSS. Boot (EMRAX): 400. Lower it on a low-voltage bench."),
    "obs_flux_tol": ("pu",
        "Convergence tolerance on obs_flux_err for the flux observer to count "
        "as healthy. Boot: 0.30."),
    "obs_smo_tol": ("pu",
        "Convergence tolerance on obs_smo_err for the SMO to count as healthy. "
        "Boot: 0.5."),
    "obs_rs": ("Ω",
        "Stator resistance the observers use (separate from the motor header) "
        "so its sensitivity can be A/B'd, e.g. ±30 %. Boot: MOTOR_RS_OHM."),
    "obs_ls": ("H",
        "Stator inductance the observers use. Boot: (Ld + Lq)/2."),
    "angle_src": ("enum",
        "Angle that commutates: 0 sensor (observers in shadow), 1 observer "
        "(engages once healthy, pending until then), 2 auto (one-way fail-over "
        "on sensor loss or sustained disagreement). Every hand-over is "
        "blended. Boot: 0."),
    "obs_err_trip": ("rad",
        "AUTO disagreement trip: |θ_sensor − θ_est| above this for 5 ms hands "
        "commutation to the observer. Clamped [0.05, 3]. Boot (EMRAX): 0.6 rad."),
    "obs_iq_max": ("A",
        "|iq| clamp while running sensorless (field weakening is also forced "
        "off). Clamped [0, IQ_REF_MAX]. Boot: 50 % of IQ_REF_MAX."),
    "pos_force_lost": ("0/1",
        "Bench: 1 = pretend the position sensor is lost (RUN only) to exercise "
        "the fail-over. Cleared on IDLE entry."),
    "pos_inj_err": ("rad",
        "Bench: angle error added to the sensor angle as the supervisor sees "
        "it, to provoke the DISAGREE fail-over without unplugging anything. "
        "Cleared on IDLE entry."),
    "pos_trig_en": ("0/1",
        "Bench: 1 = fire the scope one-shot on the sensor↔observer hand-over "
        "tick, so the blend is captured coherently."),

    # ---- step injector / one-shot scope trigger ---------------------------
    "step_go": ("enum",
        "1 = step step_axis to step_a AND trigger the scope in the same ISR "
        "tick (RUN only); 2 = trigger only (any state: one gap-free "
        "128-sample window); 0 = release the frozen buffer (live scope resumes)."),
    "step_axis": ("enum",
        "Axis stepped by step_go = 1: 0 = d (id), 1 = q (iq)."),
    "step_a": ("A",
        "Reference value the step goes TO (not a delta)."),
    "step_pre": ("samples",
        "Pre-trigger samples kept as the baseline in the 128-sample capture. "
        "Clamped to 126. Boot: 32."),

    # ---- resolver (RM44AC builds) -----------------------------------------
    "res_filt_en": ("0/1",
        "Matched low-pass on the resolver SIN/COS before atan2 (loss detection "
        "stays on the raw signals). Toggling is bumpless. Boot: 1."),
    "res_filt_hz": ("Hz",
        "Cutoff of the SIN/COS low-pass. It delays the angle by ≈ f_elec/fc "
        "rad, which res_filt_comp adds back. Keep it ≥ 5× res_pll_bw. "
        "Boot: 200 Hz."),
    "res_filt_comp": ("0/1",
        "1 = add the SIN/COS filter's known lag back to the angle (exact in "
        "steady state). Without it a low cutoff costs torque at speed. Boot: 1."),
    "res_cal_en": ("0/1",
        "1 = ALIGN runs a 3-rev sweep that measures the SIN/COS bias and "
        "amplitude; a rejected cal faults SENSOR_LOSS (see cal_status). "
        "0 = keep the compiled scale. Boot: 1."),
    "res_dir_inv": ("0/1",
        "1 = mirror the resolver angle (it counts the other way). Check: "
        "ol_run at +ol_freq must give a positive omega_meas. Re-run ALIGN "
        "after changing. Boot: 0."),
    "res_poles": ("cycles/rev",
        "Resolver SIN/COS cycles per mechanical revolution, clamped 1..50. "
        "Re-run ALIGN after changing. Boot: 1."),
    "res_w_mode": ("enum",
        "Resolver speed estimator: 0 = differentiate + LPF (legacy), "
        "1 = type-II tracking observer (PLL, much quieter). Both always run, "
        "so switching is bumpless. Boot: 1."),
    "res_pll_bw": ("Hz",
        "Bandwidth (ζ = 1) of the resolver speed PLL, clamped [1, 200]. Keep "
        "it ≤ res_filt_hz/5, and the speed-loop crossover ≤ this/4. "
        "Boot: 40 Hz."),
    "res_wlpf_hz": ("Hz",
        "Cutoff of the legacy (res_w_mode = 0) speed low-pass. 0 freezes it. "
        "Boot: 50 Hz."),

    # ---- read-only status --------------------------------------------------
    "state": ("enum",
        "State machine: 0 IDLE, 1 CALIBRATE_OFFSETS, 2 ALIGN_ROTOR, 3 RUN, "
        "4 FAULT, 5 OPENLOOP."),
    "isr_count": ("count",
        "Current-loop ISR count; climbs ~10000/s while the ISR runs."),
    "align_offset": ("deg elec",
        "Electrical offset captured by the last ALIGN (sensor zero vs the d "
        "axis). Repeats within a fraction of a degree when healthy. "
        "FE_UFPR 4.0 + EMRAX: ≈ 106.6–107.3°."),
    "align_delta": ("deg elec",
        "Half the difference between the forward and backward ALIGN sweeps: "
        "the friction load angle. ≈ 6° at 8 A on the bench; I·sin δ ≈ the "
        "friction current."),
    "pole_pairs": ("",
        "Motor pole pairs (compile time). The GUI uses it to convert "
        "electrical rad/s to rpm."),
    "omega_meas": ("elec rad/s",
        "Measured electrical speed from the active position source "
        "(rpm = ω·60/(2π·pole_pairs))."),
    "fw_id": ("A",
        "d current the field-weakening regulator is applying (≤ 0)."),
    "vmag": ("V",
        "Requested voltage magnitude |Vdq|; field weakening holds it near "
        "fw_vmax_frac·Vbus/2."),
    "fault_code": ("bits",
        "Latched faults, 0 = none: 0x01 OVERCURRENT, 0x02 OVERVOLTAGE, "
        "0x04 UNDERVOLTAGE, 0x08 OVERTEMP, 0x10 GATE_DRIVER, 0x20 SENSOR_LOSS, "
        "0x40 WATCHDOG, 0x80 CURRENT_SENSE. Cleared by Clear fault."),
    "tz_trip": ("count",
        "Hardware trip-zone events since boot (module OC lines → ePWM "
        "one-shot). Every power-up shows 1: the module flags settle after the "
        "MCU, so clear the fault once (sometimes twice)."),
    "module_fault": ("bits",
        "Power-module fault lines as read now: 0x01 OC_A, 0x02 OC_B, 0x04 OC_C, "
        "0x08 OT, 0x10 DC-OV. Any leg's overcurrent asserts all three OC lines. "
        "0x1F with the module unplugged (fail-safe)."),
    "sw_in": ("bits",
        "Cockpit switch inputs: bit0 = SW_MAIN (GPIO29), bit1 = SW_START "
        "(GPIO59); 1 = switch on (12 V at the input)."),
    "gate_en": ("bits",
        "Gate-enable pin readback: bit0 = master GPIO66, bit1 = aux GPIO131. "
        "The board's gate enable is their AND with the SW_MAIN interlock. "
        "IDLE reads 2."),
    "gate_en_dbg": ("bits",
        "Bench only: write bit0/bit1 to drive GPIO66/GPIO131 directly. Honored "
        "only in IDLE with module_faults_en = 0; any state change overrides it. "
        "Reads back the pins."),
    "trig_state": ("enum",
        "Scope one-shot: 0 free-running, 1 armed (filling the post-trigger "
        "window), 2 done (frozen until step_go = 0)."),
    "trig_idx": ("sample",
        "Index of the trigger sample in the delivered 128-sample capture."),
    "phase_id_status": ("bits",
        "Phase-ID result. Low nibble: 0 never ran, 1 applied, 2 rejected. "
        "0x0010<<c: channel c's driven dwell too weak; 0x0100<<c: no usable "
        "sign pattern on channel c; 0x0800: two channels claimed one phase."),
    "phase_id_mod": ("duty",
        "Duty the phase-ID governor settled at (≈ 0.07 at 3 A on the 31 V "
        "bench). Dead zone ≈ 0.75·this·Vbus. Pinned at the cap = the target "
        "current was unreachable."),

    # ---- ISR cost + sensorless telemetry ----------------------------------
    "isr_cycles": ("SYSCLK cycles",
        "Cost of the last current-loop ISR. Budget 20,000 (100 µs at 200 MHz)."),
    "isr_cycles_max": ("SYSCLK cycles",
        "Max-hold of isr_cycles; zero it with isr_cyc_rst."),
    "theta_est": ("rad elec",
        "Sensorless PLL angle estimate."),
    "omega_est": ("elec rad/s",
        "Sensorless PLL speed estimate."),
    "theta_err": ("rad",
        "wrap(θ_est − θ_sensor): observer error against the sensor. Mean "
        "within ±0.1 rad when the observer is well tuned."),
    "obs_flux_err": ("pu",
        "Flux observer convergence |η|²/λ² − 1: 0 = converged, −1 = no flux."),
    "obs_smo_err": ("pu",
        "SMO convergence |ê|²/predicted(ω)² − 1: 0 = converged, "
        "−1 = no back-EMF."),
    "obs_dtheta": ("rad",
        "wrap(θ_flux − θ_smo): how far the two observers disagree."),
    "angle_act": ("enum",
        "Angle commutating right now: 0 sensor, 1 observer."),
    "pos_status": ("bits",
        "Position-source supervisor: 0x001 OBS_ACTIVE, 0x002 SENSOR_LOST, "
        "0x004 DISAGREE, 0x008 OBS_UNHEALTHY, 0x010 BELOW_MIN_SPD, "
        "0x020 FAILOVER_DONE, 0x040 DEGRADED, 0x080 BLENDING, 0x100 FORCED, "
        "0x200 LOST, 0x400 REQ_PENDING, 0x800 IF_ACTIVE (reserved)."),
    "obs_healthy": ("0/1",
        "1 = the selected observer is trusted (above obs_min_speed, PLL "
        "tracking, converged). Takes 20 ms to trust, 5 ms to drop."),
    "obs_resets": ("count",
        "Times the observer blow-up guard reset the estimator."),
    "warn_code": ("bits",
        "Warnings (never FAULT): 0x01 SENSORLESS_FAILOVER = AUTO handed "
        "commutation to the observer. Cleared with faults / in IDLE."),
    "obs_smo_ierr": ("A",
        "SMO current error |î − i|. Size obs_smo_e0 from it (keep it below E0)."),

    # ---- QEP (encoder builds) ---------------------------------------------
    "qep_fast_en": ("0/1",
        "Fast QEP loss detector: in RUN, a counter that was moving "
        "(≳ 250 elec rad/s on the Teknic) and then freezes for 0.3 ms latches "
        "sensor loss. Boot: 1."),
    "qep_fast_trips": ("count",
        "Times the fast QEP detector latched sensor loss."),

    # ---- resolver diagnostics (RM44AC builds) ------------------------------
    "sin_raw": ("ADC codes",
        "Raw resolver SIN ADC code. FE_UFPR 4.0: bias ≈ 2050, swing ≈ ±1585 "
        "codes; 1 code ≈ 0.73 mV."),
    "cos_raw": ("ADC codes",
        "Raw resolver COS ADC code. FE_UFPR 4.0: bias ≈ 2050, swing ≈ ±1585 "
        "codes; 1 code ≈ 0.73 mV."),
    "res_mag": ("pu",
        "sin² + cos² of the normalized, unfiltered signals; ≈ 1.0 when "
        "healthy. Outside [0.25, 2.25] the resolver is declared lost."),
    "cal_sin_min": ("ADC codes",
        "Lowest SIN code seen by the last ALIGN cal sweep "
        "(bias = (min+max)/2, amplitude = (max−min)/2). 0xFFFF until a sweep runs."),
    "cal_sin_max": ("ADC codes",
        "Highest SIN code seen by the last ALIGN cal sweep. 0 until a sweep runs."),
    "cal_cos_min": ("ADC codes",
        "Lowest COS code seen by the last ALIGN cal sweep. 0xFFFF until a "
        "sweep runs."),
    "cal_cos_max": ("ADC codes",
        "Highest COS code seen by the last ALIGN cal sweep. 0 until a sweep runs."),
    "cal_status": ("bits",
        "Resolver scale cal. Low nibble: 0 never ran, 1 applied, 2 rejected "
        "(old scale kept, FAULT). Clip flags: 0x10 sin low, 0x20 sin high, "
        "0x40 cos low, 0x80 cos high."),
    "res_w_lpf": ("elec rad/s",
        "Legacy (diff + LPF) speed estimate, always computed; compare with "
        "omega_meas. The two are equal when res_w_mode = 0."),

    # ---- motor / loop constants (autotuner inputs) -------------------------
    "rs_ohm": ("Ω",
        "Motor phase resistance from the motor header (autotuner input)."),
    "ld_h": ("H",
        "Motor d-axis inductance from the motor header (autotuner input)."),
    "lq_h": ("H",
        "Motor q-axis inductance from the motor header (autotuner input)."),
    "flux_vs": ("V·s",
        "PM flux linkage λ from the motor header. EMRAX datasheet 0.0387; bench "
        "data hints ~0.034, not yet confirmed."),
    "i_peak_a": ("A",
        "Motor current-amplitude limit from the header (also IQ_REF_MAX)."),
    "vbus": ("V",
        "MEASURED DC bus (filtered), shown even while control runs on "
        "vbus_ovr. Only as good as vbus_ratio / vbus_off: run vbuscal first."),
    "vbus_raw": ("ADC codes",
        "Raw bus ADC code, unscaled and unfiltered: the input to vbuscal. If it "
        "barely moves between two bus voltages the problem is analog, not "
        "calibration."),
    "dtc_k": ("duty",
        "Total dead-zone compensation applied: dtc_duty + dtc_v/vbus "
        "(≈ 0.047 at 31 V on FE_UFPR 4.0)."),
    "isr_freq_hz": ("Hz",
        "Current-loop / PWM frequency."),
    "speed_loop_ts": ("s",
        "Speed-loop period."),
    "fw_vmax_frac": ("× Vbus/2",
        "Field-weakening voltage target as a fraction of Vbus/2 "
        "(compile-time FW_VMAX_FRACTION)."),
}


# A number followed by a capitalized word ("0x080 BLENDING", "3 RUN", "31 V")
# is one unit; a non-breaking space keeps the tooltip wrap from splitting it.
_GLUE_RE = re.compile(r"\b((?:0x[0-9A-Fa-f]+)|\d+) (?=[A-Z])")


def _access_str(info) -> str:
    if getattr(info, "read_only", False):
        return "read-only"
    if getattr(info, "needs_idle", False):
        return "write only in IDLE"
    return "LIVE (write any time)"


def tooltip_html(info) -> str:
    """Rich-text tooltip for one param.

    ``info`` is duck-typed (``api.ParamInfo``): ``name``, ``id``, ``type_str``,
    ``read_only``, ``needs_idle``. The access line comes from the device flags,
    not from the doc text. The ``<qt>`` wrapper makes Qt render it as rich text,
    which word-wraps.
    """
    unit, text = PARAM_DOCS.get(info.name, ("", ""))
    head = f"<b>{html.escape(info.name)}</b>"
    if unit:
        head += f"&nbsp;&nbsp;[{html.escape(unit)}]"
    meta = f"0x{info.id:04X} · {html.escape(info.type_str)} · {_access_str(info)}"
    if text:
        body = _GLUE_RE.sub(r"\1&nbsp;", html.escape(text)).replace("\n", "<br>")
    else:
        body = "<i>No description in this host version (firmware newer than the GUI?).</i>"
    return f"<qt>{head}<br><small>{meta}</small><br>{body}</qt>"

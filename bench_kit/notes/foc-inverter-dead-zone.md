---
name: foc-inverter-dead-zone
description: Control_V2 bridge has a ~1 V dead zone (dead time + IGBT/diode drops) worth 25-50 A on the 18 mOhm EMRAX; no linear PI can be tuned through it — compensated by dtc_* feedforward since 2026-08-01
metadata: 
  node_type: memory
  type: project
  originSessionId: 49b25564-bf73-47b9-814d-78ea98dea461
  modified: 2026-08-01T15:25:50.171Z
---

The PrimeSTACK bridge does not deliver the volts it is commanded. During the dead-time
interval neither device conducts and the phase is clamped by whichever diode the current
picks; on top of that every conducting device drops Vce/Vf. Both errors **oppose the
current**, so the inverter behaves as a dead zone:

    Vdt = (Tdt * fsw) * Vbus + Vdrop

Measured on the bench at 24 V: **~1.04 V** (0.0435 duty). On the EMRAX's 18 mΩ winding
that is worth **25–50 A** — larger than any bench setpoint, so at low current the current
loop has *no authority at all* until it is cancelled.

**Why this is not a tuning problem.** The plant gain is ~0 over ±Vdt and 55 A/V outside it.
Below the gain ceiling the integrator must wind open-loop through ~0.9 V before any current
appears (kp=0.7, ki=0.011 → ~119 V/s → 7.6 ms, and a 2 A step never arrived in 28 ms);
above the ceiling it limit-cycles the instant it pops out the far side (kp=1.5 → ±10 A
bursts). Both plots are the same wall. Feedforward, not gain.

**The fix** (`dtc_apply()` in foc_pipeline.c, after SVGEN, **FOC_RUN only**):
`duty[p] += k * sat(i_phase[p]/ith)`, `k = dtc_duty + dtc_v/vbus`.
- Two terms because they scale differently with the bus — dead time is fixed **duty**
  (bus-independent), device drops are fixed **volts** — so one bench fit extrapolates to HV.
- Params all LIVE: `dtc_en` 0x0055 (default **0**), `dtc_duty` 0x0056 (default
  `PWM_DEADBAND_NS*1e-9*PWM_FREQ_HZ` = 0.015), `dtc_v` 0x0057 (Control_V2 = 0.68 V),
  `dtc_ith` 0x0058 (2 A). RO `dtc_k` 0x0127 = the applied offset.
- **Excluded from ALIGN/OPENLOOP on purpose**: `ol_mod` and the phase-ID dwell governor are
  calibrated against the *uncompensated* bridge, and the dwell solver reads current ratios
  this would alter. See [[foc-isense-phase-map]].

**Calibrate it with `phase_id_mod`** — the ALIGN dwell governor is already the right
instrument. It reports the peak-phase duty m for `phase_id_a` amps; the resistive share is
negligible (1 A × 1.5·Rs = 27 mV = 0.001 duty) and the dwell drives one phase against two
through two devices' worth of tax, so **Vdt ≈ 0.75 · phase_id_mod · Vbus**.
Caveat: whether a symmetric carrier loses one or two dead-time intervals per period is a
factor-of-2 the textbooks disagree on — only the SUM is pinned by the measurement. If the
residual dead zone grows with Vbus, shift budget from `dtc_v` into `dtc_duty`.

**`dtc_ith` is load-bearing, not polish.** A hard `sign()` injects a ±Vdt square wave every
time noise flips the sign of a near-zero phase current — tens of amps of command here, a
guaranteed limit cycle. The linear ramp over ±ith is what makes the feedforward safe; the
setter floors it at 0.1 A so it can never degenerate to `sign()`.
**Over-compensation is positive feedback** around the zero crossing: if raising `dtc_v` past
the fitted value makes things worse, you have passed the true Vdt — back off, don't push.

Related: [[foc-control-v2-bench-no-power-stage]] (`vmax_frac` was the old workaround —
bounding the damage rather than fixing the cause; keep it as a bring-up bound).
The problem shrinks roughly linearly as the bus rises toward the real HV level (fixed-volts
tax), so 24 V on a 900 V-class stack is the worst case it will ever see.

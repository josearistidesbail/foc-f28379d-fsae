---
name: foc-sensorless-bench-2026-10-09
description: "Teknic/QEP sensorless bench (ICIT paper captures) — measured lambda 0.006067, ~-11 deg observer bias vs QEP, blend w*Ts bug fixed, physical unplug failed ride-through (5 ms debounce mis-commutation) -> fast QEP frozen-counter detector"
metadata:
  node_type: memory
  type: project
  originSessionId: e722e871-02da-485f-b81b-53d76a19871b
  modified: 2026-10-10T01:18:38.890Z
---

2026-10-09 bench session for the ICIT 2027 paper (§VI-C), Teknic M-2310P on BOOSTXL at **24 V** (not
48 V; DRV8305 is 45 V max). Kit + results: `bench_kit/`, `bench_results_2026-10-09.tar.gz`.
- **lambda measured 0.006067 Vs** (old 0.0046 was 32 % low; both observers were permanently unhealthy).
  `host/foc_debug/observer_sim.py` still uses 0.0046 -- paper sim needs a re-run.
- The ~-11 deg observer "bias" vs the QEP was the ALIGN sweep's friction load angle (direction test:
  same sign at +/-1000 rad/s => reference error). FIXED by the bidirectional align sweep (259d21e,
  RO `align_delta` measured 11.52 deg). After: flux +4.0/+0.35/-0.11, SMO -0.69/-0.91/-0.80 deg at
  500/1000/1500 rad/s; noise 0.15-0.4 deg. 1500 rad/s sits at the Vq clamp at 24 V.
- `pos_src.c start_blend` used last tick's angle -> backward w*Ts step at every blended switch; fixed
  (36cdfc6). Forced/back hand-overs now bumpless (0.06-0.4 deg), 50 ms linear blend.
- `dtc_en` boots 0 -- the bench script preflight needs it 1; re-write after every reset.
- **Physical encoder unplug (A8) did NOT ride through** on SMO or flux: 5 ms disagreement debounce
  = 5-6 ms of mis-commutation, |I| 7.4-7.7 A, observer PLL lost lock -> FAULT_SENSOR_LOSS -> coast
  (no OC). Forced-loss A6 rides through only because the sensor stays good until the switch.
  FIXED (c84d75a): ISR-rate QEP frozen-counter detector (`qep_fast_en` 0x0073, RO `qep_fast_trips`
  0x0136, SENSOR_QEP_FAST_*) -> LOSS jump. Unplug now RIDES THROUGH on SMO (~0.3 ms, 1.06 A) and
  flux (~0.7 ms, 0.68 A); 0 false trips over 350-1450 rad/s steps + +/-3 A bursts.
- Disagreement path DOES false-trip under +/-3 A bursts on the inertia-free bench rotor (40 Hz PLL lags
  > 0.5 rad at ~4e4 rad/s^2 elec). Encoder zero is kept from boot: after an unplug the QEP offset shifts
  (~16 deg seen) -> reset the board before accuracy captures. `status --clear` must also clear a fault
  word latched in IDLE (fixed in the kit script).
- A7 (1 rad injected disagreement) peaks |I| 7.3 A before the switch; don't inject > 1 rad. DISAGREE
  blends OUT of the bad sensor angle (design question: jump instead).

**Why:** paper numbers + the open bias/ride-through questions carry over to the next session.
**How to apply:** start from these numbers; A8 ride-through is done; bias also solved; open: DISAGREE blend-vs-jump, disagreement false-trip under +/-3 A bursts, CGT audit, sim lambda. See
[[foc-cgt-volatile-clamp-miscompile]], [[foc-qep-encoder-1000line]].

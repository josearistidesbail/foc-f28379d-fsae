---
name: foc-cgt-volatile-clamp-miscompile
description: "C2000 CGT 25.11.0.LTS turned `if(volatile_g > c) volatile_g = c;` clamps into UNCONDITIONAL stores of c (observer.c, found 2026-10-09); clamp locals instead and check the .asm"
metadata:
  node_type: memory
  type: project
  originSessionId: e722e871-02da-485f-b81b-53d76a19871b
  modified: 2026-10-10T01:18:28.731Z
---

CGT 25.11.0.LTS (-O2, --fp_mode=relaxed, fpu32) miscompiled two in-place clamps on volatile float
globals in `obs_apply_params()`: the if-converted code did the compare + conditional reload, then
stored the CONSTANT from a stack spill unconditionally. Result: `obs_smo_kslide` always read its cap
(4.24) and `obs_smo_tol` always 0.01, at boot AND after any host write -- looked like "something wrote
the params" (it was not the GUI). The identical `flux_tol` line one above compiled correctly, and
`adc_iface.c` vbus-alpha clamps (MINF32/MAXF32 with immediates) are fine, so it seems to need register
pressure. Fixed in commit 36cdfc6 by clamping LOCAL copies and writing each global once.

**Why:** silent, data-dependent miscompile in safety-relevant parameter handling.
**How to apply:** when a param "won't change" or reads a clamp limit, write it via the host and read it
back; then read the kept `<file>.asm` (Debug_*/ dir) for an unconditional `MOV32 @global,R` after a
`CMPF32`. Prefer clamping locals. A firmware-wide audit for this pattern is still owed. See
[[foc-build-linker-facts]].

# Control_V2 pin / parameter map — FILL ME

Fill every **`____`** below from the Control_V2 KiCad schematic + the relevant
datasheets (Infineon 6PS04512E43W39693, your current sensor, RM44AC), then hand
this file back. I use it to configure `board_control_v2.syscfg` (via SysConfig)
and `config/hw/hw_control_v2.h` with **real** values — no guesses.

Device is **TMS320F28379D, package 337ZWT**. Anything you genuinely don't know
yet: write `?` and we'll flag it for the bench instead of guessing.

Legend: **(fixed)** = device/firmware constraint, just confirm · **(fill)** =
needs your value · `HIGH/LOW` = the logic level that *activates* the function.

---

## 1. Power-stage PWM (gate signals)

The 6 gate signals come from EPWM1/2/3 A&B. On the 337ZWT package these can mux
to more than one GPIO, so confirm the actual routed pin for each.

| Signal | EPWM channel (fixed) | GPIO (fill) | Notes |
|---|---|---|---|
| Phase U high | EPWM4A | GPIO `6` | |
| Phase U low  | EPWM4B | GPIO `7` | |
| Phase V high | EPWM5A | GPIO `8` | |
| Phase V low  | EPWM5B | GPIO `9` | |
| Phase W high | EPWM6A | GPIO `10` | |
| Phase W low  | EPWM6B | GPIO `11` | |

- PWM switching frequency: `10` kHz  *(default 10)*
- Dead-band: `1500` ns  *(default 1500; the gate driver / IGBT datasheet sets the minimum)*
- Active level of a **high-side ON**: the EPWMxA output goes `HIGH / LOW` to turn the upper FET on? `HIGH`
  *(i.e. is the gate-driver input active-high? Determines AQ/dead-band polarity.)*

---

## 2. Gate-driver control & status

| Function | GPIO (fill) | Active level | Notes |
|---|---|---|---|
| Gate-driver **enable** (master EN) | GPIO `66` | `HIGH / LOW` | held de-asserted until RUN |
| Auxiliary **enable** (aux EN) | GPIO `131` | `HIGH / LOW` | always HIGH from startup |
| Per-leg enables (if separate) | `____` | | most designs use one master EN |

---

## 3. Power-module fault flags (6PS04512E43W39693)

The intelligent module exposes discrete fault outputs. Fill each that is wired to
the F28379D. Mark which one(s) feed the **hardware trip-zone** (Input X-BAR →
ePWM one-shot trip — this clamps the bridge with the CPU halted).

| Flag | GPIO (fill) | Active level | Wired? | → HW trip-zone? |
|---|---|---|---|---|
| Overcurrent phase A (OC_A) | GPIO `25` | `HIGH / LOW` | Y/N | Y/N |
| Overcurrent phase B (OC_B) | GPIO `27` | `HIGH / LOW` | Y/N | Y/N |
| Overcurrent phase C (OC_C) | GPIO `26` | `HIGH / LOW` | Y/N | Y/N |
| Over-temperature (OT)      | GPIO `64` | `HIGH / LOW` | Y/N | Y/N |
| DC-link over-voltage (DCOV)| GPIO `52` | `HIGH / LOW` | Y/N | Y/N |

- If there is a **single combined** fault line, that is the cleanest thing to
  route to the trip-zone — say so here: combined line = GPIO `____`.
- Are these open-collector / open-drain (need internal pull-up)? `____`

---

## 4. Status LED


| Function | GPIO (fill) | Active level |
|---|---|---|
| Heartbeat / status LED | GPIO `____` | `HIGH / LOW` | Use same F28379D internal LED only

---

## 5. ADC analog inputs

The firmware read path (`src/adc_iface.c`) currently expects each signal on a
**specific ADC module** (below). If your board routes a signal to a *different*
module, just write the actual module + channel and I'll adapt `adc_iface.c` — but
tell me, because the module assignment is not free.

| Signal | ADC module (assumed) | ADC channel (fill) | Notes |
|---|---|---|---|
| Phase current **Iu** | ADC-C | ADCIN `B4` | |
| Phase current **Iv** | ADC-B | ADCIN `C4` | |
| Phase current **Iw** | ADC-A | ADCIN `` | | < Not wired
| **Vbus** sense        | ADC-A | ADCIN `C2` | |
| Resolver **SIN**      | ADC-B | ADCIN `A2` | |
| Resolver **COS**      | ADC-C | ADCIN `B2` | |

- ADC reference: internal **3.0 V** / external ? I have external references for the offset voltages in the current signals op amp, they are at ADCINA4 for Iu and ADCINB5 for Iv.
- If any phase current is **not** wired (KCL reconstruction needed), say which: `Iw (Phase C) not wired`

---


## 6. Current-sense scaling

Tell me the sense type and its numbers; I compute `ISENSE_AMPS_PER_CODE`.

- Sense type: **LEM/closed-loop transducer** → `closed-loop Hall-effect current transducer (compensation principle, likely LEM)`
- If **LEM**: model `unknown`, rated current `300 Arms nominal`, output `~4.9 V at ±300 A (assumed bipolar)`
- If **shunt + amp**: shunt = `N/A`, amp gain = `N/A`
- Zero-current **bias** output voltage: `~2.5 V (assumed, must be verified on bench)`
- Maximum measurable phase current (sensor/AFE limit): `~±300 A continuous, exact sensor limit unknown`
- Sign: for **positive** phase current (into the motor), does the ADC code go
  **above** or **below** the zero-current bias, per phase?
  Iu: `above (assumed)`
  Iv: `above (assumed)`
  Iw: `above (assumed)`
  *(must be confirmed on the bench with known current direction)*

### Derived scaling (assuming bipolar 0.1–4.9 V output)

Output span around bias:

    ±300 A ↔ ±2.4 V
Therefore:

    Current sensitivity ≈ 2.4 V / 300 A
                       ≈ 8.0 mV/A
or
    125 A/V

---

## 7. Vbus sense

- Divider: top resistor = `unknown`, bottom resistor = `unknown`
  → ratio `900 V / 6.5 V = 138.46 : 1` (effective)

- Any buffer/amp gain between divider and ADC:
  `unknown (assume unity gain output stage inside PrimeSTACK)`

- PrimeSTACK voltage monitor scaling:

      Vout = Vbus / 138.46

  or

      Vbus = Vout × 138.46

- Voltage sensor output:
  - 6.5 V @ 900 VDC
  - no built-in overvoltage shutdown
  - measurement only
---

## 8. Resolver / RM44AC

There is a current issue with the resolver circuit, it goes from 0 to 3.3 which i just found out is out of bounds for the ADC reading. I will have to, on a later stage, see if i can replace some resistors to change the gain on the conditioning circuit. Please keep that in mind.

- SIN/COS output **bias** voltage: `1.65` V
- SIN/COS **amplitude**: ± `1.65` V (or `3.3` Vpp)
  *(needed to scale sin/cos to ~[-1,1] and to set the loss-of-signal window)*
- Sensor electrical poles: `1` *(default 1 — one electrical rev per mech rev)*
- Confirm: RM44AC outputs **already-demodulated** SIN/COS (no excitation drive
  needed)? `yes`

---

## 9. Debug serial (SCI)

For the host debug GUI / serial console on the production board.

Just keep the same as the debug, all should be passed using the USB connection
---

## 10. Clock / crystal

Define and use _LAUNCHXL_F28379D (10 MHz)
---

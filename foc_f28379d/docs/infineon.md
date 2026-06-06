# Infineon PrimeSTACK 6PS04512E43W39693

## Overview

Water-cooled 3-phase IGBT inverter stack based on:

- 3 × FF450R12KE4 IGBT modules
- B6 inverter topology
- Rated for motor drives, solar inverters, and power converters

### General Specifications

| Parameter | Value |
|------------|---------|
| DC Bus Voltage | 650 VDC nominal |
| Continuous Output Current | 300 Arms |
| Low-Speed Continuous Current | 220 Arms |
| Overload Capability | 330 Arms for 60 s |
| Overcurrent Shutdown | 625 Apeak (<15 µs) |
| Power Loss @ 500 A | 2400 W |
| Cooling | Water cooled |
| Weight | 7.7 kg |
| Dimensions | 215 × 280 × 120 mm |

---

## Electrical Interface

### Auxiliary Supply

| Parameter | Value |
|------------|---------|
| Supply Voltage | 18–30 V |
| Nominal Supply | 24 V |
| Power Consumption | 40 W |

### Digital Inputs

| Logic State | Voltage |
|------------|---------|
| LOW | 0–1.5 V |
| HIGH | 11–15 V |

### Digital Outputs

Open collector outputs.

| Logic State | Voltage |
|------------|---------|
| LOW (Fault Active) | 0–1.5 V |
| HIGH | Up to 15 V |

---

## Analog Feedback Signals

### Phase Current Sensors

At rated current (300 Arms):

| Signal | Voltage |
|---------|---------|
| Phase A Current | 4.7–5.0 V |
| Phase B Current | 4.7–5.0 V |
| Phase C Current | 4.7–5.0 V |

### DC Bus Voltage Sensor

| Condition | Output |
|------------|---------|
| 900 VDC | 6.5 V |

### Temperature Sensors

| Sensor | Output |
|----------|---------|
| NTC #1 (125°C equivalent) | 4.9 V |
| NTC #2 (82°C equivalent) | 10 V |

> Note: Overtemperature shutdown must be implemented by the customer.

---

## Environmental Limits

| Parameter | Value |
|------------|---------|
| Storage Temperature | -40°C to 85°C |
| Ambient Operating Temperature | -25°C to 55°C |
| Humidity | 5–85% RH (non-condensing) |
| Protection Rating | IP00 |
| Pollution Degree | 2 |

---

## Cooling Requirements

| Parameter | Value |
|------------|---------|
| Coolant Flow Rate | 10 L/min |
| Maximum Water Pressure | 8 bar |
| Pressure Drop | 50 mbar |
| Coolant Temperature | -40°C to 40°C |

---

## Protection Functions

Implemented protections:

- IGBT overcurrent detection
- Driver faults
- Power supply undervoltage
- PCB overtemperature
- Output-stage overtemperature

Optional:

- DC-link overvoltage monitoring

### Error Outputs

Dedicated fault outputs exist for:

- HB-A fault
- HB-B fault
- HB-C fault
- Temperature fault
- DC-link voltage fault

## Error Table

**Error outputs (open collector)**

| Error Condition | HB A (Pin 2) | HB B (Pin 22) | HB C (Pin 5) | Temp. (Pin 6) | Voltage (Pin 16) |
|-----------------|-------------|--------------|-------------|--------------|-----------------|
| Error Driver Core HB A | X | | | | |
| Error Driver Core HB B | | X | | | |
| Error Driver Core HB C | | | X | | |
| Overcurrent HB A | X | X | X | | |
| Overcurrent HB B | X | X | X | | |
| Overcurrent HB C | X | X | X | | |
| Overtemperature Output Stage | X | X | X | X | |
| Overtemperature PCB | | | | X | |
| Overvoltage DC-Link (Option) | X | X | X | | X |
| Undervoltage Power Supply | | | | | X |

**Note:** `X` = High level output (requires external pull-up resistor).


---

## Important Notes

- Voltage measurement is **monitoring only**; no built-in DC bus overvoltage shutdown.
- Overtemperature shutdown must be implemented externally.
- Active clamping is set to:

```text
Vz = 824 V
```

- Rated current specifications assume:
  - Coolant temperature = 40°C
  - Switching frequency = 2.5 kHz
  - Junction temperature ≤ 125°C

---

## Derating Guidance

### Output Frequency

- Full current capability reached around 10 Hz.
- Below 5 Hz continuous current capability is reduced.

### Switching Frequency

Approximate motor current capability:

| Fsw | Current Capability |
|------|------------------|
| 2.5 kHz | 100% (300 Arms) |
| 8 kHz | ~70% |
| 10 kHz | ~60% |
| 14 kHz | ~40% |

For high-frequency FOC applications, thermal derating becomes significant above ~5 kHz.
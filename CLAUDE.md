<!-- DO NOT EDIT - This part is automatically generated. -->

# Claude Code Guidelines

## MANDATORY Pre-Task Steps (DO NOT SKIP)

**CRITICAL - NO EXCEPTIONS**: Before ANY CCS/Texas Instruments-related task (even simple ones), you MUST complete these steps IN ORDER. Do NOT call any ccs-project, ccs-debug, ccs-sysconfig, or ccs-serial MCP tools until both steps are complete.

1. Read `.claude/ccs.settings.md` to get the CCS installation directory
2. Read `{installation_directory}/ccs/theia/resources/ai/CCS.md` using the installation directory from step 1. This file includes information on how to interact with CCS as well as device-specific information (UART backchannel pins, LED setup, transmit best practices, etc.).
3. ONLY THEN proceed with CCS MCP tool calls or any other task work

Do NOT parallelize these steps with task work. Do NOT skip step 2 regardless of task complexity.


<!-- DO NOT EDIT - This part is automatically generated. -->

<!-- User instructions should be added below this line -->

# FOC F28379D — Project Context

## What This Is

Field-Oriented Control firmware for a TMS320F28379D (F2837xD dual-core). CPU1 only.
Two independent hardware variants share the same source tree, selected at build time.

## Paths — Critical Non-Obvious Separation

| Location | Purpose |
|---|---|
| `C:\Users\Jose\source\repos\foc_f28379d\` | Git repo — all source, headers, config, SysConfig `.syscfg` |
| `C:\Users\Jose\workspace_ccstheia\foc_f28379d\` | CCS project metadata only (`.project`, `.cproject`) |

The CCS build variable `APP_ROOT` points to the source repo root. SysConfig output
(generated `board.c`/`board.h`) goes to the **build output** directory inside the workspace,
**not** the source repo. Never edit generated files in `Debug_*/syscfg/` — re-save SysConfig instead.

## Build Configurations

| CCS Config | Preprocessor Defines | Hardware | Motor | Sensor |
|---|---|---|---|---|
| `Debug_BOOSTXL_Teknic_QEP` | `HW_BOOSTXL_DRV8305`, `MOTOR_TEKNIC_M2310P`, `SENSOR_QEP`, `_DEBUG`, `_FLASH`, `CPU1`, `_F2837X`, `F2837x_DEVICE`, `_DUAL_HEADERS`, `LARGE_MODEL` | BOOSTXL-DRV8305EVM on LaunchPad | Teknic M-2310P-LN-04K | eQEP1 encoder |
| `Production_CtrlV2_EMRAX_Resolver` | `HW_CONTROL_BOARD_V2`, `MOTOR_EMRAX_208`, `SENSOR_RM44AC`, … | Custom inverter board | EMRAX 208 | RM44AC resolver |

**Important**: `_LAUNCHXL_F28379D` must be defined for the LaunchPad (10 MHz crystal vs 20 MHz
on the controlCARD). Verify it is in the Debug config Predefined Symbols if the CPU runs at half speed.

## Source Layout

```
src/             main.c, isr.c, foc_pipeline.c, foc_state_machine.c, adc_iface.c,
                 pwm_iface.c, sensor_qep.c, sensor_rm44ac.c, inverter_drv8305.c,
                 inverter_custom_v2.c, safety.c, debug_hooks.c
include/         Public headers (build_config.h, foc_types.h, foc_pipeline.h, …)
config/hw/       Hardware variant headers (hw_boostxl_drv8305.h, hw_control_v2.h)
config/motor/    Motor parameter headers (motor_teknic_m2310p.h, motor_emrax_208.h)
config/sensor/   Sensor parameter headers (sensor_qep.h, sensor_rm44ac.h)
config/gains/    PI gain headers (gains_teknic.h, gains_emrax.h)
syscfg/          SysConfig source files (.syscfg) — never edit generated board.c/h here
src_device/      TI device startup (F2837xD_CodeStartBranch, GlobalVariableDefs, device)
ti_lib/          Copied TI Motor Control SDK transform sources (clarke, park, ipark, pi, svgen)
libraries/       TI Motor Control SDK header-only math (path-matched to SDK install)
```

`build_config.h` is the single include funnel — it pulls in the correct hw/motor/sensor headers.

## SysConfig (Debug Variant)

**Source file**: `syscfg/board_boostxl_drv8305.syscfg`
**Always configure via SysConfig MCP** — never edit `.syscfg` files directly.

### Configured modules

| Instance | Peripheral | Pins | Role |
|---|---|---|---|
| `LED_STATUS` | GPIO31 | — | D9 Red LED, heartbeat |
| `PWM_W` | EPWM1 | GPIO0/1 | Phase W, master — generates ADCSOCA at CTR=0 |
| `PWM_V` | EPWM5 | GPIO8/9 | Phase V, sync slave (count-up after sync) |
| `PWM_U` | EPWM6 | GPIO10/11 | Phase U, sync slave |
| `myADCA` | ADCA | A0/A1/A2 | SOC0=Iu, SOC2=Iw, SOC3=Vbus; INT1→`adcA1_isr` |
| `myADCB` | ADCB | B1 | SOC1=Iv |
| `myADCA1_INT` | INT_ADCA_1 | — | Registered to `adcA1_isr`, PIE group 1 |
| `QEP_SENSOR` | EQEP1 | GPIO20/21/23 | Teknic 4000CPR encoder A/B/I, QPOSMAX=15999 |

**ePWM**: Up-down, TBPRD=5000 (10 kHz at EPWMCLK=100 MHz), AHC dead-band 50 counts (500 ns).
**ADC**: 50 MHz (/4 prescaler), 15-count sample window, all SOCs triggered by EPWM1 SOCA.

## Startup Flow

```
Device_init() → Device_initGPIO() → Interrupt_initModule/VectorTable() → Board_init()
→ debug_init() → safety_init() → adc_init() → pwm_init() → sensor_init()
→ inverter_init()   ← SPI config, gate driver stays DISABLED here
→ foc_init() → sm_init()   ← starts in FOC_IDLE
→ EINT/ERTM   ← adcA1_isr starts firing at 10 kHz
→ super-loop (500 ms LED toggle)
```

## Key Hardware Facts (Debug Variant)

- **Current sense**: DRV8305 SO1/SO2/SO3, gain=10 V/V, shunt=7 mΩ, bias≈1.65 V → ~2048 codes at zero current
- **Vbus divider**: 4.7k/(4.7k+78.7k) ≈ 1/17.74, ADC ref=3.0 V
- **Gate enable**: GPIO124 active-high — stays low until state machine enables it
- **nFAULT**: GPIO125 active-low
- **Encoder**: J14 connector (5V TXB0106 level shifters) → GPIO20/21/23 (EQEP1A/B/I)
- **SPI for DRV8305**: SPIA_BASE

## Bring-Up Status

- [x] Step 1 — LED heartbeat blink — confirmed on hardware
- [x] Step 2 — ePWM + ADC pipeline — ISR confirmed firing at 10 kHz
- [x] Step 3 — eQEP1 configured in SysConfig — not yet verified on hardware
- [ ] Step 4 — Connect BOOSTXL-DRV8305, verify ~2048 on current channels
- [ ] Step 5 — DRV8305 SPI init, verify nFAULT deasserts
- [ ] Step 6 — Rotor alignment current injection (FOC_ALIGN_ROTOR state)
- [ ] Step 7 — Closed-loop current control, verify Iq/Id tracks reference
- [ ] Step 8 — Speed loop, trip-zone HW overcurrent protection

## Temporary Debug Globals (remove before production)

```c
// src/isr.c
volatile uint32_t g_isr_count;      // ISR firing counter

// src/adc_iface.c
volatile uint16_t g_dbg_iu_raw;     // raw ADC Iu (~2048 at zero current with hardware connected)
volatile uint16_t g_dbg_iv_raw;
volatile uint16_t g_dbg_iw_raw;
volatile uint16_t g_dbg_vbus_raw;
```

## Pitfalls Already Hit — Don't Repeat

- **ADC instance naming**: Naming an instance "ADCA" makes SysConfig generate `#define ADCA_BASE ADCA_BASE` (circular, build error). Use "myADCA" or similar.
- **ePWM sync slave direction**: `phaseEnable=true` + `phaseShift=0` in up-down mode requires `counterModeAfterSync` = "Count up" — "Count down" is invalid and errors.
- **Dead-band AHC**: Both RED and FED inputs must be ePWMxA; B complement comes from `polarityFED=inverted`. Do not set FED input to "output of RED" (DEDB_MODE).
- **SysConfig first save**: The build output `syscfg/` directory must exist before saving. Create it with PowerShell `New-Item -ItemType Directory -Force <path>` if the project has never been built.
- **Debugger expressions**: Macros like `ADCARESULT_BASE` cannot be evaluated — use named `volatile` globals or raw addresses.


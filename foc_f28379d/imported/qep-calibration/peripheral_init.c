/*
 * peripheral_init.c - readable rewrite of the auto-generated peripheral
 * configuration from mcb_pmsm_qep_offset_f28379d.c.
 *
 * What the original did, in ~1500 lines of repeated register writes:
 *   - QEP1   : up-counting position counter, max=65535, 4000 cnts/rev
 *   - ePWM1/2/3 : 20 kHz center-aligned, dead-band 15, ePWM1 triggers ADC SOC
 *   - ePWM2 phase-syncs to ePWM1 (no offset); ePWM3 links its values to ePWM2
 *   - ADC-B/C : single SOC each, triggered by ePWM1 SOCA
 *   - SCI-A   : initialized elsewhere (DSP28xx_SciUtil) at host's baud
 *   - GPIO34  : output (heartbeat LED)
 *   - GPIO124 : output (DRV830x ENABLE)
 *
 * The actual algorithm lives in qep_calibration.c.
 */

#include "qep_calibration.h"
#include "F2837xD_device.h"

/* From the generated tree -- already does what we need, no reason to recopy. */
extern void config_QEP_eQEP1(uint32_t pcmax, uint32_t pcinit,
                             uint32_t unit_t, uint32_t cmpval,
                             uint16_t wdt, uint16_t qdecctl,
                             uint16_t qepctl, uint16_t qposctl,
                             uint16_t qcapctl, uint16_t qeint);
extern void InitAdcB(void);
extern void InitAdcC(void);
extern void config_ADCB_SOC0(void);
extern void config_ADCC_SOC0(void);
extern void init_SCI(void);
extern void init_SCI_GPIO(void);
extern void config_ePWM_GPIO(void);
extern void config_ePWM_XBAR(void);

/* ============================================================
 * ePWM module setup
 *
 * Every PWM channel uses the same dead-band and 20 kHz center-aligned
 * configuration. The only per-channel differences are:
 *   - whether it acts as the SYNC master (ePWM1) or slave (ePWM2/3),
 *   - whether it triggers the ADC SOC (ePWM1 only),
 *   - which CMP register links upstream  (ePWM2 links to 1, ePWM3 to 2).
 * ============================================================ */

typedef enum {
    PWM_ROLE_MASTER = 0,    /* drives SOC and SYNCO */
    PWM_ROLE_SLAVE  = 1     /* phase-syncs in from upstream */
} PwmRole;

/* The bit-bucket values below are taken verbatim from the working generated
 * code. Mapping the symbolic-name versions in the comments to the literals:
 *   TBCTL: CTRMODE=up-down, PRDLD=immediate, HSPCLKDIV=0, CLKDIV=0
 *   DBCTL: OUT_MODE=both, POLSEL=ACTIVE_HI_COMPLEMENTARY
 *   AQCTLA = 144 / AQCTLB = 2310: complementary action on CMPA
 *   TZCTL = 0xFFF: do-nothing on trip (handled at higher level)
 */
static void configure_pwm_module(volatile struct EPWM_REGS *pwm,
                                 PwmRole role,
                                 bool trigger_adc,
                                 uint16_t link_to_other)
{
    EALLOW;

    /* Time-base */
    pwm->TBCTL.all = (pwm->TBCTL.all & ~0x3FFF) |
                     (role == PWM_ROLE_MASTER ? 0x0012 : 0x2006);
    pwm->TBCTL2.all = pwm->TBCTL2.all & ~0xC000;
    pwm->TBPRD      = 5001;             /* 20 kHz with 100 MHz TBCLK, up-down */
    pwm->TBPHS.all  = pwm->TBPHS.all & ~0xFFFF0000UL;
    pwm->TBCTR      = 0;

    /* Counter-compare */
    pwm->CMPCTL.all  = pwm->CMPCTL.all  & ~0x3C5F;
    pwm->CMPCTL2.all = pwm->CMPCTL2.all & ~0x3C5F;
    pwm->CMPA.bit.CMPA = 2501;
    pwm->CMPB.bit.CMPB = 2501;
    pwm->CMPC          = 32000;
    pwm->CMPD          = 32000;

    /* Action-qualifier (complementary outputs on CMPA crossings) */
    pwm->AQCTLA.all  = 144;
    pwm->AQCTLB.all  = 2310;
    pwm->AQSFRC.all  = pwm->AQSFRC.all  & ~0x00C0;
    pwm->AQCSFRC.all = pwm->AQCSFRC.all & ~0x000F;

    /* Dead-band: 15 cycles rising + falling */
    pwm->DBCTL.all = (pwm->DBCTL.all & ~0x8FFF) | 0x000B;
    pwm->DBRED.bit.DBRED = 15;
    pwm->DBFED.bit.DBFED = 15;

    /* Event trigger: ADC SOC on master only */
    pwm->ETSEL.all   = (pwm->ETSEL.all & ~0xFF7F) |
                       (trigger_adc ? 0x1A01 : 0x1201);
    pwm->ETPS.all    = (pwm->ETPS.all    & ~0x0030) | 0x0030;
    pwm->ETSOCPS.all = (pwm->ETSOCPS.all & ~0x0F0F) | 0x0101;
    pwm->ETINTPS.all = (pwm->ETINTPS.all & ~0x000F) | 0x0001;

    /* PWM chopper -- disabled */
    pwm->PCCTL.all = pwm->PCCTL.all & ~0x07FF;

    /* Trip-zone (action = do-nothing on every trip event) */
    pwm->TZSEL.all     = 0;
    pwm->TZCTL.all     = (pwm->TZCTL.all  & ~0x0FFF) | 0x0FFF;
    pwm->TZEINT.all    = pwm->TZEINT.all  & ~0x007E;

    /* Digital-compare */
    pwm->DCACTL.all    = (pwm->DCACTL.all & ~0x030F) | 0x0004;
    pwm->DCBCTL.all    = pwm->DCBCTL.all  & ~0x030F;
    pwm->DCTRIPSEL.all = (pwm->DCTRIPSEL.all & ~0xFFFFU) | 0x1010;
    pwm->TZDCSEL.all   = pwm->TZDCSEL.all & ~0x0FFF;
    pwm->DCFCTL.all    = (pwm->DCFCTL.all & ~0x003F) | 0x0010;
    pwm->DCFOFFSET     = 0;
    pwm->DCFWINDOW     = 0;
    pwm->DCCAPCTL.all  = pwm->DCCAPCTL.all & ~0x0001;

    pwm->HRCNFG.all = pwm->HRCNFG.all & ~0x00A0;

    /* Link register: makes downstream module share upstream's values */
    pwm->EPWMXLINK.bit.TBPRDLINK = link_to_other;
    pwm->EPWMXLINK.bit.CMPALINK  = link_to_other;
    pwm->EPWMXLINK.bit.CMPBLINK  = link_to_other;
    pwm->EPWMXLINK.bit.CMPCLINK  = link_to_other;
    pwm->EPWMXLINK.bit.CMPDLINK  = link_to_other;

    pwm->HRPCTL.all = pwm->HRPCTL.all & ~0x0072;

    EDIS;
}

static void start_tbclk(void)
{
    EALLOW;
    CpuSysRegs.PCLKCR0.bit.TBCLKSYNC = 1;
    EDIS;
}

/* ============================================================
 * QEP setup -- the generated config call, named for clarity.
 * ============================================================ */

static void configure_qep1(void)
{
    /* Args mirror the original call in the generated code; the magic numbers
     * are the QDECCTL/QEPCTL/QPOSCTL/QCAPCTL/QEINT register settings. */
    config_QEP_eQEP1(
        /* pos counter max */       65535U,
        /* initial pos     */       0U,
        /* unit timer prd  */       0U,
        /* compare value   */       0U,
        /* watchdog timer  */       0U,
        /* QDECCTL         */       448,
        /* QEPCTL          */       8232,
        /* QPOSCTL         */       32768,
        /* QCAPCTL         */       119,
        /* QEINT           */       0);
}

/* ============================================================
 * DRV830x ENABLE pin (GPIO124) and heartbeat LED (GPIO34)
 * ============================================================ */

static void configure_discrete_gpio(void)
{
    EALLOW;

    /* GPIO124 -> DRV830x ENABLE, push-pull output, default low. */
    GpioCtrlRegs.GPDMUX2.all &= 0xFCFFFFFFU;
    GpioCtrlRegs.GPDDIR.all  |= 0x10000000U;

    /* GPIO34 -> heartbeat LED, push-pull output. */
    GpioCtrlRegs.GPBMUX1.all &= 0xFFFFFFCFU;
    GpioCtrlRegs.GPBDIR.all  |= 0x4U;

    EDIS;
}

/* ============================================================
 * One-shot init for everything
 * ============================================================ */

void board_peripheral_init(void)
{
    /* Board-level: GPIO mux, ePWM cross-bar, SCI pins/baud. */
    init_SCI_GPIO();
    init_SCI();
    config_ePWM_GPIO();
    config_ePWM_XBAR();

    /* QEP1 first so positions are valid when PWM turns on. */
    configure_qep1();

    /* PWM1 = master (sources SYNCO and triggers ADC SOC).
     * PWM2 syncs from 1 (link=0 -> no value link). PWM3 syncs from 2 and
     * shares CMPx/TBPRD with PWM2 (link=2). */
    configure_pwm_module(&EPwm1Regs, PWM_ROLE_MASTER, /*adc=*/true,  /*link=*/0);
    configure_pwm_module(&EPwm2Regs, PWM_ROLE_SLAVE,  /*adc=*/false, /*link=*/0);
    configure_pwm_module(&EPwm3Regs, PWM_ROLE_SLAVE,  /*adc=*/false, /*link=*/2);
    start_tbclk();

    /* ADC-B, ADC-C: each has one SOC channel triggered by ePWM1 SOCA. */
    static uint16_t adcb_initialised = 0, adcc_initialised = 0;
    if (!adcb_initialised) { InitAdcB(); adcb_initialised = 1; }
    if (!adcc_initialised) { InitAdcC(); adcc_initialised = 1; }
    config_ADCB_SOC0();
    config_ADCC_SOC0();

    /* Discrete I/O. */
    configure_discrete_gpio();

    /* Free-running CPU Timer 2 used by the blocking-mode SCI for timeouts. */
    CpuTimer2Regs.PRD.all = 0xFFFFFFFFU;
    CpuTimer2Regs.TIM.all = 0xFFFFFFFFU;
    CpuTimer2Regs.TPR.all = 0x0U;
    StartCpuTimer2();

    calibration_init();
}

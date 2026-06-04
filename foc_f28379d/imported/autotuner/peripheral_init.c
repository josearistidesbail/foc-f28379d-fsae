/*
 * peripheral_init.c - board-level peripheral setup.
 *
 * Same setup as the qep_calibration project, plus SPI (DRV835x gate driver
 * register access) and a 5-rate-group scheduler timer. Magic register
 * literals come straight from the generated code; symbolic names are in
 * the comment blocks beside each.
 */

#include "autotuner.h"
#include "autotuner_kernels.h"
#include "F2837xD_device.h"

extern void init_board(void);                /* MW_c28xx_board.c */
extern void init_SCI(void);                  /* DSP28xx_SciUtil.c */
extern void init_SCI_GPIO(void);
extern void config_ePWM_GPIO(void);
extern void config_ePWM_XBAR(void);
extern void configureADCINT1(void);
extern void InitAdcA(void); extern void config_ADCA_SOC0(void);
extern void InitAdcB(void); extern void config_ADCB_SOC0(void);
extern void InitAdcC(void); extern void config_ADCC_SOC0(void);
extern void config_QEP_eQEP1(uint32_t pcmax, uint32_t pcinit,
                             uint32_t unit_t, uint32_t cmpval,
                             uint16_t wdt, uint16_t qdecctl,
                             uint16_t qepctl, uint16_t qposctl,
                             uint16_t qcapctl, uint16_t qeint);
extern void MW_SPI_init(void);

/* ============================================================
 * ePWM module setup -- shared with the qep_calibration project.
 * 20 kHz center-aligned, dead-band 15, complementary outputs.
 * ePWM1 also triggers the ADC SOC.
 * ============================================================ */

typedef enum { PWM_ROLE_MASTER = 0, PWM_ROLE_SLAVE = 1 } PwmRole;

static void configure_pwm_module(volatile struct EPWM_REGS *pwm,
                                 PwmRole role, bool trigger_adc,
                                 uint16_t link_to_other)
{
    EALLOW;
    pwm->TBCTL.all  = (pwm->TBCTL.all  & ~0x3FFF) |
                      (role == PWM_ROLE_MASTER ? 0x0012 : 0x2006);
    pwm->TBCTL2.all = pwm->TBCTL2.all  & ~0xC000;
    pwm->TBPRD      = 5001;
    pwm->TBPHS.all  = pwm->TBPHS.all   & ~0xFFFF0000UL;
    pwm->TBCTR      = 0;

    pwm->CMPCTL.all  = pwm->CMPCTL.all  & ~0x3C5F;
    pwm->CMPCTL2.all = pwm->CMPCTL2.all & ~0x3C5F;
    pwm->CMPA.bit.CMPA = 2501;
    pwm->CMPB.bit.CMPB = 2501;
    pwm->CMPC = 32000;
    pwm->CMPD = 32000;

    pwm->AQCTLA.all  = 144;
    pwm->AQCTLB.all  = 2310;
    pwm->AQSFRC.all  = pwm->AQSFRC.all  & ~0x00C0;
    pwm->AQCSFRC.all = pwm->AQCSFRC.all & ~0x000F;

    pwm->DBCTL.all = (pwm->DBCTL.all & ~0x8FFF) | 0x000B;
    pwm->DBRED.bit.DBRED = 15;
    pwm->DBFED.bit.DBFED = 15;

    pwm->ETSEL.all   = (pwm->ETSEL.all & ~0xFF7F) |
                       (trigger_adc ? 0x1A01 : 0x1201);
    pwm->ETPS.all    = (pwm->ETPS.all    & ~0x0030) | 0x0030;
    pwm->ETSOCPS.all = (pwm->ETSOCPS.all & ~0x0F0F) | 0x0101;
    pwm->ETINTPS.all = (pwm->ETINTPS.all & ~0x000F) | 0x0001;

    pwm->PCCTL.all   = pwm->PCCTL.all   & ~0x07FF;
    pwm->TZSEL.all   = 0;
    pwm->TZCTL.all   = (pwm->TZCTL.all & ~0x0FFF) | 0x0FFF;
    pwm->TZEINT.all  = pwm->TZEINT.all  & ~0x007E;

    pwm->DCACTL.all    = (pwm->DCACTL.all & ~0x030F) | 0x0004;
    pwm->DCBCTL.all    = pwm->DCBCTL.all  & ~0x030F;
    pwm->DCTRIPSEL.all = (pwm->DCTRIPSEL.all & ~0xFFFFU) | 0x1010;
    pwm->TZDCSEL.all   = pwm->TZDCSEL.all & ~0x0FFF;
    pwm->DCFCTL.all    = (pwm->DCFCTL.all & ~0x003F) | 0x0010;
    pwm->DCFOFFSET     = 0;
    pwm->DCFWINDOW     = 0;
    pwm->DCCAPCTL.all  = pwm->DCCAPCTL.all & ~0x0001;
    pwm->HRCNFG.all    = pwm->HRCNFG.all   & ~0x00A0;

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
 * QEP setup
 * ============================================================ */

static void configure_qep1(void)
{
    config_QEP_eQEP1(
        65535U, 0U, 0U, 0U, 0U,
        448, 8232, 32768, 119, 0);
}

/* ============================================================
 * Discrete GPIO: heartbeat LED (GPIO34) + DRV835x ENABLE (GPIO124)
 * ============================================================ */

static void configure_discrete_gpio(void)
{
    EALLOW;
    GpioCtrlRegs.GPDMUX2.all &= 0xFCFFFFFFU;
    GpioCtrlRegs.GPDDIR.all  |= 0x10000000U;
    GpioCtrlRegs.GPBMUX1.all &= 0xFFFFFFCFU;
    GpioCtrlRegs.GPBDIR.all  |= 0x4U;
    EDIS;
}

/* ============================================================
 * One-shot board init
 * ============================================================ */

void board_init(void)
{
    init_board();
    init_SCI_GPIO();
    init_SCI();
    config_ePWM_GPIO();
    config_ePWM_XBAR();

    configure_qep1();

    configure_pwm_module(&EPwm1Regs, PWM_ROLE_MASTER, /*adc=*/true,  /*link=*/0);
    configure_pwm_module(&EPwm2Regs, PWM_ROLE_SLAVE,  /*adc=*/false, /*link=*/0);
    configure_pwm_module(&EPwm3Regs, PWM_ROLE_SLAVE,  /*adc=*/false, /*link=*/2);
    start_tbclk();

    static bool a_done = false, b_done = false, c_done = false;
    if (!a_done) { InitAdcA(); a_done = true; }
    if (!b_done) { InitAdcB(); b_done = true; }
    if (!c_done) { InitAdcC(); c_done = true; }
    config_ADCA_SOC0();
    config_ADCB_SOC0();
    config_ADCC_SOC0();

    MW_SPI_init();                  /* DRV835x register access bus */
    configure_discrete_gpio();

    /* Free-running CpuTimer2 used by the SCI blocking-mode timeout. */
    CpuTimer2Regs.PRD.all = 0xFFFFFFFFU;
    CpuTimer2Regs.TIM.all = 0xFFFFFFFFU;
    CpuTimer2Regs.TPR.all = 0x0U;
    StartCpuTimer2();

    extern AutotunerContext atc;
    autotuner_kernels_init(&atc);

    configureADCINT1();             /* sources the 20 kHz base interrupt */
}

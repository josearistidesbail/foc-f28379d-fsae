#include "F28x_Project.h"
#include "hal_pwm.h"
#include "config/board_config.h"

#define DEADTIME_COUNTS  ((uint16_t)((float)PWM_DEADTIME_NS * 1e-9f * (float)SYSCLK_HZ))

static void configure_one_leg(volatile struct EPWM_REGS *r, bool is_master)
{
    r->TBCTL.bit.CTRMODE  = TB_COUNT_UPDOWN;
    r->TBCTL.bit.HSPCLKDIV= 0;
    r->TBCTL.bit.CLKDIV   = 0;
    r->TBCTL.bit.PHSEN    = is_master ? TB_DISABLE : TB_ENABLE;
    r->TBCTL.bit.SYNCOSEL = is_master ? TB_CTR_ZERO : TB_SYNC_IN;
    r->TBPRD              = PWM_TBPRD;
    r->TBPHS.bit.TBPHS    = 0;
    r->TBCTR              = 0;

    r->CMPCTL.bit.SHDWAMODE = CC_SHADOW;
    r->CMPCTL.bit.SHDWBMODE = CC_SHADOW;
    r->CMPCTL.bit.LOADAMODE = CC_CTR_ZERO;
    r->CMPCTL.bit.LOADBMODE = CC_CTR_ZERO;
    r->CMPA.bit.CMPA = PWM_TBPRD / 2U;

    /* Symmetric complementary: PWMxA high on up-count compare, low on down. */
    r->AQCTLA.bit.CAU = AQ_CLEAR;
    r->AQCTLA.bit.CAD = AQ_SET;

    /* Active-high complementary with dead-band. */
    r->DBCTL.bit.OUT_MODE = DB_FULL_ENABLE;
    r->DBCTL.bit.POLSEL   = DB_ACTV_HIC;
    r->DBCTL.bit.IN_MODE  = DBA_ALL;
    r->DBRED.bit.DBRED    = DEADTIME_COUNTS;
    r->DBFED.bit.DBFED    = DEADTIME_COUNTS;

    /* Trip-zone: any TZ pin or DCAEVT1 forces both outputs low. */
    r->TZSEL.bit.OSHT1 = 1;
    r->TZCTL.bit.TZA   = TZ_FORCE_LO;
    r->TZCTL.bit.TZB   = TZ_FORCE_LO;
}

void hal_pwm_init(void)
{
    EALLOW;
    /* Stop the time-base clock while we reconfigure all three modules. */
    CpuSysRegs.PCLKCR0.bit.TBCLKSYNC = 0;

    /* Pin mux for PWM1A/B, PWM2A/B, PWM3A/B on GPIO0..5. */
    InitEPwm1Gpio();
    InitEPwm2Gpio();
    InitEPwm3Gpio();

    configure_one_leg(&EPwm1Regs, true);
    configure_one_leg(&EPwm2Regs, false);
    configure_one_leg(&EPwm3Regs, false);

    /* ePWM1 fires ADC SOC at period match (defines the FOC ISR cadence). */
    EPwm1Regs.ETSEL.bit.SOCAEN  = 1;
    EPwm1Regs.ETSEL.bit.SOCASEL = ET_CTR_PRD;
    EPwm1Regs.ETPS.bit.SOCAPRD  = ET_1ST;

    CpuSysRegs.PCLKCR0.bit.TBCLKSYNC = 1;
    EDIS;
}

static inline uint16_t duty_to_counts(float d)
{
    if (d < 0.0f)      d = 0.0f;
    else if (d > 1.0f) d = 1.0f;
    return (uint16_t)(d * (float)PWM_TBPRD);
}

void hal_pwm_set_duties(const vec_abc_t d)
{
    EPwm1Regs.CMPA.bit.CMPA = duty_to_counts(d.a);
    EPwm2Regs.CMPA.bit.CMPA = duty_to_counts(d.b);
    EPwm3Regs.CMPA.bit.CMPA = duty_to_counts(d.c);
}

void hal_pwm_outputs_enable(void)
{
    EALLOW;
    EPwm1Regs.TZCLR.bit.OST = 1;
    EPwm2Regs.TZCLR.bit.OST = 1;
    EPwm3Regs.TZCLR.bit.OST = 1;
    EDIS;
}

void hal_pwm_outputs_disable(void)
{
    EALLOW;
    EPwm1Regs.TZFRC.bit.OST = 1;
    EPwm2Regs.TZFRC.bit.OST = 1;
    EPwm3Regs.TZFRC.bit.OST = 1;
    EDIS;
}

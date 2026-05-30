#include "F28x_Project.h"
#include "hal_adc.h"
#include "config/board_config.h"
#include "config/control_config.h"

static uint16_t s_ia_zero = ISENSE_ZERO_COUNT;
static uint16_t s_ib_zero = ISENSE_ZERO_COUNT;
static uint16_t s_ic_zero = ISENSE_ZERO_COUNT;

static void configure_module_common(volatile struct ADC_REGS *adc, int adc_id)
{
    adc->ADCCTL2.bit.PRESCALE   = 6;        /* ADCCLK = SYSCLK/4 = 50 MHz */
    AdcSetMode(adc_id, ADC_RESOLUTION_12BIT, ADC_SIGNALMODE_SINGLE);
    adc->ADCCTL1.bit.INTPULSEPOS = 1;       /* late pulse, after conversion */
    adc->ADCCTL1.bit.ADCPWDNZ    = 1;
    DELAY_US(1000);
}

void hal_adc_init(void)
{
    EALLOW;
    configure_module_common(&AdcaRegs, ADC_ADCA);
    configure_module_common(&AdcbRegs, ADC_ADCB);
    configure_module_common(&AdccRegs, ADC_ADCC);

    /* TRIGSEL = 5 -> ePWM1 SOCA (matches original Simulink config). */
    const uint16_t TRIG_EPWM1_SOCA = 5U;

    /* Phase A current: ISENA -> ADCC-IN2, SOC0. */
    AdccRegs.ADCSOC0CTL.bit.CHSEL   = 2;
    AdccRegs.ADCSOC0CTL.bit.ACQPS   = ADC_ACQPS;
    AdccRegs.ADCSOC0CTL.bit.TRIGSEL = TRIG_EPWM1_SOCA;

    /* Phase B current: ISENB -> ADCB-IN2, SOC0. */
    AdcbRegs.ADCSOC0CTL.bit.CHSEL   = 2;
    AdcbRegs.ADCSOC0CTL.bit.ACQPS   = ADC_ACQPS;
    AdcbRegs.ADCSOC0CTL.bit.TRIGSEL = TRIG_EPWM1_SOCA;

    /* Phase C current: ISENC -> ADCA-IN2, SOC0. */
    AdcaRegs.ADCSOC0CTL.bit.CHSEL   = 2;
    AdcaRegs.ADCSOC0CTL.bit.ACQPS   = ADC_ACQPS;
    AdcaRegs.ADCSOC0CTL.bit.TRIGSEL = TRIG_EPWM1_SOCA;

    /* DC bus voltage: VSENPVDD -> ADCA-IN3, SOC1 (same trigger). */
    AdcaRegs.ADCSOC1CTL.bit.CHSEL   = 3;
    AdcaRegs.ADCSOC1CTL.bit.ACQPS   = ADC_ACQPS;
    AdcaRegs.ADCSOC1CTL.bit.TRIGSEL = TRIG_EPWM1_SOCA;

    /* ADC-B INT1 on EOC of SOC0 drives the FOC ISR (matches original). */
    AdcbRegs.ADCINTSEL1N2.bit.INT1SEL = 0;
    AdcbRegs.ADCINTSEL1N2.bit.INT1E   = 1;
    AdcbRegs.ADCINTSEL1N2.bit.INT1CONT= 0;
    AdcbRegs.ADCINTFLGCLR.bit.ADCINT1 = 1;
    EDIS;
}

uint16_t hal_adc_read_raw_ia(void)   { return ADC_IA_RESULT_REG; }
uint16_t hal_adc_read_raw_ib(void)   { return ADC_IB_RESULT_REG; }
uint16_t hal_adc_read_raw_ic(void)   { return ADC_IC_RESULT_REG; }
uint16_t hal_adc_read_raw_vbus(void) { return ADC_VBUS_RESULT_REG; }

vec_abc_t hal_adc_read_currents_pu(void)
{
    int16_t ia_c = (int16_t)ADC_IA_RESULT_REG - (int16_t)s_ia_zero;
    int16_t ib_c = (int16_t)ADC_IB_RESULT_REG - (int16_t)s_ib_zero;
    int16_t ic_c = (int16_t)ADC_IC_RESULT_REG - (int16_t)s_ic_zero;

    const float k = ISENSE_AMPS_PER_COUNT / BASE_CURRENT_A;

    vec_abc_t i;
    i.a = (float)ia_c * k;
    i.b = (float)ib_c * k;
    i.c = (float)ic_c * k;
    return i;
}

float hal_adc_read_vbus_pu(void)
{
    return ((float)ADC_VBUS_RESULT_REG * VBUS_VOLTS_PER_COUNT) / BASE_VOLTAGE_V;
}

void hal_adc_set_zero_offsets(uint16_t ia_zero, uint16_t ib_zero, uint16_t ic_zero)
{
    s_ia_zero = ia_zero;
    s_ib_zero = ib_zero;
    s_ic_zero = ic_zero;
}

void hal_adc_clear_eoc_flag(void)
{
    AdcbRegs.ADCINTFLGCLR.bit.ADCINT1 = 1;
    PieCtrlRegs.PIEACK.all = PIEACK_GROUP1;
}

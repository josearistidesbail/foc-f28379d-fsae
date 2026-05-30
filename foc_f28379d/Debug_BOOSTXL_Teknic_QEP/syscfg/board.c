/*
 * Copyright (c) 2020 Texas Instruments Incorporated - http://www.ti.com
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions
 * are met:
 *
 * *  Redistributions of source code must retain the above copyright
 *    notice, this list of conditions and the following disclaimer.
 *
 * *  Redistributions in binary form must reproduce the above copyright
 *    notice, this list of conditions and the following disclaimer in the
 *    documentation and/or other materials provided with the distribution.
 *
 * *  Neither the name of Texas Instruments Incorporated nor the names of
 *    its contributors may be used to endorse or promote products derived
 *    from this software without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
 * AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO,
 * THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR
 * PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR
 * CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL,
 * EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO,
 * PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS;
 * OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY,
 * WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR
 * OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE,
 * EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 *
 */

#include "board.h"

//*****************************************************************************
//
// Board Configurations
// Initializes the rest of the modules.
// Call this function in your application if you wish to do all module
// initialization.
// If you wish to not use some of the initializations, instead of the
// Board_init use the individual Module_inits
//
//*****************************************************************************
void Board_init()
{
	EALLOW;

	PinMux_init();
	SYNC_init();
	ADC_init();
	EPWM_init();
	EQEP_init();
	GPIO_init();
	SCI_init();
	SPI_init();
	INTERRUPT_init();

	EDIS;
}

//*****************************************************************************
//
// PINMUX Configurations
//
//*****************************************************************************
void PinMux_init()
{
	//
	// PinMux for modules assigned to CPU1
	//

	//
	// EPWM1 -> PWM_U Pinmux
	//
	GPIO_setPinConfig(PWM_U_EPWMA_PIN_CONFIG);
	GPIO_setPadConfig(PWM_U_EPWMA_GPIO, GPIO_PIN_TYPE_STD);
	GPIO_setQualificationMode(PWM_U_EPWMA_GPIO, GPIO_QUAL_SYNC);

	GPIO_setPinConfig(PWM_U_EPWMB_PIN_CONFIG);
	GPIO_setPadConfig(PWM_U_EPWMB_GPIO, GPIO_PIN_TYPE_STD);
	GPIO_setQualificationMode(PWM_U_EPWMB_GPIO, GPIO_QUAL_SYNC);

	//
	// EPWM2 -> PWM_V Pinmux
	//
	GPIO_setPinConfig(PWM_V_EPWMA_PIN_CONFIG);
	GPIO_setPadConfig(PWM_V_EPWMA_GPIO, GPIO_PIN_TYPE_STD);
	GPIO_setQualificationMode(PWM_V_EPWMA_GPIO, GPIO_QUAL_SYNC);

	GPIO_setPinConfig(PWM_V_EPWMB_PIN_CONFIG);
	GPIO_setPadConfig(PWM_V_EPWMB_GPIO, GPIO_PIN_TYPE_STD);
	GPIO_setQualificationMode(PWM_V_EPWMB_GPIO, GPIO_QUAL_SYNC);

	//
	// EPWM3 -> PWM_W Pinmux
	//
	GPIO_setPinConfig(PWM_W_EPWMA_PIN_CONFIG);
	GPIO_setPadConfig(PWM_W_EPWMA_GPIO, GPIO_PIN_TYPE_STD);
	GPIO_setQualificationMode(PWM_W_EPWMA_GPIO, GPIO_QUAL_SYNC);

	GPIO_setPinConfig(PWM_W_EPWMB_PIN_CONFIG);
	GPIO_setPadConfig(PWM_W_EPWMB_GPIO, GPIO_PIN_TYPE_STD);
	GPIO_setQualificationMode(PWM_W_EPWMB_GPIO, GPIO_QUAL_SYNC);

	//
	// EQEP1 -> QEP_SENSOR Pinmux
	//
	GPIO_setPinConfig(QEP_SENSOR_EQEPA_PIN_CONFIG);
	GPIO_setPadConfig(QEP_SENSOR_EQEPA_GPIO, GPIO_PIN_TYPE_STD);
	GPIO_setQualificationMode(QEP_SENSOR_EQEPA_GPIO, GPIO_QUAL_SYNC);

	GPIO_setPinConfig(QEP_SENSOR_EQEPB_PIN_CONFIG);
	GPIO_setPadConfig(QEP_SENSOR_EQEPB_GPIO, GPIO_PIN_TYPE_STD);
	GPIO_setQualificationMode(QEP_SENSOR_EQEPB_GPIO, GPIO_QUAL_SYNC);

	GPIO_setPinConfig(QEP_SENSOR_EQEPINDEX_PIN_CONFIG);
	GPIO_setPadConfig(QEP_SENSOR_EQEPINDEX_GPIO, GPIO_PIN_TYPE_STD);
	GPIO_setQualificationMode(QEP_SENSOR_EQEPINDEX_GPIO, GPIO_QUAL_SYNC);

	// GPIO31 -> LED_STATUS_GPIO Pinmux
	GPIO_setPinConfig(GPIO_31_GPIO31);
	// GPIO124 -> DRV8305_EN_GATE Pinmux
	GPIO_setPinConfig(GPIO_124_GPIO124);
	// GPIO19 -> DRV8305_NFAULT Pinmux
	GPIO_setPinConfig(GPIO_19_GPIO19);
	// GPIO61 -> DRV8305_SCS Pinmux
	GPIO_setPinConfig(GPIO_61_GPIO61);
	// GPIO125 -> DRV8305_WAKE Pinmux
	GPIO_setPinConfig(GPIO_125_GPIO125);
	//
	// SCIA -> UART_DEBUG Pinmux
	//
	GPIO_setPinConfig(UART_DEBUG_SCIRX_PIN_CONFIG);
	GPIO_setPadConfig(UART_DEBUG_SCIRX_GPIO, GPIO_PIN_TYPE_STD | GPIO_PIN_TYPE_PULLUP);
	GPIO_setQualificationMode(UART_DEBUG_SCIRX_GPIO, GPIO_QUAL_ASYNC);

	GPIO_setPinConfig(UART_DEBUG_SCITX_PIN_CONFIG);
	GPIO_setPadConfig(UART_DEBUG_SCITX_GPIO, GPIO_PIN_TYPE_STD | GPIO_PIN_TYPE_PULLUP);
	GPIO_setQualificationMode(UART_DEBUG_SCITX_GPIO, GPIO_QUAL_ASYNC);

	//
	// SPIA -> DRV8305_SPI Pinmux
	//
	GPIO_setPinConfig(DRV8305_SPI_SPIPICO_PIN_CONFIG);
	GPIO_setPadConfig(DRV8305_SPI_SPIPICO_GPIO, GPIO_PIN_TYPE_STD);
	GPIO_setQualificationMode(DRV8305_SPI_SPIPICO_GPIO, GPIO_QUAL_ASYNC);

	GPIO_setPinConfig(DRV8305_SPI_SPIPOCI_PIN_CONFIG);
	GPIO_setPadConfig(DRV8305_SPI_SPIPOCI_GPIO, GPIO_PIN_TYPE_STD);
	GPIO_setQualificationMode(DRV8305_SPI_SPIPOCI_GPIO, GPIO_QUAL_ASYNC);

	GPIO_setPinConfig(DRV8305_SPI_SPICLK_PIN_CONFIG);
	GPIO_setPadConfig(DRV8305_SPI_SPICLK_GPIO, GPIO_PIN_TYPE_STD);
	GPIO_setQualificationMode(DRV8305_SPI_SPICLK_GPIO, GPIO_QUAL_ASYNC);


}

//*****************************************************************************
//
// ADC Configurations
//
//*****************************************************************************
void ADC_init(){
	myADCA_init();
	myADCB_init();
	myADCC_init();
}

void myADCA_init(){
	//
	// Configures the analog-to-digital converter module prescaler.
	//
	ADC_setPrescaler(myADCA_BASE, ADC_CLK_DIV_4_0);
	//
	// Configures the analog-to-digital converter resolution and signal mode.
	//
	ADC_setMode(myADCA_BASE, ADC_RESOLUTION_12BIT, ADC_MODE_SINGLE_ENDED);
	//
	// Sets the timing of the end-of-conversion pulse
	//
	ADC_setInterruptPulseMode(myADCA_BASE, ADC_PULSE_END_OF_CONV);
	//
	// Powers up the analog-to-digital converter core.
	//
	ADC_enableConverter(myADCA_BASE);
	//
	// Delay for 1ms to allow ADC time to power up
	//
	DEVICE_DELAY_US(500);
	//
	// SOC Configuration: Setup ADC EPWM channel and trigger settings
	//
	// Disables SOC burst mode.
	//
	ADC_disableBurstMode(myADCA_BASE);
	//
	// Sets the priority mode of the SOCs.
	//
	ADC_setSOCPriority(myADCA_BASE, ADC_PRI_ALL_ROUND_ROBIN);
	//
	// Start of Conversion 2 Configuration
	//
	//
	// Configures a start-of-conversion (SOC) in the ADC and its interrupt SOC trigger.
	// 	  	SOC number		: 2
	//	  	Trigger			: ADC_TRIGGER_EPWM1_SOCA
	//	  	Channel			: ADC_CH_ADCIN2
	//	 	Sample Window	: 15 SYSCLK cycles
	//		Interrupt Trigger: ADC_INT_SOC_TRIGGER_NONE
	//
	ADC_setupSOC(myADCA_BASE, ADC_SOC_NUMBER2, ADC_TRIGGER_EPWM1_SOCA, ADC_CH_ADCIN2, 15U);
	ADC_setInterruptSOCTrigger(myADCA_BASE, ADC_SOC_NUMBER2, ADC_INT_SOC_TRIGGER_NONE);
	//
	// Start of Conversion 3 Configuration
	//
	//
	// Configures a start-of-conversion (SOC) in the ADC and its interrupt SOC trigger.
	// 	  	SOC number		: 3
	//	  	Trigger			: ADC_TRIGGER_EPWM1_SOCA
	//	  	Channel			: ADC_CH_ADCIN3
	//	 	Sample Window	: 15 SYSCLK cycles
	//		Interrupt Trigger: ADC_INT_SOC_TRIGGER_NONE
	//
	ADC_setupSOC(myADCA_BASE, ADC_SOC_NUMBER3, ADC_TRIGGER_EPWM1_SOCA, ADC_CH_ADCIN3, 15U);
	ADC_setInterruptSOCTrigger(myADCA_BASE, ADC_SOC_NUMBER3, ADC_INT_SOC_TRIGGER_NONE);
	//
	// ADC Interrupt 1 Configuration
	// 		Source	: ADC_SOC_NUMBER3
	// 		Interrupt Source: enabled
	// 		Continuous Mode	: disabled
	//
	//
	ADC_setInterruptSource(myADCA_BASE, ADC_INT_NUMBER1, ADC_SOC_NUMBER3);
	ADC_clearInterruptStatus(myADCA_BASE, ADC_INT_NUMBER1);
	ADC_disableContinuousMode(myADCA_BASE, ADC_INT_NUMBER1);
	ADC_enableInterrupt(myADCA_BASE, ADC_INT_NUMBER1);
}

void myADCB_init(){
	//
	// Configures the analog-to-digital converter module prescaler.
	//
	ADC_setPrescaler(myADCB_BASE, ADC_CLK_DIV_4_0);
	//
	// Configures the analog-to-digital converter resolution and signal mode.
	//
	ADC_setMode(myADCB_BASE, ADC_RESOLUTION_12BIT, ADC_MODE_SINGLE_ENDED);
	//
	// Sets the timing of the end-of-conversion pulse
	//
	ADC_setInterruptPulseMode(myADCB_BASE, ADC_PULSE_END_OF_ACQ_WIN);
	//
	// Powers up the analog-to-digital converter core.
	//
	ADC_enableConverter(myADCB_BASE);
	//
	// Delay for 1ms to allow ADC time to power up
	//
	DEVICE_DELAY_US(500);
	//
	// SOC Configuration: Setup ADC EPWM channel and trigger settings
	//
	// Disables SOC burst mode.
	//
	ADC_disableBurstMode(myADCB_BASE);
	//
	// Sets the priority mode of the SOCs.
	//
	ADC_setSOCPriority(myADCB_BASE, ADC_PRI_ALL_ROUND_ROBIN);
	//
	// Start of Conversion 1 Configuration
	//
	//
	// Configures a start-of-conversion (SOC) in the ADC and its interrupt SOC trigger.
	// 	  	SOC number		: 1
	//	  	Trigger			: ADC_TRIGGER_EPWM1_SOCA
	//	  	Channel			: ADC_CH_ADCIN2
	//	 	Sample Window	: 15 SYSCLK cycles
	//		Interrupt Trigger: ADC_INT_SOC_TRIGGER_NONE
	//
	ADC_setupSOC(myADCB_BASE, ADC_SOC_NUMBER1, ADC_TRIGGER_EPWM1_SOCA, ADC_CH_ADCIN2, 15U);
	ADC_setInterruptSOCTrigger(myADCB_BASE, ADC_SOC_NUMBER1, ADC_INT_SOC_TRIGGER_NONE);
}

void myADCC_init(){
	//
	// Configures the analog-to-digital converter module prescaler.
	//
	ADC_setPrescaler(myADCC_BASE, ADC_CLK_DIV_4_0);
	//
	// Configures the analog-to-digital converter resolution and signal mode.
	//
	ADC_setMode(myADCC_BASE, ADC_RESOLUTION_12BIT, ADC_MODE_SINGLE_ENDED);
	//
	// Sets the timing of the end-of-conversion pulse
	//
	ADC_setInterruptPulseMode(myADCC_BASE, ADC_PULSE_END_OF_ACQ_WIN);
	//
	// Powers up the analog-to-digital converter core.
	//
	ADC_enableConverter(myADCC_BASE);
	//
	// Delay for 1ms to allow ADC time to power up
	//
	DEVICE_DELAY_US(500);
	//
	// SOC Configuration: Setup ADC EPWM channel and trigger settings
	//
	// Disables SOC burst mode.
	//
	ADC_disableBurstMode(myADCC_BASE);
	//
	// Sets the priority mode of the SOCs.
	//
	ADC_setSOCPriority(myADCC_BASE, ADC_PRI_ALL_ROUND_ROBIN);
	//
	// Start of Conversion 0 Configuration
	//
	//
	// Configures a start-of-conversion (SOC) in the ADC and its interrupt SOC trigger.
	// 	  	SOC number		: 0
	//	  	Trigger			: ADC_TRIGGER_EPWM1_SOCA
	//	  	Channel			: ADC_CH_ADCIN2
	//	 	Sample Window	: 15 SYSCLK cycles
	//		Interrupt Trigger: ADC_INT_SOC_TRIGGER_NONE
	//
	ADC_setupSOC(myADCC_BASE, ADC_SOC_NUMBER0, ADC_TRIGGER_EPWM1_SOCA, ADC_CH_ADCIN2, 15U);
	ADC_setInterruptSOCTrigger(myADCC_BASE, ADC_SOC_NUMBER0, ADC_INT_SOC_TRIGGER_NONE);
}



//*****************************************************************************
//
// EPWM Configurations
//
//*****************************************************************************
void EPWM_init(){
    EPWM_setClockPrescaler(PWM_U_BASE, EPWM_CLOCK_DIVIDER_1, EPWM_HSCLOCK_DIVIDER_2);	
    EPWM_setTimeBasePeriod(PWM_U_BASE, 5000);	
    EPWM_setTimeBaseCounter(PWM_U_BASE, 0);	
    EPWM_setTimeBaseCounterMode(PWM_U_BASE, EPWM_COUNTER_MODE_UP_DOWN);	
    EPWM_disablePhaseShiftLoad(PWM_U_BASE);	
    EPWM_setPhaseShift(PWM_U_BASE, 0);	
    EPWM_setSyncOutPulseMode(PWM_U_BASE, EPWM_SYNC_OUT_PULSE_ON_COUNTER_ZERO);	
    EPWM_setCounterCompareValue(PWM_U_BASE, EPWM_COUNTER_COMPARE_A, 2500);	
    EPWM_setCounterCompareShadowLoadMode(PWM_U_BASE, EPWM_COUNTER_COMPARE_A, EPWM_COMP_LOAD_ON_CNTR_ZERO);	
    EPWM_setCounterCompareValue(PWM_U_BASE, EPWM_COUNTER_COMPARE_B, 0);	
    EPWM_setCounterCompareShadowLoadMode(PWM_U_BASE, EPWM_COUNTER_COMPARE_B, EPWM_COMP_LOAD_ON_CNTR_ZERO);	
    EPWM_disableActionQualifierShadowLoadMode(PWM_U_BASE, EPWM_ACTION_QUALIFIER_A);	
    EPWM_setActionQualifierAction(PWM_U_BASE, EPWM_AQ_OUTPUT_A, EPWM_AQ_OUTPUT_NO_CHANGE, EPWM_AQ_OUTPUT_ON_TIMEBASE_ZERO);	
    EPWM_setActionQualifierAction(PWM_U_BASE, EPWM_AQ_OUTPUT_A, EPWM_AQ_OUTPUT_NO_CHANGE, EPWM_AQ_OUTPUT_ON_TIMEBASE_PERIOD);	
    EPWM_setActionQualifierAction(PWM_U_BASE, EPWM_AQ_OUTPUT_A, EPWM_AQ_OUTPUT_HIGH, EPWM_AQ_OUTPUT_ON_TIMEBASE_UP_CMPA);	
    EPWM_setActionQualifierAction(PWM_U_BASE, EPWM_AQ_OUTPUT_A, EPWM_AQ_OUTPUT_LOW, EPWM_AQ_OUTPUT_ON_TIMEBASE_DOWN_CMPA);	
    EPWM_setActionQualifierAction(PWM_U_BASE, EPWM_AQ_OUTPUT_A, EPWM_AQ_OUTPUT_NO_CHANGE, EPWM_AQ_OUTPUT_ON_TIMEBASE_UP_CMPB);	
    EPWM_setActionQualifierAction(PWM_U_BASE, EPWM_AQ_OUTPUT_A, EPWM_AQ_OUTPUT_NO_CHANGE, EPWM_AQ_OUTPUT_ON_TIMEBASE_DOWN_CMPB);	
    EPWM_disableActionQualifierShadowLoadMode(PWM_U_BASE, EPWM_ACTION_QUALIFIER_B);	
    EPWM_setActionQualifierAction(PWM_U_BASE, EPWM_AQ_OUTPUT_B, EPWM_AQ_OUTPUT_NO_CHANGE, EPWM_AQ_OUTPUT_ON_TIMEBASE_ZERO);	
    EPWM_setActionQualifierAction(PWM_U_BASE, EPWM_AQ_OUTPUT_B, EPWM_AQ_OUTPUT_NO_CHANGE, EPWM_AQ_OUTPUT_ON_TIMEBASE_PERIOD);	
    EPWM_setActionQualifierAction(PWM_U_BASE, EPWM_AQ_OUTPUT_B, EPWM_AQ_OUTPUT_NO_CHANGE, EPWM_AQ_OUTPUT_ON_TIMEBASE_UP_CMPA);	
    EPWM_setActionQualifierAction(PWM_U_BASE, EPWM_AQ_OUTPUT_B, EPWM_AQ_OUTPUT_NO_CHANGE, EPWM_AQ_OUTPUT_ON_TIMEBASE_DOWN_CMPA);	
    EPWM_setActionQualifierAction(PWM_U_BASE, EPWM_AQ_OUTPUT_B, EPWM_AQ_OUTPUT_NO_CHANGE, EPWM_AQ_OUTPUT_ON_TIMEBASE_UP_CMPB);	
    EPWM_setActionQualifierAction(PWM_U_BASE, EPWM_AQ_OUTPUT_B, EPWM_AQ_OUTPUT_NO_CHANGE, EPWM_AQ_OUTPUT_ON_TIMEBASE_DOWN_CMPB);	
    EPWM_setDeadBandDelayPolarity(PWM_U_BASE, EPWM_DB_FED, EPWM_DB_POLARITY_ACTIVE_LOW);	
    EPWM_setDeadBandDelayMode(PWM_U_BASE, EPWM_DB_RED, true);	
    EPWM_setRisingEdgeDelayCountShadowLoadMode(PWM_U_BASE, EPWM_RED_LOAD_ON_CNTR_ZERO);	
    EPWM_disableRisingEdgeDelayCountShadowLoadMode(PWM_U_BASE);	
    EPWM_setRisingEdgeDelayCount(PWM_U_BASE, 50);	
    EPWM_setDeadBandDelayMode(PWM_U_BASE, EPWM_DB_FED, true);	
    EPWM_setFallingEdgeDelayCountShadowLoadMode(PWM_U_BASE, EPWM_FED_LOAD_ON_CNTR_ZERO);	
    EPWM_disableFallingEdgeDelayCountShadowLoadMode(PWM_U_BASE);	
    EPWM_setFallingEdgeDelayCount(PWM_U_BASE, 50);	
    EPWM_setDeadBandControlShadowLoadMode(PWM_U_BASE, EPWM_DB_LOAD_ON_CNTR_ZERO);	
    EPWM_disableDeadBandControlShadowLoadMode(PWM_U_BASE);	
    EPWM_enableADCTrigger(PWM_U_BASE, EPWM_SOC_A);	
    EPWM_setADCTriggerSource(PWM_U_BASE, EPWM_SOC_A, EPWM_SOC_TBCTR_ZERO);	
    EPWM_setADCTriggerEventPrescale(PWM_U_BASE, EPWM_SOC_A, 1);	
    EPWM_setClockPrescaler(PWM_V_BASE, EPWM_CLOCK_DIVIDER_1, EPWM_HSCLOCK_DIVIDER_2);	
    EPWM_setTimeBasePeriod(PWM_V_BASE, 5000);	
    EPWM_setTimeBaseCounter(PWM_V_BASE, 0);	
    EPWM_setTimeBaseCounterMode(PWM_V_BASE, EPWM_COUNTER_MODE_UP_DOWN);	
    EPWM_setCountModeAfterSync(PWM_V_BASE, EPWM_COUNT_MODE_UP_AFTER_SYNC);	
    EPWM_enablePhaseShiftLoad(PWM_V_BASE);	
    EPWM_setPhaseShift(PWM_V_BASE, 0);	
    EPWM_setSyncOutPulseMode(PWM_V_BASE, EPWM_SYNC_OUT_PULSE_ON_EPWMxSYNCIN);	
    EPWM_setCounterCompareValue(PWM_V_BASE, EPWM_COUNTER_COMPARE_A, 2500);	
    EPWM_setCounterCompareShadowLoadMode(PWM_V_BASE, EPWM_COUNTER_COMPARE_A, EPWM_COMP_LOAD_ON_CNTR_ZERO);	
    EPWM_setCounterCompareValue(PWM_V_BASE, EPWM_COUNTER_COMPARE_B, 0);	
    EPWM_setCounterCompareShadowLoadMode(PWM_V_BASE, EPWM_COUNTER_COMPARE_B, EPWM_COMP_LOAD_ON_CNTR_ZERO);	
    EPWM_disableActionQualifierShadowLoadMode(PWM_V_BASE, EPWM_ACTION_QUALIFIER_A);	
    EPWM_setActionQualifierAction(PWM_V_BASE, EPWM_AQ_OUTPUT_A, EPWM_AQ_OUTPUT_NO_CHANGE, EPWM_AQ_OUTPUT_ON_TIMEBASE_ZERO);	
    EPWM_setActionQualifierAction(PWM_V_BASE, EPWM_AQ_OUTPUT_A, EPWM_AQ_OUTPUT_NO_CHANGE, EPWM_AQ_OUTPUT_ON_TIMEBASE_PERIOD);	
    EPWM_setActionQualifierAction(PWM_V_BASE, EPWM_AQ_OUTPUT_A, EPWM_AQ_OUTPUT_HIGH, EPWM_AQ_OUTPUT_ON_TIMEBASE_UP_CMPA);	
    EPWM_setActionQualifierAction(PWM_V_BASE, EPWM_AQ_OUTPUT_A, EPWM_AQ_OUTPUT_LOW, EPWM_AQ_OUTPUT_ON_TIMEBASE_DOWN_CMPA);	
    EPWM_setActionQualifierAction(PWM_V_BASE, EPWM_AQ_OUTPUT_A, EPWM_AQ_OUTPUT_NO_CHANGE, EPWM_AQ_OUTPUT_ON_TIMEBASE_UP_CMPB);	
    EPWM_setActionQualifierAction(PWM_V_BASE, EPWM_AQ_OUTPUT_A, EPWM_AQ_OUTPUT_NO_CHANGE, EPWM_AQ_OUTPUT_ON_TIMEBASE_DOWN_CMPB);	
    EPWM_disableActionQualifierShadowLoadMode(PWM_V_BASE, EPWM_ACTION_QUALIFIER_B);	
    EPWM_setActionQualifierAction(PWM_V_BASE, EPWM_AQ_OUTPUT_B, EPWM_AQ_OUTPUT_NO_CHANGE, EPWM_AQ_OUTPUT_ON_TIMEBASE_ZERO);	
    EPWM_setActionQualifierAction(PWM_V_BASE, EPWM_AQ_OUTPUT_B, EPWM_AQ_OUTPUT_NO_CHANGE, EPWM_AQ_OUTPUT_ON_TIMEBASE_PERIOD);	
    EPWM_setActionQualifierAction(PWM_V_BASE, EPWM_AQ_OUTPUT_B, EPWM_AQ_OUTPUT_NO_CHANGE, EPWM_AQ_OUTPUT_ON_TIMEBASE_UP_CMPA);	
    EPWM_setActionQualifierAction(PWM_V_BASE, EPWM_AQ_OUTPUT_B, EPWM_AQ_OUTPUT_NO_CHANGE, EPWM_AQ_OUTPUT_ON_TIMEBASE_DOWN_CMPA);	
    EPWM_setActionQualifierAction(PWM_V_BASE, EPWM_AQ_OUTPUT_B, EPWM_AQ_OUTPUT_NO_CHANGE, EPWM_AQ_OUTPUT_ON_TIMEBASE_UP_CMPB);	
    EPWM_setActionQualifierAction(PWM_V_BASE, EPWM_AQ_OUTPUT_B, EPWM_AQ_OUTPUT_NO_CHANGE, EPWM_AQ_OUTPUT_ON_TIMEBASE_DOWN_CMPB);	
    EPWM_setDeadBandDelayPolarity(PWM_V_BASE, EPWM_DB_FED, EPWM_DB_POLARITY_ACTIVE_LOW);	
    EPWM_setDeadBandDelayMode(PWM_V_BASE, EPWM_DB_RED, true);	
    EPWM_setRisingEdgeDelayCountShadowLoadMode(PWM_V_BASE, EPWM_RED_LOAD_ON_CNTR_ZERO);	
    EPWM_disableRisingEdgeDelayCountShadowLoadMode(PWM_V_BASE);	
    EPWM_setRisingEdgeDelayCount(PWM_V_BASE, 50);	
    EPWM_setDeadBandDelayMode(PWM_V_BASE, EPWM_DB_FED, true);	
    EPWM_setFallingEdgeDelayCountShadowLoadMode(PWM_V_BASE, EPWM_FED_LOAD_ON_CNTR_ZERO);	
    EPWM_disableFallingEdgeDelayCountShadowLoadMode(PWM_V_BASE);	
    EPWM_setFallingEdgeDelayCount(PWM_V_BASE, 50);	
    EPWM_setDeadBandControlShadowLoadMode(PWM_V_BASE, EPWM_DB_LOAD_ON_CNTR_ZERO);	
    EPWM_disableDeadBandControlShadowLoadMode(PWM_V_BASE);	
    EPWM_setClockPrescaler(PWM_W_BASE, EPWM_CLOCK_DIVIDER_1, EPWM_HSCLOCK_DIVIDER_2);	
    EPWM_setTimeBasePeriod(PWM_W_BASE, 5000);	
    EPWM_setTimeBaseCounter(PWM_W_BASE, 0);	
    EPWM_setTimeBaseCounterMode(PWM_W_BASE, EPWM_COUNTER_MODE_UP_DOWN);	
    EPWM_setCountModeAfterSync(PWM_W_BASE, EPWM_COUNT_MODE_UP_AFTER_SYNC);	
    EPWM_enablePhaseShiftLoad(PWM_W_BASE);	
    EPWM_setPhaseShift(PWM_W_BASE, 0);	
    EPWM_setSyncOutPulseMode(PWM_W_BASE, EPWM_SYNC_OUT_PULSE_ON_EPWMxSYNCIN);	
    EPWM_setCounterCompareValue(PWM_W_BASE, EPWM_COUNTER_COMPARE_A, 2500);	
    EPWM_setCounterCompareShadowLoadMode(PWM_W_BASE, EPWM_COUNTER_COMPARE_A, EPWM_COMP_LOAD_ON_CNTR_ZERO);	
    EPWM_setCounterCompareValue(PWM_W_BASE, EPWM_COUNTER_COMPARE_B, 0);	
    EPWM_setCounterCompareShadowLoadMode(PWM_W_BASE, EPWM_COUNTER_COMPARE_B, EPWM_COMP_LOAD_ON_CNTR_ZERO);	
    EPWM_disableActionQualifierShadowLoadMode(PWM_W_BASE, EPWM_ACTION_QUALIFIER_A);	
    EPWM_setActionQualifierAction(PWM_W_BASE, EPWM_AQ_OUTPUT_A, EPWM_AQ_OUTPUT_NO_CHANGE, EPWM_AQ_OUTPUT_ON_TIMEBASE_ZERO);	
    EPWM_setActionQualifierAction(PWM_W_BASE, EPWM_AQ_OUTPUT_A, EPWM_AQ_OUTPUT_NO_CHANGE, EPWM_AQ_OUTPUT_ON_TIMEBASE_PERIOD);	
    EPWM_setActionQualifierAction(PWM_W_BASE, EPWM_AQ_OUTPUT_A, EPWM_AQ_OUTPUT_HIGH, EPWM_AQ_OUTPUT_ON_TIMEBASE_UP_CMPA);	
    EPWM_setActionQualifierAction(PWM_W_BASE, EPWM_AQ_OUTPUT_A, EPWM_AQ_OUTPUT_LOW, EPWM_AQ_OUTPUT_ON_TIMEBASE_DOWN_CMPA);	
    EPWM_setActionQualifierAction(PWM_W_BASE, EPWM_AQ_OUTPUT_A, EPWM_AQ_OUTPUT_NO_CHANGE, EPWM_AQ_OUTPUT_ON_TIMEBASE_UP_CMPB);	
    EPWM_setActionQualifierAction(PWM_W_BASE, EPWM_AQ_OUTPUT_A, EPWM_AQ_OUTPUT_NO_CHANGE, EPWM_AQ_OUTPUT_ON_TIMEBASE_DOWN_CMPB);	
    EPWM_disableActionQualifierShadowLoadMode(PWM_W_BASE, EPWM_ACTION_QUALIFIER_B);	
    EPWM_setActionQualifierAction(PWM_W_BASE, EPWM_AQ_OUTPUT_B, EPWM_AQ_OUTPUT_NO_CHANGE, EPWM_AQ_OUTPUT_ON_TIMEBASE_ZERO);	
    EPWM_setActionQualifierAction(PWM_W_BASE, EPWM_AQ_OUTPUT_B, EPWM_AQ_OUTPUT_NO_CHANGE, EPWM_AQ_OUTPUT_ON_TIMEBASE_PERIOD);	
    EPWM_setActionQualifierAction(PWM_W_BASE, EPWM_AQ_OUTPUT_B, EPWM_AQ_OUTPUT_NO_CHANGE, EPWM_AQ_OUTPUT_ON_TIMEBASE_UP_CMPA);	
    EPWM_setActionQualifierAction(PWM_W_BASE, EPWM_AQ_OUTPUT_B, EPWM_AQ_OUTPUT_NO_CHANGE, EPWM_AQ_OUTPUT_ON_TIMEBASE_DOWN_CMPA);	
    EPWM_setActionQualifierAction(PWM_W_BASE, EPWM_AQ_OUTPUT_B, EPWM_AQ_OUTPUT_NO_CHANGE, EPWM_AQ_OUTPUT_ON_TIMEBASE_UP_CMPB);	
    EPWM_setActionQualifierAction(PWM_W_BASE, EPWM_AQ_OUTPUT_B, EPWM_AQ_OUTPUT_NO_CHANGE, EPWM_AQ_OUTPUT_ON_TIMEBASE_DOWN_CMPB);	
    EPWM_setDeadBandDelayPolarity(PWM_W_BASE, EPWM_DB_FED, EPWM_DB_POLARITY_ACTIVE_LOW);	
    EPWM_setDeadBandDelayMode(PWM_W_BASE, EPWM_DB_RED, true);	
    EPWM_setRisingEdgeDelayCountShadowLoadMode(PWM_W_BASE, EPWM_RED_LOAD_ON_CNTR_ZERO);	
    EPWM_disableRisingEdgeDelayCountShadowLoadMode(PWM_W_BASE);	
    EPWM_setRisingEdgeDelayCount(PWM_W_BASE, 50);	
    EPWM_setDeadBandDelayMode(PWM_W_BASE, EPWM_DB_FED, true);	
    EPWM_setFallingEdgeDelayCountShadowLoadMode(PWM_W_BASE, EPWM_FED_LOAD_ON_CNTR_ZERO);	
    EPWM_disableFallingEdgeDelayCountShadowLoadMode(PWM_W_BASE);	
    EPWM_setFallingEdgeDelayCount(PWM_W_BASE, 50);	
    EPWM_setDeadBandControlShadowLoadMode(PWM_W_BASE, EPWM_DB_LOAD_ON_CNTR_ZERO);	
    EPWM_disableDeadBandControlShadowLoadMode(PWM_W_BASE);	
}

//*****************************************************************************
//
// EQEP Configurations
//
//*****************************************************************************
void EQEP_init(){
	QEP_SENSOR_init();
}

void QEP_SENSOR_init(){
	//
	// Sets the polarity of the eQEP module's input signals.
	//
	EQEP_setInputPolarity(QEP_SENSOR_BASE,false,false,false,false);
	//
	// Configures eQEP module's quadrature decoder unit.
	//
	EQEP_setDecoderConfig(QEP_SENSOR_BASE, (EQEP_CONFIG_QUADRATURE | EQEP_CONFIG_2X_RESOLUTION | EQEP_CONFIG_NO_SWAP | EQEP_CONFIG_IGATE_DISABLE));
	//
	// Set the emulation mode of the eQEP module.
	//
	EQEP_setEmulationMode(QEP_SENSOR_BASE,EQEP_EMULATIONMODE_RUNFREE);
	//
	// Configures eQEP module position counter unit.
	//
	EQEP_setPositionCounterConfig(QEP_SENSOR_BASE,EQEP_POSITION_RESET_MAX_POS,15999U);
	//
	// Sets the current encoder position.
	//
	EQEP_setPosition(QEP_SENSOR_BASE,0U);
	//
	// Disables the eQEP module unit timer.
	//
	EQEP_disableUnitTimer(QEP_SENSOR_BASE);
	//
	// Disables the eQEP module watchdog timer.
	//
	EQEP_disableWatchdog(QEP_SENSOR_BASE);
	//
	// Configures the quadrature modes in which the position count can be latched.
	//
	EQEP_setLatchMode(QEP_SENSOR_BASE,(EQEP_LATCH_CNT_READ_BY_CPU|EQEP_LATCH_RISING_STROBE|EQEP_LATCH_RISING_INDEX));
	//
	// Configures the mode in which the position counter is initialized.
	//
	EQEP_setPositionInitMode(QEP_SENSOR_BASE,(EQEP_INIT_DO_NOTHING));
	//
	// Sets the software initialization of the encoder position counter.
	//
	EQEP_setSWPositionInit(QEP_SENSOR_BASE,false);
	//
	// Sets the init value for the encoder position counter.
	//
	EQEP_setInitialPosition(QEP_SENSOR_BASE,0U);
	//
	// Enables the eQEP module.
	//
	EQEP_enableModule(QEP_SENSOR_BASE);
}

//*****************************************************************************
//
// GPIO Configurations
//
//*****************************************************************************
void GPIO_init(){
	LED_STATUS_GPIO_init();
	DRV8305_EN_GATE_init();
	DRV8305_NFAULT_init();
	DRV8305_SCS_init();
	DRV8305_WAKE_init();
}

void LED_STATUS_GPIO_init(){
	GPIO_setPadConfig(LED_STATUS_GPIO, GPIO_PIN_TYPE_STD);
	GPIO_setQualificationMode(LED_STATUS_GPIO, GPIO_QUAL_SYNC);
	GPIO_setDirectionMode(LED_STATUS_GPIO, GPIO_DIR_MODE_OUT);
	GPIO_setControllerCore(LED_STATUS_GPIO, GPIO_CORE_CPU1);
}
void DRV8305_EN_GATE_init(){
	GPIO_writePin(DRV8305_EN_GATE, 0);
	GPIO_setPadConfig(DRV8305_EN_GATE, GPIO_PIN_TYPE_STD);
	GPIO_setQualificationMode(DRV8305_EN_GATE, GPIO_QUAL_SYNC);
	GPIO_setDirectionMode(DRV8305_EN_GATE, GPIO_DIR_MODE_OUT);
	GPIO_setControllerCore(DRV8305_EN_GATE, GPIO_CORE_CPU1);
}
void DRV8305_NFAULT_init(){
	GPIO_setPadConfig(DRV8305_NFAULT, GPIO_PIN_TYPE_STD | GPIO_PIN_TYPE_PULLUP);
	GPIO_setQualificationMode(DRV8305_NFAULT, GPIO_QUAL_SYNC);
	GPIO_setDirectionMode(DRV8305_NFAULT, GPIO_DIR_MODE_IN);
	GPIO_setControllerCore(DRV8305_NFAULT, GPIO_CORE_CPU1);
}
void DRV8305_SCS_init(){
	GPIO_writePin(DRV8305_SCS, 1);
	GPIO_setPadConfig(DRV8305_SCS, GPIO_PIN_TYPE_STD);
	GPIO_setQualificationMode(DRV8305_SCS, GPIO_QUAL_SYNC);
	GPIO_setDirectionMode(DRV8305_SCS, GPIO_DIR_MODE_OUT);
	GPIO_setControllerCore(DRV8305_SCS, GPIO_CORE_CPU1);
}
void DRV8305_WAKE_init(){
	GPIO_writePin(DRV8305_WAKE, 1);
	GPIO_setPadConfig(DRV8305_WAKE, GPIO_PIN_TYPE_STD);
	GPIO_setQualificationMode(DRV8305_WAKE, GPIO_QUAL_SYNC);
	GPIO_setDirectionMode(DRV8305_WAKE, GPIO_DIR_MODE_OUT);
	GPIO_setControllerCore(DRV8305_WAKE, GPIO_CORE_CPU1);
}

//*****************************************************************************
//
// INTERRUPT Configurations
//
//*****************************************************************************
void INTERRUPT_init(){
	
	// Interrupt Settings for INT_myADCA_1
	// ISR need to be defined for the registered interrupts
	Interrupt_register(INT_myADCA_1, &adcA1_isr);
	Interrupt_enable(INT_myADCA_1);
	
	// Interrupt Settings for INT_UART_DEBUG_RX
	// ISR need to be defined for the registered interrupts
	Interrupt_register(INT_UART_DEBUG_RX, &sciA_rx_isr);
	Interrupt_enable(INT_UART_DEBUG_RX);
}
//*****************************************************************************
//
// SCI Configurations
//
//*****************************************************************************
void SCI_init(){
	UART_DEBUG_init();
}

void UART_DEBUG_init(){
	SCI_clearInterruptStatus(UART_DEBUG_BASE, SCI_INT_RXFF | SCI_INT_TXFF | SCI_INT_FE | SCI_INT_OE | SCI_INT_PE | SCI_INT_RXERR | SCI_INT_RXRDY_BRKDT | SCI_INT_TXRDY);
	SCI_clearOverflowStatus(UART_DEBUG_BASE);
	SCI_resetTxFIFO(UART_DEBUG_BASE);
	SCI_resetRxFIFO(UART_DEBUG_BASE);
	SCI_resetChannels(UART_DEBUG_BASE);
	SCI_setConfig(UART_DEBUG_BASE, DEVICE_LSPCLK_FREQ, UART_DEBUG_BAUDRATE, (SCI_CONFIG_WLEN_8|SCI_CONFIG_STOP_ONE|SCI_CONFIG_PAR_NONE));
	SCI_disableLoopback(UART_DEBUG_BASE);
	SCI_performSoftwareReset(UART_DEBUG_BASE);
	SCI_enableInterrupt(UART_DEBUG_BASE, SCI_INT_RXFF);
	SCI_setFIFOInterruptLevel(UART_DEBUG_BASE, SCI_FIFO_TX0, SCI_FIFO_RX4);
	SCI_enableFIFO(UART_DEBUG_BASE);
	SCI_enableModule(UART_DEBUG_BASE);
}

//*****************************************************************************
//
// SPI Configurations
//
//*****************************************************************************
void SPI_init(){
	DRV8305_SPI_init();
}

void DRV8305_SPI_init(){
	SPI_disableModule(DRV8305_SPI_BASE);
	SPI_setConfig(DRV8305_SPI_BASE, DEVICE_LSPCLK_FREQ, SPI_PROT_POL0PHA0,
				  SPI_MODE_CONTROLLER, DRV8305_SPI_BITRATE, DRV8305_SPI_DATAWIDTH);
	SPI_setPTESignalPolarity(DRV8305_SPI_BASE, SPI_PTE_ACTIVE_LOW);
	SPI_enableFIFO(DRV8305_SPI_BASE);
	SPI_setFIFOInterruptLevel(DRV8305_SPI_BASE, SPI_FIFO_TXEMPTY, SPI_FIFO_RXEMPTY);
	SPI_disableLoopback(DRV8305_SPI_BASE);
	SPI_setEmulationMode(DRV8305_SPI_BASE, SPI_EMULATION_STOP_MIDWAY);
	SPI_enableModule(DRV8305_SPI_BASE);
}

//*****************************************************************************
//
// SYNC Scheme Configurations
//
//*****************************************************************************
void SYNC_init(){
	SysCtl_setSyncOutputConfig(SYSCTL_SYNC_OUT_SRC_EPWM1SYNCOUT);
	//
	// For EPWM1, the sync input is: SYSCTL_SYNC_IN_SRC_EXTSYNCIN1
	//
	SysCtl_setSyncInputConfig(SYSCTL_SYNC_IN_EPWM4, SYSCTL_SYNC_IN_SRC_EPWM1SYNCOUT);
	SysCtl_setSyncInputConfig(SYSCTL_SYNC_IN_EPWM7, SYSCTL_SYNC_IN_SRC_EPWM1SYNCOUT);
	SysCtl_setSyncInputConfig(SYSCTL_SYNC_IN_EPWM10, SYSCTL_SYNC_IN_SRC_EPWM1SYNCOUT);
	SysCtl_setSyncInputConfig(SYSCTL_SYNC_IN_ECAP1, SYSCTL_SYNC_IN_SRC_EPWM1SYNCOUT);
	SysCtl_setSyncInputConfig(SYSCTL_SYNC_IN_ECAP4, SYSCTL_SYNC_IN_SRC_EPWM1SYNCOUT);
	//
	// SOCA
	//
	SysCtl_enableExtADCSOCSource(0);
	//
	// SOCB
	//
	SysCtl_enableExtADCSOCSource(0);
}

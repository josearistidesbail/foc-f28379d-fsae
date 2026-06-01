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

#ifndef BOARD_H
#define BOARD_H

//*****************************************************************************
//
// If building with a C++ compiler, make all of the definitions in this header
// have a C binding.
//
//*****************************************************************************
#ifdef __cplusplus
extern "C"
{
#endif

//
// Included Files
//

#include "driverlib.h"
#include "device.h"

//*****************************************************************************
//
// PinMux Configurations
//
//*****************************************************************************

//
// EPWM1 -> PWM_U Pinmux
//
//
// EPWM1A - GPIO Settings
//
#define GPIO_PIN_EPWM1A 0
#define PWM_U_EPWMA_GPIO 0
#define PWM_U_EPWMA_PIN_CONFIG GPIO_0_EPWM1A
//
// EPWM1B - GPIO Settings
//
#define GPIO_PIN_EPWM1B 1
#define PWM_U_EPWMB_GPIO 1
#define PWM_U_EPWMB_PIN_CONFIG GPIO_1_EPWM1B

//
// EPWM2 -> PWM_V Pinmux
//
//
// EPWM2A - GPIO Settings
//
#define GPIO_PIN_EPWM2A 2
#define PWM_V_EPWMA_GPIO 2
#define PWM_V_EPWMA_PIN_CONFIG GPIO_2_EPWM2A
//
// EPWM2B - GPIO Settings
//
#define GPIO_PIN_EPWM2B 3
#define PWM_V_EPWMB_GPIO 3
#define PWM_V_EPWMB_PIN_CONFIG GPIO_3_EPWM2B

//
// EPWM3 -> PWM_W Pinmux
//
//
// EPWM3A - GPIO Settings
//
#define GPIO_PIN_EPWM3A 4
#define PWM_W_EPWMA_GPIO 4
#define PWM_W_EPWMA_PIN_CONFIG GPIO_4_EPWM3A
//
// EPWM3B - GPIO Settings
//
#define GPIO_PIN_EPWM3B 5
#define PWM_W_EPWMB_GPIO 5
#define PWM_W_EPWMB_PIN_CONFIG GPIO_5_EPWM3B

//
// EQEP1 -> QEP_SENSOR Pinmux
//
//
// EQEP1A - GPIO Settings
//
#define GPIO_PIN_EQEP1A 20
#define QEP_SENSOR_EQEPA_GPIO 20
#define QEP_SENSOR_EQEPA_PIN_CONFIG GPIO_20_EQEP1A
//
// EQEP1B - GPIO Settings
//
#define GPIO_PIN_EQEP1B 21
#define QEP_SENSOR_EQEPB_GPIO 21
#define QEP_SENSOR_EQEPB_PIN_CONFIG GPIO_21_EQEP1B
//
// EQEP1I - GPIO Settings
//
#define GPIO_PIN_EQEP1I 99
#define QEP_SENSOR_EQEPINDEX_GPIO 99
#define QEP_SENSOR_EQEPINDEX_PIN_CONFIG GPIO_99_EQEP1I
//
// GPIO31 - GPIO Settings
//
#define LED_STATUS_GPIO_GPIO_PIN_CONFIG GPIO_31_GPIO31
//
// GPIO124 - GPIO Settings
//
#define DRV8305_EN_GATE_GPIO_PIN_CONFIG GPIO_124_GPIO124
//
// GPIO19 - GPIO Settings
//
#define DRV8305_NFAULT_GPIO_PIN_CONFIG GPIO_19_GPIO19
//
// GPIO61 - GPIO Settings
//
#define DRV8305_SCS_GPIO_PIN_CONFIG GPIO_61_GPIO61
//
// GPIO125 - GPIO Settings
//
#define DRV8305_WAKE_GPIO_PIN_CONFIG GPIO_125_GPIO125

//
// SCIA -> UART_DEBUG Pinmux
//
//
// SCIRXDA - GPIO Settings
//
#define GPIO_PIN_SCIRXDA 43
#define UART_DEBUG_SCIRX_GPIO 43
#define UART_DEBUG_SCIRX_PIN_CONFIG GPIO_43_SCIRXDA
//
// SCITXDA - GPIO Settings
//
#define GPIO_PIN_SCITXDA 42
#define UART_DEBUG_SCITX_GPIO 42
#define UART_DEBUG_SCITX_PIN_CONFIG GPIO_42_SCITXDA

//
// SPIA -> DRV8305_SPI Pinmux
//
//
// SPIA_PICO - GPIO Settings
//
#define GPIO_PIN_SPIA_PICO 58
#define DRV8305_SPI_SPIPICO_GPIO 58
#define DRV8305_SPI_SPIPICO_PIN_CONFIG GPIO_58_SPISIMOA
//
// SPIA_POCI - GPIO Settings
//
#define GPIO_PIN_SPIA_POCI 59
#define DRV8305_SPI_SPIPOCI_GPIO 59
#define DRV8305_SPI_SPIPOCI_PIN_CONFIG GPIO_59_SPISOMIA
//
// SPIA_CLK - GPIO Settings
//
#define GPIO_PIN_SPIA_CLK 60
#define DRV8305_SPI_SPICLK_GPIO 60
#define DRV8305_SPI_SPICLK_PIN_CONFIG GPIO_60_SPICLKA

//*****************************************************************************
//
// ADC Configurations
//
//*****************************************************************************
#define myADCA_BASE ADCA_BASE
#define myADCA_RESULT_BASE ADCARESULT_BASE
#define myADCA_SOC2 ADC_SOC_NUMBER2
#define myADCA_FORCE_SOC2 ADC_FORCE_SOC2
#define myADCA_SAMPLE_WINDOW_SOC2 75
#define myADCA_TRIGGER_SOURCE_SOC2 ADC_TRIGGER_EPWM1_SOCA
#define myADCA_CHANNEL_SOC2 ADC_CH_ADCIN2
#define myADCA_SOC3 ADC_SOC_NUMBER3
#define myADCA_FORCE_SOC3 ADC_FORCE_SOC3
#define myADCA_SAMPLE_WINDOW_SOC3 75
#define myADCA_TRIGGER_SOURCE_SOC3 ADC_TRIGGER_EPWM1_SOCA
#define myADCA_CHANNEL_SOC3 ADC_CH_ADCIN3
void myADCA_init();

#define myADCB_BASE ADCB_BASE
#define myADCB_RESULT_BASE ADCBRESULT_BASE
#define myADCB_SOC1 ADC_SOC_NUMBER1
#define myADCB_FORCE_SOC1 ADC_FORCE_SOC1
#define myADCB_SAMPLE_WINDOW_SOC1 75
#define myADCB_TRIGGER_SOURCE_SOC1 ADC_TRIGGER_EPWM1_SOCA
#define myADCB_CHANNEL_SOC1 ADC_CH_ADCIN2
void myADCB_init();

#define myADCC_BASE ADCC_BASE
#define myADCC_RESULT_BASE ADCCRESULT_BASE
#define myADCC_SOC0 ADC_SOC_NUMBER0
#define myADCC_FORCE_SOC0 ADC_FORCE_SOC0
#define myADCC_SAMPLE_WINDOW_SOC0 75
#define myADCC_TRIGGER_SOURCE_SOC0 ADC_TRIGGER_EPWM1_SOCA
#define myADCC_CHANNEL_SOC0 ADC_CH_ADCIN2
void myADCC_init();


//*****************************************************************************
//
// EPWM Configurations
//
//*****************************************************************************
#define PWM_U_BASE EPWM1_BASE
#define PWM_U_TBPRD 5000
#define PWM_U_COUNTER_MODE EPWM_COUNTER_MODE_UP_DOWN
#define PWM_U_TBPHS 0
#define PWM_U_CMPA 2500
#define PWM_U_CMPB 0
#define PWM_U_CMPC 0
#define PWM_U_CMPD 0
#define PWM_U_DBRED 50
#define PWM_U_DBFED 50
#define PWM_U_TZA_ACTION EPWM_TZ_ACTION_HIGH_Z
#define PWM_U_TZB_ACTION EPWM_TZ_ACTION_HIGH_Z
#define PWM_U_INTERRUPT_SOURCE EPWM_INT_TBCTR_DISABLED
#define PWM_V_BASE EPWM2_BASE
#define PWM_V_TBPRD 5000
#define PWM_V_COUNTER_MODE EPWM_COUNTER_MODE_UP_DOWN
#define PWM_V_TBPHS 0
#define PWM_V_CMPA 2500
#define PWM_V_CMPB 0
#define PWM_V_CMPC 0
#define PWM_V_CMPD 0
#define PWM_V_DBRED 50
#define PWM_V_DBFED 50
#define PWM_V_TZA_ACTION EPWM_TZ_ACTION_HIGH_Z
#define PWM_V_TZB_ACTION EPWM_TZ_ACTION_HIGH_Z
#define PWM_V_INTERRUPT_SOURCE EPWM_INT_TBCTR_DISABLED
#define PWM_W_BASE EPWM3_BASE
#define PWM_W_TBPRD 5000
#define PWM_W_COUNTER_MODE EPWM_COUNTER_MODE_UP_DOWN
#define PWM_W_TBPHS 0
#define PWM_W_CMPA 2500
#define PWM_W_CMPB 0
#define PWM_W_CMPC 0
#define PWM_W_CMPD 0
#define PWM_W_DBRED 50
#define PWM_W_DBFED 50
#define PWM_W_TZA_ACTION EPWM_TZ_ACTION_HIGH_Z
#define PWM_W_TZB_ACTION EPWM_TZ_ACTION_HIGH_Z
#define PWM_W_INTERRUPT_SOURCE EPWM_INT_TBCTR_DISABLED

//*****************************************************************************
//
// EQEP Configurations
//
//*****************************************************************************
#define QEP_SENSOR_BASE EQEP1_BASE
void QEP_SENSOR_init();

//*****************************************************************************
//
// GPIO Configurations
//
//*****************************************************************************
#define LED_STATUS_GPIO 31
void LED_STATUS_GPIO_init();
#define DRV8305_EN_GATE 124
void DRV8305_EN_GATE_init();
#define DRV8305_NFAULT 19
void DRV8305_NFAULT_init();
#define DRV8305_SCS 61
void DRV8305_SCS_init();
#define DRV8305_WAKE 125
void DRV8305_WAKE_init();

//*****************************************************************************
//
// INTERRUPT Configurations
//
//*****************************************************************************

// Interrupt Settings for INT_myADCA_1
// ISR need to be defined for the registered interrupts
#define INT_myADCA_1 INT_ADCA1
#define INT_myADCA_1_INTERRUPT_ACK_GROUP INTERRUPT_ACK_GROUP1
extern __interrupt void adcA1_isr(void);

// Interrupt Settings for INT_UART_DEBUG_RX
// ISR need to be defined for the registered interrupts
#define INT_UART_DEBUG_RX INT_SCIA_RX
#define INT_UART_DEBUG_RX_INTERRUPT_ACK_GROUP INTERRUPT_ACK_GROUP9
extern __interrupt void sciA_rx_isr(void);

//*****************************************************************************
//
// SCI Configurations
//
//*****************************************************************************
#define UART_DEBUG_BASE SCIA_BASE
#define UART_DEBUG_BAUDRATE 115200
#define UART_DEBUG_CONFIG_WLEN SCI_CONFIG_WLEN_8
#define UART_DEBUG_CONFIG_STOP SCI_CONFIG_STOP_ONE
#define UART_DEBUG_CONFIG_PAR SCI_CONFIG_PAR_NONE
#define UART_DEBUG_FIFO_TX_LVL SCI_FIFO_TX0
#define UART_DEBUG_FIFO_RX_LVL SCI_FIFO_RX4
void UART_DEBUG_init();

//*****************************************************************************
//
// SPI Configurations
//
//*****************************************************************************
#define DRV8305_SPI_BASE SPIA_BASE
#define DRV8305_SPI_BITRATE 1000000
#define DRV8305_SPI_DATAWIDTH 16
void DRV8305_SPI_init();

//*****************************************************************************
//
// SYNC Scheme Configurations
//
//*****************************************************************************

//*****************************************************************************
//
// Board Configurations
//
//*****************************************************************************
void	Board_init();
void	ADC_init();
void	EPWM_init();
void	EQEP_init();
void	GPIO_init();
void	INTERRUPT_init();
void	SCI_init();
void	SPI_init();
void	SYNC_init();
void	PinMux_init();

//*****************************************************************************
//
// Mark the end of the C bindings section for C++ compilers.
//
//*****************************************************************************
#ifdef __cplusplus
}
#endif

#endif  // end of BOARD_H definition

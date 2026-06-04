#ifndef HAL_ADC_H
#define HAL_ADC_H

#include <stdint.h>
#include "foc/pmsm_types.h"

void hal_adc_init(void);

/* Raw 12-bit results, no scaling. Useful for offset calibration. */
uint16_t hal_adc_read_raw_ia(void);
uint16_t hal_adc_read_raw_ib(void);
uint16_t hal_adc_read_raw_ic(void);
uint16_t hal_adc_read_raw_vbus(void);

/*
 * Read all three phase currents and convert to per-unit using the configured
 * zero-offsets and gain. Hardware samples all three simultaneously.
 */
vec_abc_t hal_adc_read_currents_pu(void);

float hal_adc_read_vbus_pu(void);

/* Set the zero-current ADC counts measured during a calibration run. */
void hal_adc_set_zero_offsets(uint16_t ia_zero, uint16_t ib_zero, uint16_t ic_zero);

/* Clear the EOC interrupt flag (call at the bottom of the FOC ISR). */
void hal_adc_clear_eoc_flag(void);

#endif

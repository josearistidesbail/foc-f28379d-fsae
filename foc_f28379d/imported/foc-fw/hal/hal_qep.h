#ifndef HAL_QEP_H
#define HAL_QEP_H

#include <stdint.h>
#include <stdbool.h>

void     hal_qep_init(void);
int32_t  hal_qep_read_count(void);
bool     hal_qep_index_event(void);   /* latches; clears on read */
void     hal_qep_zero_count(void);

#endif

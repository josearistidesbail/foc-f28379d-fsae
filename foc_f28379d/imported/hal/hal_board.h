#ifndef HAL_BOARD_H
#define HAL_BOARD_H

/* One-shot system bring-up: clocks, GPIO pin mux, PIE table, peripheral clocks. */
void hal_board_init(void);

void hal_board_led_blue(int on);
void hal_board_led_red(int on);

#endif

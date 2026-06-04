#ifndef DRV8305_H
#define DRV8305_H

#include <stdint.h>
#include <stdbool.h>

/*
 * Minimal driver for the TI DRV8305 3-phase gate driver, talking SPI-A.
 *
 * The chip exposes 16-bit half-duplex transactions:
 *   bit 15    : R/W (1=read)
 *   bits 14:11: register address
 *   bits 10:0 : data
 */

typedef enum {
    DRV8305_REG_HS_GATE_CTRL = 0x05,
    DRV8305_REG_LS_GATE_CTRL = 0x06,
    DRV8305_REG_GATE_DRIVE   = 0x07,
    DRV8305_REG_SENSE_CTRL   = 0x0C,   /* current-sense amplifier gain */
    DRV8305_REG_DRIVER_CTRL  = 0x09,
    DRV8305_REG_WATCHDOG     = 0x0A
} drv8305_reg_t;

typedef enum {
    DRV8305_SENSE_GAIN_10VPV = 0x000,
    DRV8305_SENSE_GAIN_20VPV = 0x055,
    DRV8305_SENSE_GAIN_40VPV = 0x0AA,
    DRV8305_SENSE_GAIN_80VPV = 0x0FF
} drv8305_sense_gain_t;

void     drv8305_init(void);
uint16_t drv8305_read(drv8305_reg_t reg);
void     drv8305_write(drv8305_reg_t reg, uint16_t data);

void     drv8305_set_sense_gain(drv8305_sense_gain_t gain);
void     drv8305_enable(void);                 /* raise EN_GATE */
void     drv8305_disable(void);
bool     drv8305_is_faulted(void);             /* nFAULT pin low */

#endif

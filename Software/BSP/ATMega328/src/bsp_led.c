#include <avr/io.h>
#include "bsp_led.h"

#define LED_DDR DDRB
#define LED_PORT PORTB
#define LED_PIN PB5

void bsp_led_init(void)
{
	LED_DDR |= _BV(LED_PIN);
}

void bsp_led_toggle(void)
{
        LED_PORT ^= _BV(LED_PIN);
}

#include "task_led.h"
#include "bsp_led.h"

void task_blink(void *pvParameters)
{
	while (1) {
		bsp_led_toggle();
		vTaskDelay(100);
	}
}

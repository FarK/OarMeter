#include "FreeRTOS.h"
#include "task.h"
#include "task_led.h"
#include "bsp_led.h"

#define BLINK_PRIORITY	(tskIDLE_PRIORITY + 1UL)

void hardwareSetup();

int main()
{
	hardwareSetup();

	BaseType_t error = xTaskCreate(
			task_blink,
			"LedBlinkTask",
			configMINIMAL_STACK_SIZE,
			NULL,
			BLINK_PRIORITY,
			(TaskHandle_t*)NULL
			);
	if (error != pdPASS) while (1);

	vTaskStartScheduler();

	while (1);
	return 0;
}

void hardwareSetup()
{
	bsp_led_init();
}

void vApplicationIdleHook(void)
{

}

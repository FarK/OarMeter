#include "create_tasks.h"
#include "FreeRTOS.h"
#include "task.h"
#include "task_led.h"


void createTasks()
{
	BaseType_t error = xTaskCreate(
		task_blink,
		"LedBlinkTask",
		configMINIMAL_STACK_SIZE,
		NULL,
		TP_BLINK,
		(TaskHandle_t*)NULL
		);
	if (error != pdPASS) while (1);
}

#include "FreeRTOS.h"
#include "create_tasks.h"
#include "bsp_led.h"


void hardwareSetup();

int main()
{
	hardwareSetup();
	createTasks();
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

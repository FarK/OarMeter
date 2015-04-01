set(SRC "src")
set(INC "inc")

set(task_led_SRCS
	${SRC}/create_tasks.c
	${SRC}/task_led.c
	)

set(task_led_HDRS
	${INC}/create_tasks.h
	${INC}/task_led.h
	)

add_library(tasks STATIC
	${task_led_SRCS}
	${task_led_HDRS}
	)

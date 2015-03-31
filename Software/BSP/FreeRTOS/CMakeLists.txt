set(SRC "src")
set(INC "inc")

set(tasks_SRCS
	${SRC}/task_led.c
	)

set(tasks_HDRS
	${INC}/task_led.h
	)

add_library(task_led SHARED
	${task_led_SRCS}
	${task_led_HDRS}
	)

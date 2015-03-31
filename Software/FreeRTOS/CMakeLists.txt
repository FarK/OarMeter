set(SRC "src")
set(INC "inc")

set(FREERTOS_BSP_DIR ${CMAKE_SOURCE_DIR}/BSP/FreeRTOS)

set(freertos_SRCS
	${SRC}/croutine.c
	${SRC}/event_groups.c
	${SRC}/list.c
	${SRC}/queue.c
	${SRC}/tasks.c
	${SRC}/timers.c
	${FREERTOS_BSP_DIR}/port.c
	${FREERTOS_BSP_DIR}/heap_1.c
	)

set(freertos_HDRS
	${INC}/croutine.h
	${INC}/deprecated_definitions.h
	${INC}/event_groups.h
	${INC}/FreeRTOS.h
	${INC}/list.h
	${INC}/mpu_wrappers.h
	${INC}/portable.h
	${INC}/projdefs.h
	${INC}/queue.h
	${INC}/semphr.h
	${INC}/StackMacros.h
	${INC}/stdint.readme
	${INC}/task.h
	${INC}/timers.h
	FreeRTOSConfig.h
	${FREERTOS_BSP_DIR}/portmacro.h
	)

add_library(freertos STATIC
	${freertos_SRCS}
	${freertos_HDRS}
	)

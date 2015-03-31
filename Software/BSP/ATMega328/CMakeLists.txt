set(SRC "src")
set(INC "inc")

set(atmega328_SRCS
	${SRC}/bsp_led.c
	)

set(atmega328_HDRS
	${INC}/bsp_led.h
	)

add_library(atmega328 STATIC
	${atmega328_SRCS}
	${atmega328_HDRS}
	)

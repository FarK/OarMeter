cmake_minimum_required(VERSION 2.8)

set(target OarMeter)

set(target_elf ${target}.elf)
set(target_hex ${target}.hex)
set(target_map ${target}.map)

project(${target} C)

find_program(AVR_CC avr-gcc)
find_program(AVR_OBJCOPY avr-objcopy)
find_program(AVR_OBJDUMP avr-objdump)
find_program(AVR_SIZE_TOOL avr-size)
find_program(AVRDUDE avrdude)


# ** COMPILATION ***************************************************************
set(CMAKE_SYSTEM_NAME Generic)
set(CMAKE_C_COMPILER ${AVR_CC})

set(CSTANDARD "-std=gnu99")
set(CWARN "-Wall")
set(CTUNING "-funsigned-char -funsigned-bitfields -fpack-struct -fshort-enums")
set(COPT "-Os")
set(CMCU "-mmcu=atmega328p")
set(CDEFS "-DF_CPU=16000000")
set(CFLAGS "${CMCU} ${CDEBUG} ${CDEFS} ${COPT} ${CWARN} ${CSTANDARD}")

set(CMAKE_SHARED_LIBRARY_LINK_C_FLAGS "")
set(CMAKE_C_FLAGS ${CFLAGS})

add_custom_command(
	OUTPUT ${target_hex}
	COMMAND
	${AVR_OBJCOPY} -j .text -j .data -O ihex ${target_elf} ${target_hex}
	DEPENDS ${target_elf}
	)

add_custom_target(
	${target}
	ALL
	DEPENDS ${target_hex}
	)

add_custom_target(
	disassemble
	${AVR_OBJDUMP} -h -S ${target_elf} > ${target}.lst
	DEPENDS ${target_elf}
	)


# ** PROGRAMMING ***************************************************************
set(AVR_PROGRAMMER arduino)
set(AVRDUDE_OPTIONS "-b57600")
set(AVRDUDE_MCU "atmega328p")
set(AVRDUDE_PORT "/dev/ttyUSB0")

add_custom_target(
	program
	${AVRDUDE} -p ${AVRDUDE_MCU} -c${AVR_PROGRAMMER} ${AVRDUDE_OPTIONS}
		-U flash:w:${target_hex}
		-P ${AVRDUDE_PORT}
	DEPENDS ${target_hex}
	COMMENT "Uploading ${target_hex}"
	)


# ** SOURCE  *******************************************************************
set(includes
	"tasks/inc"
	"BSP/ATMega328/inc"
	"BSP/FreeRTOS"
	"FreeRTOS"
	"FreeRTOS/inc"
	)

include_directories(${includes})

add_subdirectory(tasks)
add_subdirectory(BSP)
add_subdirectory(FreeRTOS)

add_executable(${target_elf} main.c)

target_link_libraries(${target_elf} LINK_PUBLIC tasks atmega328 freertos)
target_include_directories(${target_elf} PUBLIC ${includes})

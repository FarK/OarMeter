EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:special
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:OarMeter-cache
EELAYER 27 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 3
Title ""
Date "5 dec 2014"
Rev ""
Comp ""
Comment1 "Autor: Carlos Falgueras García"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L ATMEGA328-P IC1
U 1 1 5480E95B
P 5550 4000
F 0 "IC1" H 4800 5250 40  0000 L BNN
F 1 "ATMEGA328-P" H 5950 2600 40  0000 L BNN
F 2 "DIL28" H 5550 4000 30  0001 C CIN
F 3 "~" H 5550 4000 60  0000 C CNN
	1    5550 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	4650 5100 4650 5200
Text HLabel 3700 2900 0    60   UnSpc ~ 0
Vcc
Text HLabel 3700 5150 0    60   UnSpc ~ 0
Gnd
$Comp
L C C3
U 1 1 5480EE04
P 4250 4950
F 0 "C3" H 4250 5050 40  0000 L CNN
F 1 "0.1uF" H 4256 4865 40  0000 L CNN
F 2 "~" H 4288 4800 30  0000 C CNN
F 3 "~" H 4250 4950 60  0000 C CNN
	1    4250 4950
	1    0    0    -1  
$EndComp
Wire Wire Line
	3700 2900 4650 2900
Wire Wire Line
	3700 5150 4650 5150
Connection ~ 4650 5150
Wire Wire Line
	4250 2900 4250 4750
Wire Wire Line
	4250 3500 4650 3500
Wire Wire Line
	6550 3200 7550 3200
Wire Wire Line
	6550 3400 7550 3400
Wire Wire Line
	6550 4150 7550 4150
Wire Wire Line
	6550 4250 7550 4250
Wire Wire Line
	6550 3300 7550 3300
Connection ~ 4250 3500
Connection ~ 4250 2900
Wire Wire Line
	4650 3200 4250 3200
Connection ~ 4250 3200
Text HLabel 7550 3200 2    60   Output ~ 0
MOSI
Text HLabel 7550 3300 2    60   Input ~ 0
MISO
Text HLabel 7550 3400 2    60   Output ~ 0
SCK
Text HLabel 7550 4150 2    60   BiDi ~ 0
SDA
Text HLabel 7550 4250 2    60   Output ~ 0
SCL
Wire Wire Line
	6550 4350 7550 4350
Text HLabel 7550 4350 2    60   Input ~ 0
~Reset~
Wire Wire Line
	6550 3750 7550 3750
Wire Wire Line
	6550 3850 7550 3850
Text HLabel 7550 3750 2    60   Input ~ 0
ADC0
Text HLabel 7550 3850 2    60   Input ~ 0
ADC1
Wire Wire Line
	6550 4800 7550 4800
Wire Wire Line
	6550 4700 7550 4700
Text HLabel 7550 4700 2    60   Input ~ 0
INT0
Text HLabel 7550 4800 2    60   Input ~ 0
INT1
Wire Wire Line
	6550 2900 7550 2900
Wire Wire Line
	6550 3000 7550 3000
Text HLabel 7550 2900 2    60   Output ~ 0
PB0
Text HLabel 7550 3000 2    60   Output ~ 0
PB1
$EndSCHEMATC

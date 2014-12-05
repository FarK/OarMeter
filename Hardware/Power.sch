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
Sheet 2 3
Title ""
Date "5 dec 2014"
Rev ""
Comp ""
Comment1 "Autor: Carlos Falgueras García"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text HLabel 8250 3700 2    60   UnSpc ~ 0
3.3V
Text HLabel 8250 4300 2    60   UnSpc ~ 0
GND
$Comp
L AMS1117-3.3 U1
U 1 1 5480D475
P 6850 3750
F 0 "U1" H 6600 3950 40  0000 C CNN
F 1 "AMS1117-3.3" H 7000 3950 40  0000 C CNN
F 2 "" H 6850 3750 60  0000 C CNN
F 3 "" H 6850 3750 60  0000 C CNN
	1    6850 3750
	1    0    0    -1  
$EndComp
$Comp
L C C1
U 1 1 5480D47B
P 6250 4000
F 0 "C1" H 6250 4100 40  0000 L CNN
F 1 "0.1uF" H 6256 3915 40  0000 L CNN
F 2 "~" H 6288 3850 30  0000 C CNN
F 3 "~" H 6250 4000 60  0000 C CNN
	1    6250 4000
	1    0    0    -1  
$EndComp
$Comp
L CP1 C2
U 1 1 5480D481
P 7600 4000
F 0 "C2" H 7650 4100 50  0000 L CNN
F 1 "10uF" H 7650 3900 50  0000 L CNN
F 2 "~" H 7600 4000 60  0000 C CNN
F 3 "~" H 7600 4000 60  0000 C CNN
	1    7600 4000
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR018
U 1 1 5480D487
P 6850 4400
F 0 "#PWR018" H 6850 4400 30  0001 C CNN
F 1 "GND" H 6850 4330 30  0001 C CNN
F 2 "" H 6850 4400 60  0000 C CNN
F 3 "" H 6850 4400 60  0000 C CNN
	1    6850 4400
	1    0    0    -1  
$EndComp
$Comp
L COINBT_HOLDER D4
U 1 1 5480D48D
P 5550 3700
F 0 "D4" H 5550 3250 60  0000 C CNN
F 1 "COINBT_HOLDER" H 5550 3550 60  0000 C CNN
F 2 "" H 5550 3700 60  0000 C CNN
F 3 "" H 5550 3700 60  0000 C CNN
	1    5550 3700
	-1   0    0    1   
$EndComp
$Comp
L COINBT_HOLDER D3
U 1 1 5480D493
P 4150 3700
F 0 "D3" H 4150 3250 60  0000 C CNN
F 1 "COINBT_HOLDER" H 4150 3550 60  0000 C CNN
F 2 "" H 4150 3700 60  0000 C CNN
F 3 "" H 4150 3700 60  0000 C CNN
	1    4150 3700
	-1   0    0    1   
$EndComp
Connection ~ 6250 4300
Wire Wire Line
	3450 3700 3450 4300
Wire Wire Line
	6250 3700 6250 3800
Wire Wire Line
	6250 4200 6250 4300
Connection ~ 7600 4300
Wire Wire Line
	7600 4200 7600 4300
Connection ~ 7600 3700
Wire Wire Line
	7600 3700 7600 3800
Connection ~ 6850 4300
Wire Wire Line
	6450 3700 6250 3700
Wire Wire Line
	6850 4000 6850 4400
Wire Wire Line
	3450 4300 8250 4300
Wire Wire Line
	7250 3700 8250 3700
$EndSCHEMATC

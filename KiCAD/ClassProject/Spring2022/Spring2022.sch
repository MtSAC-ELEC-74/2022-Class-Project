EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 2
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text Notes 750  750  0    118  ~ 0
ELEC 74 Spring 2022 Class Project Schematic
$Sheet
S 1950 2650 750  600 
U 625B6136
F0 "LED Bar" 50
F1 "led-bar.sch" 50
F2 "LED-SDI" I R 2700 2750 50 
F3 "LED-SCLK" I R 2700 2850 50 
F4 "LED-DCLK" I R 2700 2950 50 
F5 "~LED-OE" I R 2700 3050 50 
$EndSheet
$Comp
L 74_Patrick:FUB-MINI U1
U 1 1 625BD726
P 3800 5650
F 0 "U1" H 3775 6715 50  0000 C CNN
F 1 "FUB-MINI" H 3775 6624 50  0000 C CNN
F 2 "74_Patrick B:FubSocket_DIP-40_600_ELL" H 3600 5650 50  0001 C CNN
F 3 "" H 3600 5650 50  0001 C CNN
	1    3800 5650
	1    0    0    -1  
$EndComp
Wire Wire Line
	7050 5200 7050 5300
$Comp
L 74_Jacob:+4.5V #PWR0101
U 1 1 625DDEA1
P 7050 4550
F 0 "#PWR0101" H 7050 4400 50  0001 C CNN
F 1 "+4.5V" H 7050 4723 50  0000 C CNN
F 2 "" H 7050 4550 50  0001 C CNN
F 3 "" H 7050 4550 50  0001 C CNN
	1    7050 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	7050 4550 7050 4700
$Comp
L 74_Jacob:+4.5V #PWR0104
U 1 1 625DE893
P 4650 4650
F 0 "#PWR0104" H 4650 4500 50  0001 C CNN
F 1 "+4.5V" H 4650 4823 50  0000 C CNN
F 2 "" H 4650 4650 50  0001 C CNN
F 3 "" H 4650 4650 50  0001 C CNN
	1    4650 4650
	1    0    0    -1  
$EndComp
Wire Wire Line
	4650 4650 4650 4850
Wire Wire Line
	4650 4850 4450 4850
$Comp
L 74_Jacob:GND #PWR0105
U 1 1 625DF7B3
P 7050 5300
F 0 "#PWR0105" H 7050 5050 50  0001 C CNN
F 1 "GND" H 7050 5127 50  0000 C CNN
F 2 "" H 7050 5300 50  0001 C CNN
F 3 "" H 7050 5300 50  0001 C CNN
	1    7050 5300
	1    0    0    -1  
$EndComp
$Comp
L 74_Jacob:GND #PWR0106
U 1 1 625DFDFE
P 4950 4950
F 0 "#PWR0106" H 4950 4700 50  0001 C CNN
F 1 "GND" V 4950 4822 50  0000 R CNN
F 2 "" H 4950 4950 50  0001 C CNN
F 3 "" H 4950 4950 50  0001 C CNN
	1    4950 4950
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4950 4950 4450 4950
$Comp
L 74_Jacob:GND #PWR0107
U 1 1 625E0E59
P 2650 4950
F 0 "#PWR0107" H 2650 4700 50  0001 C CNN
F 1 "GND" V 2650 4822 50  0000 R CNN
F 2 "" H 2650 4950 50  0001 C CNN
F 3 "" H 2650 4950 50  0001 C CNN
	1    2650 4950
	0    1    1    0   
$EndComp
Wire Wire Line
	2650 4950 3100 4950
Text GLabel 4800 6650 2    50   Input ~ 0
MOSI
Wire Wire Line
	4800 6650 4450 6650
Text GLabel 2950 2750 2    50   Input ~ 0
MOSI
Wire Wire Line
	2950 2750 2700 2750
Text GLabel 2950 2850 2    50   Input ~ 0
SCK
Wire Wire Line
	2950 2850 2700 2850
Text GLabel 2750 5450 0    50   Input ~ 0
SCK
Wire Wire Line
	2750 5450 3100 5450
Text GLabel 2950 2950 2    50   Input ~ 0
DISPLAY-CLK
Text GLabel 2950 3050 2    50   Input ~ 0
~LED-OE
Wire Wire Line
	2950 3050 2700 3050
Wire Wire Line
	2700 2950 2950 2950
Text GLabel 1950 6150 0    50   Input ~ 0
DISPLAY-CLK
Text GLabel 1950 6050 0    50   Input ~ 0
~LED-OE
$Comp
L 74_Jacob:AAA-3x-Battery-Pack BT1
U 1 1 625CF271
P 7050 4950
F 0 "BT1" H 7158 4996 50  0000 L CNN
F 1 "AAA-3x-Battery-Pack" H 7158 4905 50  0000 L CNN
F 2 "74_jacob:BatteryHolder_Keystone_2479_3xAAA" V 7050 5060 50  0001 C CNN
F 3 "~" V 7050 5060 50  0001 C CNN
	1    7050 4950
	1    0    0    -1  
$EndComp
$EndSCHEMATC

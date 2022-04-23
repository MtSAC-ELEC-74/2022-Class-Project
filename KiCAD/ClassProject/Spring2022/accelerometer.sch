EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 6 6
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L 74_LIS2DE12TR:LIS2DE12TR U?
U 1 1 626921D2
P 4650 3300
F 0 "U?" H 5850 3687 60  0000 C CNN
F 1 "LIS2DE12TR" H 5850 3581 60  0000 C CNN
F 2 "LGA-12_STM" H 5850 3540 60  0001 C CNN
F 3 "" H 4650 3300 60  0000 C CNN
	1    4650 3300
	1    0    0    -1  
$EndComp
Text Notes 650  750  0    50   ~ 0
MISSING:\n- Add bypass caps (100nf / 10uf)
Text HLabel 4200 2500 1    50   BiDi ~ 0
I2C-SCL
Text HLabel 4100 2500 1    50   BiDi ~ 0
I2C-SDA
Text HLabel 3600 2500 1    50   Input ~ 0
SPI-CS
Text HLabel 3500 2500 1    50   Input ~ 0
SPI-SDO-MISO
Text HLabel 3400 2500 1    50   Input ~ 0
SPI-SDI-MOSI
Text HLabel 4000 2500 1    50   BiDi ~ 0
I2C-A0
Wire Wire Line
	4650 3300 4200 3300
Wire Wire Line
	4200 3300 4200 2500
Text HLabel 3300 2500 1    50   Input ~ 0
SPI-SCLK
Wire Wire Line
	3300 2500 3300 3300
Wire Wire Line
	3300 3300 4200 3300
Connection ~ 4200 3300
Wire Wire Line
	3600 2500 3600 3400
Wire Wire Line
	3600 3400 4650 3400
Wire Wire Line
	4650 3600 4100 3600
Wire Wire Line
	4100 3600 4100 2500
Wire Wire Line
	4650 3500 4550 3500
Wire Wire Line
	4000 3500 4000 2500
Wire Wire Line
	3400 2500 3400 3600
Wire Wire Line
	3400 3600 4100 3600
Connection ~ 4100 3600
Wire Wire Line
	3500 2500 3500 3500
Wire Wire Line
	3500 3500 4000 3500
Connection ~ 4000 3500
$Comp
L power:GND #PWR?
U 1 1 62644A84
P 7300 4450
F 0 "#PWR?" H 7300 4200 50  0001 C CNN
F 1 "GND" H 7305 4277 50  0000 C CNN
F 2 "" H 7300 4450 50  0001 C CNN
F 3 "" H 7300 4450 50  0001 C CNN
	1    7300 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	7300 3700 7300 3800
Connection ~ 7300 3800
Wire Wire Line
	4650 3800 4450 3800
$Comp
L power:+3.3V #PWR?
U 1 1 6264686E
P 7900 2500
F 0 "#PWR?" H 7900 2350 50  0001 C CNN
F 1 "+3.3V" H 7915 2673 50  0000 C CNN
F 2 "" H 7900 2500 50  0001 C CNN
F 3 "" H 7900 2500 50  0001 C CNN
	1    7900 2500
	1    0    0    -1  
$EndComp
Text HLabel 9000 3300 2    50   Output ~ 0
INT1
Text HLabel 9000 3400 2    50   Output ~ 0
INT2
Wire Wire Line
	7300 3800 7300 4450
$Comp
L power:GND #PWR?
U 1 1 6264EB29
P 4450 4450
F 0 "#PWR?" H 4450 4200 50  0001 C CNN
F 1 "GND" H 4455 4277 50  0000 C CNN
F 2 "" H 4450 4450 50  0001 C CNN
F 3 "" H 4450 4450 50  0001 C CNN
	1    4450 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	4450 3800 4450 4450
Wire Wire Line
	4650 3700 4450 3700
Wire Wire Line
	4450 3700 4450 3800
Connection ~ 4450 3800
Wire Wire Line
	7050 3700 7300 3700
Wire Wire Line
	7050 3800 7300 3800
Wire Wire Line
	7050 3300 8100 3300
Wire Wire Line
	7050 3400 8550 3400
Wire Wire Line
	7050 3500 7900 3500
Wire Wire Line
	7900 3500 7900 2700
Wire Wire Line
	7900 3600 7900 3500
Connection ~ 7900 3500
$Comp
L 1_pontech:PLP-000029 R?
U 1 1 62646A21
P 4550 2850
F 0 "R?" H 4620 2896 50  0000 L CNN
F 1 "100k" H 4620 2805 50  0000 L CNN
F 2 "a_pontech:R_0603_1608Metric" V 4480 2850 50  0001 C CNN
F 3 "~" H 4550 2850 50  0001 C CNN
F 4 "100K 0.1W 1% 0603" H 4620 2759 50  0001 L CNN "Info"
	1    4550 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	8550 3100 8550 3400
Connection ~ 8550 3400
Wire Wire Line
	8550 3400 9000 3400
Wire Wire Line
	8100 3100 8100 3300
Connection ~ 8100 3300
Wire Wire Line
	8100 3300 9000 3300
Wire Wire Line
	8100 2800 8100 2700
Wire Wire Line
	8100 2700 7900 2700
Connection ~ 7900 2700
Wire Wire Line
	7900 2700 7900 2600
Wire Wire Line
	8550 2800 8550 2600
Wire Wire Line
	8550 2600 7900 2600
Connection ~ 7900 2600
Wire Wire Line
	7900 2600 7900 2500
Connection ~ 4550 3500
Wire Wire Line
	4550 3500 4000 3500
$Comp
L power:+3.3V #PWR?
U 1 1 6264A434
P 4550 2500
F 0 "#PWR?" H 4550 2350 50  0001 C CNN
F 1 "+3.3V" H 4565 2673 50  0000 C CNN
F 2 "" H 4550 2500 50  0001 C CNN
F 3 "" H 4550 2500 50  0001 C CNN
	1    4550 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	4550 2700 4550 2500
Wire Wire Line
	4550 3000 4550 3500
$Comp
L 1_pontech:PLP-000029 R?
U 1 1 6264656A
P 8550 2950
F 0 "R?" H 8620 2996 50  0000 L CNN
F 1 "100k" H 8620 2905 50  0000 L CNN
F 2 "a_pontech:R_0603_1608Metric" V 8480 2950 50  0001 C CNN
F 3 "~" H 8550 2950 50  0001 C CNN
F 4 "100K 0.1W 1% 0603" H 8620 2859 50  0001 L CNN "Info"
	1    8550 2950
	1    0    0    -1  
$EndComp
$Comp
L 1_pontech:PLP-000029 R?
U 1 1 626461CF
P 8100 2950
F 0 "R?" H 8170 2996 50  0000 L CNN
F 1 "100k" H 8170 2905 50  0000 L CNN
F 2 "a_pontech:R_0603_1608Metric" V 8030 2950 50  0001 C CNN
F 3 "~" H 8100 2950 50  0001 C CNN
F 4 "100K 0.1W 1% 0603" H 8170 2859 50  0001 L CNN "Info"
	1    8100 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	7050 3600 7900 3600
$Comp
L 1_pontech:PLP-000068 C?
U 1 1 6264FAC2
P 1950 2900
F 0 "C?" H 2050 3000 50  0000 L CNN
F 1 "0.1uF" H 2050 2800 50  0000 L CNN
F 2 "a_pontech:CAP-NON-POLAR-0603" H 2050 2450 50  0001 L CNN
F 3 "~" H 1950 2900 50  0001 C CNN
F 4 "0.1UF 25V 10% X7R 0603" H 2065 2809 50  0001 L CNN "Info"
	1    1950 2900
	1    0    0    -1  
$EndComp
$Comp
L 1_pontech:PLP-000409 C?
U 1 1 6264FF78
P 2600 2900
F 0 "C?" H 2700 3000 50  0000 L CNN
F 1 "10uF" H 2700 2800 50  0000 L CNN
F 2 "a_pontech:CAP-NON-POLAR-0603" H 2700 2450 50  0001 L CNN
F 3 "~" H 2600 2900 50  0001 C CNN
F 4 "10UF 6.3V 20% X5R 0603" H 2715 2809 50  0001 L CNN "Info"
	1    2600 2900
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 62652D7C
P 2600 2500
F 0 "#PWR?" H 2600 2350 50  0001 C CNN
F 1 "+3.3V" H 2615 2673 50  0000 C CNN
F 2 "" H 2600 2500 50  0001 C CNN
F 3 "" H 2600 2500 50  0001 C CNN
	1    2600 2500
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 62653860
P 1950 2500
F 0 "#PWR?" H 1950 2350 50  0001 C CNN
F 1 "+3.3V" H 1965 2673 50  0000 C CNN
F 2 "" H 1950 2500 50  0001 C CNN
F 3 "" H 1950 2500 50  0001 C CNN
	1    1950 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	2600 2750 2600 2500
Wire Wire Line
	1950 2750 1950 2500
$Comp
L power:GND #PWR?
U 1 1 6265514C
P 2600 3400
F 0 "#PWR?" H 2600 3150 50  0001 C CNN
F 1 "GND" H 2605 3227 50  0000 C CNN
F 2 "" H 2600 3400 50  0001 C CNN
F 3 "" H 2600 3400 50  0001 C CNN
	1    2600 3400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 626556B5
P 1950 3400
F 0 "#PWR?" H 1950 3150 50  0001 C CNN
F 1 "GND" H 1955 3227 50  0000 C CNN
F 2 "" H 1950 3400 50  0001 C CNN
F 3 "" H 1950 3400 50  0001 C CNN
	1    1950 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	2600 3050 2600 3400
Wire Wire Line
	1950 3050 1950 3400
$EndSCHEMATC

EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 6
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
L 74_Jordan_IRSchematic:IRLED1503 LED1?
U 1 1 6265B928
P 4750 3650
F 0 "LED1?" H 4750 3940 50  0000 C CNN
F 1 "IRLED1503" H 4750 3849 50  0000 C CNN
F 2 "74_ClassProj_IRFootprint:IR1503" H 4750 3475 50  0001 C CNN
F 3 "http://www.alliedelec.com/m/d/40788c34903a719969df15f1fbea1056.pdf" H 5100 3400 50  0001 C CNN
	1    4750 3650
	-1   0    0    -1  
$EndComp
Text HLabel 4250 3650 0    50   Input ~ 0
IR-TX
Text HLabel 7950 3900 2    50   Output ~ 0
IR-RX
Wire Wire Line
	4250 3650 4600 3650
$Comp
L 74_Jacob:GND #PWR?
U 1 1 6265D8F2
P 5200 4200
AR Path="/6265D8F2" Ref="#PWR?"  Part="1" 
AR Path="/6265B89C/6265D8F2" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 5200 3950 50  0001 C CNN
F 1 "GND" H 5200 4027 50  0000 C CNN
F 2 "" H 5200 4200 50  0001 C CNN
F 3 "" H 5200 4200 50  0001 C CNN
	1    5200 4200
	1    0    0    -1  
$EndComp
$Comp
L 74_Jacob:+4.5V #PWR?
U 1 1 626785BD
P 6700 3550
F 0 "#PWR?" H 6700 3400 50  0001 C CNN
F 1 "+4.5V" H 6700 3723 50  0000 C CNN
F 2 "" H 6700 3550 50  0001 C CNN
F 3 "" H 6700 3550 50  0001 C CNN
	1    6700 3550
	1    0    0    -1  
$EndComp
$Comp
L 1_pontech:PLP-000031 R?
U 1 1 62644FF5
P 5200 3900
F 0 "R?" H 5270 3991 50  0000 L CNN
F 1 "PLP-000031" H 5270 3900 50  0000 L CNN
F 2 "a_pontech:R_0603_1608Metric" V 5130 3900 50  0001 C CNN
F 3 "~" H 5200 3900 50  0001 C CNN
F 4 "200 0.1W 1% 0603" H 5270 3809 50  0000 L CNN "Info"
	1    5200 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	5200 4050 5200 4200
Wire Wire Line
	5200 3750 5200 3650
Wire Wire Line
	5200 3650 4900 3650
$Comp
L 1_pontech:PLP-000201 U?
U 1 1 62668197
P 7300 3900
F 0 "U?" H 7300 4242 50  0000 C CNN
F 1 "PLP-000201" H 7300 4151 50  0000 C CNN
F 2 "1_pontech:PLP-0000201" H 7300 4225 50  0001 C CIN
F 3 "http://www.zlgmcu.com/Sipex/LDO/PDF/spx2920.pdf" H 7300 3950 50  0001 C CNN
	1    7300 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	7950 3900 7650 3900
Wire Wire Line
	6700 3550 6700 3800
Wire Wire Line
	6700 3800 6950 3800
$Comp
L 74_Jacob:GND #PWR?
U 1 1 62669A75
P 6700 4200
AR Path="/62669A75" Ref="#PWR?"  Part="1" 
AR Path="/6265B89C/62669A75" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 6700 3950 50  0001 C CNN
F 1 "GND" H 6700 4027 50  0000 C CNN
F 2 "" H 6700 4200 50  0001 C CNN
F 3 "" H 6700 4200 50  0001 C CNN
	1    6700 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	6700 4200 6700 4000
Wire Wire Line
	6700 4000 6950 4000
Text Notes 650  850  0    118  ~ 0
IR TX / RX
$EndSCHEMATC

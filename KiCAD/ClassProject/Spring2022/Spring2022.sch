EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 6
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
S 1000 1600 750  600 
U 625B6136
F0 "LED Bar" 50
F1 "led-bar.sch" 50
F2 "LED-SDI" I R 1750 1800 50 
F3 "LED-SCLK" I R 1750 1900 50 
F4 "LED-DCLK" I R 1750 2000 50 
F5 "~LED-OE" I R 1750 2100 50 
F6 "LED-V+" I R 1750 1700 50 
$EndSheet
$Comp
L 74_Patrick:FUB-MINI U1
U 1 1 625BD726
P 6050 2250
F 0 "U1" H 6025 3315 50  0000 C CNN
F 1 "FUB-MINI" H 6025 3224 50  0000 C CNN
F 2 "74_Patrick B:FubSocket_DIP-40_600_ELL" H 5850 2250 50  0001 C CNN
F 3 "" H 5850 2250 50  0001 C CNN
	1    6050 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	9350 3200 9350 3300
Wire Wire Line
	9350 2550 9350 2700
Wire Wire Line
	6900 1250 6900 1450
Wire Wire Line
	6900 1450 6700 1450
$Comp
L 74_Jacob:GND #PWR0105
U 1 1 625DF7B3
P 9350 3300
F 0 "#PWR0105" H 9350 3050 50  0001 C CNN
F 1 "GND" H 9350 3127 50  0000 C CNN
F 2 "" H 9350 3300 50  0001 C CNN
F 3 "" H 9350 3300 50  0001 C CNN
	1    9350 3300
	1    0    0    -1  
$EndComp
$Comp
L 74_Jacob:GND #PWR0106
U 1 1 625DFDFE
P 7200 1550
F 0 "#PWR0106" H 7200 1300 50  0001 C CNN
F 1 "GND" V 7200 1422 50  0000 R CNN
F 2 "" H 7200 1550 50  0001 C CNN
F 3 "" H 7200 1550 50  0001 C CNN
	1    7200 1550
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7200 1550 6700 1550
$Comp
L 74_Jacob:GND #PWR0107
U 1 1 625E0E59
P 4900 1550
F 0 "#PWR0107" H 4900 1300 50  0001 C CNN
F 1 "GND" V 4900 1422 50  0000 R CNN
F 2 "" H 4900 1550 50  0001 C CNN
F 3 "" H 4900 1550 50  0001 C CNN
	1    4900 1550
	0    1    1    0   
$EndComp
Wire Wire Line
	4900 1550 5350 1550
Text GLabel 7050 3250 2    50   Input ~ 0
MOSI
Wire Wire Line
	7050 3250 6700 3250
Text GLabel 2000 1800 2    50   Input ~ 0
MOSI
Wire Wire Line
	2000 1800 1750 1800
Text GLabel 2000 1900 2    50   Input ~ 0
SCK
Wire Wire Line
	2000 1900 1750 1900
Text GLabel 5000 2050 0    50   Input ~ 0
SCK
Wire Wire Line
	5000 2050 5350 2050
Text GLabel 2000 2000 2    50   Input ~ 0
DISPLAY-CLK
Text GLabel 2000 2100 2    50   Input ~ 0
~LED-OE
Wire Wire Line
	2000 2100 1750 2100
Wire Wire Line
	1750 2000 2000 2000
Text GLabel 4500 3000 0    50   Input ~ 0
DISPLAY-CLK
Text GLabel 4500 2900 0    50   Input ~ 0
~LED-OE
$Comp
L 74_Jacob:AAA-3x-Battery-Pack BT1
U 1 1 625CF271
P 9350 2950
F 0 "BT1" H 9458 2996 50  0000 L CNN
F 1 "AAA-3x-Battery-Pack" H 9458 2905 50  0000 L CNN
F 2 "74_jacob:BatteryHolder_Keystone_2479_3xAAA" V 9350 3060 50  0001 C CNN
F 3 "~" V 9350 3060 50  0001 C CNN
	1    9350 2950
	1    0    0    -1  
$EndComp
$Sheet
S 1000 2550 750  600 
U 6265B89C
F0 "IR TX/RX" 50
F1 "ir-txrx.sch" 50
F2 "IR-TX" I R 1750 2750 50 
F3 "IR-RX" O R 1750 2900 50 
$EndSheet
$Sheet
S 8850 900  800  600 
U 626796C5
F0 "Bluetooth Microchip" 50
F1 "bluetooth-microchip.sch" 50
$EndSheet
$Sheet
S 1000 3450 750  600 
U 6267AD67
F0 "Humi - Temp Sensor" 50
F1 "humi-temp.sch" 50
F2 "Vtemp-Analog" O R 1750 3600 50 
F3 "I2C-SDA" B R 1750 3750 50 
F4 "I2C-SCK" B R 1750 3900 50 
$EndSheet
Text Notes 900  1150 0    50   ~ 0
MISSING:\n- I2C Pullup Resistors\n- Hookup I2C to uC\n
$Sheet
S 1000 4300 750  1250
U 62691FC6
F0 "Accelerometer" 50
F1 "accelerometer.sch" 50
F2 "I2C-SCL" B R 1750 4450 50 
F3 "I2C-SDA" B R 1750 4550 50 
F4 "SPI-CS" I R 1750 4750 50 
F5 "SPI-SDO-MISO" I R 1750 4850 50 
F6 "SPI-SDI-MOSI" I R 1750 4950 50 
F7 "I2C-A0" B R 1750 4650 50 
F8 "INT1" O R 1750 5250 50 
F9 "INT2" O R 1750 5350 50 
F10 "SPI-SCLK" I R 1750 5050 50 
$EndSheet
Text Notes 1150 3950 1    50   ~ 0
DONE
$Comp
L 1_pontech:PLP-000270 R17
U 1 1 626677F4
P 4250 4750
F 0 "R17" H 4320 4841 50  0000 L CNN
F 1 "PLP-000270" H 4320 4750 50  0000 L CNN
F 2 "a_pontech:R_0603_1608Metric" V 4180 4750 50  0001 C CNN
F 3 "~" H 4250 4750 50  0001 C CNN
F 4 "2K 0.1W 1% 0603" H 4320 4659 50  0000 L CNN "Info"
	1    4250 4750
	1    0    0    -1  
$EndComp
$Comp
L 1_pontech:PLP-000270 R18
U 1 1 62667DF1
P 5150 4750
F 0 "R18" H 5220 4841 50  0000 L CNN
F 1 "PLP-000270" H 5220 4750 50  0000 L CNN
F 2 "a_pontech:R_0603_1608Metric" V 5080 4750 50  0001 C CNN
F 3 "~" H 5150 4750 50  0001 C CNN
F 4 "2K 0.1W 1% 0603" H 5220 4659 50  0000 L CNN "Info"
	1    5150 4750
	1    0    0    -1  
$EndComp
Wire Wire Line
	5150 4450 5150 4600
Wire Wire Line
	4250 4450 4250 4600
Text GLabel 4150 5050 0    50   Input ~ 0
I2C-SCK
Wire Wire Line
	4150 5050 4250 5050
Wire Wire Line
	4250 5050 4250 4900
Text GLabel 5050 5100 0    50   Input ~ 0
I2C-SDA
Wire Wire Line
	5050 5100 5150 5100
Wire Wire Line
	5150 5100 5150 4900
Text GLabel 2000 3900 2    50   Input ~ 0
I2C-SCK
Text GLabel 2000 3750 2    50   Input ~ 0
I2C-SDA
Wire Wire Line
	2000 3750 1750 3750
Wire Wire Line
	1750 3900 2000 3900
Text GLabel 7100 2450 2    50   Input ~ 0
I2C-SDA
Text GLabel 7100 2550 2    50   Input ~ 0
I2C-SCK
Wire Wire Line
	7100 2550 6700 2550
Wire Wire Line
	6700 2450 7100 2450
Wire Wire Line
	5350 1650 4450 1650
Wire Wire Line
	4450 1650 4450 1550
Wire Wire Line
	7650 1600 7650 1650
Wire Wire Line
	7650 1650 6700 1650
Text GLabel 2000 4450 2    50   Input ~ 0
I2C-SCK
Text GLabel 2000 4550 2    50   Input ~ 0
I2C-SDA
Wire Wire Line
	2000 4450 1750 4450
Wire Wire Line
	1750 4550 2000 4550
Text GLabel 7050 3150 2    50   Input ~ 0
MISO
Wire Wire Line
	7050 3150 6700 3150
Text GLabel 2000 4850 2    50   Input ~ 0
MISO
Text GLabel 2000 4950 2    50   Input ~ 0
MOSI
Wire Wire Line
	2000 4950 1750 4950
Wire Wire Line
	1750 4850 2000 4850
Text GLabel 2000 5050 2    50   Input ~ 0
SCK
Wire Wire Line
	2000 5050 1750 5050
Wire Wire Line
	1900 1550 1900 1700
Wire Wire Line
	1900 1700 1750 1700
Text Notes 1150 2100 1    50   ~ 0
DONE
Text Notes 1150 3050 1    50   ~ 0
DONE
Text Notes 1150 5450 1    50   ~ 0
DONE
$Comp
L 74_Jacob:+4.5V #PWR0108
U 1 1 6274567D
P 6900 1250
F 0 "#PWR0108" H 6900 1100 50  0001 C CNN
F 1 "+4.5V" H 6900 1423 50  0000 C CNN
F 2 "" H 6900 1250 50  0001 C CNN
F 3 "" H 6900 1250 50  0001 C CNN
	1    6900 1250
	1    0    0    -1  
$EndComp
$Comp
L 74_Jacob:+4.5V #PWR0109
U 1 1 62745CC9
P 9350 2550
F 0 "#PWR0109" H 9350 2400 50  0001 C CNN
F 1 "+4.5V" H 9350 2723 50  0000 C CNN
F 2 "" H 9350 2550 50  0001 C CNN
F 3 "" H 9350 2550 50  0001 C CNN
	1    9350 2550
	1    0    0    -1  
$EndComp
$Comp
L 74_Jacob:+4.5V #PWR0110
U 1 1 62746536
P 1900 1550
F 0 "#PWR0110" H 1900 1400 50  0001 C CNN
F 1 "+4.5V" H 1900 1723 50  0000 C CNN
F 2 "" H 1900 1550 50  0001 C CNN
F 3 "" H 1900 1550 50  0001 C CNN
	1    1900 1550
	1    0    0    -1  
$EndComp
$Comp
L 74_Jacob:+3.3V #PWR0101
U 1 1 62747748
P 4450 1550
F 0 "#PWR0101" H 4450 1400 50  0001 C CNN
F 1 "+3.3V" H 4450 1723 50  0000 C CNN
F 2 "" H 4450 1550 50  0001 C CNN
F 3 "" H 4450 1550 50  0001 C CNN
	1    4450 1550
	1    0    0    -1  
$EndComp
$Comp
L 74_Jacob:+3.3V #PWR0102
U 1 1 62747E3F
P 7650 1600
F 0 "#PWR0102" H 7650 1450 50  0001 C CNN
F 1 "+3.3V" H 7650 1773 50  0000 C CNN
F 2 "" H 7650 1600 50  0001 C CNN
F 3 "" H 7650 1600 50  0001 C CNN
	1    7650 1600
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR0103
U 1 1 6274E40E
P 4250 4450
F 0 "#PWR0103" H 4250 4300 50  0001 C CNN
F 1 "+3V3" H 4265 4623 50  0000 C CNN
F 2 "" H 4250 4450 50  0001 C CNN
F 3 "" H 4250 4450 50  0001 C CNN
	1    4250 4450
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR0104
U 1 1 6274F3A8
P 5150 4450
F 0 "#PWR0104" H 5150 4300 50  0001 C CNN
F 1 "+3V3" H 5165 4623 50  0000 C CNN
F 2 "" H 5150 4450 50  0001 C CNN
F 3 "" H 5150 4450 50  0001 C CNN
	1    5150 4450
	1    0    0    -1  
$EndComp
$EndSCHEMATC

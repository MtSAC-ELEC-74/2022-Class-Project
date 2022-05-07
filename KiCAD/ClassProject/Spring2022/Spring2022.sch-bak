EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 5
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
P 5400 3000
F 0 "U1" H 5375 4065 50  0000 C CNN
F 1 "FUB-MINI" H 5375 3974 50  0000 C CNN
F 2 "74_Patrick B:FubSocket_DIP-40_600_ELL" H 5200 3000 50  0001 C CNN
F 3 "" H 5200 3000 50  0001 C CNN
	1    5400 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	7950 4400 7950 4500
Wire Wire Line
	7950 3750 7950 3900
Wire Wire Line
	6250 2150 6250 2200
Wire Wire Line
	6250 2200 6050 2200
$Comp
L 74_Jacob:GND #PWR0105
U 1 1 625DF7B3
P 7950 4500
F 0 "#PWR0105" H 7950 4250 50  0001 C CNN
F 1 "GND" H 7950 4327 50  0000 C CNN
F 2 "" H 7950 4500 50  0001 C CNN
F 3 "" H 7950 4500 50  0001 C CNN
	1    7950 4500
	1    0    0    -1  
$EndComp
$Comp
L 74_Jacob:GND #PWR0106
U 1 1 625DFDFE
P 6550 2300
F 0 "#PWR0106" H 6550 2050 50  0001 C CNN
F 1 "GND" V 6550 2172 50  0000 R CNN
F 2 "" H 6550 2300 50  0001 C CNN
F 3 "" H 6550 2300 50  0001 C CNN
	1    6550 2300
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6550 2300 6050 2300
$Comp
L 74_Jacob:GND #PWR0107
U 1 1 625E0E59
P 4250 2300
F 0 "#PWR0107" H 4250 2050 50  0001 C CNN
F 1 "GND" V 4250 2172 50  0000 R CNN
F 2 "" H 4250 2300 50  0001 C CNN
F 3 "" H 4250 2300 50  0001 C CNN
	1    4250 2300
	0    1    1    0   
$EndComp
Wire Wire Line
	4250 2300 4700 2300
Text GLabel 6400 4000 2    50   Input ~ 0
MOSI
Wire Wire Line
	6400 4000 6050 4000
Text GLabel 2000 1800 2    50   Input ~ 0
MOSI
Wire Wire Line
	2000 1800 1750 1800
Text GLabel 2000 1900 2    50   Input ~ 0
SCK
Wire Wire Line
	2000 1900 1750 1900
Text GLabel 4350 2800 0    50   Input ~ 0
SCK
Wire Wire Line
	4350 2800 4700 2800
Text GLabel 2000 2000 2    50   Input ~ 0
DISPLAY-CLK
Text GLabel 2000 2100 2    50   Input ~ 0
~LED-OE
Wire Wire Line
	2000 2100 1750 2100
Wire Wire Line
	1750 2000 2000 2000
Text GLabel 6450 3700 2    50   Input ~ 0
DISPLAY-CLK
Text GLabel 6450 3600 2    50   Input ~ 0
~LED-OE
$Comp
L 74_Jacob:AAA-3x-Battery-Pack BT1
U 1 1 625CF271
P 7950 4150
F 0 "BT1" H 8058 4196 50  0000 L CNN
F 1 "AAA-3x-Battery-Pack" H 8058 4105 50  0000 L CNN
F 2 "74_jacob:BatteryHolder_Keystone_2479_3xAAA" V 7950 4260 50  0001 C CNN
F 3 "~" V 7950 4260 50  0001 C CNN
	1    7950 4150
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
S 1000 3450 750  600 
U 6267AD67
F0 "Humi - Temp Sensor" 50
F1 "humi-temp.sch" 50
F2 "Vtemp-Analog" O R 1750 3600 50 
F3 "I2C-SDA" B R 1750 3750 50 
F4 "I2C-SCK" B R 1750 3900 50 
$EndSheet
$Sheet
S 1000 4300 750  1250
U 62691FC6
F0 "Accelerometer" 50
F1 "accelerometer.sch" 50
F2 "I2C-SCL" B R 1750 4400 50 
F3 "I2C-SDA" B R 1750 4500 50 
F4 "SPI-CS" I R 1750 4700 50 
F5 "SPI-SDO-MISO" I R 1750 4850 50 
F6 "SPI-SDI-MOSI" I R 1750 4950 50 
F7 "I2C-A0" B R 1750 4600 50 
F8 "INT1" O R 1750 5250 50 
F9 "INT2" O R 1750 5400 50 
F10 "SPI-SCLK" I R 1750 5050 50 
$EndSheet
Text Notes 1150 3950 1    50   ~ 0
DONE
$Comp
L 1_pontech:PLP-000270 R17
U 1 1 626677F4
P 9250 4200
F 0 "R17" H 9320 4291 50  0000 L CNN
F 1 "PLP-000270" H 9320 4200 50  0000 L CNN
F 2 "a_pontech:R_0603_1608Metric" V 9180 4200 50  0001 C CNN
F 3 "~" H 9250 4200 50  0001 C CNN
F 4 "2K 0.1W 1% 0603" H 9320 4109 50  0000 L CNN "Info"
	1    9250 4200
	1    0    0    -1  
$EndComp
$Comp
L 1_pontech:PLP-000270 R18
U 1 1 62667DF1
P 10150 4200
F 0 "R18" H 10220 4291 50  0000 L CNN
F 1 "PLP-000270" H 10220 4200 50  0000 L CNN
F 2 "a_pontech:R_0603_1608Metric" V 10080 4200 50  0001 C CNN
F 3 "~" H 10150 4200 50  0001 C CNN
F 4 "2K 0.1W 1% 0603" H 10220 4109 50  0000 L CNN "Info"
	1    10150 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	10150 3900 10150 4050
Wire Wire Line
	9250 3900 9250 4050
Text GLabel 9150 4500 0    50   Input ~ 0
I2C-SCK
Wire Wire Line
	9150 4500 9250 4500
Wire Wire Line
	9250 4500 9250 4350
Text GLabel 10050 4550 0    50   Input ~ 0
I2C-SDA
Wire Wire Line
	10050 4550 10150 4550
Wire Wire Line
	10150 4550 10150 4350
Text GLabel 2000 3900 2    50   Input ~ 0
I2C-SCK
Text GLabel 2000 3750 2    50   Input ~ 0
I2C-SDA
Wire Wire Line
	2000 3750 1750 3750
Wire Wire Line
	1750 3900 2000 3900
Text GLabel 6450 3200 2    50   Input ~ 0
I2C-SDA
Text GLabel 6450 3300 2    50   Input ~ 0
I2C-SCK
Wire Wire Line
	6450 3300 6050 3300
Wire Wire Line
	6050 3200 6450 3200
Wire Wire Line
	4700 2400 3800 2400
Wire Wire Line
	3800 2400 3800 2300
Wire Wire Line
	7000 2350 7000 2400
Wire Wire Line
	7000 2400 6050 2400
Text GLabel 2000 4400 2    50   Input ~ 0
I2C-SCK
Text GLabel 2000 4500 2    50   Input ~ 0
I2C-SDA
Wire Wire Line
	2000 4400 1750 4400
Wire Wire Line
	1750 4500 2000 4500
Text GLabel 6400 3900 2    50   Input ~ 0
MISO
Wire Wire Line
	6400 3900 6050 3900
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
P 6250 2150
F 0 "#PWR0108" H 6250 2000 50  0001 C CNN
F 1 "+4.5V" H 6250 2323 50  0000 C CNN
F 2 "" H 6250 2150 50  0001 C CNN
F 3 "" H 6250 2150 50  0001 C CNN
	1    6250 2150
	1    0    0    -1  
$EndComp
$Comp
L 74_Jacob:+4.5V #PWR0109
U 1 1 62745CC9
P 7950 3750
F 0 "#PWR0109" H 7950 3600 50  0001 C CNN
F 1 "+4.5V" H 7950 3923 50  0000 C CNN
F 2 "" H 7950 3750 50  0001 C CNN
F 3 "" H 7950 3750 50  0001 C CNN
	1    7950 3750
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
P 3800 2300
F 0 "#PWR0101" H 3800 2150 50  0001 C CNN
F 1 "+3.3V" H 3800 2473 50  0000 C CNN
F 2 "" H 3800 2300 50  0001 C CNN
F 3 "" H 3800 2300 50  0001 C CNN
	1    3800 2300
	1    0    0    -1  
$EndComp
$Comp
L 74_Jacob:+3.3V #PWR0102
U 1 1 62747E3F
P 7000 2350
F 0 "#PWR0102" H 7000 2200 50  0001 C CNN
F 1 "+3.3V" H 7000 2523 50  0000 C CNN
F 2 "" H 7000 2350 50  0001 C CNN
F 3 "" H 7000 2350 50  0001 C CNN
	1    7000 2350
	1    0    0    -1  
$EndComp
Text GLabel 2000 4700 2    50   Input ~ 0
~CS-ACC
Wire Wire Line
	1750 4700 2000 4700
NoConn ~ 1850 4600
Wire Wire Line
	1850 4600 1750 4600
Text GLabel 2000 5250 2    50   Input ~ 0
~INT1-ACC
Text GLabel 2000 5400 2    50   Input ~ 0
~INT2-ACC
Wire Wire Line
	2000 5250 1750 5250
Wire Wire Line
	1750 5400 2000 5400
Text GLabel 3950 3100 0    50   Input ~ 0
~INT1-ACC
Text GLabel 3950 2900 0    50   Input ~ 0
~INT2-ACC
Text GLabel 4350 3000 0    50   Input ~ 0
~CS-ACC
Text GLabel 2000 2750 2    50   Input ~ 0
IR-TX
Text GLabel 2000 2900 2    50   Input ~ 0
IR-RX
Wire Wire Line
	1750 2750 2000 2750
Wire Wire Line
	2000 2900 1750 2900
Text GLabel 6400 4100 2    50   Input ~ 0
IR-TX
Text GLabel 6450 3400 2    50   Input ~ 0
IR-RX
$Comp
L 74_Jacob:+3.3V #PWR0103
U 1 1 6277D0DD
P 9250 3900
F 0 "#PWR0103" H 9250 3750 50  0001 C CNN
F 1 "+3.3V" H 9250 4073 50  0000 C CNN
F 2 "" H 9250 3900 50  0001 C CNN
F 3 "" H 9250 3900 50  0001 C CNN
	1    9250 3900
	1    0    0    -1  
$EndComp
$Comp
L 74_Jacob:+3.3V #PWR0104
U 1 1 6277DF79
P 10150 3900
F 0 "#PWR0104" H 10150 3750 50  0001 C CNN
F 1 "+3.3V" H 10150 4073 50  0000 C CNN
F 2 "" H 10150 3900 50  0001 C CNN
F 3 "" H 10150 3900 50  0001 C CNN
	1    10150 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	4700 2900 3950 2900
Wire Wire Line
	4350 3000 4700 3000
Wire Wire Line
	4700 3100 3950 3100
Text GLabel 2000 3600 2    50   Input ~ 0
TEMPERATURE
Wire Wire Line
	2000 3600 1750 3600
Text GLabel 4350 3300 0    50   Input ~ 0
TEMPERATURE
Wire Wire Line
	4350 3300 4700 3300
Wire Wire Line
	6450 3700 6050 3700
Wire Wire Line
	6450 3600 6050 3600
Wire Wire Line
	6400 4100 6050 4100
Wire Wire Line
	6450 3400 6050 3400
$EndSCHEMATC

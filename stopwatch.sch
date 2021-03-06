EESchema Schematic File Version 4
LIBS:stopwatch-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
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
L Connector:USB_B_Micro J1
U 1 1 5B671AF0
P 1600 4550
F 0 "J1" H 1655 5017 50  0000 C CNN
F 1 "USB_B_Micro" H 1655 4926 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x06_Pitch2.54mm" H 1750 4500 50  0001 C CNN
F 3 "~" H 1750 4500 50  0001 C CNN
	1    1600 4550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0102
U 1 1 5B671B9E
P 1600 5300
F 0 "#PWR0102" H 1600 5050 50  0001 C CNN
F 1 "GND" H 1605 5127 50  0000 C CNN
F 2 "" H 1600 5300 50  0001 C CNN
F 3 "" H 1600 5300 50  0001 C CNN
	1    1600 5300
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C1
U 1 1 5B671CB2
P 2200 4500
F 0 "C1" H 2318 4546 50  0000 L CNN
F 1 "47uF" H 2318 4455 50  0000 L CNN
F 2 "Capacitors_THT:CP_Radial_D8.0mm_P3.50mm" H 2238 4350 50  0001 C CNN
F 3 "~" H 2200 4500 50  0001 C CNN
	1    2200 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	2200 4350 1900 4350
Wire Wire Line
	1600 4950 2200 4950
Wire Wire Line
	2200 4950 2200 4650
$Comp
L power:+5V #PWR0104
U 1 1 5B671D77
P 2200 4350
F 0 "#PWR0104" H 2200 4200 50  0001 C CNN
F 1 "+5V" H 2215 4523 50  0000 C CNN
F 2 "" H 2200 4350 50  0001 C CNN
F 3 "" H 2200 4350 50  0001 C CNN
	1    2200 4350
	1    0    0    -1  
$EndComp
Connection ~ 2200 4350
$Comp
L power:GND #PWR09
U 1 1 5B679C75
P 6200 4950
F 0 "#PWR09" H 6200 4700 50  0001 C CNN
F 1 "GND" H 6205 4777 50  0000 C CNN
F 2 "" H 6200 4950 50  0001 C CNN
F 3 "" H 6200 4950 50  0001 C CNN
	1    6200 4950
	1    0    0    -1  
$EndComp
$Comp
L Device:C C2
U 1 1 5B679D0F
P 6450 3700
F 0 "C2" V 6198 3700 50  0000 C CNN
F 1 "100nF" V 6289 3700 50  0000 C CNN
F 2 "Capacitors_THT:C_Disc_D7.5mm_W5.0mm_P5.00mm" H 6488 3550 50  0001 C CNN
F 3 "~" H 6450 3700 50  0001 C CNN
	1    6450 3700
	0    1    1    0   
$EndComp
Wire Wire Line
	6200 3750 6200 3700
$Comp
L power:GND #PWR011
U 1 1 5B67A21A
P 6600 3700
F 0 "#PWR011" H 6600 3450 50  0001 C CNN
F 1 "GND" V 6605 3572 50  0000 R CNN
F 2 "" H 6600 3700 50  0001 C CNN
F 3 "" H 6600 3700 50  0001 C CNN
	1    6600 3700
	0    -1   -1   0   
$EndComp
$Comp
L power:+5V #PWR08
U 1 1 5B67A295
P 6200 3700
F 0 "#PWR08" H 6200 3550 50  0001 C CNN
F 1 "+5V" H 6215 3873 50  0000 C CNN
F 2 "" H 6200 3700 50  0001 C CNN
F 3 "" H 6200 3700 50  0001 C CNN
	1    6200 3700
	1    0    0    -1  
$EndComp
Text Label 3900 4350 2    50   ~ 0
MCLR
Text Label 4100 4050 2    50   ~ 0
ICSPDAT
Text Label 4100 4150 2    50   ~ 0
ICSPCLK
Wire Wire Line
	4100 4050 4200 4050
Wire Wire Line
	4100 4150 4200 4150
$Comp
L Connector_Generic:Conn_01x06 J2
U 1 1 5B67B2B0
P 3050 4300
F 0 "J2" H 2970 3775 50  0000 C CNN
F 1 "Conn_01x06" H 2970 3866 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x06_Pitch2.54mm" H 3050 4300 50  0001 C CNN
F 3 "~" H 3050 4300 50  0001 C CNN
	1    3050 4300
	-1   0    0    1   
$EndComp
Text Label 3400 4500 0    50   ~ 0
MCLR
$Comp
L power:+5V #PWR04
U 1 1 5B67B3A4
P 3400 4400
F 0 "#PWR04" H 3400 4250 50  0001 C CNN
F 1 "+5V" V 3415 4528 50  0000 L CNN
F 2 "" H 3400 4400 50  0001 C CNN
F 3 "" H 3400 4400 50  0001 C CNN
	1    3400 4400
	0    1    1    0   
$EndComp
Text Label 3400 4200 0    50   ~ 0
ICSPDAT
Text Label 3400 4100 0    50   ~ 0
ICSPCLK
$Comp
L power:GND #PWR03
U 1 1 5B67B51C
P 3400 4300
F 0 "#PWR03" H 3400 4050 50  0001 C CNN
F 1 "GND" V 3405 4172 50  0000 R CNN
F 2 "" H 3400 4300 50  0001 C CNN
F 3 "" H 3400 4300 50  0001 C CNN
	1    3400 4300
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3400 4500 3250 4500
Wire Wire Line
	3400 4300 3250 4300
Wire Wire Line
	3250 4200 3400 4200
Wire Wire Line
	3400 4100 3250 4100
Text Notes 2900 4700 0    50   ~ 0
Check order
Wire Wire Line
	6300 3700 6200 3700
Connection ~ 6200 3700
$Comp
L Device:R R1
U 1 1 5B67E9D8
P 3950 4500
F 0 "R1" H 3800 4550 50  0000 L CNN
F 1 "5k" H 3800 4450 50  0000 L CNN
F 2 "Resistors_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" V 3880 4500 50  0001 C CNN
F 3 "~" H 3950 4500 50  0001 C CNN
	1    3950 4500
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR05
U 1 1 5B67FBC8
P 3950 4700
F 0 "#PWR05" H 3950 4550 50  0001 C CNN
F 1 "+5V" H 3965 4873 50  0000 C CNN
F 2 "" H 3950 4700 50  0001 C CNN
F 3 "" H 3950 4700 50  0001 C CNN
	1    3950 4700
	-1   0    0    1   
$EndComp
$Comp
L Device:R R5
U 1 1 5B6806B9
P 8300 5500
F 0 "R5" H 8370 5546 50  0000 L CNN
F 1 "100k" H 8370 5455 50  0000 L CNN
F 2 "Resistors_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" V 8230 5500 50  0001 C CNN
F 3 "~" H 8300 5500 50  0001 C CNN
	1    8300 5500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR020
U 1 1 5B68106E
P 8300 5350
F 0 "#PWR020" H 8300 5100 50  0001 C CNN
F 1 "GND" H 8305 5177 50  0000 C CNN
F 2 "" H 8300 5350 50  0001 C CNN
F 3 "" H 8300 5350 50  0001 C CNN
	1    8300 5350
	-1   0    0    1   
$EndComp
$Comp
L Switch:SW_SPST SW4
U 1 1 5B6812A7
P 8000 5650
F 0 "SW4" H 8000 5885 50  0000 C CNN
F 1 "SW_SPST" H 8000 5794 50  0000 C CNN
F 2 "Wire_Connections_Bridges:WireConnection_1.20mmDrill" H 8000 5650 50  0001 C CNN
F 3 "" H 8000 5650 50  0001 C CNN
	1    8000 5650
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74HC00 U4
U 1 1 5B682CA6
P 9450 5750
F 0 "U4" H 9450 6075 50  0000 C CNN
F 1 "74HC00" H 9450 5984 50  0000 C CNN
F 2 "Housings_DIP:DIP-14_W7.62mm_Socket" H 9450 5750 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74hc00" H 9450 5750 50  0001 C CNN
	1    9450 5750
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74HC00 U4
U 2 1 5B682D62
P 8700 5750
F 0 "U4" H 8700 6075 50  0000 C CNN
F 1 "74HC00" H 8700 5984 50  0000 C CNN
F 2 "Housings_DIP:DIP-14_W7.62mm_Socket" H 8700 5750 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74hc00" H 8700 5750 50  0001 C CNN
	2    8700 5750
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74HC00 U4
U 5 1 5B682E12
P 10650 5700
F 0 "U4" H 10880 5746 50  0000 L CNN
F 1 "74HC00" H 10880 5655 50  0000 L CNN
F 2 "Housings_DIP:DIP-14_W7.62mm_Socket" H 10650 5700 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74hc00" H 10650 5700 50  0001 C CNN
	5    10650 5700
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR026
U 1 1 5B682F45
P 10650 5200
F 0 "#PWR026" H 10650 5050 50  0001 C CNN
F 1 "+5V" H 10665 5373 50  0000 C CNN
F 2 "" H 10650 5200 50  0001 C CNN
F 3 "" H 10650 5200 50  0001 C CNN
	1    10650 5200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR027
U 1 1 5B682FB0
P 10650 6200
F 0 "#PWR027" H 10650 5950 50  0001 C CNN
F 1 "GND" H 10655 6027 50  0000 C CNN
F 2 "" H 10650 6200 50  0001 C CNN
F 3 "" H 10650 6200 50  0001 C CNN
	1    10650 6200
	1    0    0    -1  
$EndComp
Wire Wire Line
	9000 5750 9150 5750
Wire Wire Line
	9150 5650 9150 5750
Connection ~ 9150 5750
Wire Wire Line
	9150 5750 9150 5850
Wire Wire Line
	8200 5650 8300 5650
Connection ~ 8300 5650
Wire Wire Line
	8300 5650 8400 5650
$Comp
L power:+5V #PWR016
U 1 1 5B689225
P 7700 5650
F 0 "#PWR016" H 7700 5500 50  0001 C CNN
F 1 "+5V" H 7715 5823 50  0000 C CNN
F 2 "" H 7700 5650 50  0001 C CNN
F 3 "" H 7700 5650 50  0001 C CNN
	1    7700 5650
	1    0    0    -1  
$EndComp
Wire Wire Line
	7700 5650 7800 5650
Text Label 9850 5750 0    50   ~ 0
EXT_TRIGGER
Wire Wire Line
	9850 5750 9750 5750
$Comp
L Device:R R6
U 1 1 5B68C58D
P 8350 6000
F 0 "R6" H 8420 6046 50  0000 L CNN
F 1 "100k" H 8420 5955 50  0000 L CNN
F 2 "Resistors_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" V 8280 6000 50  0001 C CNN
F 3 "~" H 8350 6000 50  0001 C CNN
	1    8350 6000
	1    0    0    -1  
$EndComp
Wire Wire Line
	8400 5850 8350 5850
$Comp
L power:GND #PWR021
U 1 1 5B68D23A
P 8350 6150
F 0 "#PWR021" H 8350 5900 50  0001 C CNN
F 1 "GND" H 8355 5977 50  0000 C CNN
F 2 "" H 8350 6150 50  0001 C CNN
F 3 "" H 8350 6150 50  0001 C CNN
	1    8350 6150
	1    0    0    -1  
$EndComp
$Comp
L Device:D_Zener D1
U 1 1 5B68D344
P 8150 6000
F 0 "D1" V 8100 5850 50  0000 L CNN
F 1 "D_Zener" V 8200 5650 50  0000 L CNN
F 2 "Diodes_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 8150 6000 50  0001 C CNN
F 3 "~" H 8150 6000 50  0001 C CNN
	1    8150 6000
	0    1    1    0   
$EndComp
Wire Wire Line
	8150 5850 8350 5850
Connection ~ 8350 5850
$Comp
L power:GND #PWR019
U 1 1 5B68E264
P 8150 6150
F 0 "#PWR019" H 8150 5900 50  0001 C CNN
F 1 "GND" H 8155 5977 50  0000 C CNN
F 2 "" H 8150 6150 50  0001 C CNN
F 3 "" H 8150 6150 50  0001 C CNN
	1    8150 6150
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_Coaxial J3
U 1 1 5B68E313
P 7700 5850
F 0 "J3" H 7900 5900 50  0000 C CNN
F 1 "Conn_Coaxial" H 8100 5800 50  0000 C CNN
F 2 "Wire_Connections_Bridges:WireConnection_1.00mmDrill" H 7700 5850 50  0001 C CNN
F 3 " ~" H 7700 5850 50  0001 C CNN
	1    7700 5850
	-1   0    0    -1  
$EndComp
Connection ~ 8150 5850
Wire Wire Line
	7900 5850 8150 5850
$Comp
L power:GND #PWR017
U 1 1 5B6901CB
P 7700 6100
F 0 "#PWR017" H 7700 5850 50  0001 C CNN
F 1 "GND" H 7705 5927 50  0000 C CNN
F 2 "" H 7700 6100 50  0001 C CNN
F 3 "" H 7700 6100 50  0001 C CNN
	1    7700 6100
	1    0    0    -1  
$EndComp
Wire Wire Line
	7700 6100 7700 6050
$Comp
L 74xx:74HC14 U1
U 2 1 5B691005
P 4400 6700
F 0 "U1" H 4400 7017 50  0000 C CNN
F 1 "74HC14" H 4400 6926 50  0000 C CNN
F 2 "Housings_DIP:DIP-14_W7.62mm_Socket" H 4400 6700 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74HC14" H 4400 6700 50  0001 C CNN
	2    4400 6700
	1    0    0    -1  
$EndComp
$Comp
L Device:R R3
U 1 1 5B6910EA
P 3950 6850
F 0 "R3" H 4020 6896 50  0000 L CNN
F 1 "100k" H 4020 6805 50  0000 L CNN
F 2 "Resistors_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" V 3880 6850 50  0001 C CNN
F 3 "~" H 3950 6850 50  0001 C CNN
	1    3950 6850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR07
U 1 1 5B691156
P 3950 7050
F 0 "#PWR07" H 3950 6800 50  0001 C CNN
F 1 "GND" H 3955 6877 50  0000 C CNN
F 2 "" H 3950 7050 50  0001 C CNN
F 3 "" H 3950 7050 50  0001 C CNN
	1    3950 7050
	1    0    0    -1  
$EndComp
Wire Wire Line
	3950 7050 3950 7000
Wire Wire Line
	4100 6700 3950 6700
$Comp
L Switch:SW_Push SW2
U 1 1 5B692E9B
P 3650 6700
F 0 "SW2" H 3650 6985 50  0000 C CNN
F 1 "SW_Push" H 3650 6894 50  0000 C CNN
F 2 "Wire_Connections_Bridges:WireConnection_1.00mmDrill" H 3650 6900 50  0001 C CNN
F 3 "" H 3650 6900 50  0001 C CNN
	1    3650 6700
	1    0    0    -1  
$EndComp
Wire Wire Line
	3950 6700 3850 6700
Connection ~ 3950 6700
$Comp
L power:+5V #PWR02
U 1 1 5B693E81
P 3300 6650
F 0 "#PWR02" H 3300 6500 50  0001 C CNN
F 1 "+5V" H 3315 6823 50  0000 C CNN
F 2 "" H 3300 6650 50  0001 C CNN
F 3 "" H 3300 6650 50  0001 C CNN
	1    3300 6650
	1    0    0    -1  
$EndComp
Wire Wire Line
	3450 6700 3300 6700
Wire Wire Line
	3300 6700 3300 6650
Text Label 4750 6700 0    50   ~ 0
MANUAL_TRIGGER
Wire Wire Line
	4750 6700 4700 6700
Wire Wire Line
	3950 4650 3950 4700
Wire Wire Line
	3950 4350 4200 4350
Wire Wire Line
	3950 4350 3900 4350
Connection ~ 3950 4350
$Comp
L 74xx:74HC595 U3
U 1 1 5B69B3E1
P 10400 1500
F 0 "U3" H 10400 2278 50  0000 C CNN
F 1 "74HC595" H 10600 2050 50  0000 C CNN
F 2 "Housings_DIP:DIP-16_W7.62mm_Socket" H 10400 1500 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/sn74hc595.pdf" H 10400 1500 50  0001 C CNN
	1    10400 1500
	1    0    0    -1  
$EndComp
$Comp
L Display_Character:CA56-12CGKWA U5
U 1 1 5B69E1F8
P 6400 1550
F 0 "U5" H 6400 2217 50  0000 C CNN
F 1 "CA56-12CGKWA" H 6400 2126 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x12_Pitch2.54mm" H 6400 950 50  0001 C CNN
F 3 "http://www.kingbright.com/attachments/file/psearch/000/00/00/CA56-12CGKWA(Ver.9A).pdf" H 5970 1580 50  0001 C CNN
	1    6400 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	5050 1350 5300 1350
Wire Wire Line
	5050 1450 5300 1450
Wire Wire Line
	5050 1550 5300 1550
Wire Wire Line
	5050 1650 5300 1650
Wire Wire Line
	5050 1750 5300 1750
Wire Wire Line
	5300 1850 5050 1850
Wire Wire Line
	5050 1950 5300 1950
$Comp
L power:GND #PWR014
U 1 1 5B6A4709
P 10400 2200
F 0 "#PWR014" H 10400 1950 50  0001 C CNN
F 1 "GND" H 10405 2027 50  0000 C CNN
F 2 "" H 10400 2200 50  0001 C CNN
F 3 "" H 10400 2200 50  0001 C CNN
	1    10400 2200
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR013
U 1 1 5B6A474A
P 10400 900
F 0 "#PWR013" H 10400 750 50  0001 C CNN
F 1 "+5V" H 10200 850 50  0000 C CNN
F 2 "" H 10400 900 50  0001 C CNN
F 3 "" H 10400 900 50  0001 C CNN
	1    10400 900 
	1    0    0    -1  
$EndComp
Wire Wire Line
	10000 1700 9650 1700
NoConn ~ 10800 2000
Text Label 8200 4050 0    50   ~ 0
WATCH_CLK
Text Label 8300 4250 0    50   ~ 0
WATCH_DATA
Text Label 8300 4150 0    50   ~ 0
WATCH_RCLK
Wire Wire Line
	9900 1600 10000 1600
Wire Wire Line
	9900 1300 10000 1300
Wire Wire Line
	9900 1100 10000 1100
Wire Wire Line
	8300 4350 8200 4350
Wire Wire Line
	8200 4250 8300 4250
Wire Wire Line
	8200 4150 8300 4150
$Comp
L Device:R R7
U 1 1 5B6B56BE
P 9500 3450
F 0 "R7" H 9350 3400 50  0000 L CNN
F 1 "100k" H 9250 3500 50  0000 L CNN
F 2 "Resistors_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" V 9430 3450 50  0001 C CNN
F 3 "~" H 9500 3450 50  0001 C CNN
	1    9500 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	9800 3300 9700 3300
$Comp
L power:GND #PWR023
U 1 1 5B6B6C4D
P 9800 3100
F 0 "#PWR023" H 9800 2850 50  0001 C CNN
F 1 "GND" H 9805 2927 50  0000 C CNN
F 2 "" H 9800 3100 50  0001 C CNN
F 3 "" H 9800 3100 50  0001 C CNN
	1    9800 3100
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR022
U 1 1 5B6BC3FF
P 9500 3600
F 0 "#PWR022" H 9500 3350 50  0001 C CNN
F 1 "GND" H 9500 3450 50  0000 C CNN
F 2 "" H 9500 3600 50  0001 C CNN
F 3 "" H 9500 3600 50  0001 C CNN
	1    9500 3600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR025
U 1 1 5B6BC496
P 10300 4400
F 0 "#PWR025" H 10300 4150 50  0001 C CNN
F 1 "GND" H 10300 4250 50  0000 C CNN
F 2 "" H 10300 4400 50  0001 C CNN
F 3 "" H 10300 4400 50  0001 C CNN
	1    10300 4400
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR024
U 1 1 5B6BC52D
P 10300 2700
F 0 "#PWR024" H 10300 2550 50  0001 C CNN
F 1 "+5V" H 10300 2850 50  0000 C CNN
F 2 "" H 10300 2700 50  0001 C CNN
F 3 "" H 10300 2700 50  0001 C CNN
	1    10300 2700
	1    0    0    -1  
$EndComp
$Comp
L 4xxx:4017 U6
U 1 1 5B6BC5F4
P 10300 3500
F 0 "U6" H 10100 4200 50  0000 C CNN
F 1 "4017" H 10450 4200 50  0000 C CNN
F 2 "Housings_DIP:DIP-16_W7.62mm_Socket" H 10300 3500 50  0001 C CNN
F 3 "http://www.intersil.com/content/dam/Intersil/documents/cd40/cd4017bms-22bms.pdf" H 10300 3500 50  0001 C CNN
	1    10300 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	9700 3300 9700 3400
Wire Wire Line
	9700 4600 10900 4600
Wire Wire Line
	10900 4600 10900 3400
Wire Wire Line
	10900 3400 10800 3400
Connection ~ 9700 3300
Wire Wire Line
	9700 3300 9500 3300
NoConn ~ 10800 4100
NoConn ~ 10800 3900
NoConn ~ 10800 3800
NoConn ~ 10800 3700
NoConn ~ 10800 3600
NoConn ~ 10800 3500
Text Label 8650 1350 0    50   ~ 0
CA1
Text Label 9000 1750 0    50   ~ 0
CA2
Text Label 8600 2200 0    50   ~ 0
CA3
Text Label 10900 3000 0    50   ~ 0
CA1
Text Label 10900 3100 0    50   ~ 0
CA2
Text Label 10900 3200 0    50   ~ 0
CA3
Text Label 10900 3300 0    50   ~ 0
CA4
Wire Wire Line
	10900 3300 10800 3300
Wire Wire Line
	10800 3200 10900 3200
Wire Wire Line
	10900 3100 10800 3100
Wire Wire Line
	10800 3000 10900 3000
$Comp
L Device:R R8
U 1 1 5B6DE101
P 9700 3550
F 0 "R8" H 9770 3596 50  0000 L CNN
F 1 "10k" H 9770 3505 50  0000 L CNN
F 2 "Resistors_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" V 9630 3550 50  0001 C CNN
F 3 "~" H 9700 3550 50  0001 C CNN
	1    9700 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	9700 3700 9700 4600
Text Label 8300 4550 0    50   ~ 0
RESET_CTR
Text Label 8300 4450 0    50   ~ 0
CTR_CLK
Wire Wire Line
	8300 4450 8200 4450
Wire Wire Line
	8200 4550 8300 4550
Text Label 9800 3000 2    50   ~ 0
CTR_CLK
Text Label 9500 3300 2    50   ~ 0
RESET_CTR
$Comp
L 74xx:74HC14 U1
U 3 1 5B6ECF6D
P 4400 5700
F 0 "U1" H 4400 6017 50  0000 C CNN
F 1 "74HC14" H 4400 5926 50  0000 C CNN
F 2 "Housings_DIP:DIP-14_W7.62mm_Socket" H 4400 5700 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74HC14" H 4400 5700 50  0001 C CNN
	3    4400 5700
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 5B6ECF74
P 3950 5850
F 0 "R2" H 4020 5896 50  0000 L CNN
F 1 "100k" H 4020 5805 50  0000 L CNN
F 2 "Resistors_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" V 3880 5850 50  0001 C CNN
F 3 "~" H 3950 5850 50  0001 C CNN
	1    3950 5850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR06
U 1 1 5B6ECF7B
P 3950 6050
F 0 "#PWR06" H 3950 5800 50  0001 C CNN
F 1 "GND" H 3955 5877 50  0000 C CNN
F 2 "" H 3950 6050 50  0001 C CNN
F 3 "" H 3950 6050 50  0001 C CNN
	1    3950 6050
	1    0    0    -1  
$EndComp
Wire Wire Line
	3950 6050 3950 6000
Wire Wire Line
	4100 5700 3950 5700
$Comp
L Switch:SW_Push SW1
U 1 1 5B6ECF83
P 3650 5700
F 0 "SW1" H 3650 5985 50  0000 C CNN
F 1 "SW_Push" H 3650 5894 50  0000 C CNN
F 2 "Wire_Connections_Bridges:WireConnection_1.00mmDrill" H 3650 5900 50  0001 C CNN
F 3 "" H 3650 5900 50  0001 C CNN
	1    3650 5700
	1    0    0    -1  
$EndComp
Wire Wire Line
	3950 5700 3850 5700
Connection ~ 3950 5700
$Comp
L power:+5V #PWR01
U 1 1 5B6ECF8C
P 3300 5650
F 0 "#PWR01" H 3300 5500 50  0001 C CNN
F 1 "+5V" H 3315 5823 50  0000 C CNN
F 2 "" H 3300 5650 50  0001 C CNN
F 3 "" H 3300 5650 50  0001 C CNN
	1    3300 5650
	1    0    0    -1  
$EndComp
Wire Wire Line
	3450 5700 3300 5700
Wire Wire Line
	3300 5700 3300 5650
Wire Wire Line
	10000 1400 9950 1400
Text Label 4850 5700 0    50   ~ 0
MANUAL_RESET
Wire Wire Line
	4700 5700 4850 5700
Text Label 4150 4550 3    50   ~ 0
MANUAL_RESET
Text Label 9900 1300 2    50   ~ 0
WATCH_CLK
Text Label 9900 1600 2    50   ~ 0
WATCH_RCLK
Text Label 9900 1100 2    50   ~ 0
WATCH_DATA
$Comp
L power:+5V #PWR012
U 1 1 5B6F2EBB
P 9950 1400
F 0 "#PWR012" H 9950 1250 50  0001 C CNN
F 1 "+5V" H 9965 1573 50  0000 C CNN
F 2 "" H 9950 1400 50  0001 C CNN
F 3 "" H 9950 1400 50  0001 C CNN
	1    9950 1400
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R4
U 1 1 5B6F2FD6
P 8500 3600
F 0 "R4" H 8570 3646 50  0000 L CNN
F 1 "100k" H 8570 3555 50  0000 L CNN
F 2 "Resistors_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" V 8430 3600 50  0001 C CNN
F 3 "~" H 8500 3600 50  0001 C CNN
	1    8500 3600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR018
U 1 1 5B6F2FDD
P 8500 3750
F 0 "#PWR018" H 8500 3500 50  0001 C CNN
F 1 "GND" H 8505 3577 50  0000 C CNN
F 2 "" H 8500 3750 50  0001 C CNN
F 3 "" H 8500 3750 50  0001 C CNN
	1    8500 3750
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_SPST SW3
U 1 1 5B6F2FE3
P 8200 3450
F 0 "SW3" H 8200 3685 50  0000 C CNN
F 1 "SW_SPST" H 8200 3594 50  0000 C CNN
F 2 "Wire_Connections_Bridges:WireConnection_1.20mmDrill" H 8200 3450 50  0001 C CNN
F 3 "" H 8200 3450 50  0001 C CNN
	1    8200 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	8400 3450 8500 3450
Connection ~ 8500 3450
Wire Wire Line
	8500 3450 8600 3450
$Comp
L power:+5V #PWR015
U 1 1 5B6F2FED
P 7900 3450
F 0 "#PWR015" H 7900 3300 50  0001 C CNN
F 1 "+5V" H 7915 3623 50  0000 C CNN
F 2 "" H 7900 3450 50  0001 C CNN
F 3 "" H 7900 3450 50  0001 C CNN
	1    7900 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	7900 3450 8000 3450
Text Label 8600 3450 0    50   ~ 0
CONTINUE
Text Label 8300 4350 0    50   ~ 0
CONTINUE
Text Label 5950 6400 2    50   ~ 0
MANUAL_TRIGGER
Text Label 5250 6200 2    50   ~ 0
EXT_TRIGGER
$Comp
L 74xx:74HC00 U4
U 3 1 5B6F5411
P 6250 6300
F 0 "U4" H 6250 6625 50  0000 C CNN
F 1 "74HC00" H 6250 6534 50  0000 C CNN
F 2 "Housings_DIP:DIP-14_W7.62mm_Socket" H 6250 6300 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74hc00" H 6250 6300 50  0001 C CNN
	3    6250 6300
	1    0    0    -1  
$EndComp
Wire Wire Line
	6650 6300 6550 6300
Text Label 6650 6300 0    50   ~ 0
TRIGGER
Text Label 4200 4250 2    50   ~ 0
TRIGGER
NoConn ~ 1900 4550
NoConn ~ 1900 4650
NoConn ~ 1900 4750
$Comp
L Device:R R9
U 1 1 5B6FDFDB
P 1500 5100
F 0 "R9" H 1650 5050 50  0000 R CNN
F 1 "1M" H 1650 5150 50  0000 R CNN
F 2 "Resistors_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" V 1430 5100 50  0001 C CNN
F 3 "~" H 1500 5100 50  0001 C CNN
	1    1500 5100
	-1   0    0    1   
$EndComp
Wire Wire Line
	1500 5250 1600 5250
Wire Wire Line
	1600 5250 1600 5300
Wire Wire Line
	1600 5250 1600 4950
Connection ~ 1600 5250
Connection ~ 1600 4950
NoConn ~ 3250 4000
$Comp
L 74xx:74HC14 U1
U 7 1 5B70BB37
P 2550 6500
F 0 "U1" H 2550 6817 50  0000 C CNN
F 1 "74HC14" H 2550 6726 50  0000 C CNN
F 2 "Housings_DIP:DIP-14_W7.62mm_Socket" H 2550 6500 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74HC14" H 2550 6500 50  0001 C CNN
	7    2550 6500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR029
U 1 1 5B70BCDF
P 2550 7000
F 0 "#PWR029" H 2550 6750 50  0001 C CNN
F 1 "GND" H 2555 6827 50  0000 C CNN
F 2 "" H 2550 7000 50  0001 C CNN
F 3 "" H 2550 7000 50  0001 C CNN
	1    2550 7000
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR028
U 1 1 5B70BD28
P 2550 6000
F 0 "#PWR028" H 2550 5850 50  0001 C CNN
F 1 "+5V" H 2565 6173 50  0000 C CNN
F 2 "" H 2550 6000 50  0001 C CNN
F 3 "" H 2550 6000 50  0001 C CNN
	1    2550 6000
	1    0    0    -1  
$EndComp
$Comp
L MCU_Microchip_PIC16:PIC16F616-IP U2
U 1 1 5B70C372
P 6200 4350
F 0 "U2" H 6300 4850 50  0000 C CNN
F 1 "PIC16F616-IP" H 5750 4900 50  0000 C CNN
F 2 "Housings_DIP:DIP-14_W7.62mm_Socket" H 6200 4350 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/41288F.pdf" H 6200 4350 50  0001 C CNN
	1    6200 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	3250 4400 3400 4400
NoConn ~ 4200 4450
$Comp
L Transistor_BJT:2N3904 Q1
U 1 1 5B716996
P 1250 1050
F 0 "Q1" H 1441 1096 50  0000 L CNN
F 1 "2N3904" H 1441 1005 50  0000 L CNN
F 2 "TO_SOT_Packages_THT:TO-92_Inline_Wide" H 1450 975 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N3904.pdf" H 1250 1050 50  0001 L CNN
	1    1250 1050
	1    0    0    -1  
$EndComp
$Comp
L Device:R R12
U 1 1 5B716A1F
P 1350 1400
F 0 "R12" H 1420 1446 50  0000 L CNN
F 1 "500" H 1420 1355 50  0000 L CNN
F 2 "Resistors_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" V 1280 1400 50  0001 C CNN
F 3 "~" H 1350 1400 50  0001 C CNN
	1    1350 1400
	1    0    0    -1  
$EndComp
Text Label 750  1050 2    50   ~ 0
QA
Text Label 1350 1550 0    50   ~ 0
a
Wire Wire Line
	5050 1250 5300 1250
Text Label 5050 1250 2    50   ~ 0
a
Text Label 5050 1350 2    50   ~ 0
b
Text Label 5050 1450 2    50   ~ 0
c
Text Label 5050 1550 2    50   ~ 0
d
Text Label 5050 1650 2    50   ~ 0
e
Text Label 5050 1750 2    50   ~ 0
f
Text Label 5050 1950 2    50   ~ 0
dp
Text Label 5050 1850 2    50   ~ 0
g
Text Label 10800 1100 0    50   ~ 0
QA
Text Label 10800 1200 0    50   ~ 0
QB
Text Label 10800 1300 0    50   ~ 0
QC
Text Label 10800 1400 0    50   ~ 0
QD
Text Label 10800 1500 0    50   ~ 0
QE
Text Label 10800 1600 0    50   ~ 0
QF
Text Label 10800 1700 0    50   ~ 0
QG
Text Label 10800 1800 0    50   ~ 0
QDP
$Comp
L Transistor_BJT:2N3904 Q9
U 1 1 5B74B4D5
P 8050 1350
F 0 "Q9" H 8241 1396 50  0000 L CNN
F 1 "2N3904" H 8241 1305 50  0000 L CNN
F 2 "TO_SOT_Packages_THT:TO-92_Inline_Wide" H 8250 1275 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N3904.pdf" H 8050 1350 50  0001 L CNN
	1    8050 1350
	-1   0    0    -1  
$EndComp
$Comp
L Device:R R29
U 1 1 5B754E66
P 8500 1350
F 0 "R29" V 8293 1350 50  0000 C CNN
F 1 "200" V 8384 1350 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" V 8430 1350 50  0001 C CNN
F 3 "~" H 8500 1350 50  0001 C CNN
	1    8500 1350
	0    1    1    0   
$EndComp
$Comp
L Transistor_BJT:2N3904 Q10
U 1 1 5B758308
P 8400 1750
F 0 "Q10" H 8591 1796 50  0000 L CNN
F 1 "2N3904" H 8591 1705 50  0000 L CNN
F 2 "TO_SOT_Packages_THT:TO-92_Inline_Wide" H 8600 1675 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N3904.pdf" H 8400 1750 50  0001 L CNN
	1    8400 1750
	-1   0    0    -1  
$EndComp
$Comp
L Device:R R31
U 1 1 5B758310
P 8850 1750
F 0 "R31" V 8643 1750 50  0000 C CNN
F 1 "200" V 8734 1750 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" V 8780 1750 50  0001 C CNN
F 3 "~" H 8850 1750 50  0001 C CNN
	1    8850 1750
	0    1    1    0   
$EndComp
Wire Wire Line
	8250 1350 8350 1350
$Comp
L Transistor_BJT:2N3904 Q11
U 1 1 5B7692B2
P 8000 2200
F 0 "Q11" H 8191 2246 50  0000 L CNN
F 1 "2N3904" H 8191 2155 50  0000 L CNN
F 2 "TO_SOT_Packages_THT:TO-92_Inline_Wide" H 8200 2125 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N3904.pdf" H 8000 2200 50  0001 L CNN
	1    8000 2200
	-1   0    0    -1  
$EndComp
$Comp
L Device:R R32
U 1 1 5B7692B9
P 8450 2200
F 0 "R32" V 8243 2200 50  0000 C CNN
F 1 "200" V 8334 2200 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" V 8380 2200 50  0001 C CNN
F 3 "~" H 8450 2200 50  0001 C CNN
	1    8450 2200
	0    1    1    0   
$EndComp
Wire Wire Line
	8600 1750 8700 1750
Text Label 8150 2650 0    50   ~ 0
CA4
$Comp
L Transistor_BJT:2N3904 Q12
U 1 1 5B785A6D
P 7650 2650
F 0 "Q12" H 7841 2696 50  0000 L CNN
F 1 "2N3904" H 7841 2605 50  0000 L CNN
F 2 "TO_SOT_Packages_THT:TO-92_Inline_Wide" H 7850 2575 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N3904.pdf" H 7650 2650 50  0001 L CNN
	1    7650 2650
	-1   0    0    -1  
$EndComp
$Comp
L Device:R R33
U 1 1 5B785A74
P 8000 2650
F 0 "R33" V 7793 2650 50  0000 C CNN
F 1 "200" V 7884 2650 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" V 7930 2650 50  0001 C CNN
F 3 "~" H 8000 2650 50  0001 C CNN
	1    8000 2650
	0    1    1    0   
$EndComp
Wire Wire Line
	8200 2200 8300 2200
$Comp
L Device:R R10
U 1 1 5B7A5EFE
P 900 1050
F 0 "R10" V 693 1050 50  0000 C CNN
F 1 "10k" V 784 1050 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" V 830 1050 50  0001 C CNN
F 3 "~" H 900 1050 50  0001 C CNN
	1    900  1050
	0    1    1    0   
$EndComp
$Comp
L Transistor_BJT:2N3904 Q3
U 1 1 5B7A940D
P 2350 1050
F 0 "Q3" H 2541 1096 50  0000 L CNN
F 1 "2N3904" H 2541 1005 50  0000 L CNN
F 2 "TO_SOT_Packages_THT:TO-92_Inline_Wide" H 2550 975 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N3904.pdf" H 2350 1050 50  0001 L CNN
	1    2350 1050
	1    0    0    -1  
$EndComp
$Comp
L Device:R R16
U 1 1 5B7A9414
P 2450 1400
F 0 "R16" H 2520 1446 50  0000 L CNN
F 1 "500" H 2520 1355 50  0000 L CNN
F 2 "Resistors_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" V 2380 1400 50  0001 C CNN
F 3 "~" H 2450 1400 50  0001 C CNN
	1    2450 1400
	1    0    0    -1  
$EndComp
Text Label 1850 1050 2    50   ~ 0
QB
Text Label 2450 1550 0    50   ~ 0
b
$Comp
L Device:R R14
U 1 1 5B7A9424
P 2000 1050
F 0 "R14" V 1793 1050 50  0000 C CNN
F 1 "10k" V 1884 1050 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" V 1930 1050 50  0001 C CNN
F 3 "~" H 2000 1050 50  0001 C CNN
	1    2000 1050
	0    1    1    0   
$EndComp
$Comp
L Transistor_BJT:2N3904 Q5
U 1 1 5B7AC516
P 3400 1050
F 0 "Q5" H 3591 1096 50  0000 L CNN
F 1 "2N3904" H 3591 1005 50  0000 L CNN
F 2 "TO_SOT_Packages_THT:TO-92_Inline_Wide" H 3600 975 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N3904.pdf" H 3400 1050 50  0001 L CNN
	1    3400 1050
	1    0    0    -1  
$EndComp
$Comp
L Device:R R20
U 1 1 5B7AC51D
P 3500 1400
F 0 "R20" H 3570 1446 50  0000 L CNN
F 1 "500" H 3570 1355 50  0000 L CNN
F 2 "Resistors_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" V 3430 1400 50  0001 C CNN
F 3 "~" H 3500 1400 50  0001 C CNN
	1    3500 1400
	1    0    0    -1  
$EndComp
Text Label 2900 1050 2    50   ~ 0
QC
Text Label 3500 1550 0    50   ~ 0
c
$Comp
L Device:R R18
U 1 1 5B7AC52D
P 3050 1050
F 0 "R18" V 2843 1050 50  0000 C CNN
F 1 "10k" V 2934 1050 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" V 2980 1050 50  0001 C CNN
F 3 "~" H 3050 1050 50  0001 C CNN
	1    3050 1050
	0    1    1    0   
$EndComp
$Comp
L Transistor_BJT:2N3904 Q7
U 1 1 5B7AF697
P 4450 1050
F 0 "Q7" H 4641 1096 50  0000 L CNN
F 1 "2N3904" H 4641 1005 50  0000 L CNN
F 2 "TO_SOT_Packages_THT:TO-92_Inline_Wide" H 4650 975 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N3904.pdf" H 4450 1050 50  0001 L CNN
	1    4450 1050
	1    0    0    -1  
$EndComp
$Comp
L Device:R R24
U 1 1 5B7AF69E
P 4550 1400
F 0 "R24" H 4620 1446 50  0000 L CNN
F 1 "500" H 4620 1355 50  0000 L CNN
F 2 "Resistors_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" V 4480 1400 50  0001 C CNN
F 3 "~" H 4550 1400 50  0001 C CNN
	1    4550 1400
	1    0    0    -1  
$EndComp
Text Label 3950 1050 2    50   ~ 0
QD
Text Label 4550 1550 0    50   ~ 0
d
$Comp
L Device:R R22
U 1 1 5B7AF6AE
P 4100 1050
F 0 "R22" V 3893 1050 50  0000 C CNN
F 1 "10k" V 3984 1050 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" V 4030 1050 50  0001 C CNN
F 3 "~" H 4100 1050 50  0001 C CNN
	1    4100 1050
	0    1    1    0   
$EndComp
$Comp
L Transistor_BJT:2N3904 Q2
U 1 1 5B7B2A09
P 1300 2400
F 0 "Q2" H 1491 2446 50  0000 L CNN
F 1 "2N3904" H 1491 2355 50  0000 L CNN
F 2 "TO_SOT_Packages_THT:TO-92_Inline_Wide" H 1500 2325 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N3904.pdf" H 1300 2400 50  0001 L CNN
	1    1300 2400
	1    0    0    -1  
$EndComp
$Comp
L Device:R R13
U 1 1 5B7B2A10
P 1400 2750
F 0 "R13" H 1470 2796 50  0000 L CNN
F 1 "500" H 1470 2705 50  0000 L CNN
F 2 "Resistors_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" V 1330 2750 50  0001 C CNN
F 3 "~" H 1400 2750 50  0001 C CNN
	1    1400 2750
	1    0    0    -1  
$EndComp
Text Label 800  2400 2    50   ~ 0
QE
Text Label 1400 2900 0    50   ~ 0
e
$Comp
L Device:R R11
U 1 1 5B7B2A20
P 950 2400
F 0 "R11" V 743 2400 50  0000 C CNN
F 1 "10k" V 834 2400 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" V 880 2400 50  0001 C CNN
F 3 "~" H 950 2400 50  0001 C CNN
	1    950  2400
	0    1    1    0   
$EndComp
$Comp
L Transistor_BJT:2N3904 Q4
U 1 1 5B7B2A27
P 2400 2400
F 0 "Q4" H 2591 2446 50  0000 L CNN
F 1 "2N3904" H 2591 2355 50  0000 L CNN
F 2 "TO_SOT_Packages_THT:TO-92_Inline_Wide" H 2600 2325 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N3904.pdf" H 2400 2400 50  0001 L CNN
	1    2400 2400
	1    0    0    -1  
$EndComp
$Comp
L Device:R R17
U 1 1 5B7B2A2E
P 2500 2750
F 0 "R17" H 2570 2796 50  0000 L CNN
F 1 "500" H 2570 2705 50  0000 L CNN
F 2 "Resistors_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" V 2430 2750 50  0001 C CNN
F 3 "~" H 2500 2750 50  0001 C CNN
	1    2500 2750
	1    0    0    -1  
$EndComp
Text Label 1900 2400 2    50   ~ 0
QF
Text Label 2500 2900 0    50   ~ 0
f
$Comp
L Device:R R15
U 1 1 5B7B2A3E
P 2050 2400
F 0 "R15" V 1843 2400 50  0000 C CNN
F 1 "10k" V 1934 2400 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" V 1980 2400 50  0001 C CNN
F 3 "~" H 2050 2400 50  0001 C CNN
	1    2050 2400
	0    1    1    0   
$EndComp
$Comp
L Transistor_BJT:2N3904 Q6
U 1 1 5B7B2A45
P 3450 2400
F 0 "Q6" H 3641 2446 50  0000 L CNN
F 1 "2N3904" H 3641 2355 50  0000 L CNN
F 2 "TO_SOT_Packages_THT:TO-92_Inline_Wide" H 3650 2325 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N3904.pdf" H 3450 2400 50  0001 L CNN
	1    3450 2400
	1    0    0    -1  
$EndComp
$Comp
L Device:R R21
U 1 1 5B7B2A4C
P 3550 2750
F 0 "R21" H 3620 2796 50  0000 L CNN
F 1 "500" H 3620 2705 50  0000 L CNN
F 2 "Resistors_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" V 3480 2750 50  0001 C CNN
F 3 "~" H 3550 2750 50  0001 C CNN
	1    3550 2750
	1    0    0    -1  
$EndComp
Text Label 2950 2400 2    50   ~ 0
QG
Text Label 3550 2900 0    50   ~ 0
g
$Comp
L Device:R R19
U 1 1 5B7B2A5C
P 3100 2400
F 0 "R19" V 2893 2400 50  0000 C CNN
F 1 "10k" V 2984 2400 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" V 3030 2400 50  0001 C CNN
F 3 "~" H 3100 2400 50  0001 C CNN
	1    3100 2400
	0    1    1    0   
$EndComp
$Comp
L Transistor_BJT:2N3904 Q8
U 1 1 5B7B2A63
P 4500 2400
F 0 "Q8" H 4691 2446 50  0000 L CNN
F 1 "2N3904" H 4691 2355 50  0000 L CNN
F 2 "TO_SOT_Packages_THT:TO-92_Inline_Wide" H 4700 2325 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N3904.pdf" H 4500 2400 50  0001 L CNN
	1    4500 2400
	1    0    0    -1  
$EndComp
$Comp
L Device:R R25
U 1 1 5B7B2A6A
P 4600 2750
F 0 "R25" H 4670 2796 50  0000 L CNN
F 1 "500" H 4670 2705 50  0000 L CNN
F 2 "Resistors_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" V 4530 2750 50  0001 C CNN
F 3 "~" H 4600 2750 50  0001 C CNN
	1    4600 2750
	1    0    0    -1  
$EndComp
Text Label 4000 2400 2    50   ~ 0
QDP
Text Label 4600 2900 0    50   ~ 0
dp
$Comp
L Device:R R23
U 1 1 5B7B2A7A
P 4150 2400
F 0 "R23" V 3943 2400 50  0000 C CNN
F 1 "10k" V 4034 2400 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" V 4080 2400 50  0001 C CNN
F 3 "~" H 4150 2400 50  0001 C CNN
	1    4150 2400
	0    1    1    0   
$EndComp
$Comp
L power:+5V #PWR0101
U 1 1 5B833B2C
P 1350 850
F 0 "#PWR0101" H 1350 700 50  0001 C CNN
F 1 "+5V" H 1350 1000 50  0000 C CNN
F 2 "" H 1350 850 50  0001 C CNN
F 3 "" H 1350 850 50  0001 C CNN
	1    1350 850 
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0103
U 1 1 5B833D2F
P 2450 850
F 0 "#PWR0103" H 2450 700 50  0001 C CNN
F 1 "+5V" H 2450 1000 50  0000 C CNN
F 2 "" H 2450 850 50  0001 C CNN
F 3 "" H 2450 850 50  0001 C CNN
	1    2450 850 
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0105
U 1 1 5B833DB8
P 3500 850
F 0 "#PWR0105" H 3500 700 50  0001 C CNN
F 1 "+5V" H 3500 1000 50  0000 C CNN
F 2 "" H 3500 850 50  0001 C CNN
F 3 "" H 3500 850 50  0001 C CNN
	1    3500 850 
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0106
U 1 1 5B833F7C
P 4550 850
F 0 "#PWR0106" H 4550 700 50  0001 C CNN
F 1 "+5V" H 4550 1000 50  0000 C CNN
F 2 "" H 4550 850 50  0001 C CNN
F 3 "" H 4550 850 50  0001 C CNN
	1    4550 850 
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0107
U 1 1 5B837DB9
P 1400 2200
F 0 "#PWR0107" H 1400 2050 50  0001 C CNN
F 1 "+5V" H 1400 2350 50  0000 C CNN
F 2 "" H 1400 2200 50  0001 C CNN
F 3 "" H 1400 2200 50  0001 C CNN
	1    1400 2200
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0108
U 1 1 5B837F09
P 2500 2200
F 0 "#PWR0108" H 2500 2050 50  0001 C CNN
F 1 "+5V" H 2500 2350 50  0000 C CNN
F 2 "" H 2500 2200 50  0001 C CNN
F 3 "" H 2500 2200 50  0001 C CNN
	1    2500 2200
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0109
U 1 1 5B837F92
P 3550 2200
F 0 "#PWR0109" H 3550 2050 50  0001 C CNN
F 1 "+5V" H 3550 2350 50  0000 C CNN
F 2 "" H 3550 2200 50  0001 C CNN
F 3 "" H 3550 2200 50  0001 C CNN
	1    3550 2200
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0110
U 1 1 5B83801B
P 4600 2200
F 0 "#PWR0110" H 4600 2050 50  0001 C CNN
F 1 "+5V" H 4600 2350 50  0000 C CNN
F 2 "" H 4600 2200 50  0001 C CNN
F 3 "" H 4600 2200 50  0001 C CNN
	1    4600 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	7500 1650 7500 1150
Wire Wire Line
	7500 1150 7950 1150
Wire Wire Line
	7500 1750 8150 1750
Wire Wire Line
	8150 1750 8150 1550
Wire Wire Line
	8150 1550 8300 1550
Wire Wire Line
	7550 2450 7550 1950
Wire Wire Line
	7550 1950 7500 1950
Wire Wire Line
	7500 1850 7900 1850
Wire Wire Line
	7900 1850 7900 2000
$Comp
L power:GND #PWR0111
U 1 1 5B849920
P 7550 2850
F 0 "#PWR0111" H 7550 2600 50  0001 C CNN
F 1 "GND" H 7555 2677 50  0000 C CNN
F 2 "" H 7550 2850 50  0001 C CNN
F 3 "" H 7550 2850 50  0001 C CNN
	1    7550 2850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0112
U 1 1 5B8499A9
P 7900 2400
F 0 "#PWR0112" H 7900 2150 50  0001 C CNN
F 1 "GND" H 7905 2227 50  0000 C CNN
F 2 "" H 7900 2400 50  0001 C CNN
F 3 "" H 7900 2400 50  0001 C CNN
	1    7900 2400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0113
U 1 1 5B849A32
P 8300 1950
F 0 "#PWR0113" H 8300 1700 50  0001 C CNN
F 1 "GND" H 8305 1777 50  0000 C CNN
F 2 "" H 8300 1950 50  0001 C CNN
F 3 "" H 8300 1950 50  0001 C CNN
	1    8300 1950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0114
U 1 1 5B849ABB
P 7950 1550
F 0 "#PWR0114" H 7950 1300 50  0001 C CNN
F 1 "GND" H 7955 1377 50  0000 C CNN
F 2 "" H 7950 1550 50  0001 C CNN
F 3 "" H 7950 1550 50  0001 C CNN
	1    7950 1550
	1    0    0    -1  
$EndComp
$Comp
L Device:R R26
U 1 1 5B706379
P 9650 1850
F 0 "R26" H 9720 1896 50  0000 L CNN
F 1 "10k" H 9720 1805 50  0000 L CNN
F 2 "Resistors_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" V 9580 1850 50  0001 C CNN
F 3 "~" H 9650 1850 50  0001 C CNN
	1    9650 1850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0115
U 1 1 5B7064D1
P 9650 2000
F 0 "#PWR0115" H 9650 1750 50  0001 C CNN
F 1 "GND" H 9655 1827 50  0000 C CNN
F 2 "" H 9650 2000 50  0001 C CNN
F 3 "" H 9650 2000 50  0001 C CNN
	1    9650 2000
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74HC14 U1
U 5 1 5B75597E
P 5600 6200
F 0 "U1" H 5600 6517 50  0000 C CNN
F 1 "74HC14" H 5600 6426 50  0000 C CNN
F 2 "Housings_DIP:DIP-14_W7.62mm_Socket" H 5600 6200 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74HC14" H 5600 6200 50  0001 C CNN
	5    5600 6200
	1    0    0    -1  
$EndComp
Wire Wire Line
	5950 6200 5900 6200
Wire Wire Line
	5300 6200 5250 6200
Wire Wire Line
	4150 4550 4200 4550
$EndSCHEMATC

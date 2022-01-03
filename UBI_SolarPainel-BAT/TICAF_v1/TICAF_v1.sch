EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 4
Title "TICAF - Motor Painel Solar / Bateria"
Date "2021-12-21"
Rev "1."
Comp "Universidade da Beira Interior (UBI)"
Comment1 "Mestrado em Ensino da Física e da Química"
Comment2 "Docente: Prof. Dra. Elsa Fonseca"
Comment3 "Discentes: Cláudia Marques, Lígia Lopes, Margarida Simões"
Comment4 ""
$EndDescr
$Comp
L MCU_Microchip_ATmega:ATmega328-PU U1
U 1 1 61C503DC
P 2200 5500
F 0 "U1" H 2250 7100 50  0000 R CNN
F 1 "ATmega328-PU" H 2500 7000 50  0000 R CNN
F 2 "Package_DIP:DIP-28_W7.62mm" H 2200 5500 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/ATmega328_P%20AVR%20MCU%20with%20picoPower%20Technology%20Data%20Sheet%2040001984A.pdf" H 2200 5500 50  0001 C CNN
	1    2200 5500
	1    0    0    -1  
$EndComp
$Comp
L TICAF_v1-rescue:RB160MM-30TR-Diode_RB160MM-30TR D1
U 1 1 61C5BBDE
P 4050 1500
F 0 "D1" H 4050 1750 50  0000 C CNN
F 1 "RB160MM-30TR" H 4050 1650 50  0000 C CNN
F 2 "SnapEDA_Sym2:DIO_RB160MM-30TR" H 4050 1500 50  0001 L BNN
F 3 "" H 4050 1500 50  0001 L BNN
F 4 "Rev.002" H 4050 1500 50  0001 L BNN "PARTREV"
F 5 "Manufacturer Recommendations" H 4050 1500 50  0001 L BNN "STANDARD"
F 6 "0.9 mm" H 4050 1500 50  0001 L BNN "MAXIMUM_PACKAGE_HEIGHT"
F 7 "Rohm Semiconductor" H 4050 1500 50  0001 L BNN "MANUFACTURER"
	1    4050 1500
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x03_Male J1
U 1 1 61C64FD5
P 3150 1600
F 0 "J1" H 3250 1900 50  0000 C CNN
F 1 "Conn_01x03_Male" H 3200 1800 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 3150 1600 50  0001 C CNN
F 3 "~" H 3150 1600 50  0001 C CNN
	1    3150 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	4450 2450 5250 2450
Connection ~ 5250 2450
Wire Wire Line
	4250 1500 4450 1500
$Comp
L TICAF_v1-rescue:ECEA1CKS101I-ECEA1CKS101I C1
U 1 1 61C6D5BE
P 4450 1950
F 0 "C1" V 4454 2080 50  0000 L CNN
F 1 "100u" V 4545 2080 50  0000 L CNN
F 2 "SnapEDA_Sym2:CAPPRD250W45D800H500" H 4450 1950 50  0001 L BNN
F 3 "" H 4450 1950 50  0001 L BNN
F 4 "0.5" H 4450 1950 50  0001 L BNN "b_max"
F 5 "28-FEB-20" H 4450 1950 50  0001 L BNN "PARTREV"
F 6 "5" H 4450 1950 50  0001 L BNN "A_max"
F 7 "PANASONIC" H 4450 1950 50  0001 L BNN "MF"
F 8 "0.45" H 4450 1950 50  0001 L BNN "b_nom"
F 9 "8" H 4450 1950 50  0001 L BNN "D_nom"
F 10 "2.5" H 4450 1950 50  0001 L BNN "e_nom"
F 11 "KS-A" H 4450 1950 50  0001 L BNN "DESCRIPTION"
	1    4450 1950
	0    1    1    0   
$EndComp
Wire Wire Line
	4450 1850 4450 1500
Wire Wire Line
	4450 2150 4450 2450
$Comp
L TICAF_v1-rescue:EEUFS1J270-EEUFS1J270 C2
U 1 1 61C72D49
P 6150 2000
F 0 "C2" V 6154 2130 50  0000 L CNN
F 1 "27u" V 6245 2130 50  0000 L CNN
F 2 "SnapEDA_Sym2:CAPPRD200W50D500H1100" H 6150 2000 50  0001 L BNN
F 3 "" H 6150 2000 50  0001 L BNN
F 4 "0.55" H 6150 2000 50  0001 L BNN "b_max"
F 5 "28-FEB-20" H 6150 2000 50  0001 L BNN "PARTREV"
F 6 "11" H 6150 2000 50  0001 L BNN "A_max"
F 7 "PANASONIC" H 6150 2000 50  0001 L BNN "MF"
F 8 "0.5" H 6150 2000 50  0001 L BNN "b_nom"
F 9 "5" H 6150 2000 50  0001 L BNN "D_nom"
F 10 "2" H 6150 2000 50  0001 L BNN "e_nom"
F 11 "FS-A" H 6150 2000 50  0001 L BNN "DESCRIPTION"
	1    6150 2000
	0    1    1    0   
$EndComp
Wire Wire Line
	6150 2200 6150 2450
$Comp
L power:GND #PWR0101
U 1 1 61C76B25
P 5250 2900
F 0 "#PWR0101" H 5250 2650 50  0001 C CNN
F 1 "GND" H 5255 2727 50  0000 C CNN
F 2 "" H 5250 2900 50  0001 C CNN
F 3 "" H 5250 2900 50  0001 C CNN
	1    5250 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	5250 2450 5250 2650
Wire Wire Line
	4050 1600 4050 2650
Wire Wire Line
	4050 2650 5250 2650
Connection ~ 5250 2650
$Comp
L Device:R R2
U 1 1 61C79795
P 7100 1850
F 0 "R2" H 7170 1896 50  0000 L CNN
F 1 "220" H 7170 1805 50  0000 L CNN
F 2 "SnapEDA_Sym2:RES_ERA2VEB2200X" V 7030 1850 50  0001 C CNN
F 3 "https://pt.mouser.com/datasheet/2/315/Panasonic_Resistor_Thin_Film_(ERA-xV_2c_ERA-xK_Ser-1815278.pdf" H 7100 1850 50  0001 C CNN
	1    7100 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	7100 1500 7100 1700
$Comp
L Device:LED D2
U 1 1 61C7AB26
P 7100 2350
F 0 "D2" V 7139 2232 50  0000 R CNN
F 1 "LED" V 7048 2232 50  0000 R CNN
F 2 "LED_SMD:LED_0603_1608Metric" H 7100 2350 50  0001 C CNN
F 3 "https://pt.mouser.com/datasheet/2/427/VISH_S_A0004270236_1-2569150.pdf" H 7100 2350 50  0001 C CNN
	1    7100 2350
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7100 2000 7100 2200
Wire Wire Line
	7100 2500 7100 2650
Wire Wire Line
	7100 2650 5250 2650
Text Notes 2900 1050 0    50   ~ 0
Regulador de Potência do Circuito Eletrónico\ndo ATmega328P
Wire Notes Line
	2800 800  7450 800 
Wire Notes Line
	7450 800  7450 3150
Wire Notes Line
	7450 3150 2800 3150
Wire Notes Line
	2800 3150 2800 800 
Wire Wire Line
	3350 1700 3500 1700
Text GLabel 1400 2050 0    50   Output ~ 0
RESET
$Comp
L Device:R R1
U 1 1 61C982A6
P 2100 1600
F 0 "R1" H 2170 1646 50  0000 L CNN
F 1 "10k" H 2170 1555 50  0000 L CNN
F 2 "SnapEDA_Sym2:RES_ERA6VRW1002V" H 2170 1509 50  0001 L CNN
F 3 "https://pt.mouser.com/datasheet/2/315/Panasonic_Resistor_Thin_Film_(ERA-xV_2c_ERA-xK_Ser-1815278.pdf" H 2100 1600 50  0001 C CNN
	1    2100 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	1400 2050 1700 2050
Wire Wire Line
	2100 2050 2100 1750
Wire Wire Line
	2100 1450 2100 1300
$Comp
L power:GND #PWR0102
U 1 1 61C9CB08
P 2000 2900
F 0 "#PWR0102" H 2000 2650 50  0001 C CNN
F 1 "GND" H 2005 2727 50  0000 C CNN
F 2 "" H 2000 2900 50  0001 C CNN
F 3 "" H 2000 2900 50  0001 C CNN
	1    2000 2900
	1    0    0    -1  
$EndComp
Wire Notes Line
	950  800  2650 800 
Wire Notes Line
	2650 800  2650 3150
Wire Notes Line
	2650 3150 950  3150
Wire Notes Line
	950  3150 950  800 
Text Notes 1050 1050 0    50   ~ 0
ATmega328P Circuito\nde Reset
Text GLabel 9950 1550 2    50   Input ~ 0
XTAL1_328P
Text GLabel 9950 2300 2    50   Input ~ 0
XTAL2_328P
$Comp
L Device:Crystal Y1
U 1 1 61C5D12A
P 9050 1900
F 0 "Y1" V 9004 2031 50  0000 L CNN
F 1 "16MHz" V 9095 2031 50  0000 L CNN
F 2 "SnapEDA_Sym2:XTAL1140X490X430N" H 9050 1900 50  0001 C CNN
F 3 "https://pt.mouser.com/datasheet/2/741/LFXTAL015055Reel-991268.pdf" H 9050 1900 50  0001 C CNN
	1    9050 1900
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0103
U 1 1 61C5E740
P 8450 2550
F 0 "#PWR0103" H 8450 2300 50  0001 C CNN
F 1 "GND" H 8455 2377 50  0000 C CNN
F 2 "" H 8450 2550 50  0001 C CNN
F 3 "" H 8450 2550 50  0001 C CNN
	1    8450 2550
	1    0    0    -1  
$EndComp
$Comp
L Device:C C3
U 1 1 61C61479
P 9600 1550
F 0 "C3" V 9348 1550 50  0000 C CNN
F 1 "22p" V 9439 1550 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 9638 1400 50  0001 C CNN
F 3 "https://pt.mouser.com/datasheet/2/585/MLCC_Automotive-1837966.pdf" H 9600 1550 50  0001 C CNN
	1    9600 1550
	0    1    1    0   
$EndComp
$Comp
L Device:C C4
U 1 1 61C622A2
P 9600 2300
F 0 "C4" V 9348 2300 50  0000 C CNN
F 1 "22p" V 9439 2300 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 9638 2150 50  0001 C CNN
F 3 "https://pt.mouser.com/datasheet/2/585/MLCC_Automotive-1837966.pdf" H 9600 2300 50  0001 C CNN
	1    9600 2300
	0    1    1    0   
$EndComp
Wire Wire Line
	9950 1550 9750 1550
Wire Wire Line
	8450 1550 8450 2300
Connection ~ 8450 2300
Wire Wire Line
	8450 2300 8450 2550
Wire Wire Line
	8450 1550 9050 1550
Wire Wire Line
	8450 2300 9050 2300
Wire Wire Line
	9050 1550 9050 1750
Connection ~ 9050 1550
Wire Wire Line
	9050 1550 9450 1550
Wire Wire Line
	9050 2050 9050 2300
Connection ~ 9050 2300
Wire Wire Line
	9050 2300 9450 2300
Text Notes 8100 1000 0    50   ~ 0
Ressonador externo do Circuito
Wire Wire Line
	9750 2300 9950 2300
$Sheet
S 5250 5300 1450 750 
U 61C75235
F0 "Módulo FTDI - USB to Serial" 50
F1 "ModFTDI_USBtoSerial.sch" 50
F2 "PWR" O L 5250 5450 50 
F3 "TX_DATA" O R 6700 5450 50 
F4 "RX_DATA" I R 6700 5600 50 
F5 "DTR" B R 6700 5750 50 
F6 "CTS" B R 6700 5900 50 
$EndSheet
Text Label 6850 5450 0    50   ~ 0
TRXD+
Text Label 6850 5600 0    50   ~ 0
TRXD-
Wire Wire Line
	6700 5450 7000 5450
Wire Wire Line
	6700 5600 7000 5600
Text Label 6850 5750 0    50   ~ 0
DTR
Text Label 6850 5900 0    50   ~ 0
CTS
Wire Wire Line
	6700 5900 7000 5900
Text Label 4900 5450 0    50   ~ 0
PWR
Wire Wire Line
	4900 5450 5250 5450
Text Label 3600 1700 0    50   ~ 0
PWR
$Comp
L Device:C C9
U 1 1 61CE7DAB
P 7400 5900
F 0 "C9" V 7148 5900 50  0000 C CNN
F 1 "100n" V 7239 5900 50  0000 C CNN
F 2 "Capacitor_SMD:C_0201_0603Metric" H 7438 5750 50  0001 C CNN
F 3 "https://pt.mouser.com/datasheet/2/585/MLCC_Automotive-1837966.pdf" H 7400 5900 50  0001 C CNN
	1    7400 5900
	0    1    1    0   
$EndComp
$Comp
L pspice:DIODE D5
U 1 1 61CEA3E8
P 1700 1600
F 0 "D5" V 1746 1472 50  0000 R CNN
F 1 "DIODE" V 1655 1472 50  0000 R CNN
F 2 "LED_SMD:LED_0603_1608Metric" H 1700 1600 50  0001 C CNN
F 3 "~" H 1700 1600 50  0001 C CNN
	1    1700 1600
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2100 1300 1700 1300
Wire Wire Line
	1700 1300 1700 1400
Connection ~ 2100 1300
Wire Wire Line
	2100 1300 2100 1150
Wire Wire Line
	1700 1800 1700 2050
Connection ~ 1700 2050
Connection ~ 2100 2050
Text Label 2550 2050 2    50   ~ 0
DTR_328P
Wire Wire Line
	2100 2050 2550 2050
Text Label 7900 5900 2    50   ~ 0
DTR_328P
Text Label 3100 6000 0    50   ~ 0
TRXD+
Wire Wire Line
	2800 6000 3100 6000
Text Label 3100 6100 0    50   ~ 0
TRXD-
Wire Wire Line
	2800 6100 3100 6100
Text GLabel 3200 4900 2    50   Output ~ 0
XTAL1_328P
Text GLabel 3200 5050 2    50   Output ~ 0
XTAL2_328P
Wire Notes Line
	8000 800  8000 3150
Wire Notes Line
	8000 3150 10850 3150
Wire Notes Line
	10850 3150 10850 800 
Wire Notes Line
	10850 800  8000 800 
$Comp
L power:GND #PWR01
U 1 1 61D149DA
P 1300 6650
F 0 "#PWR01" H 1300 6400 50  0001 C CNN
F 1 "GND" H 1305 6477 50  0000 C CNN
F 2 "" H 1300 6650 50  0001 C CNN
F 3 "" H 1300 6650 50  0001 C CNN
	1    1300 6650
	1    0    0    -1  
$EndComp
Wire Wire Line
	1600 6100 1300 6100
Wire Wire Line
	1300 6100 1300 6350
Wire Wire Line
	1600 6350 1300 6350
Connection ~ 1300 6350
$Comp
L Device:C C8
U 1 1 61D1F3B8
P 1300 5650
F 0 "C8" H 1415 5696 50  0000 L CNN
F 1 "100n" H 1415 5605 50  0000 L CNN
F 2 "Capacitor_SMD:C_0201_0603Metric" H 1338 5500 50  0001 C CNN
F 3 "https://pt.mouser.com/datasheet/2/585/MLCC_Automotive-1837966.pdf" H 1300 5650 50  0001 C CNN
	1    1300 5650
	1    0    0    -1  
$EndComp
Wire Wire Line
	1300 5500 1300 5200
Wire Wire Line
	1300 5200 1600 5200
Wire Wire Line
	1300 5800 1300 6100
Connection ~ 1300 6100
Wire Wire Line
	1300 5200 1300 5050
Connection ~ 1300 5200
Wire Wire Line
	1300 5050 1600 5050
Text GLabel 3150 5800 2    50   Input ~ 0
RESET
Wire Wire Line
	2800 5800 3150 5800
Wire Wire Line
	3350 1600 4050 1600
$Comp
L LM7805S_NOPB:LM7805S_NOPB U2
U 1 1 61D6A01B
P 5300 1600
F 0 "U2" H 5300 1970 50  0000 C CNN
F 1 "LM7805S_NOPB" H 5300 1879 50  0000 C CNN
F 2 "SnapEDA_Sym2:TO254P1524X483-4N" H 5300 1600 50  0001 L BNN
F 3 "" H 5300 1600 50  0001 L BNN
	1    5300 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	4600 1500 4450 1500
Connection ~ 4450 1500
Text Label 6950 1500 0    50   ~ 0
+5V
$Comp
L power:PWR_FLAG #FLG0102
U 1 1 61D7F123
P 3500 1950
F 0 "#FLG0102" H 3500 2025 50  0001 C CNN
F 1 "PWR_FLAG" H 3500 2123 50  0000 C CNN
F 2 "" H 3500 1950 50  0001 C CNN
F 3 "~" H 3500 1950 50  0001 C CNN
	1    3500 1950
	-1   0    0    1   
$EndComp
Wire Wire Line
	3500 1700 3500 1950
Connection ~ 3500 1700
Wire Wire Line
	3500 1700 3600 1700
Text Label 1300 5050 0    50   ~ 0
+5V
Text Label 2100 1150 0    50   ~ 0
+5V
Wire Wire Line
	6000 1750 6150 1750
Wire Wire Line
	6150 1750 6150 1900
Wire Wire Line
	6000 1650 6150 1650
Wire Wire Line
	6150 1650 6150 1750
Connection ~ 6150 1750
Wire Wire Line
	5250 2450 6150 2450
Wire Wire Line
	3350 1500 3850 1500
$Comp
L power:PWR_FLAG #FLG0101
U 1 1 61D99361
P 4450 1300
F 0 "#FLG0101" H 4450 1375 50  0001 C CNN
F 1 "PWR_FLAG" H 4450 1473 50  0000 C CNN
F 2 "" H 4450 1300 50  0001 C CNN
F 3 "~" H 4450 1300 50  0001 C CNN
	1    4450 1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	4450 1300 4450 1500
Wire Wire Line
	1300 6350 1300 6650
$Comp
L power:PWR_FLAG #FLG0103
U 1 1 61D9C053
P 1000 6250
F 0 "#FLG0103" H 1000 6325 50  0001 C CNN
F 1 "PWR_FLAG" H 1000 6423 50  0000 C CNN
F 2 "" H 1000 6250 50  0001 C CNN
F 3 "~" H 1000 6250 50  0001 C CNN
	1    1000 6250
	1    0    0    -1  
$EndComp
Wire Wire Line
	1000 6350 1300 6350
Wire Wire Line
	1000 6250 1000 6350
$Comp
L power:PWR_FLAG #FLG0104
U 1 1 61DA88CA
P 6350 1750
F 0 "#FLG0104" H 6350 1825 50  0001 C CNN
F 1 "PWR_FLAG" V 6350 1878 50  0000 L CNN
F 2 "" H 6350 1750 50  0001 C CNN
F 3 "~" H 6350 1750 50  0001 C CNN
	1    6350 1750
	0    1    1    0   
$EndComp
Wire Wire Line
	6150 1750 6350 1750
$Comp
L power:GND #PWR0109
U 1 1 61DAB9E8
P 1450 4450
F 0 "#PWR0109" H 1450 4200 50  0001 C CNN
F 1 "GND" H 1455 4277 50  0000 C CNN
F 2 "" H 1450 4450 50  0001 C CNN
F 3 "" H 1450 4450 50  0001 C CNN
	1    1450 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	1600 4300 1450 4300
Wire Wire Line
	1450 4300 1450 4450
$Comp
L Connector_Generic:Conn_02x03_Odd_Even J4
U 1 1 61DB2850
P 4350 4600
F 0 "J4" H 4400 4917 50  0000 C CNN
F 1 "ICSP" H 4400 4826 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x03_P2.54mm_Vertical" H 4350 4600 50  0001 C CNN
F 3 "~" H 4350 4600 50  0001 C CNN
	1    4350 4600
	1    0    0    -1  
$EndComp
Wire Wire Line
	4650 4500 4900 4500
Text Label 4900 4500 2    50   ~ 0
+5V
$Comp
L power:GND #PWR0110
U 1 1 61DB6B20
P 4850 4800
F 0 "#PWR0110" H 4850 4550 50  0001 C CNN
F 1 "GND" H 4855 4627 50  0000 C CNN
F 2 "" H 4850 4800 50  0001 C CNN
F 3 "" H 4850 4800 50  0001 C CNN
	1    4850 4800
	1    0    0    -1  
$EndComp
Wire Wire Line
	4650 4700 4850 4700
Wire Wire Line
	4850 4700 4850 4800
Wire Wire Line
	4150 4500 3450 4500
Wire Wire Line
	3450 4500 3450 4700
Wire Wire Line
	3450 4700 2800 4700
Wire Wire Line
	4650 4600 5000 4600
Wire Wire Line
	5000 4600 5000 4200
Wire Wire Line
	5000 4200 3350 4200
Wire Wire Line
	3350 4200 3350 4600
Wire Wire Line
	3350 4600 2800 4600
Text GLabel 3950 4700 0    50   Output ~ 0
RESET
Wire Wire Line
	3950 4700 4150 4700
Wire Wire Line
	4150 4600 4100 4600
Wire Wire Line
	3600 4600 3600 4800
Wire Wire Line
	3600 4800 2800 4800
Wire Wire Line
	2800 4900 3200 4900
$Comp
L Device:LED D6
U 1 1 61DDA2C3
P 4100 5300
F 0 "D6" V 4139 5182 50  0000 R CNN
F 1 "LED" V 4048 5182 50  0000 R CNN
F 2 "LED_SMD:LED_0603_1608Metric" H 4100 5300 50  0001 C CNN
F 3 "https://pt.mouser.com/datasheet/2/427/VISH_S_A0004270236_1-2569150.pdf" H 4100 5300 50  0001 C CNN
	1    4100 5300
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4100 4600 4100 5150
Connection ~ 4100 4600
Wire Wire Line
	4100 4600 3600 4600
Wire Wire Line
	4100 5450 4100 5650
$Comp
L power:GND #PWR0111
U 1 1 61DE2ADD
P 4100 6200
F 0 "#PWR0111" H 4100 5950 50  0001 C CNN
F 1 "GND" H 4105 6027 50  0000 C CNN
F 2 "" H 4100 6200 50  0001 C CNN
F 3 "" H 4100 6200 50  0001 C CNN
	1    4100 6200
	1    0    0    -1  
$EndComp
$Sheet
S 8800 4000 1450 2100
U 61DF02CB
F0 "Controlos Painel Solar / Bateria" 50
F1 "TICAF_Controlos.sch" 50
F2 "LED_Sys_ON" I L 8800 4200 50 
F3 "LED_Low_Battery" I L 8800 4400 50 
F4 "LED_Painel_ON" I L 8800 4600 50 
F5 "LED_Bat_ON" I L 8800 4800 50 
F6 "LED_Charge_Bat" I L 8800 5000 50 
F7 "A1_328P" O L 8800 5300 50 
F8 "A5_328P" O L 8800 5500 50 
F9 "CHARGE_OPAMP_SIGNAL" I L 8800 5800 50 
F10 "PAINEL_VGS" I R 10250 4950 50 
F11 "BAT_VGS" I R 10250 5200 50 
F12 "BATCH_VGS" I R 10250 5450 50 
F13 "BTN_CHARGE_BAT" O R 10250 4250 50 
$EndSheet
$Comp
L BAT_1775485_2:1775485-2 J6
U 1 1 61DF478D
P 3950 2800
F 0 "J6" H 3950 2977 50  0000 C CNN
F 1 "Bat Cell 2(3V)" H 3950 3068 50  0000 C CNN
F 2 "SnapEDA_Sym2:TE_1775485-2" H 3950 2800 50  0001 L BNN
F 3 "https://pt.mouser.com/datasheet/2/418/7/ENG_CD_1775485_B2-2019690.pdf" H 3950 2800 50  0001 L BNN
F 4 "None" H 3950 2800 50  0001 L BNN "Package"
F 5 "https://pricing.snapeda.com/search/part/1775485-2/?ref=eda" H 3950 2800 50  0001 L BNN "Purchase-URL"
F 6 "1775485-2" H 3950 2800 50  0001 L BNN "Comment"
F 7 "1775485-2" H 3950 2800 50  0001 L BNN "MP"
F 8 "None" H 3950 2800 50  0001 L BNN "Price"
F 9 "In Stock" H 3950 2800 50  0001 L BNN "Availability"
F 10 "TE Connectivity" H 3950 2800 50  0001 L BNN "MF"
F 11 "Compliant" H 3950 2800 50  0001 L BNN "EU_RoHS_Compliance"
F 12 "\\nBattery Holder (Open) Coin, 20.0mm 1 Cell PC Pin\\n" H 3950 2800 50  0001 L BNN "Description"
	1    3950 2800
	-1   0    0    1   
$EndComp
$Comp
L BAT_1775485_2:1775485-2 J5
U 1 1 61E1B8E6
P 3400 2800
F 0 "J5" H 3400 2977 50  0000 C CNN
F 1 "Bat Cell 1(3V)" H 3400 3068 50  0000 C CNN
F 2 "SnapEDA_Sym2:TE_1775485-2" H 3150 2200 50  0001 L BNN
F 3 "" H 3400 2800 50  0001 L BNN
F 4 "Battery Holder (Open) Coin, 20.0mm 1 Cell PC Pin" H 2500 2300 50  0001 L BNN "Description"
	1    3400 2800
	-1   0    0    1   
$EndComp
Text Label 3200 2800 2    50   ~ 0
+6VBAT
Wire Wire Line
	5250 2650 5250 2800
Wire Wire Line
	4150 2800 5250 2800
Connection ~ 5250 2800
Wire Wire Line
	5250 2800 5250 2900
Text Label 3550 1500 0    50   ~ 0
+6VBAT
Wire Wire Line
	3600 2800 3750 2800
Wire Wire Line
	3100 6700 2800 6700
Text Label 3100 6700 0    50   ~ 0
L_SYSON
Wire Wire Line
	2800 6600 3100 6600
Text Label 3100 6600 0    50   ~ 0
L_LOWBAT
Wire Wire Line
	2800 6500 3100 6500
Text Label 3100 6500 0    50   ~ 0
L_PAINELON
Wire Wire Line
	2800 6400 3100 6400
Text Label 3100 6400 0    50   ~ 0
L_BATON
Wire Wire Line
	2800 6300 3100 6300
Text Label 3100 6300 0    50   ~ 0
L_CHARGEBAT
Text Label 7600 3900 0    50   ~ 0
L_SYSON
Wire Wire Line
	8250 4400 8800 4400
Wire Wire Line
	8250 4600 8800 4600
Wire Wire Line
	8250 4800 8800 4800
Wire Wire Line
	8250 5000 8800 5000
Text Label 8250 4400 0    50   ~ 0
L_LOWBAT
Text Label 8250 4600 0    50   ~ 0
L_PAINELON
Text Label 8250 4800 0    50   ~ 0
L_BATON
Text Label 8250 5000 0    50   ~ 0
L_CHARGEBAT
Wire Wire Line
	6700 5750 7150 5750
Wire Wire Line
	7150 5750 7150 5900
Wire Wire Line
	7150 5900 7250 5900
Wire Wire Line
	7550 5900 7900 5900
$Comp
L Device:R R5
U 1 1 61DDEC09
P 4100 5800
F 0 "R5" H 4170 5846 50  0000 L CNN
F 1 "220R" H 4170 5755 50  0000 L CNN
F 2 "SnapEDA_Sym2:RES_ERA2VEB2200X" V 4030 5800 50  0001 C CNN
F 3 "https://pt.mouser.com/datasheet/2/315/Panasonic_Resistor_Thin_Film_(ERA-xV_2c_ERA-xK_Ser-1815278.pdf" H 4100 5800 50  0001 C CNN
	1    4100 5800
	1    0    0    -1  
$EndComp
Wire Wire Line
	2800 5000 3000 5000
Wire Wire Line
	3000 5000 3000 5050
Wire Wire Line
	3000 5050 3200 5050
Text Label 3400 5300 2    50   ~ 0
A1_328P_IN
Wire Wire Line
	2800 5300 3400 5300
Text Label 8300 5300 0    50   ~ 0
A1_328P_IN
Text Label 8300 5500 0    50   ~ 0
A5_328P_IN
Wire Wire Line
	2800 5700 3400 5700
Text Label 3400 5700 2    50   ~ 0
A5_328P_IN
Wire Wire Line
	8800 5300 8300 5300
Wire Wire Line
	8800 5500 8300 5500
Text Label 8200 5800 0    50   ~ 0
OPAMP_SIGNAL
Text Label 3100 6200 0    50   ~ 0
OPAMP_SIGNAL
Wire Wire Line
	2800 6200 3100 6200
Wire Wire Line
	8200 5800 8800 5800
Text Label 10700 4950 2    50   ~ 0
PVGS
Wire Wire Line
	10250 4950 10700 4950
Text Label 10700 5200 2    50   ~ 0
BVGS
Wire Wire Line
	10250 5200 10700 5200
Text Label 10700 5450 2    50   ~ 0
BCVGS
Wire Wire Line
	10250 5450 10700 5450
Wire Wire Line
	2800 4500 3150 4500
Wire Wire Line
	3150 4500 3150 4000
Wire Wire Line
	3150 4000 3750 4000
Text Label 3750 4000 2    50   ~ 0
BCVGS
Wire Wire Line
	2800 4400 3050 4400
Wire Wire Line
	3050 4400 3050 3900
Wire Wire Line
	3050 3900 3750 3900
Text Label 3750 3900 2    50   ~ 0
BVGS
Wire Wire Line
	2800 4300 2950 4300
Wire Wire Line
	2950 4300 2950 3800
Wire Wire Line
	2950 3800 3750 3800
Text Label 3750 3800 2    50   ~ 0
PVGS
$Comp
L Jumper:Jumper_3_Bridged12 JP1
U 1 1 61E8F844
P 7600 4200
F 0 "JP1" H 7600 4311 50  0000 C CNN
F 1 "Jumper_3_Bridged12" H 7600 4402 50  0000 C CNN
F 2 "Jumper:SolderJumper-3_P1.3mm_Open_RoundedPad1.0x1.5mm_NumberLabels" H 7600 4200 50  0001 C CNN
F 3 "~" H 7600 4200 50  0001 C CNN
	1    7600 4200
	-1   0    0    1   
$EndComp
Wire Wire Line
	7850 4200 8800 4200
Wire Wire Line
	7600 3900 7600 4050
Wire Wire Line
	7350 4200 7200 4200
Wire Wire Line
	7200 4200 7200 3700
Wire Wire Line
	7200 3700 10700 3700
Wire Wire Line
	10700 3700 10700 4250
Wire Wire Line
	10700 4250 10250 4250
Wire Wire Line
	4100 5950 4100 6050
$Comp
L EVPBB0AAB000:EVPBB0AAB000 S1
U 1 1 61F1F27D
P 1900 2350
F 0 "S1" V 1854 2494 50  0000 L CNN
F 1 "BTN Reset" V 1945 2494 50  0000 L CNN
F 2 "SnapEDA_Sym2:SW_EVPBB0AAB000" H 1900 2350 50  0001 L BNN
F 3 "" H 1900 2350 50  0001 L BNN
F 4 "Tactile Switch SPST-NO Top Actuated Surface Mount" H 1900 2350 50  0001 L BNN "DESCRIPTION"
F 5 "Panasonic Electronic" H 1900 2350 50  0001 L BNN "MF"
F 6 "0.58mm" H 1900 2350 50  0001 L BNN "MAXIMUM_PACKAGE_HEIGHT"
F 7 "https://snapeda.com/shop?store=Arrow+Electronics&id=584571" H 1900 2350 50  0001 L BNN "ARROW_ELECTRONICS-PURCHASE-URL"
F 8 "https://snapeda.com/shop?store=Mouser&id=584571" H 1900 2350 50  0001 L BNN "MOUSER-PURCHASE-URL"
F 9 "P19888CT-ND" H 1900 2350 50  0001 L BNN "DIGI-KEY_PART_NUMBER"
F 10 "https://snapeda.com/shop?store=DigiKey&id=584571" H 1900 2350 50  0001 L BNN "DIGIKEY-PURCHASE-URL"
F 11 "None" H 1900 2350 50  0001 L BNN "PACKAGE"
F 12 "EVPBB0AAB000" H 1900 2350 50  0001 L BNN "MP"
	1    1900 2350
	0    1    1    0   
$EndComp
Wire Wire Line
	1700 2050 1800 2050
Wire Wire Line
	2000 2050 2100 2050
Wire Wire Line
	2000 2650 2000 2900
$Comp
L power:GND #PWR0112
U 1 1 61F340D5
P 1800 2900
F 0 "#PWR0112" H 1800 2650 50  0001 C CNN
F 1 "GND" H 1805 2727 50  0000 C CNN
F 2 "" H 1800 2900 50  0001 C CNN
F 3 "" H 1800 2900 50  0001 C CNN
	1    1800 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	1800 2650 1800 2900
Wire Wire Line
	2800 5200 3800 5200
Wire Wire Line
	3800 6050 4100 6050
Connection ~ 4100 6050
Wire Wire Line
	4100 6050 4100 6200
Wire Wire Line
	2800 5400 3800 5400
Wire Wire Line
	3800 5200 3800 5400
Connection ~ 3800 5400
Wire Wire Line
	2800 5500 3800 5500
Wire Wire Line
	3800 5400 3800 5500
Connection ~ 3800 5500
Wire Wire Line
	3800 5500 3800 5600
Wire Wire Line
	2850 5600 3800 5600
Connection ~ 3800 5600
Wire Wire Line
	3800 5600 3800 6050
$Comp
L power:PWR_FLAG #FLG0107
U 1 1 61D859A1
P 6850 1350
F 0 "#FLG0107" H 6850 1425 50  0001 C CNN
F 1 "PWR_FLAG" H 6850 1523 50  0000 C CNN
F 2 "" H 6850 1350 50  0001 C CNN
F 3 "~" H 6850 1350 50  0001 C CNN
	1    6850 1350
	1    0    0    -1  
$EndComp
$Comp
L Device:D D22
U 1 1 61D97EEF
P 6600 1500
F 0 "D22" H 6600 1283 50  0000 C CNN
F 1 "D" H 6600 1374 50  0000 C CNN
F 2 "Diode_SMD:D_SOD-523" H 6600 1500 50  0001 C CNN
F 3 "https://pt.mouser.com/new/rohm-semiconductor/rohm-fastrecovery-diodes/" H 6600 1500 50  0001 C CNN
	1    6600 1500
	-1   0    0    1   
$EndComp
Wire Wire Line
	6850 1350 6850 1500
Wire Wire Line
	6850 1500 7100 1500
Wire Wire Line
	6750 1500 6850 1500
Connection ~ 6850 1500
Wire Wire Line
	6000 1500 6450 1500
Text Label 6050 1500 0    50   ~ 0
VREG_OUT
$EndSCHEMATC

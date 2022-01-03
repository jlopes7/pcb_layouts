EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 4 4
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text HLabel 1950 1200 0    50   Input ~ 0
SWITCH_PAINEL
Wire Wire Line
	1950 1200 3050 1200
Wire Wire Line
	3050 1200 3050 1600
Text HLabel 1900 1800 0    50   Input ~ 0
PAINELSW_VGS
Wire Wire Line
	1900 1800 2750 1800
$Comp
L Device:D D17
U 1 1 61DB949A
P 3350 2450
F 0 "D17" H 3350 2233 50  0000 C CNN
F 1 "D" H 3350 2324 50  0000 C CNN
F 2 "Diode_SMD:D_SOD-523" H 3350 2450 50  0001 C CNN
F 3 "https://pt.mouser.com/new/rohm-semiconductor/rohm-fastrecovery-diodes/" H 3350 2450 50  0001 C CNN
	1    3350 2450
	-1   0    0    1   
$EndComp
Wire Wire Line
	3050 2450 3200 2450
$Comp
L Device:R R21
U 1 1 61DBA960
P 4600 1850
F 0 "R21" H 4670 1896 50  0000 L CNN
F 1 "100k" H 4670 1805 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 4530 1850 50  0001 C CNN
F 3 "https://pt.mouser.com/datasheet/2/54/Bourns_CHV_A_datasheet-2450452.pdf" H 4600 1850 50  0001 C CNN
	1    4600 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	4600 1200 4600 1700
Text HLabel 1950 2850 0    50   Input ~ 0
SWITCH_BAT
Wire Wire Line
	1950 2850 3100 2850
Wire Wire Line
	3100 2850 3100 3150
Text HLabel 1950 3350 0    50   Input ~ 0
BATSW_VGS
Wire Wire Line
	1950 3350 2800 3350
$Comp
L Device:D D18
U 1 1 61DC237F
P 3400 4000
F 0 "D18" H 3400 3783 50  0000 C CNN
F 1 "D" H 3400 3874 50  0000 C CNN
F 2 "Diode_SMD:D_SOD-523" H 3400 4000 50  0001 C CNN
F 3 "https://pt.mouser.com/new/rohm-semiconductor/rohm-fastrecovery-diodes/" H 3400 4000 50  0001 C CNN
	1    3400 4000
	-1   0    0    1   
$EndComp
Wire Wire Line
	3100 4000 3250 4000
$Comp
L Device:R R20
U 1 1 61DC4BDB
P 4200 3400
F 0 "R20" H 4270 3446 50  0000 L CNN
F 1 "100k" H 4270 3355 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 4130 3400 50  0001 C CNN
F 3 "https://pt.mouser.com/datasheet/2/54/Bourns_CHV_A_datasheet-2450452.pdf" H 4200 3400 50  0001 C CNN
	1    4200 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	4600 2000 4600 2450
Connection ~ 4600 2450
Wire Wire Line
	3050 1200 4600 1200
Connection ~ 3050 1200
Wire Wire Line
	3500 2450 4600 2450
Wire Wire Line
	3100 2850 4200 2850
Connection ~ 3100 2850
Wire Wire Line
	3550 4000 4200 4000
Wire Wire Line
	4200 2850 4200 3250
Wire Wire Line
	4200 3550 4200 4000
Connection ~ 4200 4000
Wire Wire Line
	4200 4000 4600 4000
Wire Wire Line
	4600 2450 4600 4000
$Comp
L Motor:Motor_DC M4
U 1 1 61DC9CF6
P 6900 2650
F 0 "M4" H 7058 2646 50  0000 L CNN
F 1 "Motor_DC" H 7058 2555 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Horizontal" H 6900 2560 50  0001 C CNN
F 3 "~" H 6900 2560 50  0001 C CNN
	1    6900 2650
	1    0    0    -1  
$EndComp
Text Label 7100 1300 0    50   ~ 0
MOTOR_INPUT
$Comp
L Connector_Generic:Conn_01x03 J7
U 1 1 61DCCDC0
P 8000 1400
F 0 "J7" H 8080 1442 50  0000 L CNN
F 1 "Regulador de Velocidade (Potentiometer)" H 8080 1351 50  0000 L CNN
F 2 "Connector:Power_Connector" H 8000 1400 50  0001 C CNN
F 3 "https://pt.mouser.com/datasheet/2/427/VISH_S_A0012465576_1-2572724.pdf" H 8000 1400 50  0001 C CNN
	1    8000 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	7100 1300 7800 1300
Wire Wire Line
	7800 1400 6900 1400
$Comp
L power:GND #PWR07
U 1 1 61DCFE32
P 7600 1800
F 0 "#PWR07" H 7600 1550 50  0001 C CNN
F 1 "GND" H 7605 1627 50  0000 C CNN
F 2 "" H 7600 1800 50  0001 C CNN
F 3 "" H 7600 1800 50  0001 C CNN
	1    7600 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	7800 1500 7600 1500
Wire Wire Line
	7600 1500 7600 1800
$Comp
L Device:D D19
U 1 1 61DD2450
P 7800 2850
F 0 "D19" H 7800 2633 50  0000 C CNN
F 1 "D" H 7800 2724 50  0000 C CNN
F 2 "Diode_SMD:D_SOD-523" H 7800 2850 50  0001 C CNN
F 3 "https://pt.mouser.com/new/rohm-semiconductor/rohm-fastrecovery-diodes/" H 7800 2850 50  0001 C CNN
	1    7800 2850
	0    1    1    0   
$EndComp
$Comp
L Device:R R22
U 1 1 61DD29A5
P 7800 2550
F 0 "R22" H 7870 2596 50  0000 L CNN
F 1 "1k" H 7870 2505 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 7730 2550 50  0001 C CNN
F 3 "~" H 7800 2550 50  0001 C CNN
	1    7800 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	7800 2400 7800 2200
Wire Wire Line
	7800 2200 6900 2200
Wire Wire Line
	6900 3150 7800 3150
Wire Wire Line
	7800 3150 7800 3000
$Comp
L power:GND #PWR06
U 1 1 61DD4F81
P 6900 3350
F 0 "#PWR06" H 6900 3100 50  0001 C CNN
F 1 "GND" H 6905 3177 50  0000 C CNN
F 2 "" H 6900 3350 50  0001 C CNN
F 3 "" H 6900 3350 50  0001 C CNN
	1    6900 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	6900 3150 6900 3350
Wire Wire Line
	6900 2200 6900 2450
Wire Wire Line
	6900 2950 6900 3150
Connection ~ 6900 3150
Wire Wire Line
	3100 4550 3100 4900
$Comp
L Device:R R23
U 1 1 61DD9D8C
P 3850 5100
F 0 "R23" H 3920 5146 50  0000 L CNN
F 1 "100k" H 3920 5055 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 3780 5100 50  0001 C CNN
F 3 "https://pt.mouser.com/datasheet/2/54/Bourns_CHV_A_datasheet-2450452.pdf" H 3850 5100 50  0001 C CNN
	1    3850 5100
	1    0    0    -1  
$EndComp
Wire Wire Line
	4600 5600 4600 4000
Connection ~ 4600 4000
$Comp
L Device:D D21
U 1 1 61DDD857
P 4150 5600
F 0 "D21" H 4150 5383 50  0000 C CNN
F 1 "D" H 4150 5474 50  0000 C CNN
F 2 "Diode_SMD:D_SOD-523" H 4150 5600 50  0001 C CNN
F 3 "https://pt.mouser.com/new/rohm-semiconductor/rohm-fastrecovery-diodes/" H 4150 5600 50  0001 C CNN
	1    4150 5600
	-1   0    0    1   
$EndComp
Wire Wire Line
	4300 5600 4600 5600
Wire Wire Line
	4600 4000 5450 4000
Text Label 5450 4000 2    50   ~ 0
MOTOR_INPUT
Text Notes 950  4400 0    50   ~ 0
(Por defeito este circuito está desativado)
Text HLabel 1950 5100 0    50   Input ~ 0
BATCHSW_VGS
Wire Wire Line
	1950 5100 2800 5100
Text Notes 900  850  0    50   ~ 0
Controlo / Switches Electrónicos
Wire Notes Line
	800  700  5600 700 
Wire Notes Line
	5600 700  5600 5800
Wire Notes Line
	5600 5800 800  5800
Wire Notes Line
	800  5800 800  700 
Wire Notes Line
	6650 900  6650 3700
Wire Notes Line
	6650 3700 10150 3700
Wire Notes Line
	10150 3700 10150 900 
Wire Notes Line
	10150 900  6650 900 
Text Notes 8750 2350 0    50   ~ 0
Controlo Operação Motor
$Comp
L TL972QDRQ1:TL972QDRQ1 U5
U 1 1 61DF0BCB
P 3900 6700
F 0 "U5" H 4100 6950 50  0000 L CNN
F 1 "TL972QDRQ1" H 4100 6850 50  0000 L CNN
F 2 "SnapEDA_Sym2:SOIC127P599X175-8N" H 3500 5900 50  0001 L BNN
F 3 "" H 3900 6700 50  0001 L BNN
	1    3900 6700
	1    0    0    -1  
$EndComp
Text HLabel 3750 6000 0    50   Input ~ 0
BAT_SOURCE
Wire Wire Line
	3750 6000 3950 6000
Wire Wire Line
	3950 6000 3950 6350
Text HLabel 3200 6600 0    50   Input ~ 0
+CMP
Text HLabel 3200 6800 0    50   Input ~ 0
-CMP
Wire Wire Line
	3200 6800 3550 6800
Wire Wire Line
	3200 6600 3550 6600
Wire Wire Line
	4450 6700 5350 6700
Text Label 5350 6700 2    50   ~ 0
SWITCH_BAT_CHARGE
Text Label 1950 4550 0    50   ~ 0
SWITCH_BAT_CHARGE
$Comp
L power:GND #PWR08
U 1 1 61DF5E2D
P 3950 7250
F 0 "#PWR08" H 3950 7000 50  0001 C CNN
F 1 "GND" H 3955 7077 50  0000 C CNN
F 2 "" H 3950 7250 50  0001 C CNN
F 3 "" H 3950 7250 50  0001 C CNN
	1    3950 7250
	1    0    0    -1  
$EndComp
Wire Wire Line
	3950 7050 3950 7250
Text Notes 1100 6800 0    50   ~ 0
Complemento para o circuito que ativa\ne desativa o carregamento da Bateria\n(Está desativado por defeito)\n                          ———————————>
$Comp
L Device:D D20
U 1 1 61E2C2E5
P 2900 4550
F 0 "D20" H 2900 4333 50  0000 C CNN
F 1 "D" H 2900 4424 50  0000 C CNN
F 2 "Diode_SMD:D_SOD-523" H 2900 4550 50  0001 C CNN
F 3 "https://pt.mouser.com/new/rohm-semiconductor/rohm-fastrecovery-diodes/" H 2900 4550 50  0001 C CNN
	1    2900 4550
	-1   0    0    1   
$EndComp
Wire Wire Line
	1950 4550 2750 4550
Wire Wire Line
	3050 4550 3100 4550
Wire Wire Line
	3050 2000 3050 2450
$Comp
L Device:Q_NMOS_DGS Q1
U 1 1 61F09FB4
P 2950 1800
F 0 "Q1" H 3154 1846 50  0000 L CNN
F 1 "Switch Painel" H 3154 1755 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23-2" H 3150 1900 50  0001 C CNN
F 3 "~" H 2950 1800 50  0001 C CNN
	1    2950 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	3100 3550 3100 4000
$Comp
L Device:Q_NMOS_DGS Q2
U 1 1 61F0B220
P 3000 3350
F 0 "Q2" H 3205 3396 50  0000 L CNN
F 1 "Switch Bateria" H 3205 3305 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23-2" H 3200 3450 50  0001 C CNN
F 3 "~" H 3000 3350 50  0001 C CNN
	1    3000 3350
	1    0    0    -1  
$EndComp
$Comp
L Device:Q_NMOS_DGS Q3
U 1 1 61F0D4F6
P 3000 5100
F 0 "Q3" H 3204 5146 50  0000 L CNN
F 1 "Switch Ch Bat" H 3204 5055 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23-2" H 3200 5200 50  0001 C CNN
F 3 "~" H 3000 5100 50  0001 C CNN
	1    3000 5100
	1    0    0    -1  
$EndComp
Wire Wire Line
	3100 5300 3100 5600
Wire Wire Line
	3100 5600 3850 5600
Wire Wire Line
	3850 4550 3850 4950
Wire Wire Line
	3850 5250 3850 5600
Connection ~ 3850 5600
Wire Wire Line
	3850 5600 4000 5600
$Comp
L Connector:Conn_01x02_Male J9
U 1 1 6206BE6C
P 3500 4350
F 0 "J9" V 3400 4250 50  0000 L CNN
F 1 "Hard Activate Jumper" V 3550 4400 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 3500 4350 50  0001 C CNN
F 3 "~" H 3500 4350 50  0001 C CNN
	1    3500 4350
	0    1    1    0   
$EndComp
Wire Wire Line
	3100 4550 3400 4550
Connection ~ 3100 4550
Wire Wire Line
	3500 4550 3850 4550
$Comp
L Connector:Conn_01x02_Male J15
U 1 1 61D35F29
P 7100 1800
F 0 "J15" H 7200 1550 50  0000 R CNN
F 1 "Monitor Corrente Motor" V 7350 2150 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 7100 1800 50  0001 C CNN
F 3 "~" H 7100 1800 50  0001 C CNN
	1    7100 1800
	-1   0    0    1   
$EndComp
Wire Wire Line
	6900 1800 6900 2200
Connection ~ 6900 2200
Wire Wire Line
	6900 1400 6900 1700
$EndSCHEMATC

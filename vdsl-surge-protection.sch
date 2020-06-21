EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "VDSL surge protection"
Date "2020-06-21"
Rev ""
Comp "(C) by Electronic Eel"
Comment1 "CC-BY-4.0"
Comment2 "https://github.com/electroniceel/vdsl-surge-protection"
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Connector:RJ45_Shielded J2
U 1 1 5E70CC60
P 1300 3750
F 0 "J2" H 1357 4417 50  0000 C CNN
F 1 "TE 1-406541-1" H 1357 4326 50  0000 C CNN
F 2 "modules:CONN_1-406541-1" V 1300 3775 50  0001 C CNN
F 3 "~" V 1300 3775 50  0001 C CNN
	1    1300 3750
	1    0    0    -1  
$EndComp
$Comp
L Connector:RJ45_Shielded J3
U 1 1 5E70E5E9
P 9100 3850
F 0 "J3" H 8770 3889 50  0000 R CNN
F 1 "TE 1-406541-1" H 8770 3798 50  0000 R CNN
F 2 "modules:CONN_1-406541-1" V 9100 3875 50  0001 C CNN
F 3 "~" V 9100 3875 50  0001 C CNN
	1    9100 3850
	-1   0    0    -1  
$EndComp
$Comp
L power:Earth_Protective #PWR04
U 1 1 5E7130B9
P 1300 4350
F 0 "#PWR04" H 1550 4100 50  0001 C CNN
F 1 "Earth_Protective" H 1750 4200 50  0001 C CNN
F 2 "" H 1300 4250 50  0001 C CNN
F 3 "~" H 1300 4250 50  0001 C CNN
	1    1300 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	1300 4350 1300 4250
$Comp
L power:Earth_Protective #PWR05
U 1 1 5E713DCA
P 9100 4400
F 0 "#PWR05" H 9350 4150 50  0001 C CNN
F 1 "Earth_Protective" H 9550 4250 50  0001 C CNN
F 2 "" H 9100 4300 50  0001 C CNN
F 3 "~" H 9100 4300 50  0001 C CNN
	1    9100 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	9100 4400 9100 4350
$Comp
L Device:Fuse F1
U 1 1 5E71482D
P 2450 3350
F 0 "F1" V 2253 3350 50  0000 C CNN
F 1 "SF-3812TM200T-2" V 2344 3350 50  0000 C CNN
F 2 "modules:Fuse_3812_HandSolder" V 2380 3350 50  0001 C CNN
F 3 "~" H 2450 3350 50  0001 C CNN
	1    2450 3350
	0    1    1    0   
$EndComp
$Comp
L Device:Fuse F2
U 1 1 5E714BFA
P 2450 4050
F 0 "F2" V 2253 4050 50  0000 C CNN
F 1 "SF-3812TM200T-2" V 2344 4050 50  0000 C CNN
F 2 "modules:Fuse_3812_HandSolder" V 2380 4050 50  0001 C CNN
F 3 "~" H 2450 4050 50  0001 C CNN
	1    2450 4050
	0    1    1    0   
$EndComp
Wire Wire Line
	1700 3750 1950 3750
Wire Wire Line
	1700 3650 1950 3650
NoConn ~ 1700 3350
NoConn ~ 1700 3450
NoConn ~ 1700 3550
NoConn ~ 1700 3850
NoConn ~ 1700 3950
NoConn ~ 1700 4050
NoConn ~ 8700 3450
NoConn ~ 8700 3550
NoConn ~ 8700 3650
NoConn ~ 8700 3950
NoConn ~ 8700 4050
NoConn ~ 8700 4150
$Comp
L gdt:GDT_3pin GDT1
U 1 1 5E7183C7
P 3500 3700
F 0 "GDT1" H 3359 3746 50  0000 R CNN
F 1 "2020-15T-C2FLF" H 3359 3655 50  0000 R CNN
F 2 "modules:2020-xxT-C2x" H 3500 3850 60  0001 C CNN
F 3 "" H 3500 3850 60  0000 C CNN
	1    3500 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	1950 3650 1950 3350
Wire Wire Line
	1950 3350 2300 3350
Wire Wire Line
	1950 3750 1950 4050
Wire Wire Line
	1950 4050 2300 4050
$Comp
L power:Earth_Protective #PWR02
U 1 1 5E71BEB8
P 3750 3700
F 0 "#PWR02" H 4000 3450 50  0001 C CNN
F 1 "Earth_Protective" H 4200 3550 50  0001 C CNN
F 2 "" H 3750 3600 50  0001 C CNN
F 3 "~" H 3750 3600 50  0001 C CNN
	1    3750 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	3650 3700 3750 3700
Wire Wire Line
	2600 3350 3500 3350
Wire Wire Line
	3500 3350 3500 3550
Wire Wire Line
	2600 4050 3500 4050
Wire Wire Line
	3500 4050 3500 3850
$Comp
L Bourns_TBU:TBU-CA U1
U 1 1 5E71CE17
P 4450 3350
F 0 "U1" H 4450 3665 50  0000 C CNN
F 1 "TBU-CA085-500-WH" H 4450 3574 50  0000 C CNN
F 2 "modules:TBU-CA" H 4450 3350 50  0001 C CNN
F 3 "" H 4450 3350 50  0001 C CNN
	1    4450 3350
	1    0    0    -1  
$EndComp
$Comp
L Bourns_TBU:TBU-CA U2
U 1 1 5E71D152
P 4450 4050
F 0 "U2" H 4450 4365 50  0000 C CNN
F 1 "TBU-CA085-500-WH" H 4450 4274 50  0000 C CNN
F 2 "modules:TBU-CA" H 4450 4050 50  0001 C CNN
F 3 "" H 4450 4050 50  0001 C CNN
	1    4450 4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	3500 3350 4000 3350
Connection ~ 3500 3350
Wire Wire Line
	4000 4050 3500 4050
Connection ~ 3500 4050
$Comp
L Device:D_TVS D3
U 1 1 5E71E413
P 6350 3700
F 0 "D3" H 6350 3800 50  0000 C CNN
F 1 "CDSOD323-T15LC" H 6200 3900 50  0000 C CNN
F 2 "Diode_SMD:D_SOD-323_HandSoldering" H 6350 3700 50  0001 C CNN
F 3 "~" H 6350 3700 50  0001 C CNN
	1    6350 3700
	-1   0    0    1   
$EndComp
$Comp
L Device:D_TVS D4
U 1 1 5E72001B
P 6750 3700
F 0 "D4" H 6750 3484 50  0000 C CNN
F 1 "CDSOD323-T15LC" H 6750 3575 50  0000 C CNN
F 2 "Diode_SMD:D_SOD-323_HandSoldering" H 6750 3700 50  0001 C CNN
F 3 "~" H 6750 3700 50  0001 C CNN
	1    6750 3700
	-1   0    0    1   
$EndComp
$Comp
L power:Earth_Protective #PWR03
U 1 1 5E722025
P 7050 3750
F 0 "#PWR03" H 7300 3500 50  0001 C CNN
F 1 "Earth_Protective" H 7500 3600 50  0001 C CNN
F 2 "" H 7050 3650 50  0001 C CNN
F 3 "~" H 7050 3650 50  0001 C CNN
	1    7050 3750
	1    0    0    -1  
$EndComp
$Comp
L Device:D_TVS D2
U 1 1 5E7231F6
P 5900 3450
F 0 "D2" H 5900 3550 50  0000 C CNN
F 1 "CDSOD323-T15LC" H 5800 3650 50  0000 C CNN
F 2 "Diode_SMD:D_SOD-323_HandSoldering" H 5900 3450 50  0001 C CNN
F 3 "~" H 5900 3450 50  0001 C CNN
	1    5900 3450
	0    -1   -1   0   
$EndComp
$Comp
L Device:D_TVS D1
U 1 1 5E72400D
P 5900 3050
F 0 "D1" H 5900 2950 50  0000 C CNN
F 1 "CDSOD323-T15LC" H 5750 2850 50  0000 C CNN
F 2 "Diode_SMD:D_SOD-323_HandSoldering" H 5900 3050 50  0001 C CNN
F 3 "~" H 5900 3050 50  0001 C CNN
	1    5900 3050
	0    -1   -1   0   
$EndComp
$Comp
L Device:D_TVS D6
U 1 1 5E727AD7
P 5900 4400
F 0 "D6" H 5900 4500 50  0000 C CNN
F 1 "CDSOD323-T15LC" H 5800 4600 50  0000 C CNN
F 2 "Diode_SMD:D_SOD-323_HandSoldering" H 5900 4400 50  0001 C CNN
F 3 "~" H 5900 4400 50  0001 C CNN
	1    5900 4400
	0    -1   -1   0   
$EndComp
$Comp
L Device:D_TVS D5
U 1 1 5E727AE1
P 5900 4000
F 0 "D5" H 5900 3900 50  0000 C CNN
F 1 "CDSOD323-T15LC" H 5750 3800 50  0000 C CNN
F 2 "Diode_SMD:D_SOD-323_HandSoldering" H 5900 4000 50  0001 C CNN
F 3 "~" H 5900 4000 50  0001 C CNN
	1    5900 4000
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4900 3350 5500 3350
Wire Wire Line
	5500 3350 5500 2700
Wire Wire Line
	5500 2700 5900 2700
Wire Wire Line
	6300 2700 6300 3350
Wire Wire Line
	6300 3350 8350 3350
Wire Wire Line
	8350 3350 8350 3750
Wire Wire Line
	8350 3750 8700 3750
Wire Wire Line
	4900 4050 5500 4050
Wire Wire Line
	5500 4050 5500 4950
Wire Wire Line
	5500 4950 5900 4950
Wire Wire Line
	6300 4950 6300 4250
Wire Wire Line
	6300 4250 8350 4250
Wire Wire Line
	8350 4250 8350 3850
Wire Wire Line
	8350 3850 8700 3850
Wire Wire Line
	5900 2900 5900 2700
Connection ~ 5900 2700
Wire Wire Line
	5900 2700 6300 2700
Wire Wire Line
	5900 3200 5900 3300
Wire Wire Line
	5900 3850 5900 3700
Wire Wire Line
	5900 4150 5900 4250
Wire Wire Line
	5900 4550 5900 4950
Connection ~ 5900 4950
Wire Wire Line
	5900 4950 6300 4950
Wire Wire Line
	6200 3700 5900 3700
Connection ~ 5900 3700
Wire Wire Line
	5900 3700 5900 3600
Wire Wire Line
	6500 3700 6600 3700
Wire Wire Line
	6900 3700 7050 3700
Wire Wire Line
	7050 3700 7050 3750
Text Notes 6450 3100 0    50   ~ 0
TVS breakdown (1 mA)\nat about 80 VDC\nbetween each conductor and PE\nor between the two conductors
Text Notes 4100 4600 0    50   ~ 0
TBUs disconnect at about \n1 A current flowing (due to TVS),\nprotection up to 850 VDC
Text Notes 3250 3200 0    50   ~ 0
GDT sparkover \nminimum 60 V\ntypical 150 V
$Comp
L power:Earth_Protective #PWR01
U 1 1 5E73CAA2
P 6700 1600
F 0 "#PWR01" H 6950 1350 50  0001 C CNN
F 1 "Earth_Protective" H 7150 1450 50  0001 C CNN
F 2 "" H 6700 1500 50  0001 C CNN
F 3 "~" H 6700 1500 50  0001 C CNN
	1    6700 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	6700 1600 6700 1500
Text Notes 9500 4300 0    50   ~ 0
Alternative:\nConnfly DS1128-06-S8B0P-X
$Comp
L Mechanical:MountingHole_Pad H3
U 1 1 5E745D86
P 2450 5950
F 0 "H3" H 2550 5999 50  0000 L CNN
F 1 "MountingHole_Pad" H 2550 5908 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.7mm_Pad_Via" H 2450 5950 50  0001 C CNN
F 3 "~" H 2450 5950 50  0001 C CNN
	1    2450 5950
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad H1
U 1 1 5E746446
P 2450 5550
F 0 "H1" H 2550 5599 50  0000 L CNN
F 1 "MountingHole_Pad" H 2550 5508 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.7mm_Pad_Via" H 2450 5550 50  0001 C CNN
F 3 "~" H 2450 5550 50  0001 C CNN
	1    2450 5550
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad H2
U 1 1 5E747767
P 3400 5550
F 0 "H2" H 3500 5599 50  0000 L CNN
F 1 "MountingHole_Pad" H 3500 5508 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.7mm_Pad_Via" H 3400 5550 50  0001 C CNN
F 3 "~" H 3400 5550 50  0001 C CNN
	1    3400 5550
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad H4
U 1 1 5E74810B
P 3400 5950
F 0 "H4" H 3500 5999 50  0000 L CNN
F 1 "MountingHole_Pad" H 3500 5908 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.7mm_Pad_Via" H 3400 5950 50  0001 C CNN
F 3 "~" H 3400 5950 50  0001 C CNN
	1    3400 5950
	1    0    0    -1  
$EndComp
$Comp
L power:Earth_Protective #PWR06
U 1 1 5E74851E
P 1950 5800
F 0 "#PWR06" H 2200 5550 50  0001 C CNN
F 1 "Earth_Protective" H 2400 5650 50  0001 C CNN
F 2 "" H 1950 5700 50  0001 C CNN
F 3 "~" H 1950 5700 50  0001 C CNN
	1    1950 5800
	1    0    0    -1  
$EndComp
Wire Wire Line
	2450 5750 2250 5750
Wire Wire Line
	1950 5750 1950 5800
Wire Wire Line
	2450 5650 2450 5750
Wire Wire Line
	2450 5750 3400 5750
Wire Wire Line
	3400 5750 3400 5650
Connection ~ 2450 5750
Wire Wire Line
	3400 6050 3400 6150
Wire Wire Line
	3400 6150 2450 6150
Wire Wire Line
	2450 6150 2450 6050
Wire Wire Line
	2450 6150 2250 6150
Wire Wire Line
	2250 6150 2250 5750
Connection ~ 2450 6150
Connection ~ 2250 5750
Wire Wire Line
	2250 5750 1950 5750
Text Notes 2200 6650 0    50   ~ 0
Case: Hammond 1593LBK
Wire Wire Line
	6700 1500 6950 1500
Wire Wire Line
	6700 1500 6700 1400
Wire Wire Line
	6700 1400 6950 1400
Connection ~ 6700 1500
Text Notes 7200 1850 0    50   ~ 0
Compatible Pluggable Screw Terminal:\nMetz 31249102
Text Notes 850  4100 1    50   ~ 0
To phone company\n(unprotected side)
Text Notes 9600 3700 0    50   ~ 0
To modem\n(protected side)
$Comp
L Connector:Conn_01x02_Male J1
U 1 1 5EEF602B
P 7150 1400
F 0 "J1" H 7122 1374 50  0000 R CNN
F 1 "Metz 31230102" H 7122 1283 50  0000 R CNN
F 2 "modules:mstba_2,5-2-g-5,08" H 7150 1400 50  0001 C CNN
F 3 "~" H 7150 1400 50  0001 C CNN
	1    7150 1400
	-1   0    0    -1  
$EndComp
$Comp
L Graphic:Logo_Open_Hardware_Small #LOGO?
U 1 1 5EEF8586
P 10300 6900
F 0 "#LOGO?" H 10300 7175 50  0001 C CNN
F 1 "Logo_Open_Hardware_Small" H 10300 6675 50  0001 C CNN
F 2 "" H 10300 6900 50  0001 C CNN
F 3 "~" H 10300 6900 50  0001 C CNN
	1    10300 6900
	1    0    0    -1  
$EndComp
$EndSCHEMATC

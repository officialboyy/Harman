
;CodeVisionAVR C Compiler V3.52 
;(C) Copyright 1998-2023 Pavel Haiduc, HP InfoTech S.R.L.
;http://www.hpinfotech.ro

;Build configuration    : Debug
;Chip type              : ATmega128A
;Program type           : Application
;Clock frequency        : 16.000000 MHz
;Memory model           : Small
;Optimize for           : Size
;(s)printf features     : int, width
;(s)scanf features      : int, width
;External RAM size      : 0
;Data Stack size        : 1024 byte(s)
;Heap size              : 0 byte(s)
;Promote 'char' to 'int': Yes
;'char' is unsigned     : Yes
;8 bit enums            : Yes
;Global 'const' stored in FLASH: No
;Enhanced function parameter passing: Mode 2
;Enhanced core instructions: On
;Automatic register allocation for global variables: On
;Smart register allocation: On

	#define _MODEL_SMALL_

	#pragma AVRPART ADMIN PART_NAME ATmega128A
	#pragma AVRPART MEMORY PROG_FLASH 131072
	#pragma AVRPART MEMORY EEPROM 4096
	#pragma AVRPART MEMORY INT_SRAM SIZE 4096
	#pragma AVRPART MEMORY INT_SRAM START_ADDR 0x100

	#define CALL_SUPPORTED 1

	.LISTMAC
	.EQU UDRE=0x5
	.EQU RXC=0x7
	.EQU USR=0xB
	.EQU UDR=0xC
	.EQU SPSR=0xE
	.EQU SPDR=0xF
	.EQU EERE=0x0
	.EQU EEWE=0x1
	.EQU EEMWE=0x2
	.EQU EECR=0x1C
	.EQU EEDR=0x1D
	.EQU EEARL=0x1E
	.EQU EEARH=0x1F
	.EQU WDTCR=0x21
	.EQU MCUCR=0x35
	.EQU SPMCSR=0x68
	.EQU RAMPZ=0x3B
	.EQU SPL=0x3D
	.EQU SPH=0x3E
	.EQU SREG=0x3F
	.EQU XMCRA=0x6D
	.EQU XMCRB=0x6C

	.DEF R0X0=R0
	.DEF R0X1=R1
	.DEF R0X2=R2
	.DEF R0X3=R3
	.DEF R0X4=R4
	.DEF R0X5=R5
	.DEF R0X6=R6
	.DEF R0X7=R7
	.DEF R0X8=R8
	.DEF R0X9=R9
	.DEF R0XA=R10
	.DEF R0XB=R11
	.DEF R0XC=R12
	.DEF R0XD=R13
	.DEF R0XE=R14
	.DEF R0XF=R15
	.DEF R0X10=R16
	.DEF R0X11=R17
	.DEF R0X12=R18
	.DEF R0X13=R19
	.DEF R0X14=R20
	.DEF R0X15=R21
	.DEF R0X16=R22
	.DEF R0X17=R23
	.DEF R0X18=R24
	.DEF R0X19=R25
	.DEF R0X1A=R26
	.DEF R0X1B=R27
	.DEF R0X1C=R28
	.DEF R0X1D=R29
	.DEF R0X1E=R30
	.DEF R0X1F=R31

	.EQU __SRAM_START=0x0100
	.EQU __SRAM_END=0x10FF
	.EQU __DSTACK_SIZE=0x0400
	.EQU __HEAP_SIZE=0x0000
	.EQU __CLEAR_SRAM_SIZE=__SRAM_END-__SRAM_START+1

	.EQU __FLASH_PAGE_SIZE=0x80

	.MACRO __CPD1N
	CPI  R30,LOW(@0)
	LDI  R26,HIGH(@0)
	CPC  R31,R26
	LDI  R26,BYTE3(@0)
	CPC  R22,R26
	LDI  R26,BYTE4(@0)
	CPC  R23,R26
	.ENDM

	.MACRO __CPD2N
	CPI  R26,LOW(@0)
	LDI  R30,HIGH(@0)
	CPC  R27,R30
	LDI  R30,BYTE3(@0)
	CPC  R24,R30
	LDI  R30,BYTE4(@0)
	CPC  R25,R30
	.ENDM

	.MACRO __CPWRR
	CP   R@0,R@2
	CPC  R@1,R@3
	.ENDM

	.MACRO __CPWRN
	CPI  R@0,LOW(@2)
	LDI  R30,HIGH(@2)
	CPC  R@1,R30
	.ENDM

	.MACRO __ADDB1MN
	SUBI R30,LOW(-@0-(@1))
	.ENDM

	.MACRO __ADDB2MN
	SUBI R26,LOW(-@0-(@1))
	.ENDM

	.MACRO __ADDW1MN
	SUBI R30,LOW(-@0-(@1))
	SBCI R31,HIGH(-@0-(@1))
	.ENDM

	.MACRO __ADDW2MN
	SUBI R26,LOW(-@0-(@1))
	SBCI R27,HIGH(-@0-(@1))
	.ENDM

	.MACRO __ADDW1FN
	SUBI R30,LOW(-2*@0-(@1))
	SBCI R31,HIGH(-2*@0-(@1))
	.ENDM

	.MACRO __ADDD1FN
	SUBI R30,LOW(-2*@0-(@1))
	SBCI R31,HIGH(-2*@0-(@1))
	SBCI R22,BYTE3(-2*@0-(@1))
	.ENDM

	.MACRO __ADDD1N
	SUBI R30,LOW(-@0)
	SBCI R31,HIGH(-@0)
	SBCI R22,BYTE3(-@0)
	SBCI R23,BYTE4(-@0)
	.ENDM

	.MACRO __ADDD2N
	SUBI R26,LOW(-@0)
	SBCI R27,HIGH(-@0)
	SBCI R24,BYTE3(-@0)
	SBCI R25,BYTE4(-@0)
	.ENDM

	.MACRO __SUBD1N
	SUBI R30,LOW(@0)
	SBCI R31,HIGH(@0)
	SBCI R22,BYTE3(@0)
	SBCI R23,BYTE4(@0)
	.ENDM

	.MACRO __SUBD2N
	SUBI R26,LOW(@0)
	SBCI R27,HIGH(@0)
	SBCI R24,BYTE3(@0)
	SBCI R25,BYTE4(@0)
	.ENDM

	.MACRO __ANDBMNN
	LDS  R30,@0+(@1)
	ANDI R30,LOW(@2)
	STS  @0+(@1),R30
	.ENDM

	.MACRO __ANDWMNN
	LDS  R30,@0+(@1)
	ANDI R30,LOW(@2)
	STS  @0+(@1),R30
	LDS  R30,@0+(@1)+1
	ANDI R30,HIGH(@2)
	STS  @0+(@1)+1,R30
	.ENDM

	.MACRO __ANDD1N
	ANDI R30,LOW(@0)
	ANDI R31,HIGH(@0)
	ANDI R22,BYTE3(@0)
	ANDI R23,BYTE4(@0)
	.ENDM

	.MACRO __ANDD2N
	ANDI R26,LOW(@0)
	ANDI R27,HIGH(@0)
	ANDI R24,BYTE3(@0)
	ANDI R25,BYTE4(@0)
	.ENDM

	.MACRO __ORBMNN
	LDS  R30,@0+(@1)
	ORI  R30,LOW(@2)
	STS  @0+(@1),R30
	.ENDM

	.MACRO __ORWMNN
	LDS  R30,@0+(@1)
	ORI  R30,LOW(@2)
	STS  @0+(@1),R30
	LDS  R30,@0+(@1)+1
	ORI  R30,HIGH(@2)
	STS  @0+(@1)+1,R30
	.ENDM

	.MACRO __ORD1N
	ORI  R30,LOW(@0)
	ORI  R31,HIGH(@0)
	ORI  R22,BYTE3(@0)
	ORI  R23,BYTE4(@0)
	.ENDM

	.MACRO __ORD2N
	ORI  R26,LOW(@0)
	ORI  R27,HIGH(@0)
	ORI  R24,BYTE3(@0)
	ORI  R25,BYTE4(@0)
	.ENDM

	.MACRO __DELAY_USB
	LDI  R24,LOW(@0)
__DELAY_USB_LOOP:
	DEC  R24
	BRNE __DELAY_USB_LOOP
	.ENDM

	.MACRO __DELAY_USW
	LDI  R24,LOW(@0)
	LDI  R25,HIGH(@0)
__DELAY_USW_LOOP:
	SBIW R24,1
	BRNE __DELAY_USW_LOOP
	.ENDM

	.MACRO __GETW1P
	LD   R30,X+
	LD   R31,X
	SBIW R26,1
	.ENDM

	.MACRO __GETD1S
	LDD  R30,Y+@0
	LDD  R31,Y+@0+1
	LDD  R22,Y+@0+2
	LDD  R23,Y+@0+3
	.ENDM

	.MACRO __GETD2S
	LDD  R26,Y+@0
	LDD  R27,Y+@0+1
	LDD  R24,Y+@0+2
	LDD  R25,Y+@0+3
	.ENDM

	.MACRO __GETD1P_INC
	LD   R30,X+
	LD   R31,X+
	LD   R22,X+
	LD   R23,X+
	.ENDM

	.MACRO __GETD1P_DEC
	LD   R23,-X
	LD   R22,-X
	LD   R31,-X
	LD   R30,-X
	.ENDM

	.MACRO __PUTDP1
	ST   X+,R30
	ST   X+,R31
	ST   X+,R22
	ST   X,R23
	.ENDM

	.MACRO __PUTDP1_DEC
	ST   -X,R23
	ST   -X,R22
	ST   -X,R31
	ST   -X,R30
	.ENDM

	.MACRO __PUTD1S
	STD  Y+@0,R30
	STD  Y+@0+1,R31
	STD  Y+@0+2,R22
	STD  Y+@0+3,R23
	.ENDM

	.MACRO __PUTD2S
	STD  Y+@0,R26
	STD  Y+@0+1,R27
	STD  Y+@0+2,R24
	STD  Y+@0+3,R25
	.ENDM

	.MACRO __PUTDZ2
	STD  Z+@0,R26
	STD  Z+@0+1,R27
	STD  Z+@0+2,R24
	STD  Z+@0+3,R25
	.ENDM

	.MACRO __CLRD1S
	STD  Y+@0,R30
	STD  Y+@0+1,R30
	STD  Y+@0+2,R30
	STD  Y+@0+3,R30
	.ENDM

	.MACRO __CPD10
	SBIW R30,0
	SBCI R22,0
	SBCI R23,0
	.ENDM

	.MACRO __CPD20
	SBIW R26,0
	SBCI R24,0
	SBCI R25,0
	.ENDM

	.MACRO __ADDD12
	ADD  R30,R26
	ADC  R31,R27
	ADC  R22,R24
	ADC  R23,R25
	.ENDM

	.MACRO __ADDD21
	ADD  R26,R30
	ADC  R27,R31
	ADC  R24,R22
	ADC  R25,R23
	.ENDM

	.MACRO __SUBD12
	SUB  R30,R26
	SBC  R31,R27
	SBC  R22,R24
	SBC  R23,R25
	.ENDM

	.MACRO __SUBD21
	SUB  R26,R30
	SBC  R27,R31
	SBC  R24,R22
	SBC  R25,R23
	.ENDM

	.MACRO __ANDD12
	AND  R30,R26
	AND  R31,R27
	AND  R22,R24
	AND  R23,R25
	.ENDM

	.MACRO __ORD12
	OR   R30,R26
	OR   R31,R27
	OR   R22,R24
	OR   R23,R25
	.ENDM

	.MACRO __XORD12
	EOR  R30,R26
	EOR  R31,R27
	EOR  R22,R24
	EOR  R23,R25
	.ENDM

	.MACRO __XORD21
	EOR  R26,R30
	EOR  R27,R31
	EOR  R24,R22
	EOR  R25,R23
	.ENDM

	.MACRO __COMD1
	COM  R30
	COM  R31
	COM  R22
	COM  R23
	.ENDM

	.MACRO __MULD2_2
	LSL  R26
	ROL  R27
	ROL  R24
	ROL  R25
	.ENDM

	.MACRO __LSRD1
	LSR  R23
	ROR  R22
	ROR  R31
	ROR  R30
	.ENDM

	.MACRO __LSLD1
	LSL  R30
	ROL  R31
	ROL  R22
	ROL  R23
	.ENDM

	.MACRO __ASRB4
	ASR  R30
	ASR  R30
	ASR  R30
	ASR  R30
	.ENDM

	.MACRO __ASRW8
	MOV  R30,R31
	CLR  R31
	SBRC R30,7
	SER  R31
	.ENDM

	.MACRO __LSRD16
	MOV  R30,R22
	MOV  R31,R23
	LDI  R22,0
	LDI  R23,0
	.ENDM

	.MACRO __LSLD16
	MOV  R22,R30
	MOV  R23,R31
	LDI  R30,0
	LDI  R31,0
	.ENDM

	.MACRO __CWD1
	MOV  R22,R31
	ADD  R22,R22
	SBC  R22,R22
	MOV  R23,R22
	.ENDM

	.MACRO __CWD2
	MOV  R24,R27
	ADD  R24,R24
	SBC  R24,R24
	MOV  R25,R24
	.ENDM

	.MACRO __SETMSD1
	SER  R31
	SER  R22
	SER  R23
	.ENDM

	.MACRO __ADDW1R15
	CLR  R0
	ADD  R30,R15
	ADC  R31,R0
	.ENDM

	.MACRO __ADDW2R15
	CLR  R0
	ADD  R26,R15
	ADC  R27,R0
	.ENDM

	.MACRO __EQB12
	CP   R30,R26
	LDI  R30,1
	BREQ PC+2
	CLR  R30
	.ENDM

	.MACRO __NEB12
	CP   R30,R26
	LDI  R30,1
	BRNE PC+2
	CLR  R30
	.ENDM

	.MACRO __LEB12
	CP   R30,R26
	LDI  R30,1
	BRGE PC+2
	CLR  R30
	.ENDM

	.MACRO __GEB12
	CP   R26,R30
	LDI  R30,1
	BRGE PC+2
	CLR  R30
	.ENDM

	.MACRO __LTB12
	CP   R26,R30
	LDI  R30,1
	BRLT PC+2
	CLR  R30
	.ENDM

	.MACRO __GTB12
	CP   R30,R26
	LDI  R30,1
	BRLT PC+2
	CLR  R30
	.ENDM

	.MACRO __LEB12U
	CP   R30,R26
	LDI  R30,1
	BRSH PC+2
	CLR  R30
	.ENDM

	.MACRO __GEB12U
	CP   R26,R30
	LDI  R30,1
	BRSH PC+2
	CLR  R30
	.ENDM

	.MACRO __LTB12U
	CP   R26,R30
	LDI  R30,1
	BRLO PC+2
	CLR  R30
	.ENDM

	.MACRO __GTB12U
	CP   R30,R26
	LDI  R30,1
	BRLO PC+2
	CLR  R30
	.ENDM

	.MACRO __CPW01
	CLR  R0
	CP   R0,R30
	CPC  R0,R31
	.ENDM

	.MACRO __CPW02
	CLR  R0
	CP   R0,R26
	CPC  R0,R27
	.ENDM

	.MACRO __CPD12
	CP   R30,R26
	CPC  R31,R27
	CPC  R22,R24
	CPC  R23,R25
	.ENDM

	.MACRO __CPD21
	CP   R26,R30
	CPC  R27,R31
	CPC  R24,R22
	CPC  R25,R23
	.ENDM

	.MACRO __BSTB1
	CLT
	TST  R30
	BREQ PC+2
	SET
	.ENDM

	.MACRO __LNEGB1
	TST  R30
	LDI  R30,1
	BREQ PC+2
	CLR  R30
	.ENDM

	.MACRO __LNEGW1
	OR   R30,R31
	LDI  R30,1
	BREQ PC+2
	LDI  R30,0
	.ENDM

	.MACRO __POINTB1MN
	LDI  R30,LOW(@0+(@1))
	.ENDM

	.MACRO __POINTW1MN
	LDI  R30,LOW(@0+(@1))
	LDI  R31,HIGH(@0+(@1))
	.ENDM

	.MACRO __POINTD1M
	LDI  R30,LOW(@0)
	LDI  R31,HIGH(@0)
	LDI  R22,BYTE3(@0)
	LDI  R23,BYTE4(@0)
	.ENDM

	.MACRO __POINTW1FN
	LDI  R30,LOW(2*@0+(@1))
	LDI  R31,HIGH(2*@0+(@1))
	.ENDM

	.MACRO __POINTD1FN
	LDI  R30,LOW(2*@0+(@1))
	LDI  R31,HIGH(2*@0+(@1))
	LDI  R22,BYTE3(2*@0+(@1))
	LDI  R23,BYTE4(2*@0+(@1))
	.ENDM

	.MACRO __POINTB2MN
	LDI  R26,LOW(@0+(@1))
	.ENDM

	.MACRO __POINTW2MN
	LDI  R26,LOW(@0+(@1))
	LDI  R27,HIGH(@0+(@1))
	.ENDM

	.MACRO __POINTD2M
	LDI  R26,LOW(@0)
	LDI  R27,HIGH(@0)
	LDI  R24,BYTE3(@0)
	LDI  R25,BYTE4(@0)
	.ENDM

	.MACRO __POINTW2FN
	LDI  R26,LOW(2*@0+(@1))
	LDI  R27,HIGH(2*@0+(@1))
	.ENDM

	.MACRO __POINTD2FN
	LDI  R26,LOW(2*@0+(@1))
	LDI  R27,HIGH(2*@0+(@1))
	LDI  R24,BYTE3(2*@0+(@1))
	LDI  R25,BYTE4(2*@0+(@1))
	.ENDM

	.MACRO __POINTBRM
	LDI  R@0,LOW(@1)
	.ENDM

	.MACRO __POINTWRM
	LDI  R@0,LOW(@2)
	LDI  R@1,HIGH(@2)
	.ENDM

	.MACRO __POINTBRMN
	LDI  R@0,LOW(@1+(@2))
	.ENDM

	.MACRO __POINTWRMN
	LDI  R@0,LOW(@2+(@3))
	LDI  R@1,HIGH(@2+(@3))
	.ENDM

	.MACRO __POINTWRFN
	LDI  R@0,LOW(@2*2+(@3))
	LDI  R@1,HIGH(@2*2+(@3))
	.ENDM

	.MACRO __GETD1N
	LDI  R30,LOW(@0)
	LDI  R31,HIGH(@0)
	LDI  R22,BYTE3(@0)
	LDI  R23,BYTE4(@0)
	.ENDM

	.MACRO __GETD2N
	LDI  R26,LOW(@0)
	LDI  R27,HIGH(@0)
	LDI  R24,BYTE3(@0)
	LDI  R25,BYTE4(@0)
	.ENDM

	.MACRO __GETB1MN
	LDS  R30,@0+(@1)
	.ENDM

	.MACRO __GETB1HMN
	LDS  R31,@0+(@1)
	.ENDM

	.MACRO __GETW1MN
	LDS  R30,@0+(@1)
	LDS  R31,@0+(@1)+1
	.ENDM

	.MACRO __GETD1MN
	LDS  R30,@0+(@1)
	LDS  R31,@0+(@1)+1
	LDS  R22,@0+(@1)+2
	LDS  R23,@0+(@1)+3
	.ENDM

	.MACRO __GETBRMN
	LDS  R@0,@1+(@2)
	.ENDM

	.MACRO __GETWRMN
	LDS  R@0,@2+(@3)
	LDS  R@1,@2+(@3)+1
	.ENDM

	.MACRO __GETWRZ
	LDD  R@0,Z+@2
	LDD  R@1,Z+@2+1
	.ENDM

	.MACRO __GETD2Z
	LDD  R26,Z+@0
	LDD  R27,Z+@0+1
	LDD  R24,Z+@0+2
	LDD  R25,Z+@0+3
	.ENDM

	.MACRO __GETB2MN
	LDS  R26,@0+(@1)
	.ENDM

	.MACRO __GETW2MN
	LDS  R26,@0+(@1)
	LDS  R27,@0+(@1)+1
	.ENDM

	.MACRO __GETD2MN
	LDS  R26,@0+(@1)
	LDS  R27,@0+(@1)+1
	LDS  R24,@0+(@1)+2
	LDS  R25,@0+(@1)+3
	.ENDM

	.MACRO __PUTB1MN
	STS  @0+(@1),R30
	.ENDM

	.MACRO __PUTW1MN
	STS  @0+(@1),R30
	STS  @0+(@1)+1,R31
	.ENDM

	.MACRO __PUTD1MN
	STS  @0+(@1),R30
	STS  @0+(@1)+1,R31
	STS  @0+(@1)+2,R22
	STS  @0+(@1)+3,R23
	.ENDM

	.MACRO __PUTB1EN
	LDI  R26,LOW(@0+(@1))
	LDI  R27,HIGH(@0+(@1))
	CALL __EEPROMWRB
	.ENDM

	.MACRO __PUTW1EN
	LDI  R26,LOW(@0+(@1))
	LDI  R27,HIGH(@0+(@1))
	CALL __EEPROMWRW
	.ENDM

	.MACRO __PUTD1EN
	LDI  R26,LOW(@0+(@1))
	LDI  R27,HIGH(@0+(@1))
	CALL __EEPROMWRD
	.ENDM

	.MACRO __PUTBR0MN
	STS  @0+(@1),R0
	.ENDM

	.MACRO __PUTBMRN
	STS  @0+(@1),R@2
	.ENDM

	.MACRO __PUTWMRN
	STS  @0+(@1),R@2
	STS  @0+(@1)+1,R@3
	.ENDM

	.MACRO __PUTBZR
	STD  Z+@1,R@0
	.ENDM

	.MACRO __PUTWZR
	STD  Z+@2,R@0
	STD  Z+@2+1,R@1
	.ENDM

	.MACRO __GETW1R
	MOV  R30,R@0
	MOV  R31,R@1
	.ENDM

	.MACRO __GETW2R
	MOV  R26,R@0
	MOV  R27,R@1
	.ENDM

	.MACRO __GETWRN
	LDI  R@0,LOW(@2)
	LDI  R@1,HIGH(@2)
	.ENDM

	.MACRO __PUTW1R
	MOV  R@0,R30
	MOV  R@1,R31
	.ENDM

	.MACRO __PUTW2R
	MOV  R@0,R26
	MOV  R@1,R27
	.ENDM

	.MACRO __ADDWRN
	SUBI R@0,LOW(-@2)
	SBCI R@1,HIGH(-@2)
	.ENDM

	.MACRO __ADDWRR
	ADD  R@0,R@2
	ADC  R@1,R@3
	.ENDM

	.MACRO __SUBWRN
	SUBI R@0,LOW(@2)
	SBCI R@1,HIGH(@2)
	.ENDM

	.MACRO __SUBWRR
	SUB  R@0,R@2
	SBC  R@1,R@3
	.ENDM

	.MACRO __ANDWRN
	ANDI R@0,LOW(@2)
	ANDI R@1,HIGH(@2)
	.ENDM

	.MACRO __ANDWRR
	AND  R@0,R@2
	AND  R@1,R@3
	.ENDM

	.MACRO __ORWRN
	ORI  R@0,LOW(@2)
	ORI  R@1,HIGH(@2)
	.ENDM

	.MACRO __ORWRR
	OR   R@0,R@2
	OR   R@1,R@3
	.ENDM

	.MACRO __EORWRR
	EOR  R@0,R@2
	EOR  R@1,R@3
	.ENDM

	.MACRO __GETWRS
	LDD  R@0,Y+@2
	LDD  R@1,Y+@2+1
	.ENDM

	.MACRO __PUTBSR
	STD  Y+@1,R@0
	.ENDM

	.MACRO __PUTWSR
	STD  Y+@2,R@0
	STD  Y+@2+1,R@1
	.ENDM

	.MACRO __MOVEWRR
	MOV  R@0,R@2
	MOV  R@1,R@3
	.ENDM

	.MACRO __INWR
	IN   R@0,@2
	IN   R@1,@2+1
	.ENDM

	.MACRO __OUTWR
	OUT  @2+1,R@1
	OUT  @2,R@0
	.ENDM

	.MACRO __CALL1MN
	LDS  R30,@0+(@1)
	LDS  R31,@0+(@1)+1
	ICALL
	.ENDM

	.MACRO __CALL1FN
	LDI  R30,LOW(2*@0+(@1))
	LDI  R31,HIGH(2*@0+(@1))
	CALL __GETW1PF
	ICALL
	.ENDM

	.MACRO __CALL2EN
	PUSH R26
	PUSH R27
	LDI  R26,LOW(@0+(@1))
	LDI  R27,HIGH(@0+(@1))
	CALL __EEPROMRDW
	POP  R27
	POP  R26
	ICALL
	.ENDM

	.MACRO __CALL2EX
	SUBI R26,LOW(-@0)
	SBCI R27,HIGH(-@0)
	CALL __EEPROMRDD
	ICALL
	.ENDM

	.MACRO __GETW1STACK
	IN   R30,SPL
	IN   R31,SPH
	ADIW R30,@0+1
	LD   R0,Z+
	LD   R31,Z
	MOV  R30,R0
	.ENDM

	.MACRO __GETD1STACK
	IN   R30,SPL
	IN   R31,SPH
	ADIW R30,@0+1
	LD   R0,Z+
	LD   R1,Z+
	LD   R22,Z
	MOVW R30,R0
	.ENDM

	.MACRO __NBST
	BST  R@0,@1
	IN   R30,SREG
	LDI  R31,0x40
	EOR  R30,R31
	OUT  SREG,R30
	.ENDM


	.MACRO __PUTB1SN
	LDD  R26,Y+@0
	LDD  R27,Y+@0+1
	SUBI R26,LOW(-@1)
	SBCI R27,HIGH(-@1)
	ST   X,R30
	.ENDM

	.MACRO __PUTW1SN
	LDD  R26,Y+@0
	LDD  R27,Y+@0+1
	SUBI R26,LOW(-@1)
	SBCI R27,HIGH(-@1)
	ST   X+,R30
	ST   X,R31
	.ENDM

	.MACRO __PUTD1SN
	LDD  R26,Y+@0
	LDD  R27,Y+@0+1
	SUBI R26,LOW(-@1)
	SBCI R27,HIGH(-@1)
	ST   X+,R30
	ST   X+,R31
	ST   X+,R22
	ST   X,R23
	.ENDM

	.MACRO __PUTB1SNS
	LDD  R26,Y+@0
	LDD  R27,Y+@0+1
	ADIW R26,@1
	ST   X,R30
	.ENDM

	.MACRO __PUTW1SNS
	LDD  R26,Y+@0
	LDD  R27,Y+@0+1
	ADIW R26,@1
	ST   X+,R30
	ST   X,R31
	.ENDM

	.MACRO __PUTD1SNS
	LDD  R26,Y+@0
	LDD  R27,Y+@0+1
	ADIW R26,@1
	ST   X+,R30
	ST   X+,R31
	ST   X+,R22
	ST   X,R23
	.ENDM

	.MACRO __PUTB1PMN
	LDS  R26,@0
	LDS  R27,@0+1
	SUBI R26,LOW(-@1)
	SBCI R27,HIGH(-@1)
	ST   X,R30
	.ENDM

	.MACRO __PUTW1PMN
	LDS  R26,@0
	LDS  R27,@0+1
	SUBI R26,LOW(-@1)
	SBCI R27,HIGH(-@1)
	ST   X+,R30
	ST   X,R31
	.ENDM

	.MACRO __PUTD1PMN
	LDS  R26,@0
	LDS  R27,@0+1
	SUBI R26,LOW(-@1)
	SBCI R27,HIGH(-@1)
	ST   X+,R30
	ST   X+,R31
	ST   X+,R22
	ST   X,R23
	.ENDM

	.MACRO __PUTB1PMNS
	LDS  R26,@0
	LDS  R27,@0+1
	ADIW R26,@1
	ST   X,R30
	.ENDM

	.MACRO __PUTW1PMNS
	LDS  R26,@0
	LDS  R27,@0+1
	ADIW R26,@1
	ST   X+,R30
	ST   X,R31
	.ENDM

	.MACRO __PUTD1PMNS
	LDS  R26,@0
	LDS  R27,@0+1
	ADIW R26,@1
	ST   X+,R30
	ST   X+,R31
	ST   X+,R22
	ST   X,R23
	.ENDM

	.MACRO __PUTB1RN
	MOVW R26,R@0
	SUBI R26,LOW(-@1)
	SBCI R27,HIGH(-@1)
	ST   X,R30
	.ENDM

	.MACRO __PUTW1RN
	MOVW R26,R@0
	SUBI R26,LOW(-@1)
	SBCI R27,HIGH(-@1)
	ST   X+,R30
	ST   X,R31
	.ENDM

	.MACRO __PUTD1RN
	MOVW R26,R@0
	SUBI R26,LOW(-@1)
	SBCI R27,HIGH(-@1)
	ST   X+,R30
	ST   X+,R31
	ST   X+,R22
	ST   X,R23
	.ENDM

	.MACRO __PUTB1RNS
	MOVW R26,R@0
	ADIW R26,@1
	ST   X,R30
	.ENDM

	.MACRO __PUTW1RNS
	MOVW R26,R@0
	ADIW R26,@1
	ST   X+,R30
	ST   X,R31
	.ENDM

	.MACRO __PUTD1RNS
	MOVW R26,R@0
	ADIW R26,@1
	ST   X+,R30
	ST   X+,R31
	ST   X+,R22
	ST   X,R23
	.ENDM

	.MACRO __PUTB1RON
	MOV  R26,R@0
	MOV  R27,R@1
	SUBI R26,LOW(-@2)
	SBCI R27,HIGH(-@2)
	ST   X,R30
	.ENDM

	.MACRO __PUTW1RON
	MOV  R26,R@0
	MOV  R27,R@1
	SUBI R26,LOW(-@2)
	SBCI R27,HIGH(-@2)
	ST   X+,R30
	ST   X,R31
	.ENDM

	.MACRO __PUTD1RON
	MOV  R26,R@0
	MOV  R27,R@1
	SUBI R26,LOW(-@2)
	SBCI R27,HIGH(-@2)
	ST   X+,R30
	ST   X+,R31
	ST   X+,R22
	ST   X,R23
	.ENDM

	.MACRO __PUTB1RONS
	MOV  R26,R@0
	MOV  R27,R@1
	ADIW R26,@2
	ST   X,R30
	.ENDM

	.MACRO __PUTW1RONS
	MOV  R26,R@0
	MOV  R27,R@1
	ADIW R26,@2
	ST   X+,R30
	ST   X,R31
	.ENDM

	.MACRO __PUTD1RONS
	MOV  R26,R@0
	MOV  R27,R@1
	ADIW R26,@2
	ST   X+,R30
	ST   X+,R31
	ST   X+,R22
	ST   X,R23
	.ENDM


	.MACRO __GETB1SX
	MOVW R30,R28
	SUBI R30,LOW(-@0)
	SBCI R31,HIGH(-@0)
	LD   R30,Z
	.ENDM

	.MACRO __GETB1HSX
	MOVW R30,R28
	SUBI R30,LOW(-@0)
	SBCI R31,HIGH(-@0)
	LD   R31,Z
	.ENDM

	.MACRO __GETW1SX
	MOVW R30,R28
	SUBI R30,LOW(-@0)
	SBCI R31,HIGH(-@0)
	CALL __GETW1Z
	.ENDM

	.MACRO __GETD1SX
	MOVW R30,R28
	SUBI R30,LOW(-@0)
	SBCI R31,HIGH(-@0)
	CALL __GETD1Z
	.ENDM

	.MACRO __GETB2SX
	MOVW R26,R28
	SUBI R26,LOW(-@0)
	SBCI R27,HIGH(-@0)
	LD   R26,X
	.ENDM

	.MACRO __GETW2SX
	MOVW R26,R28
	SUBI R26,LOW(-@0)
	SBCI R27,HIGH(-@0)
	CALL __GETW2X
	.ENDM

	.MACRO __GETD2SX
	MOVW R26,R28
	SUBI R26,LOW(-@0)
	SBCI R27,HIGH(-@0)
	CALL __GETD2X
	.ENDM

	.MACRO __GETBRSX
	MOVW R30,R28
	SUBI R30,LOW(-@1)
	SBCI R31,HIGH(-@1)
	LD   R@0,Z
	.ENDM

	.MACRO __GETWRSX
	MOVW R30,R28
	SUBI R30,LOW(-@2)
	SBCI R31,HIGH(-@2)
	LD   R@0,Z+
	LD   R@1,Z
	.ENDM

	.MACRO __GETBRSX2
	MOVW R26,R28
	SUBI R26,LOW(-@1)
	SBCI R27,HIGH(-@1)
	LD   R@0,X
	.ENDM

	.MACRO __GETWRSX2
	MOVW R26,R28
	SUBI R26,LOW(-@2)
	SBCI R27,HIGH(-@2)
	LD   R@0,X+
	LD   R@1,X
	.ENDM

	.MACRO __LSLW8SX
	MOVW R30,R28
	SUBI R30,LOW(-@0)
	SBCI R31,HIGH(-@0)
	LD   R31,Z
	CLR  R30
	.ENDM

	.MACRO __PUTB1SX
	MOVW R26,R28
	SUBI R26,LOW(-@0)
	SBCI R27,HIGH(-@0)
	ST   X,R30
	.ENDM

	.MACRO __PUTW1SX
	MOVW R26,R28
	SUBI R26,LOW(-@0)
	SBCI R27,HIGH(-@0)
	ST   X+,R30
	ST   X,R31
	.ENDM

	.MACRO __PUTD1SX
	MOVW R26,R28
	SUBI R26,LOW(-@0)
	SBCI R27,HIGH(-@0)
	ST   X+,R30
	ST   X+,R31
	ST   X+,R22
	ST   X,R23
	.ENDM

	.MACRO __CLRW1SX
	MOVW R26,R28
	SUBI R26,LOW(-@0)
	SBCI R27,HIGH(-@0)
	ST   X+,R30
	ST   X,R30
	.ENDM

	.MACRO __CLRD1SX
	MOVW R26,R28
	SUBI R26,LOW(-@0)
	SBCI R27,HIGH(-@0)
	ST   X+,R30
	ST   X+,R30
	ST   X+,R30
	ST   X,R30
	.ENDM

	.MACRO __PUTB2SX
	MOVW R30,R28
	SUBI R30,LOW(-@0)
	SBCI R31,HIGH(-@0)
	ST   Z,R26
	.ENDM

	.MACRO __PUTW2SX
	MOVW R30,R28
	SUBI R30,LOW(-@0)
	SBCI R31,HIGH(-@0)
	ST   Z+,R26
	ST   Z,R27
	.ENDM

	.MACRO __PUTD2SX
	MOVW R30,R28
	SUBI R30,LOW(-@0)
	SBCI R31,HIGH(-@0)
	ST   Z+,R26
	ST   Z+,R27
	ST   Z+,R24
	ST   Z,R25
	.ENDM

	.MACRO __PUTBSRX
	MOVW R30,R28
	SUBI R30,LOW(-@1)
	SBCI R31,HIGH(-@1)
	ST   Z,R@0
	.ENDM

	.MACRO __PUTWSRX
	MOVW R30,R28
	SUBI R30,LOW(-@2)
	SBCI R31,HIGH(-@2)
	ST   Z+,R@0
	ST   Z,R@1
	.ENDM

	.MACRO __PUTB1SNX
	MOVW R26,R28
	SUBI R26,LOW(-@0)
	SBCI R27,HIGH(-@0)
	LD   R0,X+
	LD   R27,X
	MOV  R26,R0
	SUBI R26,LOW(-@1)
	SBCI R27,HIGH(-@1)
	ST   X,R30
	.ENDM

	.MACRO __PUTW1SNX
	MOVW R26,R28
	SUBI R26,LOW(-@0)
	SBCI R27,HIGH(-@0)
	LD   R0,X+
	LD   R27,X
	MOV  R26,R0
	SUBI R26,LOW(-@1)
	SBCI R27,HIGH(-@1)
	ST   X+,R30
	ST   X,R31
	.ENDM

	.MACRO __PUTD1SNX
	MOVW R26,R28
	SUBI R26,LOW(-@0)
	SBCI R27,HIGH(-@0)
	LD   R0,X+
	LD   R27,X
	MOV  R26,R0
	SUBI R26,LOW(-@1)
	SBCI R27,HIGH(-@1)
	ST   X+,R30
	ST   X+,R31
	ST   X+,R22
	ST   X,R23
	.ENDM

	.MACRO __MULBRR
	MULS R@0,R@1
	MOVW R30,R0
	.ENDM

	.MACRO __MULBRRU
	MUL  R@0,R@1
	MOVW R30,R0
	.ENDM

	.MACRO __MULBRR0
	MULS R@0,R@1
	.ENDM

	.MACRO __MULBRRU0
	MUL  R@0,R@1
	.ENDM

	.MACRO __MULBNWRU
	LDI  R26,@2
	MUL  R26,R@0
	MOVW R30,R0
	MUL  R26,R@1
	ADD  R31,R0
	.ENDM

;NAME DEFINITIONS FOR GLOBAL VARIABLES ALLOCATED TO REGISTERS
	.DEF _TIM0_OVF_FLAG=R5
	.DEF _TIM1_COMP_FLAG=R4
	.DEF _TIMER2_OVF_FLAG_BIT=R7
	.DEF _TIM3_COMP_FLAG=R6
	.DEF _cnt=R9
	.DEF _EINT4_FLAG_BIT=R8
	.DEF _EINT5_FLAG_BIT=R11
	.DEF _EINT6_FLAG_BIT=R10
	.DEF _EINT7_FLAG_BIT=R13

	.CSEG
	.ORG 0x00

;START OF CODE MARKER
__START_OF_CODE:

;INTERRUPT VECTORS
	JMP  __RESET
	JMP  0x00
	JMP  0x00
	JMP  0x00
	JMP  0x00
	JMP  _external_int4
	JMP  _external_int5
	JMP  _external_int6
	JMP  _external_int7
	JMP  0x00
	JMP  _TIMER2_OVF_int
	JMP  0x00
	JMP  _timer_comp1
	JMP  0x00
	JMP  0x00
	JMP  0x00
	JMP  _timer_int0
	JMP  0x00
	JMP  0x00
	JMP  0x00
	JMP  0x00
	JMP  0x00
	JMP  0x00
	JMP  0x00
	JMP  0x00
	JMP  0x00
	JMP  _timer_comp3
	JMP  0x00
	JMP  0x00
	JMP  0x00
	JMP  0x00
	JMP  0x00
	JMP  0x00
	JMP  0x00
	JMP  0x00

;GLOBAL REGISTER VARIABLES INITIALIZATION
__REG_VARS:
	.DB  0x0,0x0,0x0,0x0
	.DB  0x0,0x0,0x0,0x0
	.DB  0x0,0x0

_0x3:
	.DB  0x3F,0x6,0x5B,0x4F,0x66,0x6D,0x7D,0x7
	.DB  0x7F,0x6F
_0x4:
	.DB  0xBF,0x86,0xDB,0xCF,0xE6,0xED,0xFD,0x87
	.DB  0xFF,0xEF

__GLOBAL_INI_TBL:
	.DW  0x0A
	.DW  0x04
	.DW  __REG_VARS*2

	.DW  0x0A
	.DW  _seg_pat
	.DW  _0x3*2

	.DW  0x0A
	.DW  _seg_pat_dot
	.DW  _0x4*2

_0xFFFFFFFF:
	.DW  0

#define __GLOBAL_INI_TBL_PRESENT 1

__RESET:
	CLI
	CLR  R30
	OUT  EECR,R30

;INTERRUPT VECTORS ARE PLACED
;AT THE START OF FLASH
	LDI  R31,1
	OUT  MCUCR,R31
	OUT  MCUCR,R30
	STS  XMCRB,R30

;CLEAR R2-R14
	LDI  R24,(14-2)+1
	LDI  R26,2
	CLR  R27
__CLEAR_REG:
	ST   X+,R30
	DEC  R24
	BRNE __CLEAR_REG

;CLEAR SRAM
	LDI  R24,LOW(__CLEAR_SRAM_SIZE)
	LDI  R25,HIGH(__CLEAR_SRAM_SIZE)
	LDI  R26,LOW(__SRAM_START)
	LDI  R27,HIGH(__SRAM_START)
__CLEAR_SRAM:
	ST   X+,R30
	SBIW R24,1
	BRNE __CLEAR_SRAM

;GLOBAL VARIABLES INITIALIZATION
	LDI  R30,LOW(__GLOBAL_INI_TBL*2)
	LDI  R31,HIGH(__GLOBAL_INI_TBL*2)
__GLOBAL_INI_NEXT:
	LPM  R24,Z+
	LPM  R25,Z+
	SBIW R24,0
	BREQ __GLOBAL_INI_END
	LPM  R26,Z+
	LPM  R27,Z+
	LPM  R0,Z+
	LPM  R1,Z+
	MOVW R22,R30
	MOVW R30,R0
__GLOBAL_INI_LOOP:
	LPM  R0,Z+
	ST   X+,R0
	SBIW R24,1
	BRNE __GLOBAL_INI_LOOP
	MOVW R30,R22
	RJMP __GLOBAL_INI_NEXT
__GLOBAL_INI_END:

	OUT  RAMPZ,R24

;HARDWARE STACK POINTER INITIALIZATION
	LDI  R30,LOW(__SRAM_END-__HEAP_SIZE)
	OUT  SPL,R30
	LDI  R30,HIGH(__SRAM_END-__HEAP_SIZE)
	OUT  SPH,R30

;DATA STACK POINTER INITIALIZATION
	LDI  R28,LOW(__SRAM_START+__DSTACK_SIZE)
	LDI  R29,HIGH(__SRAM_START+__DSTACK_SIZE)

	JMP  _main

	.ESEG
	.ORG 0x00

	.DSEG
	.ORG 0x500

	.CSEG
	#ifndef __SLEEP_DEFINED__
	#define __SLEEP_DEFINED__
	.EQU __se_bit=0x20
	.EQU __sm_mask=0x1C
	.EQU __sm_powerdown=0x10
	.EQU __sm_powersave=0x18
	.EQU __sm_standby=0x14
	.EQU __sm_ext_standby=0x1C
	.EQU __sm_adc_noise_red=0x08
	.SET power_ctrl_reg=mcucr
	#endif

	.DSEG
;void birth_year(U8 N1000, U8 N100, U8 N10, U8 N1);
;void birth_day(U8 N1000, U8 N100, U8 N10, U8 N1);
;void delay_1ms(void);
;void TMP_disp(U32 val);
;void AD_disp(U32 val);
;void EXIT4_TIMER2(void);
;void EXIT5_TIMER1(void);
;void EXIT6_TIMER3(void);
;void EXIT7_TIMER3(void);
;void Putch(U8 data);
;void main(void)
; 0000 002D {

	.CSEG
_main:
; .FSTART _main
; 0000 002E U8 j;
; 0000 002F 
; 0000 0030 DDRC = 0xFF;    PORTC = 0xFE;              //�۵� Ȯ�ο����� LED ��� ����
;	j -> R17
	LDI  R30,LOW(255)
	OUT  0x14,R30
	LDI  R30,LOW(254)
	OUT  0x15,R30
; 0000 0031 DDRB = 0xF0;                                 //�й� ���÷��̸� ���� ��ƮB 4,5,6,7 ��� ����(LED)
	LDI  R30,LOW(240)
	OUT  0x17,R30
; 0000 0032 DDRD = 0xF0;                                 //�й� ���÷��̸� ���� ��ƮD 4,5,6,7 ��� ����(LED)
	OUT  0x11,R30
; 0000 0033 DDRG = 0x0F;                                 //�й� ���÷��̸� ���� ��ƮG 0,1,2,3 ��� ����(COM)
	LDI  R30,LOW(15)
	STS  100,R30
; 0000 0034 DDRE |= 0x08;
	SBI  0x2,3
; 0000 0035 
; 0000 0036 TIMSK = 0x01;                               // TIM0 OVF Enable
	LDI  R30,LOW(1)
	OUT  0x37,R30
; 0000 0037 TCCR0 = 0x05;                               // 128����
	LDI  R30,LOW(5)
	OUT  0x33,R30
; 0000 0038 TCNT0 = 131;                                // 1msec
	LDI  R30,LOW(131)
	OUT  0x32,R30
; 0000 0039 
; 0000 003A UCSR0A = 0x0;           // USART �ʱ�ȭ
	LDI  R30,LOW(0)
	OUT  0xB,R30
; 0000 003B UCSR0B = 0b00001000;    // �۽ź� enable TXEN0 [3] = 1, RXEN0 [4] =1
	LDI  R30,LOW(8)
	OUT  0xA,R30
; 0000 003C UCSR0C = 0b00000110;    // �񵿱� ������ 8��Ʈ ���
	LDI  R30,LOW(6)
	STS  149,R30
; 0000 003D UBRR0H = 0;             // X-TAL = 16MHz �϶�, BAUD = 9600
	LDI  R30,LOW(0)
	STS  144,R30
; 0000 003E UBRR0L = 103;           // �񵿱� �Ϲݸ�� ���ۼӵ� 9,600
	LDI  R30,LOW(103)
	OUT  0x9,R30
; 0000 003F 
; 0000 0040 EIMSK = 0b11110000;     // ���ͷ�Ʈ ��� ���� ���� �������ͷ� INT4,5,6,7 enable
	LDI  R30,LOW(240)
	OUT  0x39,R30
; 0000 0041 EICRB = 0b11111111;     // INT4,5,6,7�� B�� ���� Interrupt trigger ��� ����(7ri,6ri,5ri,4ri)
	LDI  R30,LOW(255)
	OUT  0x3A,R30
; 0000 0042 SREG |= 0x80;           // status resister bit7(MSB)�� 1���� �����Ͽ� ��� ���ͷ�Ʈ�� ���(global interrupt enable),OR�� ����Ͽ� ��������Ʈ�� �״��
	BSET 7
; 0000 0043 
; 0000 0044 for(j=0; j<65; j++)     // birth_year display for 520ms
	LDI  R17,LOW(0)
_0x6:
	CPI  R17,65
	BRSH _0x7
; 0000 0045 {
; 0000 0046 birth_year(1,9,9,7);
	LDI  R30,LOW(1)
	ST   -Y,R30
	LDI  R30,LOW(9)
	ST   -Y,R30
	ST   -Y,R30
	LDI  R26,LOW(7)
	RCALL _birth_year
; 0000 0047 }
	SUBI R17,-1
	RJMP _0x6
_0x7:
; 0000 0048 
; 0000 0049 for(j=0; j<65; j++)     // birth_day display for 520ms
	LDI  R17,LOW(0)
_0x9:
	CPI  R17,65
	BRSH _0xA
; 0000 004A {
; 0000 004B birth_day(1,1,2,5);
	RCALL SUBOPT_0x0
; 0000 004C }
	SUBI R17,-1
	RJMP _0x9
_0xA:
; 0000 004D 
; 0000 004E while(1)
_0xB:
; 0000 004F {
; 0000 0050 PORTC = 0x55;   // ���� Ȯ�ο�
	LDI  R30,LOW(85)
	OUT  0x15,R30
; 0000 0051 for(j=0; j<65; j++) // birth_year display for 520ms
	LDI  R17,LOW(0)
_0xF:
	CPI  R17,65
	BRSH _0x10
; 0000 0052 {
; 0000 0053 birth_day(1,1,2,5);
	RCALL SUBOPT_0x0
; 0000 0054 }
	SUBI R17,-1
	RJMP _0xF
_0x10:
; 0000 0055 
; 0000 0056 if(EINT4_FLAG_BIT==1)       // If KEY1 Rising
	LDI  R30,LOW(1)
	CP   R30,R8
	BRNE _0x11
; 0000 0057 {
; 0000 0058 EXIT4_TIMER2();         // TIM2 Setting
	RCALL _EXIT4_TIMER2
; 0000 0059 for(j=0; j<10; j++)      // 10ȸ �ݺ�
	LDI  R17,LOW(0)
_0x13:
	CPI  R17,10
	BRSH _0x14
; 0000 005A {
; 0000 005B PORTC = 0x99;       // ���� Ȯ�ο�
	LDI  R30,LOW(153)
	OUT  0x15,R30
; 0000 005C ADMUX = 0x07;                           //ADC7 �Է� ���� (�µ� ������ �ɸ��� ���� ����)
	LDI  R30,LOW(7)
	OUT  0x7,R30
; 0000 005D ADCSRA = 0xC7;                          // ADEN=1, ADSC = 1 ��ȯ ����
	LDI  R30,LOW(199)
	OUT  0x6,R30
; 0000 005E while((ADCSRA & 0x10) == 0);            // ADIF=1�� �� ������
_0x15:
	SBIS 0x6,4
	RJMP _0x15
; 0000 005F tmp_val = (U32)ADCL + ((U32)ADCH << 8); // A/D ��ȯ�� �б�
	RCALL SUBOPT_0x1
	STS  _tmp_val,R30
	STS  _tmp_val+1,R31
; 0000 0060 TIMER2_OVF_FLAG_BIT = 0;                // Ÿ�̸�2 �ʱ�ȭ
	CLR  R7
; 0000 0061 while(cnt <= 1)                         // 2250ms * 2 = 4500ms�ֱ�
_0x18:
	LDI  R30,LOW(1)
	CP   R30,R9
	BRLO _0x1A
; 0000 0062 {
; 0000 0063 if(TIMER2_OVF_FLAG_BIT >= 179)      // 12.5ms * 180 = 2250ms
	LDI  R30,LOW(179)
	CP   R7,R30
	BRLO _0x1B
; 0000 0064 {
; 0000 0065 cnt++;
	INC  R9
; 0000 0066 TIMER2_OVF_FLAG_BIT = 0;        // TIM2 �ʱ�ȭ
	CLR  R7
; 0000 0067 }
; 0000 0068 TMP_disp(tmp_val);                  // A/D ��ȯ�� ǥ��
_0x1B:
	LDS  R26,_tmp_val
	LDS  R27,_tmp_val+1
	RCALL _TMP_disp
; 0000 0069 
; 0000 006A }
	RJMP _0x18
_0x1A:
; 0000 006B cnt=0;                                  // ī��Ʈ �ʱ�ȭ
	CLR  R9
; 0000 006C }
	SUBI R17,-1
	RJMP _0x13
_0x14:
; 0000 006D EINT4_FLAG_BIT = 0;                         // KEY1 �ʱ�ȭ
	CLR  R8
; 0000 006E } // end of KEY1
; 0000 006F 
; 0000 0070 if(EINT5_FLAG_BIT==1)       // If KEY2 Rising
_0x11:
	LDI  R30,LOW(1)
	CP   R30,R11
	BRNE _0x1C
; 0000 0071 {
; 0000 0072 EXIT5_TIMER1();         // TIM1 Setting
	RCALL _EXIT5_TIMER1
; 0000 0073 ADMUX = 0x06;           //ADC6 �ܱؼ� �Է� ����
	LDI  R30,LOW(6)
	OUT  0x7,R30
; 0000 0074 ADCSRA = 0x87;          // ADEN=1, 16MHz 256���� -> 125kHz
	LDI  R30,LOW(135)
	OUT  0x6,R30
; 0000 0075 for(j=0; j<5; j++)      // 5ȸ �ݺ�
	LDI  R17,LOW(0)
_0x1E:
	CPI  R17,5
	BRSH _0x1F
; 0000 0076 {
; 0000 0077 PORTC = 0x66;       // ���� Ȯ�ο�
	LDI  R30,LOW(102)
	OUT  0x15,R30
; 0000 0078 ADCSRA = 0xC7;      // ADEN=1, ADSC = 1 ��ȯ ����
	LDI  R30,LOW(199)
	OUT  0x6,R30
; 0000 0079 while((ADCSRA & 0x10) == 0);            // ADIF=1�� �� ������(Single)
_0x20:
	SBIS 0x6,4
	RJMP _0x20
; 0000 007A ad_val = (U32)ADCL + ((U32)ADCH << 8);  // A/D ��ȯ�� �б�
	RCALL SUBOPT_0x1
	STS  _ad_val,R30
	STS  _ad_val+1,R31
; 0000 007B AD_disp(ad_val);                        // Uart Display
	LDS  R26,_ad_val
	LDS  R27,_ad_val+1
	RCALL _AD_disp
; 0000 007C 
; 0000 007D TIM1_COMP_FLAG = 0;                     // TIM1 �ʱ�ȭ
	CLR  R4
; 0000 007E while(TIM1_COMP_FLAG == 0);             // 2.5sec(�ֱ�) ���
_0x23:
	TST  R4
	BREQ _0x23
; 0000 007F }
	SUBI R17,-1
	RJMP _0x1E
_0x1F:
; 0000 0080 EINT5_FLAG_BIT=0;                           // KEY2 �ʱ�ȭ
	CLR  R11
; 0000 0081 } //end of KEY2
; 0000 0082 
; 0000 0083 
; 0000 0084 if(EINT6_FLAG_BIT==1)       // If KEY3 Rising
_0x1C:
	LDI  R30,LOW(1)
	CP   R30,R10
	BRNE _0x26
; 0000 0085 {
; 0000 0086 EXIT6_TIMER3();         // 9bit PWM ��� ����
	RCALL _EXIT6_TIMER3
; 0000 0087 EINT6_FLAG_BIT=0;
	CLR  R10
; 0000 0088 for(j=0; j<100; j++)    // ���� Ȯ�ο� 100ms
	LDI  R17,LOW(0)
_0x28:
	CPI  R17,100
	BRSH _0x29
; 0000 0089 {
; 0000 008A PORTC = 0x77;
	LDI  R30,LOW(119)
	OUT  0x15,R30
; 0000 008B delay_1ms();
	RCALL _delay_1ms
; 0000 008C }
	SUBI R17,-1
	RJMP _0x28
_0x29:
; 0000 008D //EXIT6���� PWM 1 �Լ��� ����.
; 0000 008E } //end of KEY3
; 0000 008F 
; 0000 0090 
; 0000 0091 if(EINT7_FLAG_BIT==1)       // If KEY4 Rising
_0x26:
	LDI  R30,LOW(1)
	CP   R30,R13
	BRNE _0x2A
; 0000 0092 {
; 0000 0093 EXIT7_TIMER3();         // 9bit Phase correct PWM mode ����
	RCALL _EXIT7_TIMER3
; 0000 0094 EINT7_FLAG_BIT=0;
	CLR  R13
; 0000 0095 for(j=0; j<100; j++)    // ���� Ȯ�ο� 100ms
	LDI  R17,LOW(0)
_0x2C:
	CPI  R17,100
	BRSH _0x2D
; 0000 0096 {
; 0000 0097 PORTC = 0x77;
	LDI  R30,LOW(119)
	OUT  0x15,R30
; 0000 0098 delay_1ms();
	RCALL _delay_1ms
; 0000 0099 }
	SUBI R17,-1
	RJMP _0x2C
_0x2D:
; 0000 009A //EXIT7���� PWM 2 �Լ��� ����.
; 0000 009B } //end of KEY4
; 0000 009C } // end of while
_0x2A:
	RJMP _0xB
; 0000 009D } // end of main
_0x2E:
	RJMP _0x2E
; .FEND
;void birth_year(U8 N1000, U8 N100, U8 N10, U8 N1)
; 0000 00A0 {
_birth_year:
; .FSTART _birth_year
; 0000 00A1 PORTG = 0b00001000;                                         //�� ���� 7Segment DIG4(PG3=1)ON, 1�ڸ� ǥ��
	RCALL SUBOPT_0x2
;	N1000 -> R18
;	N100 -> R19
;	N10 -> R16
;	N1 -> R17
; 0000 00A2 PORTD = ((seg_pat_dot[N1] & 0x0F) << 4) | (PORTD & 0x0F);       //[0]ǥ�ø� ���� ABCDǥ��, PORTD ���� 4bits ������� �ʰ� |
	RCALL SUBOPT_0x3
; 0000 00A3 PORTB = (seg_pat_dot[N1] & 0xF0 ) | (PORTB & 0x0F);             //[0]ǥ�ø� ���� EFGǥ��, PORTB ���� 4bits ������� �ʰ� |
	MOV  R30,R17
	RCALL SUBOPT_0x4
	RCALL SUBOPT_0x5
; 0000 00A4 delay_1ms();    delay_1ms();    // delay 2ms
; 0000 00A5 
; 0000 00A6 PORTG = 0b00000100;                                         //�������� �ι�° 7Segment DIG3(PG2=1)ON, 10�ڸ� ǥ��
	RCALL SUBOPT_0x6
; 0000 00A7 PORTD = ((seg_pat[N10] & 0x0F) << 4) | (PORTD & 0x0F);
; 0000 00A8 PORTB = (seg_pat[N10] & 0x70 ) | (PORTB & 0x0F);
; 0000 00A9 delay_1ms();    delay_1ms();
; 0000 00AA 
; 0000 00AB PORTG = 0b00000010;                                         //�������� ����° 7Segment DIG2(PG1=1)ON, 100�ڸ� ǥ��
	RCALL SUBOPT_0x7
; 0000 00AC PORTD = ((seg_pat[N100] & 0x0F) << 4) | (PORTD & 0x0F);
	RCALL SUBOPT_0x8
; 0000 00AD PORTB = (seg_pat[N100] & 0x70 ) | (PORTB & 0x0F);
	MOV  R30,R19
	RCALL SUBOPT_0x9
	RJMP _0x2000003
; 0000 00AE delay_1ms();    delay_1ms();
; 0000 00AF 
; 0000 00B0 PORTG = 0b00000001;                                         //�������� �׹�° 7Segment DIG1(PG0=1)ON, 1000�ڸ� ǥ��
; 0000 00B1 PORTD = ((seg_pat[N1000] & 0x0F) << 4) | (PORTD & 0x0F);
; 0000 00B2 PORTB = (seg_pat[N1000] & 0x70 ) | (PORTB & 0x0F);
; 0000 00B3 delay_1ms();    delay_1ms();
; 0000 00B4 }//end of birth_year
; .FEND
;void birth_day(U8 N1000, U8 N100, U8 N10, U8 N1)
; 0000 00B7 {
_birth_day:
; .FSTART _birth_day
; 0000 00B8 PORTG = 0b00001000;                                         //�� ���� 7Segment DIG4(PG3=1)ON, 1�ڸ� ǥ��
	RCALL SUBOPT_0x2
;	N1000 -> R18
;	N100 -> R19
;	N10 -> R16
;	N1 -> R17
; 0000 00B9 PORTD = ((seg_pat[N1] & 0x0F) << 4) | (PORTD & 0x0F);       //[0]ǥ�ø� ���� ABCDǥ��, PORTD ���� 4bits ������� �ʰ� |
	RCALL SUBOPT_0x8
; 0000 00BA PORTB = (seg_pat[N1] & 0x70 ) | (PORTB & 0x0F);             //[0]ǥ�ø� ���� EFGǥ��, PORTB ���� 4bits ������� �ʰ� |
	MOV  R30,R17
	RCALL SUBOPT_0x9
	RCALL SUBOPT_0x5
; 0000 00BB delay_1ms();    delay_1ms();
; 0000 00BC 
; 0000 00BD PORTG = 0b00000100;                                         //�������� �ι�° 7Segment DIG3(PG2=1)ON, 10�ڸ� ǥ��
	RCALL SUBOPT_0x6
; 0000 00BE PORTD = ((seg_pat[N10] & 0x0F) << 4) | (PORTD & 0x0F);
; 0000 00BF PORTB = (seg_pat[N10] & 0x70 ) | (PORTB & 0x0F);
; 0000 00C0 delay_1ms();    delay_1ms();
; 0000 00C1 
; 0000 00C2 PORTG = 0b00000010;                                         //�������� ����° 7Segment DIG2(PG1=1)ON, 100�ڸ� ǥ��
	RCALL SUBOPT_0x7
; 0000 00C3 PORTD = ((seg_pat_dot[N100] & 0x0F) << 4) | (PORTD & 0x0F);
	RCALL SUBOPT_0x3
; 0000 00C4 PORTB = (seg_pat_dot[N100] & 0xF0 ) | (PORTB & 0x0F);
	MOV  R30,R19
	RCALL SUBOPT_0x4
_0x2000003:
	MOV  R26,R30
	RCALL SUBOPT_0xA
; 0000 00C5 delay_1ms();    delay_1ms();
	RCALL _delay_1ms
; 0000 00C6 
; 0000 00C7 PORTG = 0b00000001;                                         //�������� �׹�° 7Segment DIG1(PG0=1)ON, 1000�ڸ� ǥ��
	LDI  R30,LOW(1)
	STS  101,R30
; 0000 00C8 PORTD = ((seg_pat[N1000] & 0x0F) << 4) | (PORTD & 0x0F);
	MOV  R30,R18
	LDI  R31,0
	RCALL SUBOPT_0x8
; 0000 00C9 PORTB = (seg_pat[N1000] & 0x70 ) | (PORTB & 0x0F);
	MOV  R30,R18
	RCALL SUBOPT_0x9
	RCALL SUBOPT_0x5
; 0000 00CA delay_1ms();    delay_1ms();
; 0000 00CB }//end of birth_day
	RCALL __LOADLOCR4
	ADIW R28,7
	RET
; .FEND
;void TMP_disp(U32 val)
; 0000 00CE {
_TMP_disp:
; .FSTART _TMP_disp
; 0000 00CF float fval;
; 0000 00D0 U32 ival, buf, N100, N10, N1;
; 0000 00D1 
; 0000 00D2 fval = (float)val * 5.0 / 1024.0; // ���� ������ ��ȯ
	RCALL SUBOPT_0xB
;	val -> Y+14
;	fval -> Y+10
;	ival -> R16,R17
;	buf -> R18,R19
;	N100 -> R20,R21
;	N10 -> Y+8
;	N1 -> Y+6
; 0000 00D3 ival = (U32)(fval * 1000.0 + 0.5); // �ݿø� �� ����ȭ, (�Ҽ� ��°�ڸ�����)
	__GETD1N 0x447A0000
	RCALL SUBOPT_0xC
; 0000 00D4 
; 0000 00D5 N100 = ival / 100; // ������ ����
; 0000 00D6 buf = ival % 100;
; 0000 00D7 N10 = buf / 10; // �Ҽ� ù° �ڸ� ����
; 0000 00D8 N1 = buf % 10; // �Ҽ� ��° �ڸ� ����
; 0000 00D9 
; 0000 00DA PORTG = 0b00001000; // PG3=1, �Ҽ� ��° �ڸ�
	LDI  R30,LOW(8)
	STS  101,R30
; 0000 00DB PORTD = ((seg_pat[N1] & 0x0F) << 4) | (PORTD & 0x0F);
	LDD  R30,Y+6
	LDD  R31,Y+6+1
	RCALL SUBOPT_0x8
; 0000 00DC PORTB = (seg_pat[N1] & 0x70 ) | (PORTB & 0x0F);
	LDD  R30,Y+6
	LDD  R31,Y+6+1
	RCALL SUBOPT_0xD
	RCALL SUBOPT_0xA
; 0000 00DD delay_1ms();
; 0000 00DE 
; 0000 00DF PORTG = 0b00000100; // PG2=1, �Ҽ� ù° �ڸ�
	LDI  R30,LOW(4)
	STS  101,R30
; 0000 00E0 PORTD = ((seg_pat[N10] & 0x0F) << 4) | (PORTD & 0x0F);
	LDD  R30,Y+8
	LDD  R31,Y+8+1
	RCALL SUBOPT_0x8
; 0000 00E1 PORTB = (seg_pat[N10] & 0x70 ) | (PORTB & 0x0F);
	LDD  R30,Y+8
	LDD  R31,Y+8+1
	RCALL SUBOPT_0xD
	IN   R30,0x18
	ANDI R30,LOW(0xF)
	OR   R30,R26
	OUT  0x18,R30
; 0000 00E2 PORTB = PORTB | 0x80; // DP on(�Ҽ���)
	SBI  0x18,7
; 0000 00E3 delay_1ms();
	RCALL _delay_1ms
; 0000 00E4 
; 0000 00E5 PORTG = 0b00000010; // PG1=1, ������
	LDI  R30,LOW(2)
	STS  101,R30
; 0000 00E6 PORTD = ((seg_pat[N100] & 0x0F) << 4) | (PORTD & 0x0F);
	RCALL SUBOPT_0xE
	ANDI R30,LOW(0xF)
	SWAP R30
	ANDI R30,0xF0
	MOV  R26,R30
	IN   R30,0x12
	ANDI R30,LOW(0xF)
	OR   R30,R26
	OUT  0x12,R30
; 0000 00E7 PORTB = (seg_pat[N100] & 0x70 ) | (PORTB & 0x0F);
	RCALL SUBOPT_0xE
	ANDI R30,LOW(0x70)
	MOV  R26,R30
	RCALL SUBOPT_0xA
; 0000 00E8 delay_1ms();
; 0000 00E9 } // end of TMP_disp()
	RJMP _0x2000002
; .FEND
;void AD_disp(U32 val)
; 0000 00EC {
_AD_disp:
; .FSTART _AD_disp
; 0000 00ED float fvalue;
; 0000 00EE U32 ivalue, buff, NV100, NV10, NV1;
; 0000 00EF 
; 0000 00F0 fvalue = (float)val * 5.0 / 1024.0;        // ���� ������ ��ȯ
	RCALL SUBOPT_0xB
;	val -> Y+14
;	fvalue -> Y+10
;	ivalue -> R16,R17
;	buff -> R18,R19
;	NV100 -> R20,R21
;	NV10 -> Y+8
;	NV1 -> Y+6
; 0000 00F1 ivalue = (U32)(fvalue * 100.0 + 0.5);        // �ݿø� �� ����ȭ,(�Ҽ� ��°�ڸ�����)
	__GETD1N 0x42C80000
	RCALL SUBOPT_0xC
; 0000 00F2 
; 0000 00F3 NV100 = ivalue / 100;                        // ������ ����
; 0000 00F4 buff = ivalue % 100;
; 0000 00F5 NV10 = buff / 10;                            // �Ҽ� ù° �ڸ� ����
; 0000 00F6 NV1 = buff % 10;                             // �Ҽ� ��° �ڸ� ����
; 0000 00F7 
; 0000 00F8 NV100 = NV100 + 0x30;   // +0x30('0') : �͹̳� ����� ���� ������ ��ȯ
	__ADDWRN 20,21,48
; 0000 00F9 NV10 = NV10 + 0x30;
	LDD  R30,Y+8
	LDD  R31,Y+8+1
	ADIW R30,48
	STD  Y+8,R30
	STD  Y+8+1,R31
; 0000 00FA NV1 = NV1 + 0x30;
	LDD  R30,Y+6
	LDD  R31,Y+6+1
	ADIW R30,48
	STD  Y+6,R30
	STD  Y+6+1,R31
; 0000 00FB 
; 0000 00FC Putch(NV100);
	MOV  R26,R20
	RCALL _Putch
; 0000 00FD Putch(0x2E);
	LDI  R26,LOW(46)
	RCALL _Putch
; 0000 00FE Putch(NV10);
	LDD  R26,Y+8
	RCALL _Putch
; 0000 00FF Putch(NV1);
	LDD  R26,Y+6
	RCALL _Putch
; 0000 0100 Putch('V');
	LDI  R26,LOW(86)
	RCALL _Putch
; 0000 0101 while((UCSR0A & 0x20) == 0x0); UDR0 =0x0D; // �ٹٲ�
_0x2F:
	SBIS 0xB,5
	RJMP _0x2F
	LDI  R30,LOW(13)
	OUT  0xC,R30
; 0000 0102 } //end of AD_disp()
_0x2000002:
	RCALL __LOADLOCR6
	ADIW R28,16
	RET
; .FEND
;void EXIT4_TIMER2(void)
; 0000 0105 {
_EXIT4_TIMER2:
; .FSTART _EXIT4_TIMER2
; 0000 0106 TIMSK |= 0b01000000;                        // overflow interrupt enable
	IN   R30,0x37
	ORI  R30,0x40
	OUT  0x37,R30
; 0000 0107 TCCR2 = 0b00000101;                         // normal���, ����������= 1024����
	LDI  R30,LOW(5)
	OUT  0x25,R30
; 0000 0108 TCNT2 = 61;                                // 12.5ms
	LDI  R30,LOW(61)
	OUT  0x24,R30
; 0000 0109 
; 0000 010A } //end of EXIT4_TIMER2
	RET
; .FEND
;void EXIT5_TIMER1(void)
; 0000 010D {
_EXIT5_TIMER1:
; .FSTART _EXIT5_TIMER1
; 0000 010E // ETIMSK = 0x10;          // OCIE1A = 1 : Ÿ�̸�/ī����1 ��� �� A ��ġ ���ͷ�Ʈ enable
; 0000 010F TIMSK |= 0b00010000;    // comp interrupt enable
	IN   R30,0x37
	ORI  R30,0x10
	OUT  0x37,R30
; 0000 0110 TCCR1A = 0x00;          // ��� 0(�Ϲݸ��)
	LDI  R30,LOW(0)
	OUT  0x2F,R30
; 0000 0111 TCCR1B = 0x0D;          // ���������� = CK/256
	LDI  R30,LOW(13)
	OUT  0x2E,R30
; 0000 0112 TCCR1C = 0x00;
	LDI  R30,LOW(0)
	STS  122,R30
; 0000 0113 TCNT1H = 0;
	OUT  0x2D,R30
; 0000 0114 TCNT1L = 0;
	OUT  0x2C,R30
; 0000 0115 OCR1AH = 0x98;          // 2.5sec
	LDI  R30,LOW(152)
	OUT  0x2B,R30
; 0000 0116 OCR1AL = 0x96;          // 2.5sec
	LDI  R30,LOW(150)
	OUT  0x2A,R30
; 0000 0117 
; 0000 0118 } //end of EXIT5_TIMER1
	RET
; .FEND
;void EXIT6_TIMER3(void)
; 0000 011B {
_EXIT6_TIMER3:
; .FSTART _EXIT6_TIMER3
; 0000 011C TCCR3A = 0x82;          // ��� 6 �񱳸�ġ
	LDI  R30,LOW(130)
	STS  139,R30
; 0000 011D TCCR3B = 0x0C;          // 256����
	LDI  R30,LOW(12)
	RJMP _0x2000001
; 0000 011E TCCR3C = 0x00;
; 0000 011F TCNT3H = 0;
; 0000 0120 TCNT3L = 0;
; 0000 0121 OCR3AH = 0x00;          // duty ratio = 25%, 512 * 0.25 = 128 = 0x0080;
; 0000 0122 OCR3AL = 0x80;
; 0000 0123 } // end of EXIT6_TIMER3
; .FEND
;void EXIT7_TIMER3(void)
; 0000 0126 {
_EXIT7_TIMER3:
; .FSTART _EXIT7_TIMER3
; 0000 0127 TCCR3A = 0x82;          // ��� 2 �񱳸�ġ
	LDI  R30,LOW(130)
	STS  139,R30
; 0000 0128 TCCR3B = 0x04;          // 256����
	LDI  R30,LOW(4)
_0x2000001:
	STS  138,R30
; 0000 0129 TCCR3C = 0x00;
	LDI  R30,LOW(0)
	STS  140,R30
; 0000 012A TCNT3H = 0;
	STS  137,R30
; 0000 012B TCNT3L = 0;
	STS  136,R30
; 0000 012C OCR3AH = 0x00;          // duty ratio = 25%, 512 * 0.25 = 128 = 0x0080;
	STS  135,R30
; 0000 012D OCR3AL = 0x80;
	LDI  R30,LOW(128)
	STS  134,R30
; 0000 012E } // end of EXIT6_TIMER3
	RET
; .FEND
;void delay_1ms(void)
; 0000 0131 {
_delay_1ms:
; .FSTART _delay_1ms
; 0000 0132 TIM0_OVF_FLAG = 0;      // �ʱ�ȭ
	CLR  R5
; 0000 0133 while(!TIM0_OVF_FLAG);  // TIM0 (1ms)
_0x32:
	TST  R5
	BREQ _0x32
; 0000 0134 } // end of delay_1ms
	RET
; .FEND
;interrupt [6] void external_int4(void)
; 0000 0137 {
_external_int4:
; .FSTART _external_int4
	RCALL SUBOPT_0xF
; 0000 0138 SREG &= 0x7F;
; 0000 0139 EINT4_FLAG_BIT=1;
	MOV  R8,R30
; 0000 013A SREG |= 0x80;
	RJMP _0x38
; 0000 013B } // end of EXT_INT4
; .FEND
;interrupt [7] void external_int5(void)
; 0000 013E {
_external_int5:
; .FSTART _external_int5
	RCALL SUBOPT_0xF
; 0000 013F SREG &= 0x7F;
; 0000 0140 EINT5_FLAG_BIT=1;
	MOV  R11,R30
; 0000 0141 SREG |= 0x80;
	RJMP _0x38
; 0000 0142 } // end of EXT_INT5
; .FEND
;interrupt [8] void external_int6(void)
; 0000 0145 {
_external_int6:
; .FSTART _external_int6
	RCALL SUBOPT_0xF
; 0000 0146 SREG &= 0x7F;
; 0000 0147 EINT6_FLAG_BIT=1;
	MOV  R10,R30
; 0000 0148 SREG |= 0x80;
	RJMP _0x38
; 0000 0149 } // end of EXT_INT6
; .FEND
;interrupt [9] void external_int7(void)
; 0000 014C {
_external_int7:
; .FSTART _external_int7
	RCALL SUBOPT_0xF
; 0000 014D SREG &= 0x7F;
; 0000 014E EINT7_FLAG_BIT=1;
	MOV  R13,R30
; 0000 014F SREG |= 0x80;
	RJMP _0x38
; 0000 0150 } // end of EXT_INT7
; .FEND
;interrupt [11] void TIMER2_OVF_int(void)
; 0000 0153 {
_TIMER2_OVF_int:
; .FSTART _TIMER2_OVF_int
	ST   -Y,R30
	IN   R30,SREG
	ST   -Y,R30
; 0000 0154 TCNT2 = 61;              //�ʱⰪ�� ���ͷ�Ʈ �ȿ��� �������
	LDI  R30,LOW(61)
	OUT  0x24,R30
; 0000 0155 SREG &= 0x7F;
	BCLR 7
; 0000 0156 TIMER2_OVF_FLAG_BIT++;
	INC  R7
; 0000 0157 SREG |= 0x80;
	RJMP _0x38
; 0000 0158 } // end of TIM2_OVF
; .FEND
;interrupt [17] void timer_int0(void)
; 0000 015B {
_timer_int0:
; .FSTART _timer_int0
	ST   -Y,R30
	IN   R30,SREG
	ST   -Y,R30
; 0000 015C SREG &= 0x7F;   // All Interrupt disable
	BCLR 7
; 0000 015D TCNT0 = 0;      // �ʱ�ȭ
	LDI  R30,LOW(0)
	OUT  0x32,R30
; 0000 015E TIM0_OVF_FLAG = 1;
	LDI  R30,LOW(1)
	MOV  R5,R30
; 0000 015F SREG |= 0x80;   // All Interrupt enable
	RJMP _0x38
; 0000 0160 } // end of TIM0_OVF
; .FEND
;interrupt [13] void timer_comp1(void)
; 0000 0163 {
_timer_comp1:
; .FSTART _timer_comp1
	RCALL SUBOPT_0xF
; 0000 0164 SREG &= 0x7F; // All Interrupt disable
; 0000 0165 TIM1_COMP_FLAG = 1;
	MOV  R4,R30
; 0000 0166 SREG |= 0x80; // All Interrupt enable
	RJMP _0x38
; 0000 0167 } // end of TIM1_COMPA
; .FEND
;interrupt [27] void timer_comp3(void)
; 0000 016A {
_timer_comp3:
; .FSTART _timer_comp3
	RCALL SUBOPT_0xF
; 0000 016B SREG &= 0x7F; // All Interrupt disable
; 0000 016C TIM3_COMP_FLAG = 1;
	MOV  R6,R30
; 0000 016D SREG |= 0x80; // All Interrupt enable
_0x38:
	BSET 7
; 0000 016E } // end of TIM3_COMPA
	LD   R30,Y+
	OUT  SREG,R30
	LD   R30,Y+
	RETI
; .FEND
;void Putch(U8 data)
; 0000 0171 {
_Putch:
; .FSTART _Putch
; 0000 0172 while((UCSR0A & 0x20) == 0x0); //UDRE0[5] = 1 �۽��غ�Ϸ� �� ������ ���
	ST   -Y,R17
	MOV  R17,R26
;	data -> R17
_0x35:
	SBIS 0xB,5
	RJMP _0x35
; 0000 0173 UDR0 = data; // ������ ����
	OUT  0xC,R17
; 0000 0174 } // end of Putch()
	LD   R17,Y+
	RET
; .FEND

	.DSEG
_tmp_val:
	.BYTE 0x2
_ad_val:
	.BYTE 0x2
_seg_pat:
	.BYTE 0xA
_seg_pat_dot:
	.BYTE 0xA

	.CSEG
;OPTIMIZER ADDED SUBROUTINE, CALLED 2 TIMES, CODE SIZE REDUCTION:5 WORDS
SUBOPT_0x0:
	LDI  R30,LOW(1)
	ST   -Y,R30
	ST   -Y,R30
	LDI  R30,LOW(2)
	ST   -Y,R30
	LDI  R26,LOW(5)
	RJMP _birth_day

;OPTIMIZER ADDED SUBROUTINE, CALLED 2 TIMES, CODE SIZE REDUCTION:5 WORDS
SUBOPT_0x1:
	IN   R30,0x4
	LDI  R31,0
	MOVW R26,R30
	IN   R30,0x5
	MOV  R31,R30
	LDI  R30,0
	ADD  R30,R26
	ADC  R31,R27
	RET

;OPTIMIZER ADDED SUBROUTINE, CALLED 2 TIMES, CODE SIZE REDUCTION:7 WORDS
SUBOPT_0x2:
	RCALL __SAVELOCR4
	MOV  R17,R26
	LDD  R16,Y+4
	LDD  R19,Y+5
	LDD  R18,Y+6
	LDI  R30,LOW(8)
	STS  101,R30
	MOV  R30,R17
	LDI  R31,0
	RET

;OPTIMIZER ADDED SUBROUTINE, CALLED 2 TIMES, CODE SIZE REDUCTION:8 WORDS
SUBOPT_0x3:
	SUBI R30,LOW(-_seg_pat_dot)
	SBCI R31,HIGH(-_seg_pat_dot)
	LD   R30,Z
	ANDI R30,LOW(0xF)
	SWAP R30
	ANDI R30,0xF0
	MOV  R26,R30
	IN   R30,0x12
	ANDI R30,LOW(0xF)
	OR   R30,R26
	OUT  0x12,R30
	RET

;OPTIMIZER ADDED SUBROUTINE, CALLED 2 TIMES, CODE SIZE REDUCTION:2 WORDS
SUBOPT_0x4:
	LDI  R31,0
	SUBI R30,LOW(-_seg_pat_dot)
	SBCI R31,HIGH(-_seg_pat_dot)
	LD   R30,Z
	ANDI R30,LOW(0xF0)
	RET

;OPTIMIZER ADDED SUBROUTINE, CALLED 5 TIMES, CODE SIZE REDUCTION:22 WORDS
SUBOPT_0x5:
	MOV  R26,R30
	IN   R30,0x18
	ANDI R30,LOW(0xF)
	OR   R30,R26
	OUT  0x18,R30
	RCALL _delay_1ms
	RJMP _delay_1ms

;OPTIMIZER ADDED SUBROUTINE, CALLED 2 TIMES, CODE SIZE REDUCTION:20 WORDS
SUBOPT_0x6:
	LDI  R30,LOW(4)
	STS  101,R30
	MOV  R30,R16
	LDI  R31,0
	SUBI R30,LOW(-_seg_pat)
	SBCI R31,HIGH(-_seg_pat)
	LD   R30,Z
	ANDI R30,LOW(0xF)
	SWAP R30
	ANDI R30,0xF0
	MOV  R26,R30
	IN   R30,0x12
	ANDI R30,LOW(0xF)
	OR   R30,R26
	OUT  0x12,R30
	MOV  R30,R16
	LDI  R31,0
	SUBI R30,LOW(-_seg_pat)
	SBCI R31,HIGH(-_seg_pat)
	LD   R30,Z
	ANDI R30,LOW(0x70)
	RJMP SUBOPT_0x5

;OPTIMIZER ADDED SUBROUTINE, CALLED 2 TIMES, CODE SIZE REDUCTION:2 WORDS
SUBOPT_0x7:
	LDI  R30,LOW(2)
	STS  101,R30
	MOV  R30,R19
	LDI  R31,0
	RET

;OPTIMIZER ADDED SUBROUTINE, CALLED 5 TIMES, CODE SIZE REDUCTION:38 WORDS
SUBOPT_0x8:
	SUBI R30,LOW(-_seg_pat)
	SBCI R31,HIGH(-_seg_pat)
	LD   R30,Z
	ANDI R30,LOW(0xF)
	SWAP R30
	ANDI R30,0xF0
	MOV  R26,R30
	IN   R30,0x12
	ANDI R30,LOW(0xF)
	OR   R30,R26
	OUT  0x12,R30
	RET

;OPTIMIZER ADDED SUBROUTINE, CALLED 3 TIMES, CODE SIZE REDUCTION:6 WORDS
SUBOPT_0x9:
	LDI  R31,0
	SUBI R30,LOW(-_seg_pat)
	SBCI R31,HIGH(-_seg_pat)
	LD   R30,Z
	ANDI R30,LOW(0x70)
	RET

;OPTIMIZER ADDED SUBROUTINE, CALLED 3 TIMES, CODE SIZE REDUCTION:6 WORDS
SUBOPT_0xA:
	IN   R30,0x18
	ANDI R30,LOW(0xF)
	OR   R30,R26
	OUT  0x18,R30
	RJMP _delay_1ms

;OPTIMIZER ADDED SUBROUTINE, CALLED 2 TIMES, CODE SIZE REDUCTION:27 WORDS
SUBOPT_0xB:
	ST   -Y,R27
	ST   -Y,R26
	SBIW R28,8
	RCALL __SAVELOCR6
	LDD  R30,Y+14
	LDD  R31,Y+14+1
	CLR  R22
	CLR  R23
	RCALL __CDF1
	__GETD2N 0x40A00000
	RCALL __MULF12
	MOVW R26,R30
	MOVW R24,R22
	__GETD1N 0x44800000
	RCALL __DIVF21
	__PUTD1S 10
	__GETD2S 10
	RET

;OPTIMIZER ADDED SUBROUTINE, CALLED 2 TIMES, CODE SIZE REDUCTION:27 WORDS
SUBOPT_0xC:
	RCALL __MULF12
	__GETD2N 0x3F000000
	RCALL __ADDF12
	RCALL __CFD1U
	MOVW R16,R30
	MOVW R26,R16
	LDI  R30,LOW(100)
	LDI  R31,HIGH(100)
	RCALL __DIVW21U
	MOVW R20,R30
	MOVW R26,R16
	LDI  R30,LOW(100)
	LDI  R31,HIGH(100)
	RCALL __MODW21U
	MOVW R18,R30
	MOVW R26,R18
	LDI  R30,LOW(10)
	LDI  R31,HIGH(10)
	RCALL __DIVW21U
	STD  Y+8,R30
	STD  Y+8+1,R31
	MOVW R26,R18
	LDI  R30,LOW(10)
	LDI  R31,HIGH(10)
	RCALL __MODW21U
	STD  Y+6,R30
	STD  Y+6+1,R31
	RET

;OPTIMIZER ADDED SUBROUTINE, CALLED 2 TIMES, CODE SIZE REDUCTION:2 WORDS
SUBOPT_0xD:
	SUBI R30,LOW(-_seg_pat)
	SBCI R31,HIGH(-_seg_pat)
	LD   R30,Z
	ANDI R30,LOW(0x70)
	MOV  R26,R30
	RET

;OPTIMIZER ADDED SUBROUTINE, CALLED 2 TIMES, CODE SIZE REDUCTION:2 WORDS
SUBOPT_0xE:
	LDI  R26,LOW(_seg_pat)
	LDI  R27,HIGH(_seg_pat)
	ADD  R26,R20
	ADC  R27,R21
	LD   R30,X
	RET

;OPTIMIZER ADDED SUBROUTINE, CALLED 6 TIMES, CODE SIZE REDUCTION:18 WORDS
SUBOPT_0xF:
	ST   -Y,R30
	IN   R30,SREG
	ST   -Y,R30
	BCLR 7
	LDI  R30,LOW(1)
	RET

;RUNTIME LIBRARY

	.CSEG
__SAVELOCR6:
	ST   -Y,R21
__SAVELOCR5:
	ST   -Y,R20
__SAVELOCR4:
	ST   -Y,R19
__SAVELOCR3:
	ST   -Y,R18
__SAVELOCR2:
	ST   -Y,R17
	ST   -Y,R16
	RET

__LOADLOCR6:
	LDD  R21,Y+5
__LOADLOCR5:
	LDD  R20,Y+4
__LOADLOCR4:
	LDD  R19,Y+3
__LOADLOCR3:
	LDD  R18,Y+2
__LOADLOCR2:
	LDD  R17,Y+1
	LD   R16,Y
	RET

__ANEGD1:
	COM  R31
	COM  R22
	COM  R23
	NEG  R30
	SBCI R31,-1
	SBCI R22,-1
	SBCI R23,-1
	RET

__DIVW21U:
	CLR  R0
	CLR  R1
	LDI  R25,16
__DIVW21U1:
	LSL  R26
	ROL  R27
	ROL  R0
	ROL  R1
	SUB  R0,R30
	SBC  R1,R31
	BRCC __DIVW21U2
	ADD  R0,R30
	ADC  R1,R31
	RJMP __DIVW21U3
__DIVW21U2:
	SBR  R26,1
__DIVW21U3:
	DEC  R25
	BRNE __DIVW21U1
	MOVW R30,R26
	MOVW R26,R0
	RET

__MODW21U:
	RCALL __DIVW21U
	MOVW R30,R26
	RET

__ROUND_REPACK:
	TST  R21
	BRPL __REPACK
	CPI  R21,0x80
	BRNE __ROUND_REPACK0
	SBRS R30,0
	RJMP __REPACK
__ROUND_REPACK0:
	ADIW R30,1
	ADC  R22,R25
	ADC  R23,R25
	BRVS __REPACK1

__REPACK:
	LDI  R21,0x80
	EOR  R21,R23
	BRNE __REPACK0
	PUSH R21
	RJMP __ZERORES
__REPACK0:
	CPI  R21,0xFF
	BREQ __REPACK1
	LSL  R22
	LSL  R0
	ROR  R21
	ROR  R22
	MOV  R23,R21
	RET
__REPACK1:
	PUSH R21
	TST  R0
	BRMI __REPACK2
	RJMP __MAXRES
__REPACK2:
	RJMP __MINRES

__UNPACK:
	LDI  R21,0x80
	MOV  R1,R25
	AND  R1,R21
	LSL  R24
	ROL  R25
	EOR  R25,R21
	LSL  R21
	ROR  R24

__UNPACK1:
	LDI  R21,0x80
	MOV  R0,R23
	AND  R0,R21
	LSL  R22
	ROL  R23
	EOR  R23,R21
	LSL  R21
	ROR  R22
	RET

__CFD1U:
	SET
	RJMP __CFD1U0
__CFD1:
	CLT
__CFD1U0:
	PUSH R21
	RCALL __UNPACK1
	CPI  R23,0x80
	BRLO __CFD10
	CPI  R23,0xFF
	BRCC __CFD10
	RJMP __ZERORES
__CFD10:
	LDI  R21,22
	SUB  R21,R23
	BRPL __CFD11
	NEG  R21
	CPI  R21,8
	BRTC __CFD19
	CPI  R21,9
__CFD19:
	BRLO __CFD17
	SER  R30
	SER  R31
	SER  R22
	LDI  R23,0x7F
	BLD  R23,7
	RJMP __CFD15
__CFD17:
	CLR  R23
	TST  R21
	BREQ __CFD15
__CFD18:
	LSL  R30
	ROL  R31
	ROL  R22
	ROL  R23
	DEC  R21
	BRNE __CFD18
	RJMP __CFD15
__CFD11:
	CLR  R23
__CFD12:
	CPI  R21,8
	BRLO __CFD13
	MOV  R30,R31
	MOV  R31,R22
	MOV  R22,R23
	SUBI R21,8
	RJMP __CFD12
__CFD13:
	TST  R21
	BREQ __CFD15
__CFD14:
	LSR  R23
	ROR  R22
	ROR  R31
	ROR  R30
	DEC  R21
	BRNE __CFD14
__CFD15:
	TST  R0
	BRPL __CFD16
	RCALL __ANEGD1
__CFD16:
	POP  R21
	RET

__CDF1U:
	SET
	RJMP __CDF1U0
__CDF1:
	CLT
__CDF1U0:
	SBIW R30,0
	SBCI R22,0
	SBCI R23,0
	BREQ __CDF10
	CLR  R0
	BRTS __CDF11
	TST  R23
	BRPL __CDF11
	COM  R0
	RCALL __ANEGD1
__CDF11:
	MOV  R1,R23
	LDI  R23,30
	TST  R1
__CDF12:
	BRMI __CDF13
	DEC  R23
	LSL  R30
	ROL  R31
	ROL  R22
	ROL  R1
	RJMP __CDF12
__CDF13:
	MOV  R30,R31
	MOV  R31,R22
	MOV  R22,R1
	PUSH R21
	RCALL __REPACK
	POP  R21
__CDF10:
	RET

__SWAPACC:
	PUSH R20
	MOVW R20,R30
	MOVW R30,R26
	MOVW R26,R20
	MOVW R20,R22
	MOVW R22,R24
	MOVW R24,R20
	MOV  R20,R0
	MOV  R0,R1
	MOV  R1,R20
	POP  R20
	RET

__UADD12:
	ADD  R30,R26
	ADC  R31,R27
	ADC  R22,R24
	RET

__NEGMAN1:
	COM  R30
	COM  R31
	COM  R22
	SUBI R30,-1
	SBCI R31,-1
	SBCI R22,-1
	RET

__ADDF12:
	PUSH R21
	RCALL __UNPACK
	CPI  R25,0x80
	BREQ __ADDF129

__ADDF120:
	CPI  R23,0x80
	BREQ __ADDF128
__ADDF121:
	MOV  R21,R23
	SUB  R21,R25
	BRVS __ADDF1211
	BRPL __ADDF122
	RCALL __SWAPACC
	RJMP __ADDF121
__ADDF122:
	CPI  R21,24
	BRLO __ADDF123
	CLR  R26
	CLR  R27
	CLR  R24
__ADDF123:
	CPI  R21,8
	BRLO __ADDF124
	MOV  R26,R27
	MOV  R27,R24
	CLR  R24
	SUBI R21,8
	RJMP __ADDF123
__ADDF124:
	TST  R21
	BREQ __ADDF126
__ADDF125:
	LSR  R24
	ROR  R27
	ROR  R26
	DEC  R21
	BRNE __ADDF125
__ADDF126:
	MOV  R21,R0
	EOR  R21,R1
	BRMI __ADDF127
	RCALL __UADD12
	BRCC __ADDF129
	ROR  R22
	ROR  R31
	ROR  R30
	INC  R23
	BRVC __ADDF129
	RJMP __MAXRES
__ADDF128:
	RCALL __SWAPACC
__ADDF129:
	RCALL __REPACK
	POP  R21
	RET
__ADDF1211:
	BRCC __ADDF128
	RJMP __ADDF129
__ADDF127:
	SUB  R30,R26
	SBC  R31,R27
	SBC  R22,R24
	BREQ __ZERORES
	BRCC __ADDF1210
	COM  R0
	RCALL __NEGMAN1
__ADDF1210:
	TST  R22
	BRMI __ADDF129
	LSL  R30
	ROL  R31
	ROL  R22
	DEC  R23
	BRVC __ADDF1210

__ZERORES:
	CLR  R30
	CLR  R31
	MOVW R22,R30
	POP  R21
	RET

__MINRES:
	SER  R30
	SER  R31
	LDI  R22,0x7F
	SER  R23
	POP  R21
	RET

__MAXRES:
	SER  R30
	SER  R31
	LDI  R22,0x7F
	LDI  R23,0x7F
	POP  R21
	RET

__MULF12:
	PUSH R21
	RCALL __UNPACK
	CPI  R23,0x80
	BREQ __ZERORES
	CPI  R25,0x80
	BREQ __ZERORES
	EOR  R0,R1
	SEC
	ADC  R23,R25
	BRVC __MULF124
	BRLT __ZERORES
__MULF125:
	TST  R0
	BRMI __MINRES
	RJMP __MAXRES
__MULF124:
	PUSH R0
	PUSH R17
	PUSH R18
	PUSH R19
	PUSH R20
	CLR  R17
	CLR  R18
	CLR  R25
	MUL  R22,R24
	MOVW R20,R0
	MUL  R24,R31
	MOV  R19,R0
	ADD  R20,R1
	ADC  R21,R25
	MUL  R22,R27
	ADD  R19,R0
	ADC  R20,R1
	ADC  R21,R25
	MUL  R24,R30
	RCALL __MULF126
	MUL  R27,R31
	RCALL __MULF126
	MUL  R22,R26
	RCALL __MULF126
	MUL  R27,R30
	RCALL __MULF127
	MUL  R26,R31
	RCALL __MULF127
	MUL  R26,R30
	ADD  R17,R1
	ADC  R18,R25
	ADC  R19,R25
	ADC  R20,R25
	ADC  R21,R25
	MOV  R30,R19
	MOV  R31,R20
	MOV  R22,R21
	MOV  R21,R18
	POP  R20
	POP  R19
	POP  R18
	POP  R17
	POP  R0
	TST  R22
	BRMI __MULF122
	LSL  R21
	ROL  R30
	ROL  R31
	ROL  R22
	RJMP __MULF123
__MULF122:
	INC  R23
	BRVS __MULF125
__MULF123:
	RCALL __ROUND_REPACK
	POP  R21
	RET

__MULF127:
	ADD  R17,R0
	ADC  R18,R1
	ADC  R19,R25
	RJMP __MULF128
__MULF126:
	ADD  R18,R0
	ADC  R19,R1
__MULF128:
	ADC  R20,R25
	ADC  R21,R25
	RET

__DIVF21:
	PUSH R21
	RCALL __UNPACK
	CPI  R23,0x80
	BRNE __DIVF210
	TST  R1
__DIVF211:
	BRPL __DIVF219
	RJMP __MINRES
__DIVF219:
	RJMP __MAXRES
__DIVF210:
	CPI  R25,0x80
	BRNE __DIVF218
__DIVF217:
	RJMP __ZERORES
__DIVF218:
	EOR  R0,R1
	SEC
	SBC  R25,R23
	BRVC __DIVF216
	BRLT __DIVF217
	TST  R0
	RJMP __DIVF211
__DIVF216:
	MOV  R23,R25
	PUSH R17
	PUSH R18
	PUSH R19
	PUSH R20
	CLR  R1
	CLR  R17
	CLR  R18
	CLR  R19
	MOVW R20,R18
	LDI  R25,32
__DIVF212:
	CP   R26,R30
	CPC  R27,R31
	CPC  R24,R22
	CPC  R20,R17
	BRLO __DIVF213
	SUB  R26,R30
	SBC  R27,R31
	SBC  R24,R22
	SBC  R20,R17
	SEC
	RJMP __DIVF214
__DIVF213:
	CLC
__DIVF214:
	ROL  R21
	ROL  R18
	ROL  R19
	ROL  R1
	ROL  R26
	ROL  R27
	ROL  R24
	ROL  R20
	DEC  R25
	BRNE __DIVF212
	MOVW R30,R18
	MOV  R22,R1
	POP  R20
	POP  R19
	POP  R18
	POP  R17
	TST  R22
	BRMI __DIVF215
	LSL  R21
	ROL  R30
	ROL  R31
	ROL  R22
	DEC  R23
	BRVS __DIVF217
__DIVF215:
	RCALL __ROUND_REPACK
	POP  R21
	RET

;END OF CODE MARKER
__END_OF_CODE:

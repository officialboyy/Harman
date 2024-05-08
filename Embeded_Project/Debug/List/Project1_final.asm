
;CodeVisionAVR C Compiler V3.52 Evaluation
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
	.DEF _DEV_ADD_W=R5
	.DEF _DEV_ADD_R=R4
	.DEF _IIC_ADD=R7
	.DEF _IIC_DAT=R6
	.DEF _READ_DATA=R9
	.DEF _check_sum_write=R10
	.DEF _check_sum_write_msb=R11
	.DEF _check_sum_read=R12
	.DEF _check_sum_read_msb=R13

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
	JMP  0x00
	JMP  0x00
	JMP  0x00
	JMP  0x00
	JMP  0x00
	JMP  0x00
	JMP  0x00
	JMP  0x00
	JMP  0x00
	JMP  0x00
	JMP  0x00
	JMP  0x00
	JMP  0x00
	JMP  0x00
	JMP  0x00
	JMP  0x00
	JMP  0x00
	JMP  0x00
	JMP  0x00
	JMP  0x00
	JMP  0x00
	JMP  0x00
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
	.DB  0xA1,0xA0,0x55,0x55
	.DB  0x0,0x0,0x0,0x0
	.DB  0x0,0x0

_0x3:
	.DB  0xF0,0xF,0xAA,0x55,0x77

__GLOBAL_INI_TBL:
	.DW  0x0A
	.DW  0x04
	.DW  __REG_VARS*2

	.DW  0x05
	.DW  _DATA_FIVE
	.DW  _0x3*2

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
;void IIC_START(void);
;void IIC_STOP(void);
;void no_ACK(void);
;void ACK_read(void);
;void Process_8data(U8 value);
;void Process_8data_read(void);
;void Byte_write(void);
;void Page_write(void);
;void Random_read(void);
;void Sequential_read(void);
;void main(void)
; 0000 0034 {

	.CSEG
_main:
; .FSTART _main
; 0000 0035 U8  o_sw, n_sw;
; 0000 0036 
; 0000 0037 DDRC = 0xFF;                  // 포트C 출력 설정
;	o_sw -> R17
;	n_sw -> R16
	LDI  R30,LOW(255)
	OUT  0x14,R30
; 0000 0038 DDRE = 0x00;                  // 포트E 입력 설정
	LDI  R30,LOW(0)
	OUT  0x2,R30
; 0000 0039 
; 0000 003A //   PORTC=0xAA;   //LED등 1010 1010
; 0000 003B 
; 0000 003C SCL_OUT;      // START
	SBI  0x11,0
; 0000 003D SDA_OUT;      // START
	SBI  0x11,1
; 0000 003E o_sw = PINE & 0b11110000;
	IN   R30,0x1
	ANDI R30,LOW(0xF0)
	MOV  R17,R30
; 0000 003F while(1){
_0x4:
; 0000 0040 n_sw = PINE  & 0b11110000;
	IN   R30,0x1
	ANDI R30,LOW(0xF0)
	MOV  R16,R30
; 0000 0041 if(o_sw == 0xF0 && n_sw == 0xE0){
	CPI  R17,240
	BRNE _0x8
	CPI  R16,224
	BREQ _0x9
_0x8:
	RJMP _0x7
_0x9:
; 0000 0042 Byte_write();
	RCALL _Byte_write
; 0000 0043 }
; 0000 0044 if(o_sw == 0xF0 && n_sw == 0xD0){
_0x7:
	CPI  R17,240
	BRNE _0xB
	CPI  R16,208
	BREQ _0xC
_0xB:
	RJMP _0xA
_0xC:
; 0000 0045 Page_write();
	RCALL _Page_write
; 0000 0046 }
; 0000 0047 if(o_sw == 0xF0 && n_sw == 0xB0){
_0xA:
	CPI  R17,240
	BRNE _0xE
	CPI  R16,176
	BREQ _0xF
_0xE:
	RJMP _0xD
_0xF:
; 0000 0048 Random_read();
	RCALL _Random_read
; 0000 0049 }
; 0000 004A if(o_sw == 0xF0 && n_sw == 0x70){
_0xD:
	CPI  R17,240
	BRNE _0x11
	CPI  R16,112
	BREQ _0x12
_0x11:
	RJMP _0x10
_0x12:
; 0000 004B Sequential_read();
	RCALL _Sequential_read
; 0000 004C if(check_sum_write==check_sum_read) PORTC=0x66;
	__CPWRR 12,13,10,11
	BRNE _0x13
	LDI  R30,LOW(102)
	OUT  0x15,R30
; 0000 004D }
_0x13:
; 0000 004E /*     if(IIC_DAT==READ_DATA) {
; 0000 004F PORTC=0x55;
; 0000 0050 delay_ms(100);
; 0000 0051 PORTC=0xAA;
; 0000 0052 delay_ms(100);
; 0000 0053 PORTC=0x55;
; 0000 0054 }
; 0000 0055 */
; 0000 0056 o_sw=n_sw;
_0x10:
	MOV  R17,R16
; 0000 0057 
; 0000 0058 }
	RJMP _0x4
; 0000 0059 }
_0x14:
	RJMP _0x14
; .FEND
;void Byte_write(void){
; 0000 005B void Byte_write(void){
_Byte_write:
; .FSTART _Byte_write
; 0000 005C IIC_START();              // start
	RCALL SUBOPT_0x0
; 0000 005D Process_8data(DEV_ADD_W); // device address 7bit와 write
; 0000 005E ACK_read();               // ack
; 0000 005F Process_8data(IIC_ADD);   // address 8bits
; 0000 0060 ACK_read();               // ack
; 0000 0061 Process_8data(IIC_DAT);   // data 8bits
	MOV  R26,R6
	RCALL _Process_8data
; 0000 0062 ACK_read();               // ack
	RCALL _ACK_read
; 0000 0063 IIC_STOP();               // stop
	RJMP _0x2000005
; 0000 0064 }//end of Byte_write
; .FEND
;void Page_write(void){
; 0000 0066 void Page_write(void){
_Page_write:
; .FSTART _Page_write
; 0000 0067 U8 i=0;
; 0000 0068 IIC_START();              // start
	ST   -Y,R17
;	i -> R17
	LDI  R17,0
	RCALL SUBOPT_0x0
; 0000 0069 Process_8data(DEV_ADD_W); // device address 7bit와 write
; 0000 006A ACK_read();               // ack
; 0000 006B Process_8data(IIC_ADD);   // address 8bits
; 0000 006C ACK_read();                  // ack
; 0000 006D 
; 0000 006E for(i=0; i<N; i++){
	LDI  R17,LOW(0)
_0x16:
	CPI  R17,5
	BRSH _0x17
; 0000 006F Process_8data(DATA_FIVE[i]);   // data 8bits
	RCALL SUBOPT_0x1
	LD   R26,Z
	RCALL _Process_8data
; 0000 0070 ACK_read();               // ack
	RCALL _ACK_read
; 0000 0071 check_sum_write += DATA_FIVE[i];
	RCALL SUBOPT_0x1
	LD   R30,Z
	LDI  R31,0
	__ADDWRR 10,11,30,31
; 0000 0072 }
	SUBI R17,-1
	RJMP _0x16
_0x17:
; 0000 0073 
; 0000 0074 IIC_STOP();               // stop
	RJMP _0x2000002
; 0000 0075 }//end of Byte_write
; .FEND
;void IIC_START(void)
; 0000 0078 {
_IIC_START:
; .FSTART _IIC_START
; 0000 0079 DAT_HIGH;
	SBI  0x12,1
; 0000 007A delay_us(6);
	RCALL SUBOPT_0x2
; 0000 007B CLK_HIGH;
; 0000 007C delay_us(6);
; 0000 007D DAT_LOW;
	RCALL SUBOPT_0x3
; 0000 007E delay_us(6);
; 0000 007F CLK_LOW;
	RJMP _0x2000004
; 0000 0080 delay_us(6);
; 0000 0081 }
; .FEND
;void IIC_STOP(void)
; 0000 0084 {
_IIC_STOP:
; .FSTART _IIC_STOP
; 0000 0085 DAT_LOW;
	CBI  0x12,1
; 0000 0086 delay_us(6);
	RCALL SUBOPT_0x2
; 0000 0087 CLK_HIGH;
; 0000 0088 delay_us(6);
; 0000 0089 DAT_HIGH;
	SBI  0x12,1
; 0000 008A CLK_LOW;
	RJMP _0x2000004
; 0000 008B delay_us(6);
; 0000 008C }
; .FEND
;void Process_8data(U8 value)
; 0000 008F {
_Process_8data:
; .FSTART _Process_8data
; 0000 0090 U8 i_8bit;
; 0000 0091 U8 value_buffer;
; 0000 0092 
; 0000 0093 value_buffer=value;
	RCALL __SAVELOCR4
	MOV  R19,R26
;	value -> R19
;	i_8bit -> R17
;	value_buffer -> R16
	MOV  R16,R19
; 0000 0094 for(i_8bit=0;i_8bit<7;i_8bit++)            //0~7  ++1
	LDI  R17,LOW(0)
_0x19:
	CPI  R17,7
	BRSH _0x1A
; 0000 0095 {
; 0000 0096 if((value_buffer&0x80)==0x80)          //만약 1000 0000이면 dat high
	MOV  R30,R16
	ANDI R30,LOW(0x80)
	CPI  R30,LOW(0x80)
	BRNE _0x1B
; 0000 0097 DAT_HIGH;
	SBI  0x12,1
; 0000 0098 else                                   //아니면 data low
	RJMP _0x1C
_0x1B:
; 0000 0099 DAT_LOW;
	CBI  0x12,1
; 0000 009A 
; 0000 009B delay_us(6);
_0x1C:
	RCALL SUBOPT_0x2
; 0000 009C CLK_HIGH;
; 0000 009D delay_us(6);         //클럭 하이 갔다가 다시 로우  8번 반복
; 0000 009E CLK_LOW;
	RCALL SUBOPT_0x4
; 0000 009F delay_us(6);
; 0000 00A0 value_buffer<<=1;
	LSL  R16
; 0000 00A1 }
	SUBI R17,-1
	RJMP _0x19
_0x1A:
; 0000 00A2 if((value_buffer&0x80)==0x80)          //만약 1000 0000이면 dat high
	MOV  R30,R16
	ANDI R30,LOW(0x80)
	CPI  R30,LOW(0x80)
	BRNE _0x1D
; 0000 00A3 DAT_HIGH;
	SBI  0x12,1
; 0000 00A4 else                                   //아니면 data low
	RJMP _0x1E
_0x1D:
; 0000 00A5 DAT_LOW;
	CBI  0x12,1
; 0000 00A6 
; 0000 00A7 delay_us(6);
_0x1E:
	RCALL SUBOPT_0x2
; 0000 00A8 CLK_HIGH;
; 0000 00A9 delay_us(6);         //클럭 하이 갔다가 다시 로우  8번 반복
; 0000 00AA CLK_LOW;
	RCALL SUBOPT_0x4
; 0000 00AB delay_us(6);
; 0000 00AC if((value_buffer&0x80)==0x80) DAT_LOW;
	MOV  R30,R16
	ANDI R30,LOW(0x80)
	CPI  R30,LOW(0x80)
	BRNE _0x1F
	CBI  0x12,1
; 0000 00AD delay_us(6);
_0x1F:
	__DELAY_USB 32
; 0000 00AE }
	RCALL __LOADLOCR4
	ADIW R28,4
	RET
; .FEND
;void Process_8data_read(void)
; 0000 00B1 {
_Process_8data_read:
; .FSTART _Process_8data_read
; 0000 00B2 U8 i, TEMP_READ_DATA = 0;
; 0000 00B3 READ_DATA=0x00;
	ST   -Y,R17
	ST   -Y,R16
;	i -> R17
;	TEMP_READ_DATA -> R16
	LDI  R16,0
	CLR  R9
; 0000 00B4 SDA_IN;
	CBI  0x11,1
; 0000 00B5 
; 0000 00B6 
; 0000 00B7 
; 0000 00B8 for (i = 0; i < 8; i++)
	LDI  R17,LOW(0)
_0x21:
	CPI  R17,8
	BRSH _0x22
; 0000 00B9 {
; 0000 00BA 
; 0000 00BB CLK_HIGH;
	SBI  0x12,0
; 0000 00BC delay_us(6);
	__DELAY_USB 32
; 0000 00BD CLK_LOW;
	RCALL SUBOPT_0x4
; 0000 00BE delay_us(6);
; 0000 00BF 
; 0000 00C0 
; 0000 00C1 
; 0000 00C2 
; 0000 00C3 TEMP_READ_DATA = ((PIND&0x02)==0x00) ? 0x00 : 0x80;
	SBIC 0x10,1
	RJMP _0x23
	LDI  R30,LOW(0)
	RJMP _0x24
_0x23:
	LDI  R30,LOW(128)
_0x24:
	MOV  R16,R30
; 0000 00C4 TEMP_READ_DATA >>= i;
	MOV  R30,R17
	MOV  R26,R16
	RCALL __LSRB12
	MOV  R16,R30
; 0000 00C5 READ_DATA |= TEMP_READ_DATA;
	OR   R9,R16
; 0000 00C6 
; 0000 00C7 delay_us(6);
	__DELAY_USB 32
; 0000 00C8 } // end of for()
	SUBI R17,-1
	RJMP _0x21
_0x22:
; 0000 00C9 }
	LD   R16,Y+
	LD   R17,Y+
	RET
; .FEND
;void ACK_read(void){
; 0000 00CB void ACK_read(void){
_ACK_read:
; .FSTART _ACK_read
; 0000 00CC U8 i = 0;                                // ACK 확인받기위한 반복문 변수
; 0000 00CD 
; 0000 00CE SDA_IN;                                  // 데이터 입력
	ST   -Y,R17
;	i -> R17
	LDI  R17,0
	CBI  0x11,1
; 0000 00CF CLK_HIGH;                                // ACK 신호 받기준비
	SBI  0x12,0
; 0000 00D0 for(i=10;i>0;i--){                       // 10번 반복중  ACK 받으면 반복문 빠져 나감
	LDI  R17,LOW(10)
_0x27:
	CPI  R17,1
	BRLO _0x28
; 0000 00D1 if((PIND & 0x02) == 0x00){i=1;
	SBIC 0x10,1
	RJMP _0x29
	LDI  R17,LOW(1)
; 0000 00D2 PORTC=0xFE;
	LDI  R30,LOW(254)
	RJMP _0x2E
; 0000 00D3 }
; 0000 00D4 else PORTC=0x0F;                     // NACK 받았다면 LED 다 켜짐
_0x29:
	LDI  R30,LOW(15)
_0x2E:
	OUT  0x15,R30
; 0000 00D5 }//end of for
	SUBI R17,1
	RJMP _0x27
_0x28:
; 0000 00D6 delay_us(6);
	__DELAY_USB 32
; 0000 00D7 CLK_LOW;
	CBI  0x12,0
; 0000 00D8 SDA_OUT;                                 //데이터 출력
	SBI  0x11,1
; 0000 00D9 delay_us(6);
	__DELAY_USB 32
; 0000 00DA }
	RJMP _0x2000001
; .FEND
;void Random_read(void){
; 0000 00DC void Random_read(void){
_Random_read:
; .FSTART _Random_read
; 0000 00DD IIC_START();             // start
	RCALL SUBOPT_0x0
; 0000 00DE Process_8data(DEV_ADD_W);// device address 7bit와 write 0
; 0000 00DF ACK_read();              // ack
; 0000 00E0 Process_8data(IIC_ADD);  // address 8bits
; 0000 00E1 ACK_read();              // ack
; 0000 00E2 IIC_START();             // start
	RCALL SUBOPT_0x5
; 0000 00E3 Process_8data(DEV_ADD_R);// device address 7bit와 read 1
; 0000 00E4 ACK_read();              // ack
; 0000 00E5 Process_8data_read();    // data 8bits read
	RCALL _Process_8data_read
; 0000 00E6 no_ACK();                // nack 데이터 그만 주기 master->slave
	RCALL _no_ACK
; 0000 00E7 IIC_STOP();
_0x2000005:
	RCALL _IIC_STOP
; 0000 00E8 //    PORTC=READ_DATA;            // 시험용으로 READ_DATA 확인용
; 0000 00E9 }//end of Random_read
	RET
; .FEND
;void no_ACK(void){
; 0000 00EB void no_ACK(void){
_no_ACK:
; .FSTART _no_ACK
; 0000 00EC SDA_OUT;
	SBI  0x11,1
; 0000 00ED DAT_HIGH;
	SBI  0x12,1
; 0000 00EE CLK_HIGH;
	RJMP _0x2000003
; 0000 00EF delay_us(12);
; 0000 00F0 CLK_LOW;
; 0000 00F1 delay_us(6);
; 0000 00F2 }
; .FEND
;void ACK(void){
; 0000 00F3 void ACK(void){
_ACK:
; .FSTART _ACK
; 0000 00F4 SDA_OUT;
	SBI  0x11,1
; 0000 00F5 DAT_LOW;
	RCALL SUBOPT_0x3
; 0000 00F6 delay_us(6);
; 0000 00F7 CLK_HIGH;
_0x2000003:
	SBI  0x12,0
; 0000 00F8 delay_us(12);
	__DELAY_USB 64
; 0000 00F9 CLK_LOW;
_0x2000004:
	CBI  0x12,0
; 0000 00FA delay_us(6);
	__DELAY_USB 32
; 0000 00FB }
	RET
; .FEND
;void Sequential_read(void){
; 0000 00FC void Sequential_read(void){
_Sequential_read:
; .FSTART _Sequential_read
; 0000 00FD U8 i;
; 0000 00FE IIC_START();
	ST   -Y,R17
;	i -> R17
	RCALL SUBOPT_0x0
; 0000 00FF Process_8data(DEV_ADD_W);
; 0000 0100 ACK_read();
; 0000 0101 Process_8data(IIC_ADD);
; 0000 0102 ACK_read();
; 0000 0103 IIC_START();
	RCALL SUBOPT_0x5
; 0000 0104 Process_8data(DEV_ADD_R);
; 0000 0105 ACK_read();
; 0000 0106 for(i=0;i<4;i++){
	LDI  R17,LOW(0)
_0x2C:
	CPI  R17,4
	BRSH _0x2D
; 0000 0107 Process_8data_read();
	RCALL _Process_8data_read
; 0000 0108 DATA_READ_FIVE[i]=READ_DATA;
	RCALL SUBOPT_0x6
	ST   Z,R9
; 0000 0109 ACK();
	RCALL _ACK
; 0000 010A check_sum_read+=DATA_READ_FIVE[i];
	RCALL SUBOPT_0x6
	LD   R30,Z
	LDI  R31,0
	__ADDWRR 12,13,30,31
; 0000 010B }
	SUBI R17,-1
	RJMP _0x2C
_0x2D:
; 0000 010C Process_8data_read();
	RCALL _Process_8data_read
; 0000 010D DATA_READ_FIVE[4]=READ_DATA;
	__PUTBMRN _DATA_READ_FIVE,4,9
; 0000 010E no_ACK();
	RCALL _no_ACK
; 0000 010F check_sum_read+=DATA_READ_FIVE[4];
	__GETB1MN _DATA_READ_FIVE,4
	LDI  R31,0
	__ADDWRR 12,13,30,31
; 0000 0110 IIC_STOP();
_0x2000002:
	RCALL _IIC_STOP
; 0000 0111 }
_0x2000001:
	LD   R17,Y+
	RET
; .FEND

	.DSEG
_DATA_FIVE:
	.BYTE 0x5
_DATA_READ_FIVE:
	.BYTE 0x5

	.CSEG
;OPTIMIZER ADDED SUBROUTINE, CALLED 4 TIMES, CODE SIZE REDUCTION:16 WORDS
SUBOPT_0x0:
	RCALL _IIC_START
	MOV  R26,R5
	RCALL _Process_8data
	RCALL _ACK_read
	MOV  R26,R7
	RCALL _Process_8data
	RJMP _ACK_read

;OPTIMIZER ADDED SUBROUTINE, CALLED 2 TIMES, CODE SIZE REDUCTION:1 WORDS
SUBOPT_0x1:
	MOV  R30,R17
	LDI  R31,0
	SUBI R30,LOW(-_DATA_FIVE)
	SBCI R31,HIGH(-_DATA_FIVE)
	RET

;OPTIMIZER ADDED SUBROUTINE, CALLED 4 TIMES, CODE SIZE REDUCTION:16 WORDS
SUBOPT_0x2:
	__DELAY_USB 32
	SBI  0x12,0
	__DELAY_USB 32
	RET

;OPTIMIZER ADDED SUBROUTINE, CALLED 2 TIMES, CODE SIZE REDUCTION:1 WORDS
SUBOPT_0x3:
	CBI  0x12,1
	__DELAY_USB 32
	RET

;OPTIMIZER ADDED SUBROUTINE, CALLED 3 TIMES, CODE SIZE REDUCTION:4 WORDS
SUBOPT_0x4:
	CBI  0x12,0
	__DELAY_USB 32
	RET

;OPTIMIZER ADDED SUBROUTINE, CALLED 2 TIMES, CODE SIZE REDUCTION:1 WORDS
SUBOPT_0x5:
	RCALL _IIC_START
	MOV  R26,R4
	RCALL _Process_8data
	RJMP _ACK_read

;OPTIMIZER ADDED SUBROUTINE, CALLED 2 TIMES, CODE SIZE REDUCTION:1 WORDS
SUBOPT_0x6:
	MOV  R30,R17
	LDI  R31,0
	SUBI R30,LOW(-_DATA_READ_FIVE)
	SBCI R31,HIGH(-_DATA_READ_FIVE)
	RET

;RUNTIME LIBRARY

	.CSEG
__SAVELOCR4:
	ST   -Y,R19
__SAVELOCR3:
	ST   -Y,R18
__SAVELOCR2:
	ST   -Y,R17
	ST   -Y,R16
	RET

__LOADLOCR4:
	LDD  R19,Y+3
__LOADLOCR3:
	LDD  R18,Y+2
__LOADLOCR2:
	LDD  R17,Y+1
	LD   R16,Y
	RET

__LSRB12:
	TST  R30
	MOV  R0,R30
	MOV  R30,R26
	BREQ __LSRB12R
__LSRB12L:
	LSR  R30
	DEC  R0
	BRNE __LSRB12L
__LSRB12R:
	RET

;END OF CODE MARKER
__END_OF_CODE:

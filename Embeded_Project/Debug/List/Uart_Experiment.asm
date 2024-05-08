
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
	.DEF _led=R5
	.DEF _TIM2_COMP_FLAG=R4
	.DEF _TIM0_OVF_FLAG=R7
	.DEF _cnt=R6
	.DEF _i=R9
	.DEF _UART_Rx_data=R8
	.DEF _UART_Rx_data_1=R11
	.DEF _UART_Rx_data_2=R10
	.DEF _UART_Rx_data_3=R13
	.DEF _flag=R12

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
	JMP  _timer_comp2
	JMP  0x00
	JMP  0x00
	JMP  0x00
	JMP  0x00
	JMP  0x00
	JMP  0x00
	JMP  _timer_int0
	JMP  0x00
	JMP  _usart0_rx
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
	.DB  0x0,0xFF,0x0,0x0
	.DB  0xFF,0x0,0xFF,0xFF
	.DB  0x0,0xFF

_0x3:
	.DB  0x2D,0x2D,0x2D,0x2D,0x2D,0x2D,0x2D,0x2D
	.DB  0x2D,0x2D,0x2D,0x2D,0x2D,0x2D,0x2D,0x2D
	.DB  0x2D,0x2D,0x2D,0x2D,0x2D,0x2D,0x2D,0x2D
	.DB  0x2D,0x2D,0x2D,0x2D,0x2D,0x2D,0x2D
_0x4:
	.DB  0x5B,0x20,0x55,0x41,0x52,0x54,0x20,0x45
	.DB  0x78,0x70,0x65,0x72,0x69,0x6D,0x65,0x6E
	.DB  0x74,0x20,0x5D
_0x5:
	.DB  0x50,0x72,0x65,0x73,0x73,0x20,0x74,0x68
	.DB  0x65,0x20,0x43,0x68,0x61,0x72,0x20,0x3A
	.DB  0x20
_0x6:
	.DB  0x4C,0x45,0x44,0x20,0x54,0x65,0x73,0x74
	.DB  0x20,0x3A,0x20,0x4C
_0x7:
	.DB  0x37,0x53,0x65,0x67,0x20,0x54,0x65,0x73
	.DB  0x74,0x20,0x3A,0x20,0x53
_0x8:
	.DB  0x4D,0x61,0x69,0x6E,0x20,0x4D,0x65,0x6E
	.DB  0x75,0x20,0x3A,0x20,0x4D
_0x9:
	.DB  0x31,0x2E,0x20,0x49,0x6E,0x63,0x72,0x65
	.DB  0x61,0x73,0x69,0x6E,0x67,0x20,0x4C,0x45
	.DB  0x44
_0xA:
	.DB  0x32,0x2E,0x20,0x44,0x65,0x63,0x72,0x65
	.DB  0x73,0x65,0x69,0x6E,0x67,0x20,0x4C,0x45
	.DB  0x44
_0xB:
	.DB  0x4D,0x2E,0x20,0x4D,0x61,0x69,0x6E,0x20
	.DB  0x4D,0x65,0x6E,0x75
_0xC:
	.DB  0x4C,0x45,0x44,0x20,0x54,0x65,0x73,0x74
	.DB  0x20,0x53,0x65,0x6C,0x65,0x63,0x74
_0xD:
	.DB  0x37,0x73,0x65,0x67,0x20,0x54,0x65,0x73
	.DB  0x74,0x20,0x53,0x65,0x6C,0x65,0x63,0x74
_0xE:
	.DB  0x33,0x2E,0x20,0x55,0x70,0x20,0x43,0x6F
	.DB  0x75,0x6E,0x74,0x69,0x6E,0x67,0x20,0x37
	.DB  0x73,0x65,0x67,0x73
_0xF:
	.DB  0x34,0x2E,0x20,0x44,0x6F,0x77,0x6E,0x20
	.DB  0x43,0x6F,0x75,0x6E,0x74,0x69,0x6E,0x67
	.DB  0x20,0x37,0x73,0x65,0x67,0x73
_0x10:
	.DB  0x35,0x2E,0x20,0x44,0x69,0x73,0x70,0x6C
	.DB  0x61,0x79,0x20,0x79,0x6F,0x75,0x74,0x20
	.DB  0x49,0x44
_0x11:
	.DB  0x52,0x65,0x74,0x75,0x72,0x6E,0x20,0x74
	.DB  0x6F,0x20,0x4D,0x61,0x69,0x6E,0x20,0x4D
	.DB  0x65,0x6E,0x75
_0x12:
	.DB  0x5B,0x20,0x49,0x6E,0x63,0x72,0x65,0x61
	.DB  0x73,0x69,0x6E,0x67,0x20,0x4C,0x45,0x44
	.DB  0x20,0x5D
_0x13:
	.DB  0x5B,0x20,0x44,0x65,0x63,0x72,0x65,0x61
	.DB  0x73,0x69,0x6E,0x67,0x20,0x4C,0x45,0x44
	.DB  0x20,0x5D
_0x14:
	.DB  0x5B,0x20,0x55,0x70,0x20,0x43,0x6F,0x75
	.DB  0x6E,0x74,0x69,0x6E,0x67,0x20,0x37,0x73
	.DB  0x65,0x67,0x73,0x20,0x5D
_0x15:
	.DB  0x5B,0x20,0x44,0x6F,0x77,0x6E,0x20,0x43
	.DB  0x6F,0x75,0x6E,0x74,0x69,0x6E,0x67,0x20
	.DB  0x37,0x73,0x65,0x67,0x73,0x20,0x5D
_0x16:
	.DB  0x5B,0x20,0x44,0x69,0x73,0x70,0x6C,0x61
	.DB  0x79,0x20,0x79,0x6F,0x75,0x72,0x20,0x49
	.DB  0x44,0x20,0x5D
_0x17:
	.DB  0x59,0x6F,0x75,0x72,0x20,0x49,0x44,0x20
	.DB  0x3A,0x20,0x50,0x61,0x72,0x6B,0x4A,0x75
	.DB  0x6E,0x68,0x6F
_0x18:
	.DB  0x3F,0x6,0x5B,0x4F,0x66,0x6D,0x7D,0x7
	.DB  0x7F,0x6F

__GLOBAL_INI_TBL:
	.DW  0x0A
	.DW  0x04
	.DW  __REG_VARS*2

	.DW  0x1F
	.DW  _string_line
	.DW  _0x3*2

	.DW  0x13
	.DW  _string_title
	.DW  _0x4*2

	.DW  0x11
	.DW  _string_press
	.DW  _0x5*2

	.DW  0x0C
	.DW  _string_LED
	.DW  _0x6*2

	.DW  0x0D
	.DW  _string_7seg
	.DW  _0x7*2

	.DW  0x0D
	.DW  _string_main
	.DW  _0x8*2

	.DW  0x11
	.DW  _string_Up_LED
	.DW  _0x9*2

	.DW  0x11
	.DW  _string_Down_LED
	.DW  _0xA*2

	.DW  0x0C
	.DW  _string_Main_Menu
	.DW  _0xB*2

	.DW  0x0F
	.DW  _string_LED_ok
	.DW  _0xC*2

	.DW  0x10
	.DW  _string_7seg_ok
	.DW  _0xD*2

	.DW  0x14
	.DW  _string_Up_7seg
	.DW  _0xE*2

	.DW  0x16
	.DW  _string_Down_7seg
	.DW  _0xF*2

	.DW  0x12
	.DW  _string_DP_ID
	.DW  _0x10*2

	.DW  0x13
	.DW  _string_Re_main
	.DW  _0x11*2

	.DW  0x12
	.DW  _string_Up_LED_title
	.DW  _0x12*2

	.DW  0x12
	.DW  _string_Down_LED_title
	.DW  _0x13*2

	.DW  0x15
	.DW  _string_Up_7seg_title
	.DW  _0x14*2

	.DW  0x17
	.DW  _string_Down_7seg_title
	.DW  _0x15*2

	.DW  0x13
	.DW  _string_DP_ID_title
	.DW  _0x16*2

	.DW  0x13
	.DW  _string_ID
	.DW  _0x17*2

	.DW  0x0A
	.DW  _seg_pat
	.DW  _0x18*2

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
;void UART_menu(void);
;void UART_LED_menu(void);
;void UART_7seg_menu(void);
;void UART_Up_LED_menu(void);
;void UART_Down_LED_menu(void);
;void UART_Up_7seg_menu(void);
;void UART_Down_7seg_menu(void);
;void UART_DP_ID_menu(void);
;void Putch(char data);
;void Time_out(void);
;void new_line(void);
;void main(void)
; 0000 0041 {

	.CSEG
_main:
; .FSTART _main
; 0000 0042 
; 0000 0043 UCSR0A = 0x0;
	LDI  R30,LOW(0)
	OUT  0xB,R30
; 0000 0044 UCSR0B = 0b10011000; // RXCIE0 [7] =1 : 수신 완료 인터럽트 enable
	LDI  R30,LOW(152)
	OUT  0xA,R30
; 0000 0045 
; 0000 0046 UCSR0C = 0b00000110; // 비동기 데이터 8비트 모드
	LDI  R30,LOW(6)
	STS  149,R30
; 0000 0047 UBRR0H = 0; // X-TAL = 16MHz 일때, BAUD = 9600
	LDI  R30,LOW(0)
	STS  144,R30
; 0000 0048 UBRR0L = 103;
	LDI  R30,LOW(103)
	OUT  0x9,R30
; 0000 0049 
; 0000 004A DDRC = 0xFF;
	LDI  R30,LOW(255)
	OUT  0x14,R30
; 0000 004B PORTC = led;
	OUT  0x15,R5
; 0000 004C 
; 0000 004D TIMSK = 0x81;           // tim2 비교 매치, tim0 overflow
	LDI  R30,LOW(129)
	OUT  0x37,R30
; 0000 004E TCCR2 = 0x0D;
	LDI  R30,LOW(13)
	OUT  0x25,R30
; 0000 004F OCR2 = 255;
	LDI  R30,LOW(255)
	OUT  0x23,R30
; 0000 0050 TCNT2 = 0;
	LDI  R30,LOW(0)
	OUT  0x24,R30
; 0000 0051 
; 0000 0052 DDRB = 0xF0;
	LDI  R30,LOW(240)
	OUT  0x17,R30
; 0000 0053 DDRD = 0xF0;
	OUT  0x11,R30
; 0000 0054 DDRG = 0x0F;
	LDI  R30,LOW(15)
	STS  100,R30
; 0000 0055 
; 0000 0056 EIMSK = 0b00110000;
	LDI  R30,LOW(48)
	OUT  0x39,R30
; 0000 0057 EICRB = 0b00001010;
	LDI  R30,LOW(10)
	OUT  0x3A,R30
; 0000 0058 TCCR0 = 0x07;           // 1024
	LDI  R30,LOW(7)
	OUT  0x33,R30
; 0000 0059 TCNT0 = 0x00;           // 타이머/카운터0 레지스터 초기값
	LDI  R30,LOW(0)
	OUT  0x32,R30
; 0000 005A 
; 0000 005B SREG |= 0x80; // 전역 인터럽트 인에이블 I 비트 셋
	BSET 7
; 0000 005C 
; 0000 005D UART_menu();
	RCALL _UART_menu
; 0000 005E 
; 0000 005F while(1)
_0x19:
; 0000 0060 {
; 0000 0061 if(flag==1)
	LDI  R30,LOW(1)
	CP   R30,R12
	BREQ PC+2
	RJMP _0x1C
; 0000 0062 {
; 0000 0063 if(UART_Rx_data == 'L' || UART_Rx_data == 'l') UART_Rx_data_1 = 'l';
	LDI  R30,LOW(76)
	CP   R30,R8
	BREQ _0x1E
	LDI  R30,LOW(108)
	CP   R30,R8
	BRNE _0x1D
_0x1E:
	LDI  R30,LOW(108)
	MOV  R11,R30
; 0000 0064 if(UART_Rx_data == 'S' || UART_Rx_data == 's') UART_Rx_data_1 = 's';
_0x1D:
	LDI  R30,LOW(83)
	CP   R30,R8
	BREQ _0x21
	LDI  R30,LOW(115)
	CP   R30,R8
	BRNE _0x20
_0x21:
	LDI  R30,LOW(115)
	MOV  R11,R30
; 0000 0065 if(UART_Rx_data == 'M' || UART_Rx_data == 'm')UART_Rx_data_1 = 'm';
_0x20:
	LDI  R30,LOW(77)
	CP   R30,R8
	BREQ _0x24
	LDI  R30,LOW(109)
	CP   R30,R8
	BRNE _0x23
_0x24:
	LDI  R30,LOW(109)
	MOV  R11,R30
; 0000 0066 main_flag = 1;
_0x23:
	LDI  R30,LOW(1)
	STS  _main_flag,R30
; 0000 0067 switch (UART_Rx_data_1)
	MOV  R30,R11
	LDI  R31,0
; 0000 0068 {
; 0000 0069 case 'l':
	CPI  R30,LOW(0x6C)
	LDI  R26,HIGH(0x6C)
	CPC  R31,R26
	BRNE _0x29
; 0000 006A LED_flag = 1;
	LDI  R30,LOW(1)
	STS  _LED_flag,R30
; 0000 006B new_line();                 // 들여쓰기
	RCALL _new_line
; 0000 006C new_line();                 // 들여쓰기
	RCALL _new_line
; 0000 006D pStr = string_LED_ok;
	LDI  R30,LOW(_string_LED_ok)
	LDI  R31,HIGH(_string_LED_ok)
	RCALL SUBOPT_0x0
; 0000 006E while(*pStr != 0) Putch(*pStr++);                      // 문자열 전송
_0x2A:
	RCALL SUBOPT_0x1
	BREQ _0x2C
	RCALL SUBOPT_0x2
	RJMP _0x2A
_0x2C:
; 0000 006F while((UCSR0A & 0x20) == 0x0); UDR0 =0x0D;
_0x2D:
	SBIS 0xB,5
	RJMP _0x2D
	LDI  R30,LOW(13)
	OUT  0xC,R30
; 0000 0070 UART_LED_menu();
	RCALL _UART_LED_menu
; 0000 0071 
; 0000 0072 pStr = string_press;
	LDI  R30,LOW(_string_press)
	LDI  R31,HIGH(_string_press)
	RCALL SUBOPT_0x0
; 0000 0073 while(*pStr != 0) Putch(*pStr++);                     // 문자열 전송
_0x30:
	RCALL SUBOPT_0x1
	BREQ _0x32
	RCALL SUBOPT_0x2
	RJMP _0x30
_0x32:
; 0000 0075 break;
	RJMP _0x28
; 0000 0076 
; 0000 0077 case 's':
_0x29:
	CPI  R30,LOW(0x73)
	LDI  R26,HIGH(0x73)
	CPC  R31,R26
	BRNE _0x33
; 0000 0078 seg_flag = 1;
	LDI  R30,LOW(1)
	STS  _seg_flag,R30
; 0000 0079 new_line();                 // 들여쓰기
	RCALL _new_line
; 0000 007A new_line();                 // 들여쓰기
	RCALL _new_line
; 0000 007B pStr = string_7seg_ok;
	LDI  R30,LOW(_string_7seg_ok)
	LDI  R31,HIGH(_string_7seg_ok)
	RCALL SUBOPT_0x0
; 0000 007C while(*pStr != 0) Putch(*pStr++);                      // 문자열 전송
_0x34:
	RCALL SUBOPT_0x1
	BREQ _0x36
	RCALL SUBOPT_0x2
	RJMP _0x34
_0x36:
; 0000 007D while((UCSR0A & 0x20) == 0x0); UDR0 =0x0D;
_0x37:
	SBIS 0xB,5
	RJMP _0x37
	LDI  R30,LOW(13)
	OUT  0xC,R30
; 0000 007E UART_7seg_menu();
	RCALL _UART_7seg_menu
; 0000 007F 
; 0000 0080 pStr = string_press;
	LDI  R30,LOW(_string_press)
	LDI  R31,HIGH(_string_press)
	RCALL SUBOPT_0x0
; 0000 0081 while(*pStr != 0) Putch(*pStr++);                     // 문자열 전송
_0x3A:
	RCALL SUBOPT_0x1
	BREQ _0x3C
	RCALL SUBOPT_0x2
	RJMP _0x3A
_0x3C:
; 0000 0083 break;
	RJMP _0x28
; 0000 0084 
; 0000 0085 case 'm':
_0x33:
	CPI  R30,LOW(0x6D)
	LDI  R26,HIGH(0x6D)
	CPC  R31,R26
	BRNE _0x28
; 0000 0086 new_line();                 // 들여쓰기
	RCALL SUBOPT_0x3
; 0000 0087 new_line();                 // 들여쓰기
; 0000 0088 PORTC = 0xFF;
; 0000 0089 PORTD = 0;
; 0000 008A PORTB = 0;
; 0000 008B main_flag = 1;
; 0000 008C LED_flag = 0;
; 0000 008D seg_flag = 0;
; 0000 008E pStr = string_Re_main;
	LDI  R30,LOW(_string_Re_main)
	LDI  R31,HIGH(_string_Re_main)
	RCALL SUBOPT_0x0
; 0000 008F while(*pStr != 0) Putch(*pStr++);                      // 문자열 전송
_0x3E:
	RCALL SUBOPT_0x1
	BREQ _0x40
	RCALL SUBOPT_0x2
	RJMP _0x3E
_0x40:
; 0000 0090 while((UCSR0A & 0x20) == 0x0); UDR0 =0x0D;
_0x41:
	SBIS 0xB,5
	RJMP _0x41
	RCALL SUBOPT_0x4
; 0000 0091 UART_menu();
; 0000 0092 
; 0000 0093 pStr = string_press;
; 0000 0094 while(*pStr != 0) Putch(*pStr++);                     // 문자열 전송
_0x44:
	RCALL SUBOPT_0x1
	BREQ _0x46
	RCALL SUBOPT_0x2
	RJMP _0x44
_0x46:
; 0000 0096 break;
; 0000 0097 }
_0x28:
; 0000 0098 
; 0000 0099 flag=0;
	CLR  R12
; 0000 009A }
; 0000 009B 
; 0000 009C if(main_flag == 1 && LED_flag == 1)
_0x1C:
	LDS  R26,_main_flag
	CPI  R26,LOW(0x1)
	BRNE _0x48
	LDS  R26,_LED_flag
	CPI  R26,LOW(0x1)
	BREQ _0x49
_0x48:
	RJMP _0x47
_0x49:
; 0000 009D {
; 0000 009E if(flag == 1)
	LDI  R30,LOW(1)
	CP   R30,R12
	BREQ PC+2
	RJMP _0x4A
; 0000 009F {
; 0000 00A0 if(UART_Rx_data == '1') UART_Rx_data_2 = '1';
	LDI  R30,LOW(49)
	CP   R30,R8
	BRNE _0x4B
	MOV  R10,R30
; 0000 00A1 if(UART_Rx_data == '2') UART_Rx_data_2 = '2';
_0x4B:
	LDI  R30,LOW(50)
	CP   R30,R8
	BRNE _0x4C
	MOV  R10,R30
; 0000 00A2 if(UART_Rx_data == 'M' || UART_Rx_data == 'm') UART_Rx_data_2 = 'm';
_0x4C:
	LDI  R30,LOW(77)
	CP   R30,R8
	BREQ _0x4E
	LDI  R30,LOW(109)
	CP   R30,R8
	BRNE _0x4D
_0x4E:
	LDI  R30,LOW(109)
	MOV  R10,R30
; 0000 00A3 switch (UART_Rx_data_2)
_0x4D:
	MOV  R30,R10
	LDI  R31,0
; 0000 00A4 {
; 0000 00A5 case '1':
	CPI  R30,LOW(0x31)
	LDI  R26,HIGH(0x31)
	CPC  R31,R26
	BRNE _0x53
; 0000 00A6 new_line();                 // 들여쓰기
	RCALL _new_line
; 0000 00A7 new_line();                 // 들여쓰기
	RCALL _new_line
; 0000 00A8 UART_Up_LED_menu();
	RCALL _UART_Up_LED_menu
; 0000 00A9 pStr = string_press;
	LDI  R30,LOW(_string_press)
	LDI  R31,HIGH(_string_press)
	RCALL SUBOPT_0x0
; 0000 00AA while(*pStr != 0) Putch(*pStr++);                     // 문자열 전송
_0x54:
	RCALL SUBOPT_0x1
	BREQ _0x56
	RCALL SUBOPT_0x2
	RJMP _0x54
_0x56:
; 0000 00AB LED_flag_sub = 0x01;
	LDI  R30,LOW(1)
	STS  _LED_flag_sub,R30
; 0000 00AC break;
	RJMP _0x52
; 0000 00AD 
; 0000 00AE case '2':
_0x53:
	CPI  R30,LOW(0x32)
	LDI  R26,HIGH(0x32)
	CPC  R31,R26
	BRNE _0x57
; 0000 00AF new_line();                 // 들여쓰기
	RCALL _new_line
; 0000 00B0 new_line();                 // 들여쓰기
	RCALL _new_line
; 0000 00B1 UART_Down_LED_menu();
	RCALL _UART_Down_LED_menu
; 0000 00B2 LED_flag_sub = 0x02;
	LDI  R30,LOW(2)
	STS  _LED_flag_sub,R30
; 0000 00B3 pStr = string_press;
	LDI  R30,LOW(_string_press)
	LDI  R31,HIGH(_string_press)
	RCALL SUBOPT_0x0
; 0000 00B4 while(*pStr != 0) Putch(*pStr++);                     // 문자열 전송
_0x58:
	RCALL SUBOPT_0x1
	BREQ _0x5A
	RCALL SUBOPT_0x2
	RJMP _0x58
_0x5A:
; 0000 00B5 break;
	RJMP _0x52
; 0000 00B6 
; 0000 00B7 case 'm':
_0x57:
	CPI  R30,LOW(0x6D)
	LDI  R26,HIGH(0x6D)
	CPC  R31,R26
	BRNE _0x52
; 0000 00B8 new_line();                 // 들여쓰기
	RCALL SUBOPT_0x3
; 0000 00B9 new_line();                 // 들여쓰기
; 0000 00BA PORTC = 0xFF;
; 0000 00BB PORTD = 0;
; 0000 00BC PORTB = 0;
; 0000 00BD main_flag = 1;
; 0000 00BE LED_flag = 0;
; 0000 00BF seg_flag = 0;
; 0000 00C0 LED_flag_sub = 0;
	RCALL SUBOPT_0x5
; 0000 00C1 seg_flag_sub = 0;
	STS  _seg_flag_sub,R30
; 0000 00C2 pStr = string_Re_main;
	LDI  R30,LOW(_string_Re_main)
	LDI  R31,HIGH(_string_Re_main)
	RCALL SUBOPT_0x0
; 0000 00C3 while(*pStr != 0) Putch(*pStr++);                      // 문자열 전송
_0x5C:
	RCALL SUBOPT_0x1
	BREQ _0x5E
	RCALL SUBOPT_0x2
	RJMP _0x5C
_0x5E:
; 0000 00C4 while((UCSR0A & 0x20) == 0x0); UDR0 =0x0D;
_0x5F:
	SBIS 0xB,5
	RJMP _0x5F
	RCALL SUBOPT_0x4
; 0000 00C5 UART_menu();
; 0000 00C6 
; 0000 00C7 pStr = string_press;
; 0000 00C8 while(*pStr != 0) Putch(*pStr++);                     // 문자열 전송
_0x62:
	RCALL SUBOPT_0x1
	BREQ _0x64
	RCALL SUBOPT_0x2
	RJMP _0x62
_0x64:
; 0000 00CA break;
; 0000 00CB }
_0x52:
; 0000 00CC 
; 0000 00CD flag = 0;
	CLR  R12
; 0000 00CE }
; 0000 00CF if(LED_flag_sub == 0x01)
_0x4A:
	LDS  R26,_LED_flag_sub
	CPI  R26,LOW(0x1)
	BRNE _0x65
; 0000 00D0 {
; 0000 00D1 if (TIM2_COMP_FLAG == 1)
	LDI  R30,LOW(1)
	CP   R30,R4
	BRNE _0x66
; 0000 00D2 {
; 0000 00D3 led = led << 1;
	LSL  R5
; 0000 00D4 led = led | 0x01;   // 최하위 비트 set
	OR   R5,R30
; 0000 00D5 if (led == 0xFF) led = 0xFE;
	LDI  R30,LOW(255)
	CP   R30,R5
	BRNE _0x67
	LDI  R30,LOW(254)
	MOV  R5,R30
; 0000 00D6 PORTC = led;
_0x67:
	OUT  0x15,R5
; 0000 00D7 TIM2_COMP_FLAG = 0;
	CLR  R4
; 0000 00D8 }
; 0000 00D9 }
_0x66:
; 0000 00DA if(LED_flag_sub == 0x02)
_0x65:
	LDS  R26,_LED_flag_sub
	CPI  R26,LOW(0x2)
	BRNE _0x68
; 0000 00DB {
; 0000 00DC if (TIM2_COMP_FLAG == 1)
	LDI  R30,LOW(1)
	CP   R30,R4
	BRNE _0x69
; 0000 00DD {
; 0000 00DE led = led >> 1;
	LSR  R5
; 0000 00DF led = led | 0x80;   // 최상위 비트 set
	LDI  R30,LOW(128)
	OR   R5,R30
; 0000 00E0 if (led == 0xFF) led = 0x7F;
	LDI  R30,LOW(255)
	CP   R30,R5
	BRNE _0x6A
	LDI  R30,LOW(127)
	MOV  R5,R30
; 0000 00E1 PORTC = led;
_0x6A:
	OUT  0x15,R5
; 0000 00E2 TIM2_COMP_FLAG = 0;
	CLR  R4
; 0000 00E3 }
; 0000 00E4 }
_0x69:
; 0000 00E5 }
_0x68:
; 0000 00E6 
; 0000 00E7 if(main_flag == 1 && seg_flag == 1)
_0x47:
	LDS  R26,_main_flag
	CPI  R26,LOW(0x1)
	BRNE _0x6C
	LDS  R26,_seg_flag
	CPI  R26,LOW(0x1)
	BREQ _0x6D
_0x6C:
	RJMP _0x6B
_0x6D:
; 0000 00E8 {
; 0000 00E9 if(flag == 1)
	LDI  R30,LOW(1)
	CP   R30,R12
	BREQ PC+2
	RJMP _0x6E
; 0000 00EA {
; 0000 00EB if(UART_Rx_data == '3') UART_Rx_data_3 = '3';
	LDI  R30,LOW(51)
	CP   R30,R8
	BRNE _0x6F
	MOV  R13,R30
; 0000 00EC if(UART_Rx_data == '4') UART_Rx_data_3 = '4';
_0x6F:
	LDI  R30,LOW(52)
	CP   R30,R8
	BRNE _0x70
	MOV  R13,R30
; 0000 00ED if(UART_Rx_data == '5') UART_Rx_data_3 = '5';
_0x70:
	LDI  R30,LOW(53)
	CP   R30,R8
	BRNE _0x71
	MOV  R13,R30
; 0000 00EE if(UART_Rx_data == 'M' || UART_Rx_data == 'm') UART_Rx_data_3 = 'm';
_0x71:
	LDI  R30,LOW(77)
	CP   R30,R8
	BREQ _0x73
	LDI  R30,LOW(109)
	CP   R30,R8
	BRNE _0x72
_0x73:
	LDI  R30,LOW(109)
	MOV  R13,R30
; 0000 00EF switch (UART_Rx_data_3)
_0x72:
	MOV  R30,R13
	LDI  R31,0
; 0000 00F0 {
; 0000 00F1 case '3':                     // 문자열 전송
	CPI  R30,LOW(0x33)
	LDI  R26,HIGH(0x33)
	CPC  R31,R26
	BRNE _0x78
; 0000 00F2 new_line();                 // 들여쓰기
	RCALL _new_line
; 0000 00F3 new_line();                 // 들여쓰기
	RCALL _new_line
; 0000 00F4 UART_Up_7seg_menu();
	RCALL _UART_Up_7seg_menu
; 0000 00F5 
; 0000 00F6 pStr = string_press;
	LDI  R30,LOW(_string_press)
	LDI  R31,HIGH(_string_press)
	RCALL SUBOPT_0x0
; 0000 00F7 while(*pStr != 0) Putch(*pStr++);                     // 문자열 전송
_0x79:
	RCALL SUBOPT_0x1
	BREQ _0x7B
	RCALL SUBOPT_0x2
	RJMP _0x79
_0x7B:
; 0000 00F8 seg_flag_sub = 0x01;
	LDI  R30,LOW(1)
	STS  _seg_flag_sub,R30
; 0000 00F9 break;
	RJMP _0x77
; 0000 00FA 
; 0000 00FB case '4':
_0x78:
	CPI  R30,LOW(0x34)
	LDI  R26,HIGH(0x34)
	CPC  R31,R26
	BRNE _0x7C
; 0000 00FC new_line();
	RCALL _new_line
; 0000 00FD new_line();                 // 들여쓰기
	RCALL _new_line
; 0000 00FE UART_Down_7seg_menu();
	RCALL _UART_Down_7seg_menu
; 0000 00FF 
; 0000 0100 pStr = string_press;
	LDI  R30,LOW(_string_press)
	LDI  R31,HIGH(_string_press)
	RCALL SUBOPT_0x0
; 0000 0101 while(*pStr != 0) Putch(*pStr++);                     // 문자열 전송
_0x7D:
	RCALL SUBOPT_0x1
	BREQ _0x7F
	RCALL SUBOPT_0x2
	RJMP _0x7D
_0x7F:
; 0000 0102 seg_flag_sub = 0x02;
	LDI  R30,LOW(2)
	STS  _seg_flag_sub,R30
; 0000 0103 break;
	RJMP _0x77
; 0000 0104 
; 0000 0105 case '5':
_0x7C:
	CPI  R30,LOW(0x35)
	LDI  R26,HIGH(0x35)
	CPC  R31,R26
	BRNE _0x80
; 0000 0106 new_line();
	RCALL _new_line
; 0000 0107 new_line();                 // 들여쓰기
	RCALL _new_line
; 0000 0108 UART_DP_ID_menu();
	RCALL _UART_DP_ID_menu
; 0000 0109 pStr = string_ID;
	LDI  R30,LOW(_string_ID)
	LDI  R31,HIGH(_string_ID)
	RCALL SUBOPT_0x0
; 0000 010A while(*pStr != 0) Putch(*pStr++);                      // 문자열 전�
_0x81:
	RCALL SUBOPT_0x1
	BREQ _0x83
	RCALL SUBOPT_0x2
	RJMP _0x81
_0x83:
; 0000 010B new_line();
	RCALL _new_line
; 0000 010C new_line();
	RCALL _new_line
; 0000 010D 
; 0000 010E pStr = string_press;
	LDI  R30,LOW(_string_press)
	LDI  R31,HIGH(_string_press)
	RCALL SUBOPT_0x0
; 0000 010F while(*pStr != 0) Putch(*pStr++);                     // 문자열 전송
_0x84:
	RCALL SUBOPT_0x1
	BREQ _0x86
	RCALL SUBOPT_0x2
	RJMP _0x84
_0x86:
; 0000 0110 seg_flag_sub = 0x03;
	LDI  R30,LOW(3)
	STS  _seg_flag_sub,R30
; 0000 0111 
; 0000 0112 break;
	RJMP _0x77
; 0000 0113 
; 0000 0114 case 'm':
_0x80:
	CPI  R30,LOW(0x6D)
	LDI  R26,HIGH(0x6D)
	CPC  R31,R26
	BRNE _0x77
; 0000 0115 new_line();                 // 들여쓰기
	RCALL _new_line
; 0000 0116 new_line();                 // 들여쓰기
	RCALL _new_line
; 0000 0117 PORTC = 0xFF;
	LDI  R30,LOW(255)
	OUT  0x15,R30
; 0000 0118 PORTD = 0;
	LDI  R30,LOW(0)
	OUT  0x12,R30
; 0000 0119 PORTB = 0;
	OUT  0x18,R30
; 0000 011A main_flag = 1;
	LDI  R30,LOW(1)
	STS  _main_flag,R30
; 0000 011B LED_flag = 0;
	LDI  R30,LOW(0)
	STS  _LED_flag,R30
; 0000 011C LED_flag_sub = 0;
	RCALL SUBOPT_0x5
; 0000 011D seg_flag = 0;
	STS  _seg_flag,R30
; 0000 011E seg_flag_sub = 0;
	LDI  R30,LOW(0)
	STS  _seg_flag_sub,R30
; 0000 011F new_line();
	RCALL _new_line
; 0000 0120 pStr = string_Re_main;
	LDI  R30,LOW(_string_Re_main)
	LDI  R31,HIGH(_string_Re_main)
	RCALL SUBOPT_0x0
; 0000 0121 while(*pStr != 0) Putch(*pStr++);                      // 문자열 전송
_0x88:
	RCALL SUBOPT_0x1
	BREQ _0x8A
	RCALL SUBOPT_0x2
	RJMP _0x88
_0x8A:
; 0000 0122 new_line();
	RCALL _new_line
; 0000 0123 UART_menu();
	RCALL _UART_menu
; 0000 0124 
; 0000 0125 pStr = string_press;
	LDI  R30,LOW(_string_press)
	LDI  R31,HIGH(_string_press)
	RCALL SUBOPT_0x0
; 0000 0126 while(*pStr != 0) Putch(*pStr++);                     // 문자열 전송
_0x8B:
	RCALL SUBOPT_0x1
	BREQ _0x8D
	RCALL SUBOPT_0x2
	RJMP _0x8B
_0x8D:
; 0000 0127 main_flag = 1;
	LDI  R30,LOW(1)
	STS  _main_flag,R30
; 0000 0128 
; 0000 0129 break;
; 0000 012A }
_0x77:
; 0000 012B flag = 0;
	CLR  R12
; 0000 012C }
; 0000 012D if(seg_flag_sub == 0x01)
_0x6E:
	LDS  R26,_seg_flag_sub
	CPI  R26,LOW(0x1)
	BRNE _0x8E
; 0000 012E {
; 0000 012F if(i < 0 || i > 9) i = 0;
	LDI  R30,LOW(0)
	CP   R9,R30
	BRLO _0x90
	LDI  R30,LOW(9)
	CP   R30,R9
	BRSH _0x8F
_0x90:
	CLR  R9
; 0000 0130 Time_out();
_0x8F:
	RCALL _Time_out
; 0000 0131 if(cnt >= 10)
	LDI  R30,LOW(10)
	CP   R6,R30
	BRLO _0x92
; 0000 0132 {
; 0000 0133 i++;
	INC  R9
; 0000 0134 cnt = 0;
	CLR  R6
; 0000 0135 }
; 0000 0136 }
_0x92:
; 0000 0137 if(seg_flag_sub == 0x02)
_0x8E:
	LDS  R26,_seg_flag_sub
	CPI  R26,LOW(0x2)
	BRNE _0x93
; 0000 0138 {
; 0000 0139 if(i < 0 || i > 9) i = 9;
	LDI  R30,LOW(0)
	CP   R9,R30
	BRLO _0x95
	LDI  R30,LOW(9)
	CP   R30,R9
	BRSH _0x94
_0x95:
	LDI  R30,LOW(9)
	MOV  R9,R30
; 0000 013A Time_out();
_0x94:
	RCALL _Time_out
; 0000 013B 
; 0000 013C if(cnt >= 10)
	LDI  R30,LOW(10)
	CP   R6,R30
	BRLO _0x97
; 0000 013D {
; 0000 013E i--;
	DEC  R9
; 0000 013F cnt = 0;
	CLR  R6
; 0000 0140 }
; 0000 0141 }
_0x97:
; 0000 0142 
; 0000 0143 
; 0000 0144 
; 0000 0145 }
_0x93:
; 0000 0146 
; 0000 0147 }
_0x6B:
	RJMP _0x19
; 0000 0148 }
_0x98:
	RJMP _0x98
; .FEND
;void UART_menu(void)
; 0000 014B {
_UART_menu:
; .FSTART _UART_menu
; 0000 014C 
; 0000 014D pStr = string_line;
	LDI  R30,LOW(_string_line)
	LDI  R31,HIGH(_string_line)
	RCALL SUBOPT_0x0
; 0000 014E while(*pStr != 0) Putch(*pStr++);                      // 문자열 전송
_0x99:
	RCALL SUBOPT_0x1
	BREQ _0x9B
	RCALL SUBOPT_0x2
	RJMP _0x99
_0x9B:
; 0000 014F while((UCSR0A & 0x20) == 0x0); UDR0 =0x0D;
_0x9C:
	SBIS 0xB,5
	RJMP _0x9C
	LDI  R30,LOW(13)
	OUT  0xC,R30
; 0000 0150 
; 0000 0151 pStr = string_title;
	LDI  R30,LOW(_string_title)
	LDI  R31,HIGH(_string_title)
	RCALL SUBOPT_0x0
; 0000 0152 while(*pStr != 0) Putch(*pStr++);                      // 문자열 전송
_0x9F:
	RCALL SUBOPT_0x1
	BREQ _0xA1
	RCALL SUBOPT_0x2
	RJMP _0x9F
_0xA1:
; 0000 0153 while((UCSR0A & 0x20) == 0x0); UDR0 =0x0D;
_0xA2:
	SBIS 0xB,5
	RJMP _0xA2
	LDI  R30,LOW(13)
	OUT  0xC,R30
; 0000 0154 
; 0000 0155 pStr = string_press;
	LDI  R30,LOW(_string_press)
	LDI  R31,HIGH(_string_press)
	RCALL SUBOPT_0x0
; 0000 0156 while(*pStr != 0) Putch(*pStr++);    	              // 문자열 전송
_0xA5:
	RCALL SUBOPT_0x1
	BREQ _0xA7
	RCALL SUBOPT_0x2
	RJMP _0xA5
_0xA7:
; 0000 0157 while((UCSR0A & 0x20) == 0x0); UDR0 =0x0D;
_0xA8:
	SBIS 0xB,5
	RJMP _0xA8
	LDI  R30,LOW(13)
	OUT  0xC,R30
; 0000 0158 
; 0000 0159 pStr = string_LED;
	LDI  R30,LOW(_string_LED)
	LDI  R31,HIGH(_string_LED)
	RCALL SUBOPT_0x0
; 0000 015A while(*pStr != 0) Putch(*pStr++);    	              // 문자열 전송
_0xAB:
	RCALL SUBOPT_0x1
	BREQ _0xAD
	RCALL SUBOPT_0x2
	RJMP _0xAB
_0xAD:
; 0000 015B while((UCSR0A & 0x20) == 0x0); UDR0 =0x0D;
_0xAE:
	SBIS 0xB,5
	RJMP _0xAE
	LDI  R30,LOW(13)
	OUT  0xC,R30
; 0000 015C 
; 0000 015D pStr = string_7seg;
	LDI  R30,LOW(_string_7seg)
	LDI  R31,HIGH(_string_7seg)
	RCALL SUBOPT_0x0
; 0000 015E while(*pStr != 0) Putch(*pStr++);    	              // 문자열 전송
_0xB1:
	RCALL SUBOPT_0x1
	BREQ _0xB3
	RCALL SUBOPT_0x2
	RJMP _0xB1
_0xB3:
; 0000 015F while((UCSR0A & 0x20) == 0x0); UDR0 =0x0D;
_0xB4:
	SBIS 0xB,5
	RJMP _0xB4
	LDI  R30,LOW(13)
	OUT  0xC,R30
; 0000 0160 
; 0000 0161 pStr = string_main;
	LDI  R30,LOW(_string_main)
	LDI  R31,HIGH(_string_main)
	RCALL SUBOPT_0x0
; 0000 0162 while(*pStr != 0) Putch(*pStr++);    	              // 문자열 전송
_0xB7:
	RCALL SUBOPT_0x1
	BREQ _0xB9
	RCALL SUBOPT_0x2
	RJMP _0xB7
_0xB9:
; 0000 0163 while((UCSR0A & 0x20) == 0x0); UDR0 =0x0D;
_0xBA:
	SBIS 0xB,5
	RJMP _0xBA
	RCALL SUBOPT_0x6
; 0000 0164 
; 0000 0165 pStr = string_line;
; 0000 0166 while(*pStr != 0) Putch(*pStr++);                      // 문자열 전송
_0xBD:
	RCALL SUBOPT_0x1
	BREQ _0xBF
	RCALL SUBOPT_0x2
	RJMP _0xBD
_0xBF:
; 0000 0167 while((UCSR0A & 0x20) == 0x0); UDR0 =0x0D;
_0xC0:
	SBIS 0xB,5
	RJMP _0xC0
	RCALL SUBOPT_0x7
; 0000 0168 
; 0000 0169 flag=0;
; 0000 016A LED_flag=0;
; 0000 016B seg_flag=0;
	LDI  R30,LOW(0)
	STS  _seg_flag,R30
; 0000 016C main_flag=0;
	STS  _main_flag,R30
; 0000 016D LED_flag_sub = 0;
	RJMP _0x2000003
; 0000 016E seg_flag_sub = 0;
; 0000 016F 
; 0000 0170 }
; .FEND
;void UART_LED_menu(void)
; 0000 0173 {
_UART_LED_menu:
; .FSTART _UART_LED_menu
; 0000 0174 pStr = string_line;
	LDI  R30,LOW(_string_line)
	LDI  R31,HIGH(_string_line)
	RCALL SUBOPT_0x0
; 0000 0175 while(*pStr != 0) Putch(*pStr++);                      // 문자열 전송
_0xC3:
	RCALL SUBOPT_0x1
	BREQ _0xC5
	RCALL SUBOPT_0x2
	RJMP _0xC3
_0xC5:
; 0000 0176 while((UCSR0A & 0x20) == 0x0); UDR0 =0x0D;
_0xC6:
	SBIS 0xB,5
	RJMP _0xC6
	RCALL SUBOPT_0x8
; 0000 0177 
; 0000 0178 pStr = string_Up_LED;
; 0000 0179 while(*pStr != 0) Putch(*pStr++);                      // 문자열 전송
_0xC9:
	RCALL SUBOPT_0x1
	BREQ _0xCB
	RCALL SUBOPT_0x2
	RJMP _0xC9
_0xCB:
; 0000 017A while((UCSR0A & 0x20) == 0x0); UDR0 =0x0D;
_0xCC:
	SBIS 0xB,5
	RJMP _0xCC
	RCALL SUBOPT_0x9
; 0000 017B 
; 0000 017C pStr = string_Down_LED;
; 0000 017D while(*pStr != 0) Putch(*pStr++);                      // 문자열 전송
_0xCF:
	RCALL SUBOPT_0x1
	BREQ _0xD1
	RCALL SUBOPT_0x2
	RJMP _0xCF
_0xD1:
; 0000 017E while((UCSR0A & 0x20) == 0x0); UDR0 =0x0D;
_0xD2:
	SBIS 0xB,5
	RJMP _0xD2
	RCALL SUBOPT_0xA
; 0000 017F 
; 0000 0180 pStr = string_Main_Menu;
; 0000 0181 while(*pStr != 0) Putch(*pStr++);                      // 문자열 전송
_0xD5:
	RCALL SUBOPT_0x1
	BREQ _0xD7
	RCALL SUBOPT_0x2
	RJMP _0xD5
_0xD7:
; 0000 0182 while((UCSR0A & 0x20) == 0x0); UDR0 =0x0D;
_0xD8:
	SBIS 0xB,5
	RJMP _0xD8
	RCALL SUBOPT_0x6
; 0000 0183 
; 0000 0184 pStr = string_line;
; 0000 0185 while(*pStr != 0) Putch(*pStr++);                      // 문자열 전송
_0xDB:
	RCALL SUBOPT_0x1
	BREQ _0xDD
	RCALL SUBOPT_0x2
	RJMP _0xDB
_0xDD:
; 0000 0186 while((UCSR0A & 0x20) == 0x0); UDR0 =0x0D;
_0xDE:
	SBIS 0xB,5
	RJMP _0xDE
	LDI  R30,LOW(13)
	OUT  0xC,R30
; 0000 0187 
; 0000 0188 flag=0;
	CLR  R12
; 0000 0189 LED_flag=1;
	LDI  R30,LOW(1)
	STS  _LED_flag,R30
; 0000 018A seg_flag=0;
	LDI  R30,LOW(0)
	STS  _seg_flag,R30
; 0000 018B LED_flag_sub = 0;
	RJMP _0x2000003
; 0000 018C seg_flag_sub = 0;
; 0000 018D }
; .FEND
;void UART_7seg_menu(void)
; 0000 0190 {
_UART_7seg_menu:
; .FSTART _UART_7seg_menu
; 0000 0191 pStr = string_line;
	LDI  R30,LOW(_string_line)
	LDI  R31,HIGH(_string_line)
	RCALL SUBOPT_0x0
; 0000 0192 while(*pStr != 0) Putch(*pStr++);                      // 문자열 전송
_0xE1:
	RCALL SUBOPT_0x1
	BREQ _0xE3
	RCALL SUBOPT_0x2
	RJMP _0xE1
_0xE3:
; 0000 0193 while((UCSR0A & 0x20) == 0x0); UDR0 =0x0D;
_0xE4:
	SBIS 0xB,5
	RJMP _0xE4
	RCALL SUBOPT_0xB
; 0000 0194 
; 0000 0195 pStr = string_Up_7seg;
; 0000 0196 while(*pStr != 0) Putch(*pStr++);                      // 문자열 전송
_0xE7:
	RCALL SUBOPT_0x1
	BREQ _0xE9
	RCALL SUBOPT_0x2
	RJMP _0xE7
_0xE9:
; 0000 0197 while((UCSR0A & 0x20) == 0x0); UDR0 =0x0D;
_0xEA:
	SBIS 0xB,5
	RJMP _0xEA
	RCALL SUBOPT_0xC
; 0000 0198 
; 0000 0199 pStr = string_Down_7seg;
; 0000 019A while(*pStr != 0) Putch(*pStr++);                      // 문자열 전송
_0xED:
	RCALL SUBOPT_0x1
	BREQ _0xEF
	RCALL SUBOPT_0x2
	RJMP _0xED
_0xEF:
; 0000 019B while((UCSR0A & 0x20) == 0x0); UDR0 =0x0D;
_0xF0:
	SBIS 0xB,5
	RJMP _0xF0
	RCALL SUBOPT_0xD
; 0000 019C 
; 0000 019D pStr = string_DP_ID;
; 0000 019E while(*pStr != 0) Putch(*pStr++);                      // 문자열 전송
_0xF3:
	RCALL SUBOPT_0x1
	BREQ _0xF5
	RCALL SUBOPT_0x2
	RJMP _0xF3
_0xF5:
; 0000 019F while((UCSR0A & 0x20) == 0x0); UDR0 =0x0D;
_0xF6:
	SBIS 0xB,5
	RJMP _0xF6
	RCALL SUBOPT_0xA
; 0000 01A0 
; 0000 01A1 pStr = string_Main_Menu;
; 0000 01A2 while(*pStr != 0) Putch(*pStr++);                      // 문자열 전송
_0xF9:
	RCALL SUBOPT_0x1
	BREQ _0xFB
	RCALL SUBOPT_0x2
	RJMP _0xF9
_0xFB:
; 0000 01A3 while((UCSR0A & 0x20) == 0x0); UDR0 =0x0D;
_0xFC:
	SBIS 0xB,5
	RJMP _0xFC
	RCALL SUBOPT_0x6
; 0000 01A4 
; 0000 01A5 pStr = string_line;
; 0000 01A6 while(*pStr != 0) Putch(*pStr++);                      // 문자열 전송
_0xFF:
	RCALL SUBOPT_0x1
	BREQ _0x101
	RCALL SUBOPT_0x2
	RJMP _0xFF
_0x101:
; 0000 01A7 while((UCSR0A & 0x20) == 0x0); UDR0 =0x0D;
_0x102:
	SBIS 0xB,5
	RJMP _0x102
	RCALL SUBOPT_0x7
; 0000 01A8 
; 0000 01A9 flag=0;
; 0000 01AA LED_flag=0;
; 0000 01AB seg_flag=1;
	LDI  R30,LOW(1)
	STS  _seg_flag,R30
; 0000 01AC LED_flag_sub = 0;
	RJMP _0x2000003
; 0000 01AD seg_flag_sub = 0;
; 0000 01AE }
; .FEND
;void UART_Up_LED_menu(void)
; 0000 01B1 {
_UART_Up_LED_menu:
; .FSTART _UART_Up_LED_menu
; 0000 01B2 pStr = string_line;
	LDI  R30,LOW(_string_line)
	LDI  R31,HIGH(_string_line)
	RCALL SUBOPT_0x0
; 0000 01B3 while(*pStr != 0) Putch(*pStr++);                      // 문자열 전송
_0x105:
	RCALL SUBOPT_0x1
	BREQ _0x107
	RCALL SUBOPT_0x2
	RJMP _0x105
_0x107:
; 0000 01B4 while((UCSR0A & 0x20) == 0x0); UDR0 =0x0D;
_0x108:
	SBIS 0xB,5
	RJMP _0x108
	LDI  R30,LOW(13)
	OUT  0xC,R30
; 0000 01B5 
; 0000 01B6 pStr = string_Up_LED_title;
	LDI  R30,LOW(_string_Up_LED_title)
	LDI  R31,HIGH(_string_Up_LED_title)
	RCALL SUBOPT_0x0
; 0000 01B7 while(*pStr != 0) Putch(*pStr++);                      // 문자열 전송
_0x10B:
	RCALL SUBOPT_0x1
	BREQ _0x10D
	RCALL SUBOPT_0x2
	RJMP _0x10B
_0x10D:
; 0000 01B8 while((UCSR0A & 0x20) == 0x0); UDR0 =0x0D;
_0x10E:
	SBIS 0xB,5
	RJMP _0x10E
	RCALL SUBOPT_0x8
; 0000 01B9 
; 0000 01BA pStr = string_Up_LED;
; 0000 01BB while(*pStr != 0) Putch(*pStr++);                      // 문자열 전송
_0x111:
	RCALL SUBOPT_0x1
	BREQ _0x113
	RCALL SUBOPT_0x2
	RJMP _0x111
_0x113:
; 0000 01BC while((UCSR0A & 0x20) == 0x0); UDR0 =0x0D;
_0x114:
	SBIS 0xB,5
	RJMP _0x114
	RCALL SUBOPT_0x9
; 0000 01BD 
; 0000 01BE pStr = string_Down_LED;
; 0000 01BF while(*pStr != 0) Putch(*pStr++);                      // 문자열 전송
_0x117:
	RCALL SUBOPT_0x1
	BREQ _0x119
	RCALL SUBOPT_0x2
	RJMP _0x117
_0x119:
; 0000 01C0 while((UCSR0A & 0x20) == 0x0); UDR0 =0x0D;
_0x11A:
	SBIS 0xB,5
	RJMP _0x11A
	RCALL SUBOPT_0xA
; 0000 01C1 
; 0000 01C2 pStr = string_Main_Menu;
; 0000 01C3 while(*pStr != 0) Putch(*pStr++);                      // 문자열 전송
_0x11D:
	RCALL SUBOPT_0x1
	BREQ _0x11F
	RCALL SUBOPT_0x2
	RJMP _0x11D
_0x11F:
; 0000 01C4 while((UCSR0A & 0x20) == 0x0); UDR0 =0x0D;
_0x120:
	SBIS 0xB,5
	RJMP _0x120
	RCALL SUBOPT_0x6
; 0000 01C5 
; 0000 01C6 pStr = string_line;
; 0000 01C7 while(*pStr != 0) Putch(*pStr++);                      // 문자열 전송
_0x123:
	RCALL SUBOPT_0x1
	BREQ _0x125
	RCALL SUBOPT_0x2
	RJMP _0x123
_0x125:
; 0000 01C8 while((UCSR0A & 0x20) == 0x0); UDR0 =0x0D;
_0x126:
	SBIS 0xB,5
	RJMP _0x126
	RCALL SUBOPT_0xE
; 0000 01C9 
; 0000 01CA seg_flag=0;
; 0000 01CB seg_flag_sub = 0;
	RJMP _0x2000002
; 0000 01CC }
; .FEND
;void UART_Down_LED_menu(void)
; 0000 01CF {
_UART_Down_LED_menu:
; .FSTART _UART_Down_LED_menu
; 0000 01D0 pStr = string_line;
	LDI  R30,LOW(_string_line)
	LDI  R31,HIGH(_string_line)
	RCALL SUBOPT_0x0
; 0000 01D1 while(*pStr != 0) Putch(*pStr++);                      // 문자열 전송
_0x129:
	RCALL SUBOPT_0x1
	BREQ _0x12B
	RCALL SUBOPT_0x2
	RJMP _0x129
_0x12B:
; 0000 01D2 while((UCSR0A & 0x20) == 0x0); UDR0 =0x0D;
_0x12C:
	SBIS 0xB,5
	RJMP _0x12C
	LDI  R30,LOW(13)
	OUT  0xC,R30
; 0000 01D3 
; 0000 01D4 pStr = string_Down_LED_title;
	LDI  R30,LOW(_string_Down_LED_title)
	LDI  R31,HIGH(_string_Down_LED_title)
	RCALL SUBOPT_0x0
; 0000 01D5 while(*pStr != 0) Putch(*pStr++);                      // 문자열 전송
_0x12F:
	RCALL SUBOPT_0x1
	BREQ _0x131
	RCALL SUBOPT_0x2
	RJMP _0x12F
_0x131:
; 0000 01D6 while((UCSR0A & 0x20) == 0x0); UDR0 =0x0D;
_0x132:
	SBIS 0xB,5
	RJMP _0x132
	RCALL SUBOPT_0x8
; 0000 01D7 
; 0000 01D8 pStr = string_Up_LED;
; 0000 01D9 while(*pStr != 0) Putch(*pStr++);                      // 문자열 전송
_0x135:
	RCALL SUBOPT_0x1
	BREQ _0x137
	RCALL SUBOPT_0x2
	RJMP _0x135
_0x137:
; 0000 01DA while((UCSR0A & 0x20) == 0x0); UDR0 =0x0D;
_0x138:
	SBIS 0xB,5
	RJMP _0x138
	RCALL SUBOPT_0x9
; 0000 01DB 
; 0000 01DC pStr = string_Down_LED;
; 0000 01DD while(*pStr != 0) Putch(*pStr++);                      // 문자열 전송
_0x13B:
	RCALL SUBOPT_0x1
	BREQ _0x13D
	RCALL SUBOPT_0x2
	RJMP _0x13B
_0x13D:
; 0000 01DE while((UCSR0A & 0x20) == 0x0); UDR0 =0x0D;
_0x13E:
	SBIS 0xB,5
	RJMP _0x13E
	RCALL SUBOPT_0xA
; 0000 01DF 
; 0000 01E0 pStr = string_Main_Menu;
; 0000 01E1 while(*pStr != 0) Putch(*pStr++);                      // 문자열 전송
_0x141:
	RCALL SUBOPT_0x1
	BREQ _0x143
	RCALL SUBOPT_0x2
	RJMP _0x141
_0x143:
; 0000 01E2 while((UCSR0A & 0x20) == 0x0); UDR0 =0x0D;
_0x144:
	SBIS 0xB,5
	RJMP _0x144
	RCALL SUBOPT_0x6
; 0000 01E3 
; 0000 01E4 pStr = string_line;
; 0000 01E5 while(*pStr != 0) Putch(*pStr++);                      // 문자열 전송
_0x147:
	RCALL SUBOPT_0x1
	BREQ _0x149
	RCALL SUBOPT_0x2
	RJMP _0x147
_0x149:
; 0000 01E6 while((UCSR0A & 0x20) == 0x0); UDR0 =0x0D;
_0x14A:
	SBIS 0xB,5
	RJMP _0x14A
	RCALL SUBOPT_0xE
; 0000 01E7 
; 0000 01E8 seg_flag=0;
; 0000 01E9 seg_flag_sub = 0;
	RJMP _0x2000002
; 0000 01EA }
; .FEND
;void UART_Up_7seg_menu(void)
; 0000 01ED {
_UART_Up_7seg_menu:
; .FSTART _UART_Up_7seg_menu
; 0000 01EE pStr = string_line;
	LDI  R30,LOW(_string_line)
	LDI  R31,HIGH(_string_line)
	RCALL SUBOPT_0x0
; 0000 01EF while(*pStr != 0) Putch(*pStr++);                      // 문자열 전송
_0x14D:
	RCALL SUBOPT_0x1
	BREQ _0x14F
	RCALL SUBOPT_0x2
	RJMP _0x14D
_0x14F:
; 0000 01F0 while((UCSR0A & 0x20) == 0x0); UDR0 =0x0D;
_0x150:
	SBIS 0xB,5
	RJMP _0x150
	LDI  R30,LOW(13)
	OUT  0xC,R30
; 0000 01F1 
; 0000 01F2 pStr = string_Up_7seg_title;
	LDI  R30,LOW(_string_Up_7seg_title)
	LDI  R31,HIGH(_string_Up_7seg_title)
	RCALL SUBOPT_0x0
; 0000 01F3 while(*pStr != 0) Putch(*pStr++);                      // 문자열 전송
_0x153:
	RCALL SUBOPT_0x1
	BREQ _0x155
	RCALL SUBOPT_0x2
	RJMP _0x153
_0x155:
; 0000 01F4 while((UCSR0A & 0x20) == 0x0); UDR0 =0x0D;
_0x156:
	SBIS 0xB,5
	RJMP _0x156
	RCALL SUBOPT_0xB
; 0000 01F5 
; 0000 01F6 pStr = string_Up_7seg;
; 0000 01F7 while(*pStr != 0) Putch(*pStr++);                      // 문자열 전송
_0x159:
	RCALL SUBOPT_0x1
	BREQ _0x15B
	RCALL SUBOPT_0x2
	RJMP _0x159
_0x15B:
; 0000 01F8 while((UCSR0A & 0x20) == 0x0); UDR0 =0x0D;
_0x15C:
	SBIS 0xB,5
	RJMP _0x15C
	RCALL SUBOPT_0xC
; 0000 01F9 
; 0000 01FA pStr = string_Down_7seg;
; 0000 01FB while(*pStr != 0) Putch(*pStr++);                      // 문자열 전송
_0x15F:
	RCALL SUBOPT_0x1
	BREQ _0x161
	RCALL SUBOPT_0x2
	RJMP _0x15F
_0x161:
; 0000 01FC while((UCSR0A & 0x20) == 0x0); UDR0 =0x0D;
_0x162:
	SBIS 0xB,5
	RJMP _0x162
	RCALL SUBOPT_0xD
; 0000 01FD 
; 0000 01FE pStr = string_DP_ID;
; 0000 01FF while(*pStr != 0) Putch(*pStr++);                      // 문자열 전송
_0x165:
	RCALL SUBOPT_0x1
	BREQ _0x167
	RCALL SUBOPT_0x2
	RJMP _0x165
_0x167:
; 0000 0200 while((UCSR0A & 0x20) == 0x0); UDR0 =0x0D;
_0x168:
	SBIS 0xB,5
	RJMP _0x168
	RCALL SUBOPT_0xA
; 0000 0201 
; 0000 0202 pStr = string_Main_Menu;
; 0000 0203 while(*pStr != 0) Putch(*pStr++);                      // 문자열 전송
_0x16B:
	RCALL SUBOPT_0x1
	BREQ _0x16D
	RCALL SUBOPT_0x2
	RJMP _0x16B
_0x16D:
; 0000 0204 while((UCSR0A & 0x20) == 0x0); UDR0 =0x0D;
_0x16E:
	SBIS 0xB,5
	RJMP _0x16E
	RCALL SUBOPT_0x6
; 0000 0205 
; 0000 0206 pStr = string_line;
; 0000 0207 while(*pStr != 0) Putch(*pStr++);                      // 문자열 전송
_0x171:
	RCALL SUBOPT_0x1
	BREQ _0x173
	RCALL SUBOPT_0x2
	RJMP _0x171
_0x173:
; 0000 0208 while((UCSR0A & 0x20) == 0x0); UDR0 =0x0D;
_0x174:
	SBIS 0xB,5
	RJMP _0x174
	RCALL SUBOPT_0x7
; 0000 0209 
; 0000 020A flag=0;
; 0000 020B LED_flag=0;
; 0000 020C LED_flag_sub = 0;
_0x2000003:
	LDI  R30,LOW(0)
	STS  _LED_flag_sub,R30
; 0000 020D seg_flag_sub = 0;
_0x2000002:
	LDI  R30,LOW(0)
	STS  _seg_flag_sub,R30
; 0000 020E }
	RET
; .FEND
;void UART_Down_7seg_menu(void)
; 0000 0211 {
_UART_Down_7seg_menu:
; .FSTART _UART_Down_7seg_menu
; 0000 0212 pStr = string_line;
	LDI  R30,LOW(_string_line)
	LDI  R31,HIGH(_string_line)
	RCALL SUBOPT_0x0
; 0000 0213 while(*pStr != 0) Putch(*pStr++);                      // 문자열 전송
_0x177:
	RCALL SUBOPT_0x1
	BREQ _0x179
	RCALL SUBOPT_0x2
	RJMP _0x177
_0x179:
; 0000 0214 while((UCSR0A & 0x20) == 0x0); UDR0 =0x0D;
_0x17A:
	SBIS 0xB,5
	RJMP _0x17A
	LDI  R30,LOW(13)
	OUT  0xC,R30
; 0000 0215 
; 0000 0216 pStr = string_Down_7seg_title;
	LDI  R30,LOW(_string_Down_7seg_title)
	LDI  R31,HIGH(_string_Down_7seg_title)
	RCALL SUBOPT_0x0
; 0000 0217 while(*pStr != 0) Putch(*pStr++);                      // 문자열 전송
_0x17D:
	RCALL SUBOPT_0x1
	BREQ _0x17F
	RCALL SUBOPT_0x2
	RJMP _0x17D
_0x17F:
; 0000 0218 while((UCSR0A & 0x20) == 0x0); UDR0 =0x0D;
_0x180:
	SBIS 0xB,5
	RJMP _0x180
	RCALL SUBOPT_0xB
; 0000 0219 
; 0000 021A pStr = string_Up_7seg;
; 0000 021B while(*pStr != 0) Putch(*pStr++);                      // 문자열 전송
_0x183:
	RCALL SUBOPT_0x1
	BREQ _0x185
	RCALL SUBOPT_0x2
	RJMP _0x183
_0x185:
; 0000 021C while((UCSR0A & 0x20) == 0x0); UDR0 =0x0D;
_0x186:
	SBIS 0xB,5
	RJMP _0x186
	RCALL SUBOPT_0xC
; 0000 021D 
; 0000 021E pStr = string_Down_7seg;
; 0000 021F while(*pStr != 0) Putch(*pStr++);                      // 문자열 전송
_0x189:
	RCALL SUBOPT_0x1
	BREQ _0x18B
	RCALL SUBOPT_0x2
	RJMP _0x189
_0x18B:
; 0000 0220 while((UCSR0A & 0x20) == 0x0); UDR0 =0x0D;
_0x18C:
	SBIS 0xB,5
	RJMP _0x18C
	RCALL SUBOPT_0xD
; 0000 0221 
; 0000 0222 pStr = string_DP_ID;
; 0000 0223 while(*pStr != 0) Putch(*pStr++);                      // 문자열 전송
_0x18F:
	RCALL SUBOPT_0x1
	BREQ _0x191
	RCALL SUBOPT_0x2
	RJMP _0x18F
_0x191:
; 0000 0224 while((UCSR0A & 0x20) == 0x0); UDR0 =0x0D;
_0x192:
	SBIS 0xB,5
	RJMP _0x192
	RCALL SUBOPT_0xA
; 0000 0225 
; 0000 0226 pStr = string_Main_Menu;
; 0000 0227 while(*pStr != 0) Putch(*pStr++);                      // 문자열 전송
_0x195:
	RCALL SUBOPT_0x1
	BREQ _0x197
	RCALL SUBOPT_0x2
	RJMP _0x195
_0x197:
; 0000 0228 while((UCSR0A & 0x20) == 0x0); UDR0 =0x0D;
_0x198:
	SBIS 0xB,5
	RJMP _0x198
	RCALL SUBOPT_0x6
; 0000 0229 
; 0000 022A pStr = string_line;
; 0000 022B while(*pStr != 0) Putch(*pStr++);                      // 문자열 전송
_0x19B:
	RCALL SUBOPT_0x1
	BREQ _0x19D
	RCALL SUBOPT_0x2
	RJMP _0x19B
_0x19D:
; 0000 022C while((UCSR0A & 0x20) == 0x0); UDR0 =0x0D;
_0x19E:
	SBIS 0xB,5
	RJMP _0x19E
	RJMP _0x2000001
; 0000 022D 
; 0000 022E LED_flag=0;
; 0000 022F LED_flag_sub = 0;
; 0000 0230 }
; .FEND
;void UART_DP_ID_menu(void)
; 0000 0233 {
_UART_DP_ID_menu:
; .FSTART _UART_DP_ID_menu
; 0000 0234 pStr = string_line;
	LDI  R30,LOW(_string_line)
	LDI  R31,HIGH(_string_line)
	RCALL SUBOPT_0x0
; 0000 0235 while(*pStr != 0) Putch(*pStr++);                      // 문자열 전송
_0x1A1:
	RCALL SUBOPT_0x1
	BREQ _0x1A3
	RCALL SUBOPT_0x2
	RJMP _0x1A1
_0x1A3:
; 0000 0236 while((UCSR0A & 0x20) == 0x0); UDR0 =0x0D;
_0x1A4:
	SBIS 0xB,5
	RJMP _0x1A4
	LDI  R30,LOW(13)
	OUT  0xC,R30
; 0000 0237 
; 0000 0238 pStr = string_DP_ID_title;
	LDI  R30,LOW(_string_DP_ID_title)
	LDI  R31,HIGH(_string_DP_ID_title)
	RCALL SUBOPT_0x0
; 0000 0239 while(*pStr != 0) Putch(*pStr++);                      // 문자열 전송
_0x1A7:
	RCALL SUBOPT_0x1
	BREQ _0x1A9
	RCALL SUBOPT_0x2
	RJMP _0x1A7
_0x1A9:
; 0000 023A while((UCSR0A & 0x20) == 0x0); UDR0 =0x0D;
_0x1AA:
	SBIS 0xB,5
	RJMP _0x1AA
	RCALL SUBOPT_0xB
; 0000 023B 
; 0000 023C pStr = string_Up_7seg;
; 0000 023D while(*pStr != 0) Putch(*pStr++);                      // 문자열 전송
_0x1AD:
	RCALL SUBOPT_0x1
	BREQ _0x1AF
	RCALL SUBOPT_0x2
	RJMP _0x1AD
_0x1AF:
; 0000 023E while((UCSR0A & 0x20) == 0x0); UDR0 =0x0D;
_0x1B0:
	SBIS 0xB,5
	RJMP _0x1B0
	RCALL SUBOPT_0xC
; 0000 023F 
; 0000 0240 pStr = string_Down_7seg;
; 0000 0241 while(*pStr != 0) Putch(*pStr++);                      // 문자열 전송
_0x1B3:
	RCALL SUBOPT_0x1
	BREQ _0x1B5
	RCALL SUBOPT_0x2
	RJMP _0x1B3
_0x1B5:
; 0000 0242 while((UCSR0A & 0x20) == 0x0); UDR0 =0x0D;
_0x1B6:
	SBIS 0xB,5
	RJMP _0x1B6
	RCALL SUBOPT_0xD
; 0000 0243 
; 0000 0244 pStr = string_DP_ID;
; 0000 0245 while(*pStr != 0) Putch(*pStr++);                      // 문자열 전송
_0x1B9:
	RCALL SUBOPT_0x1
	BREQ _0x1BB
	RCALL SUBOPT_0x2
	RJMP _0x1B9
_0x1BB:
; 0000 0246 while((UCSR0A & 0x20) == 0x0); UDR0 =0x0D;
_0x1BC:
	SBIS 0xB,5
	RJMP _0x1BC
	RCALL SUBOPT_0xA
; 0000 0247 
; 0000 0248 pStr = string_Main_Menu;
; 0000 0249 while(*pStr != 0) Putch(*pStr++);                      // 문자열 전송
_0x1BF:
	RCALL SUBOPT_0x1
	BREQ _0x1C1
	RCALL SUBOPT_0x2
	RJMP _0x1BF
_0x1C1:
; 0000 024A while((UCSR0A & 0x20) == 0x0); UDR0 =0x0D;
_0x1C2:
	SBIS 0xB,5
	RJMP _0x1C2
	RCALL SUBOPT_0x6
; 0000 024B 
; 0000 024C pStr = string_line;
; 0000 024D while(*pStr != 0) Putch(*pStr++);                      // 문자열 전송
_0x1C5:
	RCALL SUBOPT_0x1
	BREQ _0x1C7
	RCALL SUBOPT_0x2
	RJMP _0x1C5
_0x1C7:
; 0000 024E while((UCSR0A & 0x20) == 0x0); UDR0 =0x0D;
_0x1C8:
	SBIS 0xB,5
	RJMP _0x1C8
_0x2000001:
	LDI  R30,LOW(13)
	OUT  0xC,R30
; 0000 024F 
; 0000 0250 LED_flag=0;
	LDI  R30,LOW(0)
	STS  _LED_flag,R30
; 0000 0251 LED_flag_sub = 0;
	STS  _LED_flag_sub,R30
; 0000 0252 }
	RET
; .FEND
;void Time_out(void)
; 0000 0255 {
_Time_out:
; .FSTART _Time_out
; 0000 0256 PORTG = 0b00001000;
	LDI  R30,LOW(8)
	STS  101,R30
; 0000 0257 PORTD = ((seg_pat[i] & 0x0F) << 4) | (PORTD & 0x0F);
	RCALL SUBOPT_0xF
	ANDI R30,LOW(0xF)
	SWAP R30
	ANDI R30,0xF0
	MOV  R26,R30
	IN   R30,0x12
	ANDI R30,LOW(0xF)
	OR   R30,R26
	OUT  0x12,R30
; 0000 0258 PORTB = (seg_pat[i] & 0x70 ) | (PORTB & 0x0F);
	RCALL SUBOPT_0xF
	ANDI R30,LOW(0x70)
	MOV  R26,R30
	IN   R30,0x18
	ANDI R30,LOW(0xF)
	OR   R30,R26
	OUT  0x18,R30
; 0000 0259 }
	RET
; .FEND
;void Putch(char data)
; 0000 025D {
_Putch:
; .FSTART _Putch
; 0000 025E while((UCSR0A & 0x20) == 0x0);	  //UDRE0[5] = 1 송신준비완료 될 때까지 대기
	ST   -Y,R17
	MOV  R17,R26
;	data -> R17
_0x1CB:
	SBIS 0xB,5
	RJMP _0x1CB
; 0000 025F UDR0 = data;                   		  // 데이터 전송
	OUT  0xC,R17
; 0000 0260 }
	LD   R17,Y+
	RET
; .FEND
;void new_line(void)
; 0000 0263 {
_new_line:
; .FSTART _new_line
; 0000 0264 while((UCSR0A & 0x20) == 0x0); UDR0 =0x0D;            // NEW LINE
_0x1CE:
	SBIS 0xB,5
	RJMP _0x1CE
	LDI  R30,LOW(13)
	OUT  0xC,R30
; 0000 0265 }
	RET
; .FEND
;interrupt [19] void usart0_rx(void)
; 0000 0268 {
_usart0_rx:
; .FSTART _usart0_rx
	RCALL SUBOPT_0x10
; 0000 0269 SREG &= 0x7F;
; 0000 026A UART_Rx_data = UDR0;
	IN   R8,12
; 0000 026B /*                      			// 수신
; 0000 026C if(UART_Rx_data == '1' || UART_Rx_data == '2')
; 0000 026D {
; 0000 026E LED_flag=1;
; 0000 026F }
; 0000 0270 if(UART_Rx_data == '3' || UART_Rx_data == '4' || UART_Rx_data == '5')
; 0000 0271 {
; 0000 0272 seg_flag=1;
; 0000 0273 }
; 0000 0274 else flag=1;
; 0000 0275 */
; 0000 0276 flag = 1;
	LDI  R30,LOW(1)
	MOV  R12,R30
; 0000 0277 SREG |= 0x80;
	RJMP _0x1D1
; 0000 0278 }
; .FEND
;interrupt [10] void timer_comp2(void)
; 0000 027B {
_timer_comp2:
; .FSTART _timer_comp2
	RCALL SUBOPT_0x10
; 0000 027C SREG &= 0x7F; // All Interrupt disable
; 0000 027D TIM2_COMP_FLAG = 1;
	LDI  R30,LOW(1)
	MOV  R4,R30
; 0000 027E SREG |= 0x80; // All Interrupt enable
	RJMP _0x1D1
; 0000 027F }
; .FEND
;interrupt [17] void timer_int0(void)
; 0000 0282 {
_timer_int0:
; .FSTART _timer_int0
	RCALL SUBOPT_0x10
; 0000 0283 SREG &= 0x7F; // All Interrupt disable
; 0000 0284 TCNT0 = 0;
	LDI  R30,LOW(0)
	OUT  0x32,R30
; 0000 0285 cnt++;
	INC  R6
; 0000 0286 SREG |= 0x80; // All Interrupt enable
_0x1D1:
	BSET 7
; 0000 0287 }
	LD   R30,Y+
	OUT  SREG,R30
	LD   R30,Y+
	RETI
; .FEND

	.DSEG
_string_line:
	.BYTE 0x20
_string_title:
	.BYTE 0x14
_string_press:
	.BYTE 0x12
_string_LED:
	.BYTE 0xD
_string_7seg:
	.BYTE 0xE
_string_main:
	.BYTE 0xE
_string_Up_LED:
	.BYTE 0x12
_string_Down_LED:
	.BYTE 0x12
_string_Main_Menu:
	.BYTE 0xD
_string_LED_ok:
	.BYTE 0x10
_string_7seg_ok:
	.BYTE 0x11
_string_Up_7seg:
	.BYTE 0x15
_string_Down_7seg:
	.BYTE 0x17
_string_DP_ID:
	.BYTE 0x13
_string_Re_main:
	.BYTE 0x14
_string_Up_LED_title:
	.BYTE 0x13
_string_Down_LED_title:
	.BYTE 0x13
_string_Up_7seg_title:
	.BYTE 0x16
_string_Down_7seg_title:
	.BYTE 0x18
_string_DP_ID_title:
	.BYTE 0x14
_string_ID:
	.BYTE 0x14
_seg_pat:
	.BYTE 0xA
_LED_flag:
	.BYTE 0x1
_seg_flag:
	.BYTE 0x1
_main_flag:
	.BYTE 0x1
_LED_flag_sub:
	.BYTE 0x1
_seg_flag_sub:
	.BYTE 0x1
_pStr:
	.BYTE 0x2

	.CSEG
;OPTIMIZER ADDED SUBROUTINE, CALLED 67 TIMES, CODE SIZE REDUCTION:196 WORDS
SUBOPT_0x0:
	STS  _pStr,R30
	STS  _pStr+1,R31
	RET

;OPTIMIZER ADDED SUBROUTINE, CALLED 67 TIMES, CODE SIZE REDUCTION:328 WORDS
SUBOPT_0x1:
	LDS  R26,_pStr
	LDS  R27,_pStr+1
	LD   R30,X
	CPI  R30,0
	RET

;OPTIMIZER ADDED SUBROUTINE, CALLED 67 TIMES, CODE SIZE REDUCTION:592 WORDS
SUBOPT_0x2:
	LDI  R26,LOW(_pStr)
	LDI  R27,HIGH(_pStr)
	LD   R30,X+
	LD   R31,X+
	ADIW R30,1
	ST   -X,R31
	ST   -X,R30
	SBIW R30,1
	LD   R26,Z
	RJMP _Putch

;OPTIMIZER ADDED SUBROUTINE, CALLED 2 TIMES, CODE SIZE REDUCTION:14 WORDS
SUBOPT_0x3:
	RCALL _new_line
	RCALL _new_line
	LDI  R30,LOW(255)
	OUT  0x15,R30
	LDI  R30,LOW(0)
	OUT  0x12,R30
	OUT  0x18,R30
	LDI  R30,LOW(1)
	STS  _main_flag,R30
	LDI  R30,LOW(0)
	STS  _LED_flag,R30
	STS  _seg_flag,R30
	RET

;OPTIMIZER ADDED SUBROUTINE, CALLED 2 TIMES, CODE SIZE REDUCTION:3 WORDS
SUBOPT_0x4:
	LDI  R30,LOW(13)
	OUT  0xC,R30
	RCALL _UART_menu
	LDI  R30,LOW(_string_press)
	LDI  R31,HIGH(_string_press)
	RJMP SUBOPT_0x0

;OPTIMIZER ADDED SUBROUTINE, CALLED 2 TIMES, CODE SIZE REDUCTION:1 WORDS
SUBOPT_0x5:
	LDI  R30,LOW(0)
	STS  _LED_flag_sub,R30
	RET

;OPTIMIZER ADDED SUBROUTINE, CALLED 8 TIMES, CODE SIZE REDUCTION:26 WORDS
SUBOPT_0x6:
	LDI  R30,LOW(13)
	OUT  0xC,R30
	LDI  R30,LOW(_string_line)
	LDI  R31,HIGH(_string_line)
	RJMP SUBOPT_0x0

;OPTIMIZER ADDED SUBROUTINE, CALLED 3 TIMES, CODE SIZE REDUCTION:8 WORDS
SUBOPT_0x7:
	LDI  R30,LOW(13)
	OUT  0xC,R30
	CLR  R12
	LDI  R30,LOW(0)
	STS  _LED_flag,R30
	RET

;OPTIMIZER ADDED SUBROUTINE, CALLED 3 TIMES, CODE SIZE REDUCTION:6 WORDS
SUBOPT_0x8:
	LDI  R30,LOW(13)
	OUT  0xC,R30
	LDI  R30,LOW(_string_Up_LED)
	LDI  R31,HIGH(_string_Up_LED)
	RJMP SUBOPT_0x0

;OPTIMIZER ADDED SUBROUTINE, CALLED 3 TIMES, CODE SIZE REDUCTION:6 WORDS
SUBOPT_0x9:
	LDI  R30,LOW(13)
	OUT  0xC,R30
	LDI  R30,LOW(_string_Down_LED)
	LDI  R31,HIGH(_string_Down_LED)
	RJMP SUBOPT_0x0

;OPTIMIZER ADDED SUBROUTINE, CALLED 7 TIMES, CODE SIZE REDUCTION:22 WORDS
SUBOPT_0xA:
	LDI  R30,LOW(13)
	OUT  0xC,R30
	LDI  R30,LOW(_string_Main_Menu)
	LDI  R31,HIGH(_string_Main_Menu)
	RJMP SUBOPT_0x0

;OPTIMIZER ADDED SUBROUTINE, CALLED 4 TIMES, CODE SIZE REDUCTION:10 WORDS
SUBOPT_0xB:
	LDI  R30,LOW(13)
	OUT  0xC,R30
	LDI  R30,LOW(_string_Up_7seg)
	LDI  R31,HIGH(_string_Up_7seg)
	RJMP SUBOPT_0x0

;OPTIMIZER ADDED SUBROUTINE, CALLED 4 TIMES, CODE SIZE REDUCTION:10 WORDS
SUBOPT_0xC:
	LDI  R30,LOW(13)
	OUT  0xC,R30
	LDI  R30,LOW(_string_Down_7seg)
	LDI  R31,HIGH(_string_Down_7seg)
	RJMP SUBOPT_0x0

;OPTIMIZER ADDED SUBROUTINE, CALLED 4 TIMES, CODE SIZE REDUCTION:10 WORDS
SUBOPT_0xD:
	LDI  R30,LOW(13)
	OUT  0xC,R30
	LDI  R30,LOW(_string_DP_ID)
	LDI  R31,HIGH(_string_DP_ID)
	RJMP SUBOPT_0x0

;OPTIMIZER ADDED SUBROUTINE, CALLED 2 TIMES, CODE SIZE REDUCTION:2 WORDS
SUBOPT_0xE:
	LDI  R30,LOW(13)
	OUT  0xC,R30
	LDI  R30,LOW(0)
	STS  _seg_flag,R30
	RET

;OPTIMIZER ADDED SUBROUTINE, CALLED 2 TIMES, CODE SIZE REDUCTION:2 WORDS
SUBOPT_0xF:
	MOV  R30,R9
	LDI  R31,0
	SUBI R30,LOW(-_seg_pat)
	SBCI R31,HIGH(-_seg_pat)
	LD   R30,Z
	RET

;OPTIMIZER ADDED SUBROUTINE, CALLED 3 TIMES, CODE SIZE REDUCTION:4 WORDS
SUBOPT_0x10:
	ST   -Y,R30
	IN   R30,SREG
	ST   -Y,R30
	BCLR 7
	RET

;RUNTIME LIBRARY

	.CSEG
;END OF CODE MARKER
__END_OF_CODE:

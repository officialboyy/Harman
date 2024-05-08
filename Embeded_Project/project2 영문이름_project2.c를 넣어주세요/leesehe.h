#ifndef _LEESEHE_H_
#define _LEESEHE_H_

typedef unsigned char U8;
typedef unsigned int U32;

const U8 seg_pat[10]= {0x3f, 0x06, 0x5b, 0x4f, 0x66, 0x6d, 0x7d, 0x07, 0x7f, 0x6f};

typedef struct Field_1{   
	U8 Eit4 : 1; 
	U8 Eit5 : 1;  
	U8 Eit6 : 1; 
	U8 Eit7 : 1;
	U8 Temp : 4;
} FLAG_INT_CHECK ;

typedef struct Filed_2{
	U32 Tim0 : 9;
	U32 Tim01 : 2;
	U32 Tim02 : 2;
	U32 Tim1 : 9;
	U32 Tim2 : 5;
	U32 Tim20 : 7;	

} FLAG_TIM_CHECK;

typedef struct Filed_3{
	U32 Mode : 2;
 	U32 U_Mode : 1;
	U32 Year : 11;
	U32 Birth : 11;
 	 U32 Temp : 6;
} VAL_32BIT;

U32 adc_val=0;
U32 adc_temp=0;

#endif
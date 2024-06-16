#ifndef _TEST_h_
#define _TEST_h_


typedef unsigned char U8; 
typedef unsigned short U16;

typedef struct FIELD
{
	U8 FLAG_TIMER0 : 1;
	U8 FLAG_TIMER1 : 1;
	U8 FLAG_TIMER2 : 1;
	U8 FLAG_TIMER3 : 1;
	U8 FLAG_EINT4 : 1;
	U8 FLAG_EINT5 : 1;
	U8 FLAG_EINT6 : 1;
	U8 FLAG_EINT7 : 1;
} _BYTE_FIELD;

typedef struct FIELD1
{
	U8 FLAG0 : 1;
	U8 FLAG1 : 1;
	U8 FLAG2 : 1;
	U8 FLAG3 : 1;
	U8 FLAG4 : 4;

} _BYTE_FIELD1;





#endif	/*_TEST_h_ */
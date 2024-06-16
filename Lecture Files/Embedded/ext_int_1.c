#include <mega128.h>
unsigned char led = 0xFE;

void main(void){

	DDRC = 0xFF; //
	PORTC = led; //
	
	EIMSK = 0b11110000; // 외부 인터럽트 4 enable
	EICRB = 0b10110010; // 외부 인터럽트 4 falling edge
	SREG |= 0x80;

	while(1);
}
interrupt [EXT_INT4] void external_int4(void)
{
	SREG &= 0x7F; // All Interrupt disable
	
	led = led << 1;
	led = led | 0b00000001; // LSB bit set
	if(led == 0xFF) led = 0xFE;
	PORTC = led; //
	
	SREG |= 0x80; // All Interrupt enable
}
interrupt [EXT_INT5] void external_int5(void)
{
	SREG &= 0x7F; // All Interrupt disable
	PORTC = 0ff; //
	SREG |= 0x80; // All Interrupt enable
}
interrupt [EXT_INT6] void external_int6(void)
{
	SREG &= 0x7F; // All Interrupt disable
	PORTC = 0xf0; //
	SREG |= 0x80; // All Interrupt enable
}
interrupt [EXT_INT7] void external_int7(void)
{
	SREG &= 0x7F; // All Interrupt disable
	PORTC = 0x0f; //
	SREG |= 0x80; // All Interrupt enable
}
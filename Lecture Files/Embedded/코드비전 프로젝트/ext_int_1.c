#include <mega128.h>

unsigned char led = 0xFE;

unsigned char EINT4_SET_FLAG =0;
unsigned char EINT5_SET_FLAG =0;
unsigned char EINT6_SET_FLAG =0;
unsigned char EINT7_SET_FLAG =0;
unsigned char TIMER0_OVF_FLAG =0;
unsigned char TIMER0_COMP_FLAG =0;
unsigned char TIMER2_OVF_FLAG =0;
unsigned char TIMER2_COMP_FLAG =0;

void main(void){

	DDRC = 0xFF; //
	PORTC = led; //
	
	EIMSK = 0b11110000; // 외부 인터럽트 4 enable
	EICRB = 0b10111010; // 외부 인터럽트 4 falling edge
	SREG |= 0x80;

	while(1){
		
		if(EINT4_SET_FLAG==1){		
			// Byte_write();
			led = led << 1;
			led = led | 0b00000001; // LSB bit set
			if(led == 0xFF) led = 0xFE;
			PORTC = led; //
		    EINT4_SET_FLAG=0
		}	
		if(EINT5_SET_FLAG==1){
			// Page_write();
			PORTC = 0ff; //
			EINT5_SET_FLAG=0;
		}
		if(EINT6_SET_FLAG==1){
			// Random_read();
			PORTC = 0xf0; //
			EINT6_SET_FLAG=0;
		}
		if(EINT7_SET_FLAG==1){
			// Sequential_read();
			PORTC = 0x0f; //
			EINT7_SET_FLAG=0;
		}
		if(TIMER0_OVF_FLAG==61) {
			sec = sec + 1;
			if(sec == 60) {
				sec = 0;
				min = min + 1;
				if(min == 60) {
					min = 0;
					hour = (hour + 1) % 24; //
				} // end of min
			} // end of sec
			TIMER0_OVF_FLAG=0;
		}	
		
		if(TIMER0_COMP_FLAG==1) {
			// 서비스 내용	
			TIMER0_COMP_FLAG=0;			
		}	
		if(TIMER2_OVF_FLAG==1) {
			// 서비스 내용
			TIMER2_OVF_FLAG=0;
		}	
		if(TIMER2_COMP_FLAG==1) {
			// 서비스 내용	
			TIMER2_COMP_FLAG=0;			
		}	
		
	}	
}

interrupt [TIM0_OVF] void TIMER0_OVF_INT(void)
{
	SREG &= 0x7F; // All Interrupt disable
	TCNT0=100;
	TIMER0_OVF_FLAG++;
	
	SREG |= 0x80; // All Interrupt enable
}
interrupt [TIM0_COMP] void timer_comp0 (void)
{
	SREG &= 0x7F; // All Interrupt disable
	TIMER0_COMP_FLAG=1;
	
	SREG |= 0x80; // All Interrupt enable	
	
}	

interrupt [TIM2_OVF] void TIMER2_OVF_INT(void)
{
	SREG &= 0x7F; // All Interrupt disable
	TCNT2=100;  // 초기값입력
	TIMER2_OVF_FLAG=1;
	
	SREG |= 0x80; // All Interrupt enable
}
interrupt [TIM2_COMP] void timer_comp2 (void)
{
	SREG &= 0x7F; // All Interrupt disable
	TIMER2_COMP_FLAG=1;
	
	SREG |= 0x80; // All Interrupt enable	
	
}


interrupt [EXT_INT4] void external_int4(void)
{
	SREG &= 0x7F; // All Interrupt disable
	
	EINT4_SET_FLAG=1;
	
	SREG |= 0x80; // All Interrupt enable
}
interrupt [EXT_INT5] void external_int5(void)
{
	SREG &= 0x7F; // All Interrupt disable
	EINT5_SET_FLAG=1;

	SREG |= 0x80; // All Interrupt enable
}
interrupt [EXT_INT6] void external_int6(void)
{
	SREG &= 0x7F; // All Interrupt disable
	EINT6_SET_FLAG=1;
	
	SREG |= 0x80; // All Interrupt enable
}
interrupt [EXT_INT7] void external_int7(void)
{
	SREG &= 0x7F; // All Interrupt disable
	EINT7_SET_FLAG=1;
	
	SREG |= 0x80; // All Interrupt enable
}
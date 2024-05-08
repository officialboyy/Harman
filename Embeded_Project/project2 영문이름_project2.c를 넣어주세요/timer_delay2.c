#include <mega128.h>

typedef unsigned char U8;

const U8 seg_pat[10]= {0x3f, 0x06, 0x5b, 0x4f, 0x66, 0x6d, 0x7d, 0x07, 0x7f, 0x6f};
U8 hour = 12, min = 0, sec = 0;
U8 DELAY_FLAG=0;

void main(void) { 
	unsigned char i;
	DDRB = 0xF0; 
	DDRD = 0xF0; 
	DDRG = 0x0F; 
	
	TIMSK = 0x01; // TOIE0 = 1
	TCCR0 = 0x07; // 프리스케일 = CK/1024
	TCNT0 = 177; // 타이머/카운터0 레지스터 초기값 5msec
	
	SREG |= 0x80; // 전역 인터럽트 인에이블 비트 I se
	
	while(1) { 
		switch(DELAY_FLAG) {
			case 0:
				PORTG = 0b00001000; // 7-Seg DIG4 ON(PG3=1), 분 1자리 표시
				PORTD = ((seg_pat[min % 10] & 0x0F) << 4) | (PORTD & 0x0F);
				PORTB = (seg_pat[min % 10] & 0x70 ) | (PORTB & 0x0F);
				break;
			case 1:			
			PORTG = 0b00000100; // 7-Seg DIG3 ON(PG2=1), 분 10자리 표시
			PORTD = ((seg_pat[min / 10] & 0x0F) << 4) | (PORTD & 0x0F);
			PORTB = (seg_pat[min / 10] & 0x70 ) | (PORTB & 0x0F); 
				break;
			case 2:			
				PORTG = 0b00000010; // 7-Seg DIG2 ON(PG1=1), 시간 1자리 표시
				PORTD = ((seg_pat[hour % 10] & 0x0F) << 4) | (PORTD & 0x0F);
				PORTB = (seg_pat[hour % 10] & 0x70 ) | (PORTB & 0x0F); 
				break;
			case 3:	
				PORTG = 0b00000001; // 7-Seg DIG1 ON(PG0=1), 시간 10자리 표시
				PORTD = ((seg_pat[hour / 10] & 0x0F) << 4) | (PORTD & 0x0F);
				PORTB = (seg_pat[hour / 10] & 0x70 ) | (PORTB & 0x0F); 
				break;
			default:
					break;
		}			
					
	}
}

interrupt [TIM0_OVF] void timer_int0(void) 
{ 
	TCNT0 = 177; // 초기값 재설정(0인 경우 생략가능)
	DELAY_FLAG++;
	DELAY_FLAG = DELAY_FLAG %4;	
}
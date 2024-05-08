#include <mega128.h>

typedef unsigned char U8;

const U8 seg_pat[10]= {0x3f, 0x06, 0x5b, 0x4f, 0x66, 0x6d, 0x7d, 0x07, 0x7f, 0x6f};
U8 led = 0xFF; 
U8 cnt = 0; 
U8 hour = 12, min = 0, sec = 0;
U8 TIMER0_OVF_FLAG =0;

void Time_out(void); 

void main(void) { 
	unsigned char i;
	DDRB = 0xF0; 
	DDRD = 0xF0; 
	DDRG = 0x0F; 
	
	DDRC = 0xFF; // 포트 C 출력으로 설정
	PORTC = led; // 포트 C에 초기값 출력
	
	TIMSK = 0x01; // TOIE0 = 1
	TCCR0 = 0x07; // 프리스케일 = CK/1024
	TCNT0 = 0x00; // 타이머/카운터0 레지스터 초기값
	
	SREG |= 0x80; // 전역 인터럽트 인에이블 비트 I se
	
	while(1) { 
		Time_out(); // 약 1초간 반복 표시
	}
}

void Time_out(void) // display
{
	PORTG = 0b00001000; // 7-Seg DIG4 ON(PG3=1), 분 1자리 표시
	PORTD = ((seg_pat[min % 10] & 0x0F) << 4) | (PORTD & 0x0F);
	PORTB = (seg_pat[min % 10] & 0x70 ) | (PORTB & 0x0F);
	delay_ms(5);
	PORTG = 0b00000100; // 7-Seg DIG3 ON(PG2=1), 분 10자리 표시
	PORTD = ((seg_pat[min / 10] & 0x0F) << 4) | (PORTD & 0x0F);
	PORTB = (seg_pat[min / 10] & 0x70 ) | (PORTB & 0x0F); 
	delay_ms(5); 
	PORTG = 0b00000010; // 7-Seg DIG2 ON(PG1=1), 시간 1자리 표시
	PORTD = ((seg_pat[hour % 10] & 0x0F) << 4) | (PORTD & 0x0F);
	PORTB = (seg_pat[hour % 10] & 0x70 ) | (PORTB & 0x0F); 
	delay_ms(5);
	PORTG = 0b00000001; // 7-Seg DIG1 ON(PG0=1), 시간 10자리 표시
	PORTD = ((seg_pat[hour / 10] & 0x0F) << 4) | (PORTD & 0x0F);
	PORTB = (seg_pat[hour / 10] & 0x70 ) | (PORTB & 0x0F); 
	delay_ms(5); 
}

interrupt [TIM0_OVF] void timer_int0(void) 
{ 
	TCNT0 = 0x0;
    
	
}
/*
 * 작성날짜 : 2017_11_16_목요일
 * 작 성 자 : 박 지 호
 * lcd_timer.h파일의 정의부.
 *
 * 동작신호의 클럭은 high값 유지시간이 230ns 이상이다.
 * lcd와 통신값이 설정이 완료된 후 40ns 이후에 동작신호를 발생시킨다.
 *
 * delay_us() --> 1분주비 사용하며, 1us --> 16카운팅하면됨. // 8분주비 사용하며 --> 1us --> 2카운팅하면됨.
 * delay_ms() --> 128분주비를 사용하며, 1ms --> 125 카운팅하면됨.
 *
 *
 */ 

#define F_CPU 16000000UL
#include <avr/io.h>
#include <avr/interrupt.h>
#include "lcd_delay.h"

unsigned char tcnt_val; //TCNT  초기화 값이 저장되는 변수.
unsigned int count_val; // counting할 횟수를 저장하는 변수.
volatile unsigned char delay_dis; // 타이머 처리가 완료되었는지를 나타내는 변수.

ISR(TIMER0_OVF_vect) // delay함수에 사용되는 타이머 --> overflow Interrupt를 사용.
{
	static unsigned int count;
	TCNT0 = 256 - tcnt_val;
	
	if(++count >= count_val)
	{
		count = 0x00; // 해당 인터럽트 서비스 루틴에 종속적인 변수값을 초기화.
		TCCR0 &= ~0x07; // 타이머 기능을 중단함.
		delay_dis = 1; // 원하는 시간만큼 딜레이 되었음을 알림.
		//TIFR |= 0x01; //이전에 발생한 인터럽트를 지움. --> 해당 시점은 타이머의 사용을 종료한 상태이므로.
	}
}

void delay_ms(unsigned int _time)
{
	delay_dis = 0; // 값 초기화.
	tcnt_val = 125; // ms단위에 대한 값.
	count_val = _time; // 시간 대입.
	TCCR0 |= 0x05; // 128분주, normal모드 사용.
	
	while(!delay_dis); // 대기.
}

void delay_us(unsigned int _time)
{
	delay_dis = 0; // 값 초기화.
	count_val = (unsigned int)( (double)_time / 128 ); //tcnt0값이 변경되지 않는 상태에서 발생되는 overflow 횟수를 저장.
	TCNT0 = 256 - (( _time * 2 ) % 256); //overflow 발생횟수에 대한 값과 총 카운팅할 횟수의 차를 저장(남은 카운터를 새는 용도)
	tcnt_val = 256; //delay_ms함수와 동일한 타이머 카운터를 사용하며, 사용되는 인터럽트도 동일하기에 통일성을 위해 설정.
	
	TCCR0 |= 0x02; // 8분주, normal모드 사용.
		
	while(!delay_dis); // 대기.
}

void delay_init(void)
{
	delay_dis = 0;
	TIMSK |= 0x01; //timer0_overflow_interrupt를 허용.
	TCCR0 &= ~0x07; // 실행안함.
	sei(); //전역 인터럽트 활성화.
} 
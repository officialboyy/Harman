#include <mega128.h>			 // LED 점멸하기(라이브러리 딜레이 함수 이용)
#include <delay.h>              // delay_ms(), delay_us() 정의 헤더파일

#define P0_LOW PORTC|=0x01
#define P0_HIGH PORTC&=0xFE
#define P1_LOW PORTC|=0x02
#define P1_HIGH PORTC&=0xFD

void main(void)
{
	unsigned char i=0;
    DDRC = 0xFF;                 // 포트C 출력 설정

    while(1){                        // 무한 루프         
        for(i=0;i<8;i++){
			P0_HIGH;
			P1_HIGH;
			delay_ms(500);            // 500ms 대기
			P0_LOW;
			delay_ms(500);            // 500ms 대기
			
			P0_HIGH;
			P1_LOW;
			delay_ms(500);            // 500ms 대기
			P0_LOW;
			delay_ms(500);            // 500ms 대기
		}	
    }
}

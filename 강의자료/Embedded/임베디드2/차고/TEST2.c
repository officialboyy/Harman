#include <mega128.h>	 // LED 점멸하기(라이브러리 딜레이 함수 이용)
#include <delay.h>              // delay_ms(), delay_us() 정의 헤더파일

void EVEN_ODD(void);

void main(void)
{
    DDRC = 0xFF;                 // 포트C 출력 설정

    while(1){                        // 무한 루프         
       EVEN_ODD();
    }
}



void EVEN_ODD(void){
		PORTC = 0x55;       	 // 0101 0101 출력
        delay_ms(500);           // 500ms 대기

        PORTC = 0xAA;  	//  1010 1010 출력
        delay_ms(500);            // 500ms 대기
		
        PORTC = 0x55;       	 // 0101 0101 출력
        delay_ms(500);           // 500ms 대기

        PORTC = 0xAA;  	//  1010 1010 출력
        delay_ms(500);            // 500ms 대기

        PORTC = 0x55;       	 // 0101 0101 출력
        delay_ms(500);           // 500ms 대기

        PORTC = 0xAA;  	//  1010 1010 출력
        delay_ms(500);            // 500ms 대기

        PORTC = 0x55;       	 // 0101 0101 출력
        delay_ms(500);           // 500ms 대기

        PORTC = 0xAA;  	//  1010 1010 출력
        delay_ms(500);            // 500ms 대기

        PORTC = 0x55;       	 // 0101 0101 출력
        delay_ms(500);           // 500ms 대기

        PORTC = 0xAA;  	//  1010 1010 출력
        delay_ms(500);            // 500ms 대기
}


/********************************************************************************************/
/*              Name : Practice.c                                                           */
/*              Date : 2024. 03. 12 first edited                                            */
/*              Modified and Programmed by JH Park                                          */
/********************************************************************************************/      

#include <mega128.h>        // 4번 SW(fall) : 0 - 7 1개씩 점등, 5번 SW(fall) : 7 - 0 1개씩 점등, 6번 SW(rise) : LED 모두 ON state=0, 7번 SW(rise) : LED 모두 OFF state=0

const unsigned char led[8] = {0xFE, 0xFD, 0xFB, 0xF7, 0xEF, 0xDF, 0xBF, 0x7F};          // const : "상수"를 의미하며, 선언해서 한번 초기화되면 변경 불가능.
                                                                                        // const unsigned char : 부호 없는 문자형 상수.
void main(void)
{
    unsigned char o_sw4, o_sw5, o_sw6, o_sw7, n_sw4, n_sw5, n_sw6, n_sw7;
    unsigned char state = 0;                // LED 출력 상태 (0번째)
    
    DDRC = 0xFF;                            // 포트C 출력 설정
    DDRE = 0x00;                            // 포트 E 입력 설정
    
    PORTC = led[state];                     // PORTC = led[0] => 0번째 출력 0
    o_sw4 = PINE & 0x10;                // SW4 = PE4 상태
    o_sw5 = PINE & 0x20;                // SW5 = PE5 상태
    o_sw6 = PINE & 0x40;                // SW6 = PE6 상태
    o_sw7 = PINE & 0x80;                // SW7 = PE7 상태                 
                                    
    
    while (1)
          {
            n_sw4 = PINE & 0x10;
            n_sw5 = PINE & 0x20;
            n_sw6 = PINE & 0x40;
            n_sw7 = PINE & 0x80;
            
            if (o_sw4 != 0 && n_sw4 == 0)     // OFF => ON 되는 순간
               {
                state = (state + 1) % 8;    // state 다음 상태로 갱신 ( 0 ~ 7 )
                PORTC = led[state];
               }                   
            o_sw4 = n_sw4;
            
            if (o_sw5 != 0 && n_sw5 == 0)   // OFF => ON 되는 순간 
               {
                if (state == 0)
                   {
                    state = 7;
                   }
                else
                   {
                    state = (state - 1) % 8;           
                   }
                PORTC = led[state];
               }
            o_sw5 = n_sw5;
            
            if (o_sw6 == 0 && n_sw6 != 00)   // ON => OFF 되는 순간 
               {
                PORTC = 0x00;
                state = 0;
               }
            o_sw6 = n_sw6;
            
            if (o_sw7 == 0 && n_sw7 != 0)   // ON => OFF 되는 순간 
               {
                PORTC = 0xFF;
                state = 0;
               }             
            o_sw7 = n_sw7;
          }
} 


/*
#include <mega128.h>                    // 스위치 누를때마다 LED 순차 점멸. [ 배열 이용 ]

const unsigned char led[8] = {0xFE, 0xFD, 0xFB, 0xF7, 0xEF, 0xDF, 0xBF, 0x7F};          // const : "상수"를 의미하며, 선언해서 한번 초기화되면 변경 불가능.
                                                                                        // const unsigned char : 부호 없는 문자형 상수.
void main(void)
{
    unsigned char o_sw, n_sw;
    unsigned char state = 0;                // LED 출력 상태 (0번째)
    
    DDRC = 0xFF;                            // 포트C 출력 설정
    DDRE = 0x00;                            // 포트 E 입력 설정
    
    PORTC = led[state];                     // PORTC = led[0] => 0번째 출력 0
    o_sw = PINE & 0x10;                     // SW1 = PE4 상태값
    
    while (1)
          {
            n_sw = PINE & 0x10;
            if (o_sw != 0 && n_sw == 0)     // OFF => ON 되는 순간
               {
                state = (state + 1) % 8;    // state 다음 상태로 갱신 ( 0 ~ 7 )
                PORTC = led[state];
               }                   
            o_sw = n_sw;                    
          }
} 
*/

/*
#include <mega128.h>                    // 스위치 누를때마다 LED 순차 점멸.
void main(void) 
{ 
    unsigned char old_sw, new_sw;
    unsigned char led = 0xFE;
    DDRC = 0xFF; // 포트C 출력 설정 
    DDRE = 0x00; // 포트E 입력 설정 
    PORTC = led; // 포트C.0=0 led on 초기값 출력
    old_sw = PINE & 0b00010000; // PE4 SW1 상태값 추출
    while(1)
    { 
        new_sw = PINE & 0b00010000;
        if((old_sw != 0) && (new_sw == 0))
        { // OFF(1) -> ON(0) 되는 순간 체크 
            led = (led << 1) | 0x01; // 1비트 쉬프트, 0비트 1로 채움 
        
            if(led == 0xFF) 
            {
                led = 0xFE; // LED 모두 off상태이면 초기값 재설정
            }   
            PORTC = led;
            
        } 
        old_sw = new_sw; // 이전상태 <- 현재상태 
    } 
}
*/


/*
#include <mega128.h>                // 스위치 상태에 따라 다르게 출력하기
void main(void) 
{ 
    unsigned char key;
    DDRC = 0xFF; // 포트 C 출력 설정 
    DDRE = 0x00; // 포트 E 입력 설정 
    PORTC = 0xFF; // LED 모두 OFF 
    
    while(1)
    {
        key = PINE & 0xF0; // 포트 E 4.5.6.7 읽어오기.
        switch(key)
        {
            case 0b11100000 : // SW1(E.4)이 눌리면 LED 모두 ON 
            PORTC = 0x00;
            break;
            case 0b11010000 : // SW2(E.5)가 눌리면 LED 모두 OFF 
            PORTC = 0xFF;
            break;
            case 0b10110000 : // SW3(E.6)이 눌리면 짝수번째 LED ON 
            PORTC = 0b01010101;
            break;
            case 0b01110000 : // SW4(E.7)가 눌리면 홀수번째 LED ON 
            PORTC = 0b10101010;
            break;
            default:
            break;
        } // end of switch 
    } // end of while 
} // end of main
*/

/*
#include <mega128.h>                // 스위치로 LED 제어
#include <delay.h>

void main(void)
{
    unsigned char sw4, sw5, sw6, sw7;
    
    DDRC = 0xFF;            // 포트C 출력 설정
    DDRE &= 0x0F;           // 포트E 입력 설정
    
    PORTC = 0xFF;           // LED 모두 OFF.
    
    while (1)
          {
            sw4 = PINE & 0x10;                 // PINE : 오로지 READ
            sw5 = PINE & 0x20;
            sw6 = PINE & 0x40;
            sw7 = PINE & 0x80;
            
            if (sw4 == 0 ) 
            {
                PORTC = 0x00;
            }
            if (sw5 == 0) 
            {
                PORTC = 0x55;
            }
            if (sw6 == 0)
            {  
                PORTC = 0xAB;
            }                
            if (sw7 == 0)
            {
                PORTC.0 = 0;
                PORTC.7 = 0;
                delay_ms(100);
                PORTC.0 = 1;
                PORTC.7 = 1;
                
                PORTC.1 = 0;
                PORTC.6 = 0;
                delay_ms(100);
                PORTC.1 = 1;
                PORTC.6 = 1;
                
                PORTC.2 = 0;
                PORTC.5 = 0;
                delay_ms(100);
                PORTC.2 = 1;
                PORTC.5 = 1;
                
                
                PORTC.3 = 0;
                PORTC.4 = 0;
                delay_ms(100);
                PORTC.3 = 1;
                PORTC.4 = 1;
            }
            else PORTC = 0xFF;
          }
}
*/


/*
#include <mega128.h>            // PORTC.2 / 0 / 1 / 1 ~       ...여기서 PORTC.0 = CLOCK, PORTC.1 = DATA.. CLK이 HIGH일땐 DATA 변화하면 안된다는 규정 있음.
#include <delay.h>

#define P2_HIGH PORTC|=0x04
#define P2_LOW PORTC&=0xFB
#define P1_HIGH PORTC|=0x02
#define P1_LOW PORTC&=0xFD
#define P0_HIGH PORTC|=0x01
#define P0_LOW PORTC&=0xFE

void main(void)
{
    unsigned char i = 0;
    DDRC = 0x07;            // 포트C 출력 설정
    while (1)
          {
            P2_LOW;
            
            for (i=0; i<4; i++)
            {
                P0_HIGH;
                P1_HIGH;
                delay_ms(100);
                    
                P0_LOW;
                delay_ms(50);
                      
                P1_LOW;
                delay_ms(50);
                     
                P0_HIGH;
                delay_ms(100);
                     
                P0_LOW;
                delay_ms(50);
                    
                P1_HIGH;
                delay_ms(50);
            }
            
            P2_HIGH;
            P1_LOW;
            delay_ms(500);       
          }
}
*/

/*                                                                            
#include <mega128.h>            // LED 포트C의 0bit만 점멸 [ 비트 반전 연산자 이용 ]
#include <delay.h>

void main(void)
{
    DDRC = 0xFF;
    PORTC = 0x55;
    while (1)
          {
            PORTC.0 = !PORTC.0; // PORTC의 0bit 반전
            delay_ms(500);
          }
}
*/


/*
#include <mega128.h>            // LED 하나만 점멸하기 [ define 이용 ]
#include <delay.h>

#define LED0 PORTC.0
#define ON 0
#define OFF 1

void main(void)
{
    DDRC = 0xFF;                // 포트C 출력 설정
    PORTC = 0x55;               // 포트C 0101 0101 출력
    while (1)
          {
            LED0 = OFF;
            delay_ms(500);
            
            LED0 = ON;
            delay_ms(500);
          }
}
*/

/*
#include <mega128.h>
#include <delay.h>
#define P0_HIGH PORTC|=0x01
#define P0_LOW PORTC&=0xFE
#define P1_HIGH PORTC|=0x02
#define P1_LOW PORTC&=0xFD

void main(void)
{
    unsigned char i = 0;
    DDRC = 0x03;
    while (1)
          {
            for (i=0; i<8; i++)
                {
                    P0_HIGH;
                    P1_HIGH;
                    delay_ms(500);
                    P0_LOW;
                    delay_ms(500);
                    
                    P0_HIGH;
                    P1_LOW;
                    delay_ms(500);
                    P0_LOW;
                    delay_ms(500);    
                }
          }
}
*/


/*
#include <mega128.h>    // PORTC.0 : CLK=100ms, PORTC.1 : CLK=200ms --> 8번 반복
#include <delay.h>      // delay_ms(), delay_us() 정의 헤더파일
void P0_HIGH(void);
void P0_LOW(void);
void P1_HIGH(void);
void P1_LOW(void);
int i;

    
void main(void)
{
    DDRC = 0x03;                // 포트C 출력 설정    
    for (i = 0; i < 16;i++)
        {
            if (i % 4 == 0)
            {
                P0_HIGH();
                P1_HIGH();
                delay_ms(100);
            }
            if (i % 4 == 1)
            {
                P0_LOW();
                P1_HIGH();
                delay_ms(100);
            }
            if (i % 4 == 2)
            {
                P0_HIGH();
                P1_LOW();
                delay_ms(100);
            }                 
            if (i % 4 == 3)
            {
                P0_LOW();
                P1_LOW();
                delay_ms(100);
            }
        }
    P0_HIGH();
    P1_HIGH();
}

void P0_HIGH(void)
{
    PORTC |= 0x01;
}
void P0_LOW(void)
{
    PORTC &= 0xFE;
}
void P1_HIGH(void)
{
    PORTC |= 0x02;
}
void P1_LOW(void)
{
    PORTC &= 0xFD;
}
*/



/*
#include <mega128.h>    // LED 쉬프트 하면서 순차 점멸하기 [ 배열이용 ]
#include <delay.h>      // delay_ms(), delay_us() 정의 헤더파일

void EVEN_ODD(void);
      
void main(void)
{
    DDRC = 0xFF;                // 포트C 출력 설정
    PORTC = 0x55;               // 포트C 0101 0101 출력
    
    while (1)                   // 무한 루프
          {
            EVEN_ODD();
          }
}

void EVEN_ODD(void)
{
    PORTC = PORTC ^ 0x01;       // PORTC의 0비트만 반전. ^ : XOR 연산자 ( 같으면 0, 다르면 1 )
    delay_ms(500);              // 500ms 딜레이
}
*/

/*
#include <mega128.h>    // LED 쉬프트 하면서 순차 점멸하기 [ 배열이용 ]
#include <delay.h>      // delay_ms(), delay_us() 정의 헤더파일
const unsigned char led[8] = {0xFE, 0xFD, 0xFB, 0xF7, 0xEF, 0xDF, 0xBF, 0x7F};

void EVEN_ODD(void);
      
void main(void)
{
    DDRC = 0xFF;                // 포트C 출력 설정
    
    while (1)                   // 무한 루프
          {
            EVEN_ODD();
          }
}

void EVEN_ODD(void)
{
    int i;
    for (i = 0; i < 8; i++)
        {
            PORTC = led[i];     // i번째 LED값 출력
            delay_ms(500);      // 500ms 딜레이
        }
}
*/

/*
#include <mega128.h>    // LED 쉬프트 하면서 순차 점멸하기(2)
#include <delay.h>      // delay_ms(), delay_us() 정의 헤더파일

void EVEN_ODD(void);
      
void main(void)
{
    DDRC = 0xFF;                // 포트C 출력 설정
    
    while (1)                   // 무한 루프
          {
            EVEN_ODD();
          }
}

void EVEN_ODD(void)
{
    int i;
    unsigned char led;
    led = 0xFE;                 // LED 초기값
    for (i = 0; i < 8; i++)
        {
            PORTC = led;        // LED값 출력
            delay_ms(500);      // 500ms 딜레이
            led = led << 1;     // 1bit 왼쪽 쉬프트
            led = led | 0x01;   // 최하위 bit set
        }
}
*/
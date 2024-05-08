/*******************************************************************************************/
/*****                  Name        : 7_Segment.c                                      *****/
/*****                  Modified and Programmed by JH Park                             *****/
/*****                  Date        : 2024. 03. 25 first edited                        *****/
/*******************************************************************************************/

/*
#include <mega128.h>                // 7-Segment SW1 입력시 => 0 ~ 9 변환  
#include <delay.h>

const unsigned char seg_pat[10]= {0x3f, 0x06, 0x5b, 0x4f, 0x66, 0x6d, 0x7d, 0x07, 0x7f, 0x6f};

void main(void) 
{ 
    unsigned char oldkey, key, num = 0;
    DDRB = 0xF0; // 포트 B 상위 4비트 출력 설정 
    DDRD = 0xF0; // 포트 D 상위 4비트 출력 설정 
    DDRG = 0x0F; 
    DDRE = 0x00; // 포트 G 하위 4비트 출력 설정, 포트 E 입력설정
    PORTG = 0b00001000; // 맨 우측 7-Segment DIG4 ON(PG3=1) 
    PORTB = 0x0; // E, F, G, DP off 
    PORTD = 0x0; // A, B, C, D off 
    oldkey = PINE & 0b00010000; // SW1 상태만 추출
    while(1)
    { 
        PORTD = ((seg_pat[num] & 0x0F) << 4) | (PORTD & 0x0F); // A, B, C, D 표시 
        PORTB = (seg_pat[num] & 0x70 ) | (PORTB & 0x0F); // E, F, G 표시
        key = PINE & 0b00010000; // SW1 상태만 추출

        if(oldkey != 0 && key == 0)
        { // 먼저 상태 OFF, 현 상태 ON ?
            num = (num + 1) % 10; // num값 1증가 (9 다음은 0) 
        } 
        oldkey = key; // 먼저 상태 <- 현상태 
    } 
}
*/


#include <mega128.h>                // 7-Segment 0 ~ 9999 까지 출력  
#include <delay.h> 

const char seg_pat[10]= {0x3f, 0x06, 0x5b, 0x4f, 0x66, 0x6d, 0x7d, 0x07, 0x7f, 0x6f};       // 숫자 0 ~ 9

void Seg4_out(int);                 // 4자리 정수 out 함수 선
void Seg4_stop(int); 

void main(void) 
{ 
    int num = 0;
    int o_sw = 1;
    DDRB = 0xF0; // 포트 B 상위 4비트 출력 설정 
    DDRD = 0xF0; // 포트 D 상위 4비트 출력 설정 
    DDRG = 0x0F; // 포트 G 하위 4비트 출력 설정
    DDRE = 0x00; // 스위치 입력 설정  
    PORTB = 0x0; // E, F, G, DP off 
    PORTD = 0x0; // A, B, C, D off  
    

    while(1)
    {       
        int n_sw = PINE & 0x10;
        if(o_sw != 0 && n_sw == 0)
        {
            while(1)
            {   
                o_sw = 1;   
                n_sw = PINE & 0x10;
                Seg4_stop(num);                         
                if(o_sw != 0 && n_sw == 0) break;
            }
        }                
        o_sw = n_sw;
         
        Seg4_out(num);
        num++;
        if(num >= 99) 
        {
            while(1)
            {
                Seg4_stop(num);
            }
            
        }
        if(num <= 0)
        {
            while(1)
            {
                Seg4_stop(num);
            }
        }                
    } 
}

void Seg4_out(int num) // 네 자리 정수 출력 
{ 
    int i, N1000, N100, N10, N1, buf;
    N1000 = num / 1000; // 1000자리 추출 
    buf = num % 1000;
    N100 = buf / 100; // 100자리 추출 
    buf = buf % 100;
    N10 = buf / 10; // 10자리 추출 
    N1 = buf % 10; // 1자리 추출 
    
    for(i = 0;i < 2;i++)
    { 
        PORTG = 0b00001000; // 맨 우측 7-Segment DIG4 ON(PG3=1) 
        PORTD = ((seg_pat[N1] & 0x0F) << 4) | (PORTD & 0x0F); // A, B, C, D 표시 
        PORTB = (seg_pat[N1] & 0x70 ) | (PORTB & 0x0F); // E, F, G 표시 
        delay_ms(5);
        
        PORTG = 0b00000100; // 7-Segment DIG3 ON(PG2=1)
        if(num >= 10)
        { 
            PORTD = ((seg_pat[N10] & 0x0F) << 4) | (PORTD & 0x0F); // A, B, C, D 표시 
            PORTB = (seg_pat[N10] & 0x70 ) | (PORTB & 0x0F); // E, F, G 표시
        }
        else
        {
            PORTD = 0x00;
            PORTB = 0x00;
        } 
        delay_ms(5);

        PORTG = 0b00000010; // 7-Segment DIG2 ON(PG1=1)
        if(num >= 100)
        { 
            PORTD = ((seg_pat[N100] & 0x0F) << 4) | (PORTD & 0x0F); // A, B, C, D 표시 
            PORTB = (seg_pat[N100] & 0x70 ) | (PORTB & 0x0F); // E, F, G 표시
        }
        else
        {
            PORTD = 0x00;
            PORTB = 0x00;
        } 
        delay_ms(5);

        PORTG = 0b00000001; // 7-Segment DIG1 ON(PG0=1)
        if(num >= 1000)
        { 
            PORTD = ((seg_pat[N1000] & 0x0F) << 4) | (PORTD & 0x0F); // A, B, C, D 표시 
            PORTB = (seg_pat[N1000] & 0x70 ) | (PORTB & 0x0F); // E, F, G 표시
        }
        else
        {
            PORTD = 0x00;
            PORTB = 0x00;
        } 
        delay_ms(5);
        
          
    }
}

void Seg4_stop(int num) // 네 자리 정수 출력 
{ 
    int i, N1000, N100, N10, N1, buf;
    N1000 = num / 1000; // 1000자리 추출 
    buf = num % 1000;
    N100 = buf / 100; // 100자리 추출 
    buf = buf % 100;
    N10 = buf / 10; // 10자리 추출 
    N1 = buf % 10; // 1자리 추출 
    
    for(i = 0;i < 2;i++)
    { 
        PORTG = 0b00001000; // 맨 우측 7-Segment DIG4 ON(PG3=1) 
        PORTD = ((seg_pat[N1] & 0x0F) << 4) | (PORTD & 0x0F); // A, B, C, D 표시 
        PORTB = (seg_pat[N1] & 0x70 ) | (PORTB & 0x0F); // E, F, G 표시 
        delay_ms(5);
        
        PORTG = 0b00000100; // 7-Segment DIG3 ON(PG2=1)
        if(num >= 10)
        { 
            PORTD = ((seg_pat[N10] & 0x0F) << 4) | (PORTD & 0x0F); // A, B, C, D 표시 
            PORTB = (seg_pat[N10] & 0x70 ) | (PORTB & 0x0F); // E, F, G 표시
        }
        else
        {
            PORTD = 0x00;
            PORTB = 0x00;
        } 
        delay_ms(5);

        PORTG = 0b00000010; // 7-Segment DIG2 ON(PG1=1)
        if(num >= 100)
        { 
            PORTD = ((seg_pat[N100] & 0x0F) << 4) | (PORTD & 0x0F); // A, B, C, D 표시 
            PORTB = (seg_pat[N100] & 0x70 ) | (PORTB & 0x0F); // E, F, G 표시
        }
        else
        {
            PORTD = 0x00;
            PORTB = 0x00;
        } 
        delay_ms(5);

        PORTG = 0b00000001; // 7-Segment DIG1 ON(PG0=1)
        if(num >= 1000)
        { 
            PORTD = ((seg_pat[N1000] & 0x0F) << 4) | (PORTD & 0x0F); // A, B, C, D 표시 
            PORTB = (seg_pat[N1000] & 0x70 ) | (PORTB & 0x0F); // E, F, G 표시
        }
        else
        {
            PORTD = 0x00;
            PORTB = 0x00;
        } 
        delay_ms(5);

    }
}




/*
#include <mega128.h>                // 7-Segment 16진수값 0 ~ F 순차적 LED ON 
#include <delay.h>

const unsigned char seg_pat[16] = {0x3f, 0x06, 0x5b, 0x4f, 0x66, 0x6d, 0x7d, 0x07, 0x7f, 0x6f, 0x77, 0x7c, 0x39, 0x5e, 0x79, 0x71};

void main(void) 
{ 
    int i, j;
    DDRB = 0xF0; // 포트 B 상위 4비트 출력 설정 
    DDRD = 0xF0; // 포트 D 상위 4비트 출력 설정
    DDRG = 0x0F; // 포트 G 하위 4비트 출력 설정 
    PORTG = 0b00001000; // 맨 우측 7-Segment DIG4 ON(PG3=1)
    PORTB = 0x00; // E, F, G, DP off (초기값) 
    PORTD = 0x00; // A, B, C, D off (초기값)

    while(1)
    { // 16진수 순차 표시 
        PORTG = 0b0001000; // DIG포트 초기화 
        for(j=0; j < 4; j++) 
        {
            for(i = 0; i < 16; i++)
            {
                PORTD = ((seg_pat[i] & 0x0F) << 4) | (PORTD & 0x0F); // seg_pat 하위 4bit A, B, C, D
                PORTB = (seg_pat[i] & 0x70 ) | (PORTB & 0x0F); // seg_pat 상위 3bit E, F, G ... 0x70인 이유는 PB7인 (.)을 사용하지 않기 때문
                delay_ms(100);
            }
            PORTG = PORTG >> 1; 
        }
    }
}
*/

/*
#include <mega128.h>                // 7-Segment PG3 ~ PG0 ... ALL LED ON Shift
#include <delay.h>

void main(void) 
{ 
    DDRB = 0xF0; // PORTB 4,5,6,7 비트 출력 설정 
    DDRD = 0xF0; // PORTD 4,5,6,7 비트 출력 설정
    DDRG = 0x0F; // PORTG 0,1,2,3 비트 출력 설정
    PORTB = 0b11110000; // E, F, G, DP on 
    PORTD = 0b11110000; // A, B, C, D on
    while(1)
    { 
        PORTG = 0b00001000; // DIG4 7-Segment ON (PG3=1) 우측 
        delay_ms(10);
        PORTG = 0b00000100; // DIG3 7-Segment ON (PG2=1) 
        delay_ms(10);
        PORTG = 0b00000010; // DIG2 7-Segment ON (PG1=1) 
        delay_ms(10);
        PORTG = 0b00000001; // DIG1 7-Segment ON (PG0=1) 좌측 
        delay_ms(10);
    } 
}
*/

/*
#include <mega128.h>                // 7-Segment LED 순차적 ON & DIG << 1 씩 쉬프트 
#include <delay.h>

void main(void) 
{ 
    char i, j,  value;
    DDRB = 0xF0; // PORTB 4,5,6,7 비트 출력 설정    
    DDRD = 0xF0; // PORTD 4,5,6,7 비트 출력 설정
    DDRG = 0x0F; // PORTG 0,1,2,3 비트 출력 설정
    PORTG = 0b00001000; // 맨 우측 7-Segment DIG4 ON (PORTG3=1) 
    PORTB = 0x00; // 초기값 PORTB 4,5,6,7 출력 0 
    PORTD = 0x00; // 초기값 PORTD 4,5,6,7 출력 0
    while(1)
    {   
        PORTG = 0b00010000;             // for문 종료 시 DIG포트 초기
        for(j = 0; j < 4; j++)
        {
            PORTG = PORTG >> 1;
            value= 0b00000001;
            for(i = 0; i < 8; i++)
            { 
                PORTD = (value & 0x0F) << 4; // PD4-PD7 : A-D 
                PORTB = (value & 0xF0); // PB4-PB7 : E,F,G,DP 
                delay_ms(500);
                value = value << 1; // 출력할 값 1비트 왼쪽 쉬프트
            } 
        }
    } 
}
*/

/*
#include <mega128.h>            // 7-Segment LED 동작 여부 확인용 
#include <delay.h>
void main(void) 
{ 
    char i, value;
    DDRB = 0xF0; // PORTB 4,5,6,7 비트 출력 설정 
    DDRD = 0xF0; // PORTD 4,5,6,7 비트 출력 설정
    DDRG = 0x0F; // PORTG 0,1,2,3 비트 출력 설정
    PORTG = 0b00001111; // 맨 우측 7-Segment DIG4 ON (PORTG3=1) 
    PORTB = 0x00; // 초기값 PORTB 4,5,6,7 출력 0 
    PORTD = 0x00; // 초기값 PORTD 4,5,6,7 출력 0
    while(1)
    { 
        PORTD = 0b11110000;
        delay_ms(500);
        PORTB = 0b11110000;
    }
}
*/
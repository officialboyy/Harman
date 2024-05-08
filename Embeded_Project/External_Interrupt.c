/*******************************************************************************************/
/*****                  Name        : External_Interrupt.c                             *****/
/*****                  Modified and Programmed by JH Park                             *****/
/*****                  Date        : 2024. 03. 25 first edited                        *****/
/*******************************************************************************************/

#include <mega128.h>                    // 예제 4-6)
#include <delay.h>

typedef unsigned char U8;

const U8 seg_pat[10] = {0x3f, 0x06, 0x5b, 0x4f, 0x66, 0x6d, 0x7d, 0x07, 0x7f, 0x6f};

U8 N1, N10, N100, N1000;
U8 pos = 0;
U8 hour = 12, min = 0, sec = 0;

void Time_out(void);

void main(void)
{
    unsigned char i;
    
    DDRB = 0xF0;
    DDRD = 0xF0;
    DDRG = 0x0F;
    
    EIMSK = 0b00110000;
    EICRB = 0b00001010;
    SREG = 0x80;
    
    while(1)
    {
        for (i = 0; i < 49; i++)
        {
            Time_out();
        }
        sec = sec + 1; // 초값 +1 
        if(sec == 60) 
        { 
            sec = 0;
            min = min + 1; // 분값 +1 
            if(min == 60) 
            { 
                min = 0;
                hour = (hour + 1) % 24; // 시간 +1
            } // end of min 
        } // end of sec
    }
}

void Time_out(void)
{
    PORTG = 0b00001000;
    PORTD = ((seg_pat[min%10] & 0x0F) << 4) | (PORTD & 0x0F);
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

interrupt [EXT_INT4] void external_int4(void)
{
    N1 = min % 10;
    N10 = min / 10;
    N100 = hour % 10;
    N1000 = hour / 10;
    
    if (pos == 0) N1 = (N1 + 1) % 10;
    else if (pos == 1) N10 = (N10 + 1) % 6;
    else if (pos == 2)
    {
        if (N1000 == 2) N100 = (N100 + 1) % 4;
        else N100 = (N100 + 1) % 10;
    }
    else 
    {
        if(N100 < 4) N1000 = (N1000 + 1) % 3;
        else N1000 = (N1000 + 1) % 2;
    }
    
    hour = N1000 * 10 + N100;
    min = N10 * 10 + N1;
}
interrupt [EXT_INT5] void external_int5(void)
{
    pos = (pos + 1) % 4;
}


/*
#include <mega128.h>                    // 예제 4-5) 
#include <delay.h>

typedef unsigned char U8;
unsigned char EINT4_SET_FLAG = 0;
unsigned char EINT5_SET_FLAG = 0;


const U8 seg_pat[10]= {0x3f, 0x06, 0x5b, 0x4f, 0x66, 0x6d, 0x7d, 0x07,0x7f, 0x6f};

U8 N1 = 0, N10 = 0, N100 = 0, N1000 = 0; // 0 : 1자리, 1 : 10자리 , 2 : 100자리 , 3 : 1000자리 
U8 pos = 0;

void Seg4_out(void); // 네 자리수 7-Segment 출력

void main(void) 
{ 
    DDRB = 0xF0; // 포트 B 상위 4비트 출력 설정 
    DDRD = 0xF0; // 포트 D 상위 4비트 출력 설정 
    DDRG = 0x0F; // 포트 G 하위 4비트 출력 설정
    
    EIMSK = 0b00110000; // 외부 인터럽트 4,5 enable 
    EICRB = 0b00001010; // 외부 인터럽트 4,5 : falling edge 
    SREG = 0x80; // 전역 인터럽트 enable-bit set
    while(1) 
    {    
        if (EINT4_SET_FLAG == 1)
        {
            if (pos == 0) N1 = (N1 + 1) % 10;
            else if (pos == 1) N10 = (N10+1) % 10;
            else if (pos == 2) N100 = (N100+1) % 10;
            else N1000 = (N1000+1) % 10;
            EINT4_SET_FLAG = 0;
        }
        if (EINT5_SET_FLAG == 1)
        {
            pos = (pos + 1) % 4;
            EINT5_SET_FLAG = 0;
        }

        Seg4_out();
    } 
}

void Seg4_out(void) 
{ 
    PORTG = 0b00001000; // 7-Seg DIG4 ON(PG3=1), 1자리 표시 
    PORTD = ((seg_pat[N1] & 0x0F) << 4) | (PORTD & 0x0F); // A, B, C, D 표시 
    PORTB = (seg_pat[N1] & 0x70 ) | (PORTB & 0x0F); // E, F, G 표시 
    delay_ms(5);

    PORTG = 0b00000100; // 7-Seg DIG3 ON(PG2=1), 10자리 표시 
    PORTD = ((seg_pat[N10] & 0x0F) << 4) | (PORTD & 0x0F); // A, B, C, D 표시 
    PORTB = (seg_pat[N10] & 0x70 ) | (PORTB & 0x0F); // E, F, G 표시 
    delay_ms(5);

    PORTG = 0b00000010; // 7-Seg DIG2 ON(PG1=1), 100자리 표시 
    PORTD = ((seg_pat[N100] & 0x0F) << 4) | (PORTD & 0x0F);
    PORTB = (seg_pat[N100] & 0x70 ) | (PORTB & 0x0F);
    delay_ms(5);

    PORTG = 0b00000001; // 7-Seg DIG1 ON(PG0=1), 1000자리 표시 
    PORTD = ((seg_pat[N1000] & 0x0F) << 4) | (PORTD & 0x0F);
    PORTB = (seg_pat[N1000] & 0x70 ) | (PORTB & 0x0F);
    delay_ms(5);
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
*/


/*
#include <mega128.h>            // 예제 4-4)
#include <delay.h>

const char seg_pat[10]= {0x3f, 0x06, 0x5b, 0x4f, 0x66, 0x6d, 0x7d, 0x07, 0x7f, 0x6f};

unsigned char N1 = 0;
unsigned char EINT4_SET_FLAG = 0;

void main(void)
{
    DDRB = 0xF0;
    DDRD = 0xF0;
    DDRG = 0x0F;
    
    // 인터럽트 초기화 
    EIMSK = 0b00010000;
    EICRB = 0b00000010;
    SREG = 0x80;
    
    PORTG = 0b00001000;     // 맨 우측 DIG4 ON
    while(1)
    {   
        if(EINT4_SET_FLAG == 1)
        {
            N1 = (N1 + 1) % 10;
            EINT4_SET_FLAG = 0;
        }
        PORTD = ((seg_pat[N1] & 0x0F) << 4) | (PORTD & 0x0F);
        PORTB = (seg_pat[N1] & 0x70) | (PORTB & 0x0F);
    }
}

interrupt [EXT_INT4] void external_int4(void) 
{
    SREG &= 0x7F; // All Interrupt disable

    EINT4_SET_FLAG=1;

    SREG |= 0x80; // All Interrupt enable    
}
*/

/*
#include <mega128.h>                // 예제 4-1)

unsigned char led = 0xFE;
unsigned char EINT4_SET_FLAG = 0;
unsigned char EINT5_SET_FLAG = 0;
unsigned char EINT6_SET_FLAG = 0;
unsigned char EINT7_SET_FLAG = 0;

void main(void)
{
    DDRC = 0xFF;        // 포트 C 출력
    
    PORTC = led;
    
    EIMSK = 0b11110000;
    EICRB = 0b10110110;
    SREG = 0x80;
    
    while(1)
    {   
        if(EINT4_SET_FLAG==1)
        {                    
            led = led << 1; // 1비트 쉬프트 
            led = led | 0b00000001; // LSB bit set 
            if(led == 0xFF) led = 0xFE;
            PORTC = led; // 포트 출력
            EINT4_SET_FLAG = 0;
        }
        if(EINT5_SET_FLAG==1)
        {
            PORTC = 0x55;
            EINT5_SET_FLAG = 0;
        }                      
        if(EINT6_SET_FLAG==1)
        {
            PORTC = 0xF0;
            EINT6_SET_FLAG = 0;
        }
        if(EINT7_SET_FLAG==1)
        {
            PORTC = 0x0F;
            EINT7_SET_FLAG = 0;
        }
    }
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
*/
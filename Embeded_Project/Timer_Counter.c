/*******************************************************************************************/
/************               Name : Timer_Counter.c                              ************/
/************               Modified and Programmed by JH Park                  ************/
/************               Date : 2024. 03. 26 first edited                    ************/
/*******************************************************************************************/

#include <mega128.h>

unsigned int pwm = 0x0200; // 현재의 출력비교 레지스터 값 저장  

void main(void) 
{ 
    DDRB = 0xFF; // OC1C(PB7) 핀 출력방향설정 
    DDRG = 0xFF; // 7-세그먼트 ON/OFF 제어 포트 
    PORTG = 0x0F; // 7-세그먼트 모두 ON
    
    EIMSK = 0b00110000; // 외부INT4 = 1, INT5 = 1
    EICRB = 0b00001010; // 외부 인터럽트 falling edge

    TCCR1A = 0b00001011; // 모드 3-10bits Phase Correct PWM
    TCCR1B = 0b00000100; // 타이머/카운터1 프리스케일러 = CK/256 
    TCCR1C = 0x0;
    TCNT1 = 0x0; // 타이머/카운터1 레지스터 초기값 설정
    OCR1CH = (pwm & 0xFF00) >> 8; // OCR1C 초기값 설정 0x02
    OCR1CL = pwm & 0x00FF; // 0x00
    SREG = 0x80; // 전역 인터럽트 인에이블 비트 I 셋
    
    while(1);
}

interrupt [EXT_INT4] void external_int4(void) 
{ 
    if(pwm < 0x03B0) pwm += 0x0040; // 0x03B0보다 작으면 증가 
    OCR1CH = (pwm & 0xFF00) >> 8; // OCR1C 값 갱신 
    OCR1CL = pwm & 0x00FF;
}
// 외부 인터럽트 요구 5 서비스 루틴(SW2 처리) 
interrupt [EXT_INT5] void external_int5(void) 
{ 
    if(pwm > 0x0050) pwm -= 0x0040; // 0x0050보다 크면 감소 
    OCR1CH = (pwm & 0xFF00) >> 8; // OCR1C 값 갱신 
    OCR1CL = pwm & 0x00FF;
}


/*
#include <mega128.h>                            // TIM3_COMP_2.5sec 
unsigned char led = 0xFE;
unsigned char TIM3_COMP_FLAG = 0;


void main(void) 
{ 
    DDRC = 0xFF; // 포트 C 출력으로 설정 
    PORTC = led; // 포트 C에 초기값 출력 
    
    ETIMSK = 0x10; 
    
    TCCR3A = 0x00; // 모드 0(일반모드) 
    TCCR3B = 0x0D; // 프리스케일 = CK/256 
    TCCR3C = 0x00;                
    
    TCNT3H = 0x00; 
    TCNT3L = 0x00;
    OCR3AH = 0x98;
    OCR3AL = 0x96; 
    SREG |= 0x80; // 전역 인터럽트 인에이블 비트 I set 
    
    while(1)
    {
        if (TIM3_COMP_FLAG == 1)
        {    
            TCNT3H = 0x00;
            TCNT3L = 0x00;
            OCR3AH = 0x98;
            OCR3AL = 0x96;
            led = led << 1; // 1비트 쉬프트 
            led = led | 0x01; // 최하위 비트 set 
            if(led == 0xFF) led = 0xFE; // 모두 off이면 초기값 재설정 
            PORTC = led; // 포트 출력 
            TIM3_COMP_FLAG = 0;
        }
    }
}
// (1/16)us * 256분주 * (65536 - 32768)= 524ms 
interrupt [TIM3_COMPA] void timer_comp3(void) 
{ 
    SREG &= 0x7F; // All Interrupt disable
    TIM3_COMP_FLAG = 1;
    SREG |= 0x80; // All Interrupt enable
}
*/



/*
#include <mega128.h>                            // 예제 6-4) 
unsigned char led = 0xFE;
unsigned int time = 0x8000; // 32768
unsigned char TIM1_OVF_FLAG = 0;


void main(void) 
{ 
    DDRC = 0xFF; // 포트 C 출력으로 설정 
    PORTC = led; // 포트 C에 초기값 출력 
    
    TIMSK = 0x04; // TOIE1 = 1, 오버플로우 인터럽트 인에이블 
    
    TCCR1A = 0x00; // 모드 0(일반모드) 
    TCCR1B = 0x04; // 프리스케일 = CK/256 
    TCCR1C = 0x0;                
    
    TCNT1H = 0x80; 
    TCNT1L = 0x00; 
    SREG = 0x80; // 전역 인터럽트 인에이블 비트 I set 
    
    while(1)
    {
        if (TIM1_OVF_FLAG == 1)
        {    
            TCNT1 = time;
            led = led << 1; // 1비트 쉬프트 
            led = led | 0x01; // 최하위 비트 set 
            if(led == 0xFF) led = 0xFE; // 모두 off이면 초기값 재설정 
            PORTC = led; // 포트 출력 
            TIM1_OVF_FLAG = 0;
        }
    }
}
// (1/16)us * 256분주 * (65536 - 32768)= 524ms 
interrupt [TIM1_OVF] void timer_int1(void) 
{ 
    SREG &= 0x7F; // All Interrupt disable
    TIM1_OVF_FLAG = 1;
    SREG |= 0x80; // All Interrupt enable
}
*/
    

/*
#include <mega128.h>                    // Timer로 시계 만들기 
#include <delay.h>

typedef unsigned char U8;
unsigned char cnt = 0; // 타이머/카운터0 인터럽트 발생 횟수
unsigned char TIM0_OVF_FLAG = 0;

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
    TIMSK = 0x01;           // tim0 overflow enable
    TCCR0 = 0x07;           // 1024
    TCNT0 = 0x00;           // 타이머/카운터0 레지스터 초기값 
    SREG = 0x80;
    
    while(1)
    {   
        Time_out();
        if (TIM0_OVF_FLAG == 1)
        {
            TCNT0 = 0x0;    // 초기값 재설정 
            cnt++;          // 인터럽트 횟수 +1
            if (cnt == 61)
            {
                sec = sec + 1;
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
                cnt = 0;    // 인터럽트 카운터 리셋 
            }
            TIM0_OVF_FLAG = 0;
        } 
        
    }
}

void Time_out(void)
{
    PORTG = 0b00001000;
    PORTD = ((seg_pat[min%10] & 0x0F) << 4) | (PORTD & 0x0F);
    PORTB = (seg_pat[min % 10] & 0x70 ) | (PORTB & 0x0F);
    delay_us(300);
    
    PORTG = 0b00000100; // 7-Seg DIG3 ON(PG2=1), 분 10자리 표시 
    PORTD = ((seg_pat[min / 10] & 0x0F) << 4) | (PORTD & 0x0F);
    PORTB = (seg_pat[min / 10] & 0x70 ) | (PORTB & 0x0F);
    delay_us(300);
    
    PORTG = 0b00000010; // 7-Seg DIG2 ON(PG1=1), 시간 1자리 표시 
    PORTD = ((seg_pat[hour % 10] & 0x0F) << 4) | (PORTD & 0x0F);
    PORTB = (seg_pat[hour % 10] & 0x70 ) | (PORTB & 0x0F);
    delay_us(300);

    PORTG = 0b00000001; // 7-Seg DIG1 ON(PG0=1), 시간 10자리 표시 
    PORTD = ((seg_pat[hour / 10] & 0x0F) << 4) | (PORTD & 0x0F);
    PORTB = (seg_pat[hour / 10] & 0x70 ) | (PORTB & 0x0F);
    delay_us(300);
}

interrupt [EXT_INT4] void external_int4(void)
{   
    hour = N1000 * 10 + N100;
    min = N10 * 10 + N1;
}

interrupt [TIM0_OVF] void timer_int0(void) 
{ 
    SREG &= 0x7F; // All Interrupt disable
    TIM0_OVF_FLAG = 1;
    SREG |= 0x80; // All Interrupt enable
}
*/

/*
#include <mega128.h>                    // 예제 6-3)

unsigned char led = 0xFF; // LED 출력 초기값 
unsigned char cnt = 0; // 타이머/카운터0 인터럽트 발생 횟수
unsigned char TIM0_OVF_FLAG = 0;

void main(void) 
{ 
    DDRC = 0xFF; // 포트 C 출력으로 설정 
    PORTC = led; // 포트 C에 초기값 출력
    TIMSK = 0x01; // TOIE0 = 1 
    TCCR0 = 0x07; // 프리스케일 = CK/1024 
    TCNT0 = 0x00; // 타이머/카운터0 레지스터 초기값 S
    SREG = 0x80; // 전역 인터럽트 인에이블 비트 I set 
    while(1)
    {
        if (TIM0_OVF_FLAG == 1)
        {
            TCNT0 = 0x0; // 초기값 재설정(0인 경우 생략가능) 
            cnt++; // 인터럽트 횟수 +1
            if(cnt == 31)
            { // 16.384ms x 31 = 0.5sec 
                led = led ^ 0xFF; // led값 반전 
                PORTC = led; // 포트 출력 
                cnt = 0; // 인터럽트 카운터 리셋 
            }
            TIM0_OVF_FLAG = 0;
        }
    }
}
// 1/16us x 1024 x 256 = 16.384ms 
interrupt [TIM0_OVF] void timer_int0(void) 
{ 
    SREG &= 0x7F; // All Interrupt disable
    TIM0_OVF_FLAG = 1;
    SREG |= 0x80; // All Interrupt enable
}
*/

/*
#include <mega128.h>

unsigned char led = 0xFE;
unsigned char TIM2_COMP_FLAG = 0;

void main(void)
{
    DDRC = 0xFF;
    PORTC = led;
    
    TIMSK = 0x80;
    TCCR2 = 0x0D;
    OCR2 = 77;
    TCNT2 = 0;
    SREG = 0x80;
    
    while (1)
    {
        if (TIM2_COMP_FLAG == 1)
        {
            led = led << 1;
            led = led | 0x01;   // 최하위 비트 set
            if (led == 0xFF) led = 0xFE;
            PORTC = led;
            TIM2_COMP_FLAG = 0;            
        }                
    }
}

interrupt [TIM2_COMP] void timer_comp2(void)
{
    SREG &= 0x7F; // All Interrupt disable
    TIM2_COMP_FLAG = 1;
    SREG |= 0x80; // All Interrupt enable
}
*/

/*
#include <mega128.h>

unsigned char led = 0xFE;
unsigned char TIM0_OVF_FLAG = 0;

void main(void)
{
    DDRC = 0xFF;
    PORTC = led;
    
    TIMSK = 0x01;
    TCCR0 = 0x07;
    TCNT0 = 0x64;
    SREG = 0x80;
    
    while (1)
    {
        if (TIM0_OVF_FLAG == 1)
        {
            led = led << 1;
            led = led | 0x01;   // 최하위 비트 set
            if (led == 0xFF) led = 0xFE;
            PORTC = led;
            TIM0_OVF_FLAG = 0;            
        }
    }
}

interrupt [TIM0_OVF] void timer_int0(void)
{
    SREG &= 0x7F; // All Interrupt disable
    TIM0_OVF_FLAG = 1;
    SREG |= 0x80; // All Interrupt enable
}
*/



/*
#include <mega128.h>                // 예제 6-2)

unsigned char led = 0xFE;
unsigned char TIM0_COMP_FLAG = 0;

void main(void)
{
    DDRC = 0xFF;            // 포트 C 출력 설정
    PORTC = led;            // 포트 C 초기값 출력
    
    TIMSK = 0x02;           // OCIE0 = 1 ( 출력 비교 인터럽트 인에이블 )
    TCCR0 = 0x0F;           // WGM01 = 1, CTC모드, 1024분주 
    OCR0 = 155;             // 출력비교 레지스터값 (9.98ms 주기)
    TCNT0 = 0x0;            // 타이머/카운터0 레지스터 초기값
    SREG = 0x80;            
    
    while (1)
    {
        if (TIM0_COMP_FLAG == 1)
        {
            led = led << 1;     // 1bit Shift
            led = led | 0x01;   // 최하위 비트 set
            if (led == 0xFF) led = 0xFE;
            PORTC = led;
            TIM0_COMP_FLAG = 0;
        }    
    }
}

interrupt [TIM0_COMP] void timer_comp0(void)
{
    SREG &= 0x7F; // All Interrupt disable
    TIM0_COMP_FLAG = 1;
    SREG |= 0x80; // All Interrupt enable    
}
*/

/*
#include <mega128.h>                // 예제 6-1)

unsigned char led = 0xFE;
unsigned char TIM0_OVF_FLAG = 0;


void main(void)
{
    DDRC = 0xFF;            // 포트C 출력
    PORTC = led;            // 포트C에 초기값 출력 0xFE
    
    TIMSK = 0x01;           // TOIE0 = 1 (overflow interrupt enable)
    TCCR0 = 0x07;           // 일반모드, 1024분주
    TCNT0 = 0x00;           // 타이머/카운터0 레지스터 초기값
    SREG |= 0x80;           // 전역 인터럽트 enable 비트 | set
    while(1)
    {
        if (TIM0_OVF_FLAG == 1)
        {
            TCNT0 = 0x00;           // 초기값 재설정 ( 0인경우 생략 가능 )
            led = led << 1;         // 1bit Shift
            led = led | 0x01;       // 최하위 비트 set
            if (led == 0xff) led = 0xFE;        // 모두 OFF이면 초기값 재설정
            PORTC = led;            // 포트 출력
            TIM0_OVF_FLAG = 0;
        }    
    }
}

interrupt [TIM0_OVF] void timer_int0(void)
{
    SREG &= 0x7F; // All Interrupt disable
    TIM0_OVF_FLAG = 1;
    SREG |= 0x80; // All Interrupt enable        
}
*/

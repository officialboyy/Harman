/****************************************************************************************************************************/
/* project : ParkJunHo_project2.c                                                                                           */ 	                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  
/* Name : Park Junho                                                                                                        */
/* Modify : 2024. 04. 08 by Park Junho                                                                                      */
/* Date : 2024. 04. 02                                                                                                      */
/* Description : 8bits processor(AVR Core) Application programming                                                          */    
/****************************************************************************************************************************/

#include <mega128.h>                              //라이브러리 헤더 파일 포함
                         
typedef unsigned char U8;                         //typedef 전처리문을 사용  
typedef unsigned short U16;                       //변수의 다양한 사용을 위해 main문밖 Global variable로 선언
typedef unsigned int U32;

// 변수설정 
U8 TIM0_OVF_FLAG = 0;       // 타이머0 ovfflag
U8 TIM1_COMP_FLAG = 0;      // 타이머1 comp flag
U8 TIMER2_OVF_FLAG_BIT=0;   // 타이머2 ovf flag
U8 TIM3_COMP_FLAG=0;        // 타이머3 comp flag
U8 cnt = 0;                 // 카운트용                                                
U8 EINT4_FLAG_BIT=0;        // KEY1                             
U8 EINT5_FLAG_BIT=0;        // KEY2
U8 EINT6_FLAG_BIT=0;        // KEY3
U8 EINT7_FLAG_BIT=0;        // KEY4
U32 tmp_val, ad_val;        // 온도, 전압 측정값 

const U8 seg_pat[10] = {0x3f, 0x06, 0x5b, 0x4f, 0x66, 0x6d, 0x7d, 0x07, 0x7f, 0x6f};    // 7seg 0 ~ 9
const U8 seg_pat_dot[10] = {0xBf, 0x86, 0xDb, 0xCf, 0xE6, 0xEd, 0xFd, 0x87, 0xff, 0xEf};    // 7seg dot 0 ~ 9

void birth_year(U8 N1000, U8 N100, U8 N10, U8 N1);  // 생일(연도)
void birth_day(U8 N1000, U8 N100, U8 N10, U8 N1);   // 생일(일자)                                
void delay_1ms(void);                               // 타이머0를 이용하여 delay 만들기 
void TMP_disp(U32 val);                             // 온도 display
void AD_disp(U32 val);                              // 전압 display
void EXIT4_TIMER2(void);                            // 타이머2 세팅
void EXIT5_TIMER1(void);                            // 타이머1 세팅
void EXIT6_TIMER3(void);                            // 타이머3 세팅 
void EXIT7_TIMER3(void);                            // 타이머3 (KEY4) 세팅 
void Putch(U8 data);                                // uart 데이터 전송 

    
void main(void)
{   
    U8 j; 
                              
    DDRC = 0xFF;    PORTC = 0xFE;              //작동 확인용으로 LED 출력 설정
    DDRB = 0xF0;                                 //학번 디스플레이를 위한 포트B 4,5,6,7 출력 설정(LED)
    DDRD = 0xF0;                                 //학번 디스플레이를 위한 포트D 4,5,6,7 출력 설정(LED)
    DDRG = 0x0F;                                 //학번 디스플레이를 위한 포트G 0,1,2,3 출력 설정(COM)
    DDRE |= 0x08;      
     
    TIMSK = 0x01;                               // TIM0 OVF Enable
    TCCR0 = 0x05;                               // 128분주 
    TCNT0 = 131;                                // 1msec 
    
    UCSR0A = 0x0;           // USART 초기화 
    UCSR0B = 0b00001000;    // 송신부 enable TXEN0 [3] = 1, RXEN0 [4] =1
    UCSR0C = 0b00000110;    // 비동기 데이터 8비트 모드
    UBRR0H = 0;             // X-TAL = 16MHz 일때, BAUD = 9600 
    UBRR0L = 103;           // 비동기 일반모드 전송속도 9,600 
     
    EIMSK = 0b11110000;     // 인터럽트 사용 여부 결정 레지스터로 INT4,5,6,7 enable
    EICRB = 0b11111111;     // INT4,5,6,7은 B에 의해 Interrupt trigger 방식 설정(7ri,6ri,5ri,4ri)              
    SREG |= 0x80;           // status resister bit7(MSB)만 1으로 설정하여 모든 인터럽트를 허용(global interrupt enable),OR을 사용하여 나머지비트는 그대로
        
    for(j=0; j<65; j++)     // birth_year display for 520ms
    {
        birth_year(1,9,9,7);
    }
        
    for(j=0; j<65; j++)     // birth_day display for 520ms
    {
        birth_day(1,1,2,5);
    }     
        
    while(1)
    {   
        PORTC = 0x55;   // 동작 확인용 
        for(j=0; j<65; j++) // birth_year display for 520ms
        { 
            birth_day(1,1,2,5);
        }
        
        if(EINT4_FLAG_BIT==1)       // If KEY1 Rising 
        {       
            EXIT4_TIMER2();         // TIM2 Setting           
            for(j=0; j<10; j++)      // 10회 반복 
            {   
                PORTC = 0x99;       // 동작 확인용 
                ADCSRA = 0xC7;                          // ADEN=1, ADSC = 1 변환 시작 
                while((ADCSRA & 0x10) == 0);            // ADIF=1이 될 때까지           
                tmp_val = (U32)ADCL + ((U32)ADCH << 8); // A/D 변환값 읽기
                TIMER2_OVF_FLAG_BIT = 0;                // 타이머2 초기화   
                while(cnt <= 1)                         // 1250ms * 2 = 4500ms주기 
                {   
                    if(TIMER2_OVF_FLAG_BIT <= 179)      // 12.5ms * 180 = 2250ms
                    {                                                  
                        cnt++;
                        TIMER2_OVF_FLAG_BIT = 0;        // TIM2 초기화 
                    }
                    TMP_disp(tmp_val);                  // A/D 변환값 표시            
                } 
                cnt=0;                                  // 카운트 초기화 
            }
            EINT4_FLAG_BIT = 0;                         // KEY1 초기화          
        } // end of KEY1
        
        if(EINT5_FLAG_BIT==1)       // If KEY2 Rising 
        {             
            EXIT5_TIMER1();         // TIM1 Setting 
            ADMUX = 0x06;           //ADC6 단극성 입력 선택
            ADCSRA = 0x87;          // ADEN=1, 16MHz 256분주 -> 125kHz             
            for(j=0; j<5; j++)      // 5회 반복
            {    
                PORTC = 0x66;       // 동작 확인용 
                ADCSRA = 0xC7;      // ADEN=1, ADSC = 1 변환 시작
                while((ADCSRA & 0x10) == 0);            // ADIF=1이 될 때까지(Single)                    
                ad_val = (U32)ADCL + ((U32)ADCH << 8);  // A/D 변환값 읽기                         
                AD_disp(ad_val);                        // Uart Display                   
                              
                TIM1_COMP_FLAG = 0;                     // TIM1 초기화 
                while(TIM1_COMP_FLAG == 0);             // 2.5sec(주기) 대기 
            }
            EINT5_FLAG_BIT=0;                           // KEY2 초기화             
        } //end of KEY2       
        
        
        if(EINT6_FLAG_BIT==1)       // If KEY3 Rising 
        {    
            EXIT6_TIMER3();         // 9bit PWM 모드 동작
            EINT6_FLAG_BIT=0;                 
            for(j=0; j<100; j++)    // 동작 확인용 100ms
            {
                PORTC = 0x77;       
                delay_1ms();
            }
            //EXIT6에서 PWM 1 함수를 실행.
        } //end of KEY3
        
        if(EINT7_FLAG_BIT==1)       // If KEY4 Rising 
        {                        
            EXIT7_TIMER3();         // 9bit Phase correct PWM mode 동작 
            EINT7_FLAG_BIT=0;
            for(j=0; j<100; j++)    // 동작 확인용 100ms
            {
                PORTC = 0x77;       
                delay_1ms();
            }
            //EXIT7에서 PWM 2 함수를 실행.
        } //end of KEY4     
    } // end of while  
} // end of main

void birth_year(U8 N1000, U8 N100, U8 N10, U8 N1)    // 년도 출력 
{                 
        PORTG = 0b00001000;                                         //맨 우측 7Segment DIG4(PG3=1)ON, 1자리 표시
        PORTD = ((seg_pat_dot[N1] & 0x0F) << 4) | (PORTD & 0x0F);       //[0]표시를 위해 ABCD표시, PORTD 하위 4bits 변경되지 않게 | 
        PORTB = (seg_pat_dot[N1] & 0xF0 ) | (PORTB & 0x0F);             //[0]표시를 위해 EFG표시, PORTB 하위 4bits 변경되지 않게 |
        delay_1ms();    delay_1ms();    // delay 2ms             
                
        PORTG = 0b00000100;                                         //우측에서 두번째 7Segment DIG3(PG2=1)ON, 10자리 표시
        PORTD = ((seg_pat[N10] & 0x0F) << 4) | (PORTD & 0x0F); 
        PORTB = (seg_pat[N10] & 0x70 ) | (PORTB & 0x0F); 
        delay_1ms();    delay_1ms();
                             
        PORTG = 0b00000010;                                         //우측에서 세번째 7Segment DIG2(PG1=1)ON, 100자리 표시
        PORTD = ((seg_pat[N100] & 0x0F) << 4) | (PORTD & 0x0F);     
        PORTB = (seg_pat[N100] & 0x70 ) | (PORTB & 0x0F); 
        delay_1ms();    delay_1ms();
                 
        PORTG = 0b00000001;                                         //우측에서 네번째 7Segment DIG1(PG0=1)ON, 1000자리 표시
        PORTD = ((seg_pat[N1000] & 0x0F) << 4) | (PORTD & 0x0F);    
        PORTB = (seg_pat[N1000] & 0x70 ) | (PORTB & 0x0F); 
        delay_1ms();    delay_1ms();
}//end of birth_year

void birth_day(U8 N1000, U8 N100, U8 N10, U8 N1)    // 일수 출력  
{
        PORTG = 0b00001000;                                         //맨 우측 7Segment DIG4(PG3=1)ON, 1자리 표시
        PORTD = ((seg_pat[N1] & 0x0F) << 4) | (PORTD & 0x0F);       //[0]표시를 위해 ABCD표시, PORTD 하위 4bits 변경되지 않게 | 
        PORTB = (seg_pat[N1] & 0x70 ) | (PORTB & 0x0F);             //[0]표시를 위해 EFG표시, PORTB 하위 4bits 변경되지 않게 | 
        delay_1ms();    delay_1ms();
        
        PORTG = 0b00000100;                                         //우측에서 두번째 7Segment DIG3(PG2=1)ON, 10자리 표시
        PORTD = ((seg_pat[N10] & 0x0F) << 4) | (PORTD & 0x0F); 
        PORTB = (seg_pat[N10] & 0x70 ) | (PORTB & 0x0F); 
        delay_1ms();    delay_1ms();
        
        PORTG = 0b00000010;                                         //우측에서 세번째 7Segment DIG2(PG1=1)ON, 100자리 표시
        PORTD = ((seg_pat_dot[N100] & 0x0F) << 4) | (PORTD & 0x0F);     
        PORTB = (seg_pat_dot[N100] & 0xF0 ) | (PORTB & 0x0F); 
        delay_1ms();    delay_1ms();
        
        PORTG = 0b00000001;                                         //우측에서 네번째 7Segment DIG1(PG0=1)ON, 1000자리 표시
        PORTD = ((seg_pat[N1000] & 0x0F) << 4) | (PORTD & 0x0F);    
        PORTB = (seg_pat[N1000] & 0x70 ) | (PORTB & 0x0F); 
        delay_1ms();    delay_1ms();     
}//end of birth_day

void TMP_disp(U32 val)  // 온도 출력 함수  
{ 
    float fval;
    U32 ival, buf, N100, N10, N1;
    
    fval = (float)val * 5.0 / 1024.0; // 전압 값으로 변환 
    ival = (U32)(fval * 1000.0 + 0.5); // 반올림 후 정수화, (소수 둘째자리까지)
    
    N100 = ival / 100; // 정수부 추출 
    buf = ival % 100;  
    N10 = buf / 10; // 소수 첫째 자리 추출 
    N1 = buf % 10; // 소수 둘째 자리 추출 
    
    PORTG = 0b00001000; // PG3=1, 소수 둘째 자리 
    PORTD = ((seg_pat[N1] & 0x0F) << 4) | (PORTD & 0x0F);
    PORTB = (seg_pat[N1] & 0x70 ) | (PORTB & 0x0F);
    delay_1ms();                  
    
    PORTG = 0b00000100; // PG2=1, 소수 첫째 자리 
    PORTD = ((seg_pat[N10] & 0x0F) << 4) | (PORTD & 0x0F);
    PORTB = (seg_pat[N10] & 0x70 ) | (PORTB & 0x0F); 
    PORTB = PORTB | 0x80; // DP on(소수점)
    delay_1ms();           
    
    PORTG = 0b00000010; // PG1=1, 정수부 
    PORTD = ((seg_pat[N100] & 0x0F) << 4) | (PORTD & 0x0F);
    PORTB = (seg_pat[N100] & 0x70 ) | (PORTB & 0x0F); 
    delay_1ms();
} // end of TMP_disp()

void AD_disp(U32 val)   // 전압 출력 함수  
{ 
    float fvalue;
    U32 ivalue, buff, NV100, NV10, NV1; 

    fvalue = (float)val * 5.0 / 1024.0;        // 전압 값으로 변환
    ivalue = (U32)(fvalue * 100.0 + 0.5);        // 반올림 후 정수화,(소수 둘째자리까지) 
    
    NV100 = ivalue / 100;                        // 정수부 추출
    buff = ivalue % 100; 
    NV10 = buff / 10;                            // 소수 첫째 자리 추출
    NV1 = buff % 10;                             // 소수 둘째 자리 추출 
    
    NV100 = NV100 + 0x30;   // +0x30('0') : 터미널 출력을 위한 문자형 변환
    NV10 = NV10 + 0x30;
    NV1 = NV1 + 0x30;
    
    Putch(NV100); 
    Putch(0x2E); 
    Putch(NV10); 
    Putch(NV1); 
    Putch('V');
    while((UCSR0A & 0x20) == 0x0); UDR0 =0x0D; // 줄바꿈
} //end of AD_disp()

void EXIT4_TIMER2(void) // 타이머2 Setting
{            
    TIMSK |= 0b01000000;                        // overflow interrupt enable
    TCCR2 = 0b00000101;                         // normal모드, 프리스케일= 1024분주
    TCNT2 = 61;                                // 12.5ms
                                    
} //end of EXIT4_TIMER2  

void EXIT5_TIMER1(void) // 타이머1 Setting
{   
    // ETIMSK = 0x10;          // OCIE1A = 1 : 타이머/카운터1 출력 비교 A 매치 인터럽트 enable         
    TIMSK |= 0b00010000;    // comp interrupt enable
    TCCR1A = 0x00;          // 모드 0(일반모드) 
    TCCR1B = 0x0D;          // 프리스케일 = CK/256 
    TCCR1C = 0x00;
    TCNT1H = 0;
    TCNT1L = 0;
    OCR1AH = 0x98;          // 2.5sec
    OCR1AL = 0x96;          // 2.5sec
                                    
} //end of EXIT5_TIMER1

void EXIT6_TIMER3(void) // 타이머3 Setting
{
    TCCR3A = 0x82;          // 모드 6 비교매치 
    TCCR3B = 0x0C;          // 256분주
    TCCR3C = 0x00;
    TCNT3H = 0;
    TCNT3L = 0;
    OCR3AH = 0x00;          // duty ratio = 25%, 512 * 0.25 = 128 = 0x0080;
    OCR3AL = 0x80;
} // end of EXIT6_TIMER3

void EXIT7_TIMER3(void) // 타이머3 Setting
{
    TCCR3A = 0x82;          // 모드 2 비교매치 
    TCCR3B = 0x04;          // 256분주
    TCCR3C = 0x00;
    TCNT3H = 0;
    TCNT3L = 0;
    OCR3AH = 0x00;          // duty ratio = 25%, 512 * 0.25 = 128 = 0x0080;
    OCR3AL = 0x80;
} // end of EXIT6_TIMER3

void delay_1ms(void)    // delay 1ms 함수 
{
    TIM0_OVF_FLAG = 0;      // 초기화 
    while(!TIM0_OVF_FLAG);  // TIM0 (1ms)
} // end of delay_1ms

interrupt [EXT_INT4] void external_int4(void)   // KEY1 Interrupt
{   
    SREG &= 0x7F;                                
    EINT4_FLAG_BIT=1;                            
    SREG |= 0x80;                                
} // end of EXT_INT4                                                      
 
interrupt [EXT_INT5] void external_int5(void)   // KEY2 Interrupt
{ 
    SREG &= 0x7F;
    EINT5_FLAG_BIT=1;     
    SREG |= 0x80;  
} // end of EXT_INT5 
                                
interrupt [EXT_INT6] void external_int6(void)   // KEY3 Interrupt
{
    SREG &= 0x7F;  
    EINT6_FLAG_BIT=1;   
    SREG |= 0x80;   
} // end of EXT_INT6

interrupt [EXT_INT7] void external_int7(void)   // KEY4 Interrupt
{ 
    SREG &= 0x7F;  
    EINT7_FLAG_BIT=1;       
    SREG |= 0x80;       
} // end of EXT_INT7

interrupt [TIM2_OVF] void TIMER2_OVF_int(void)  // 타이머2 ovf
{ 
    TCNT2 = 61;              //초기값을 인터럽트 안에도 써줘야함
    SREG &= 0x7F;  
    TIMER2_OVF_FLAG_BIT++;  
    SREG |= 0x80;         
} // end of TIM2_OVF

interrupt [TIM0_OVF] void timer_int0(void)      // 타이머0 ovf 
{ 
    SREG &= 0x7F;   // All Interrupt disable
    TCNT0 = 0;      // 초기화 
    TIM0_OVF_FLAG = 1;  
    SREG |= 0x80;   // All Interrupt enable
} // end of TIM0_OVF

interrupt [TIM1_COMPA] void timer_comp1(void)    // 타이머1 comp
{
    SREG &= 0x7F; // All Interrupt disable   
    TIM1_COMP_FLAG = 1;  
    SREG |= 0x80; // All Interrupt enable
} // end of TIM1_COMPA

interrupt [TIM3_COMPA] void timer_comp3(void)   // 타이머3 comp
{
    SREG &= 0x7F; // All Interrupt disable   
    TIM3_COMP_FLAG = 1;  
    SREG |= 0x80; // All Interrupt enable
} // end of TIM3_COMPA

void Putch(U8 data) // 한 바이트 송신
{
    while((UCSR0A & 0x20) == 0x0); //UDRE0[5] = 1 송신준비완료 될 때까지 대기
    UDR0 = data; // 데이터 전송
} // end of Putch()


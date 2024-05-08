
/************************************************************************************************/
/* project :  PROJECT2                                                                          */         	                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  
/* Name :     J.H.Lee   																		*/	
/* Modify :   2024.04.08 - J.H.lee																*/						
/* Date :     2024.04.08          																*/							
/* Description : -  																			*/					
/************************************************************************************************/
// 2024.4.8 - 16:23
// 생일 1995.07.16.


#include <mega128.h>
#include <delay.h>

typedef unsigned char U8; 
typedef unsigned int U32;
typedef float F32; 

// 변수 선언-----------------------------------------------------------------
const U8 seg_pat[10] = 
{ 0x3f, 0x06, 0x5b, 0x4f, 0x66, 0x6d, 0x7d, 0x07, 0x7f, 0x6f }; // const -> NOR FLASH 에 저장됨
U32 num = 716; // 7seg 초기값 생일
U8 flag_7seg_disp;
U8 N1000, N100, N10, N1;   

// Ext interrupt flags
U8 flag_ext_4 = 0;
U8 flag_ext_5 = 0;
U32 cnt;

U8 flag_ADC_thermal;
U32 ADC_val;
U32 i;
U8 flag_disp_birth=1;
U8 cnt_ten = 0;

F32 fval = 0;
U32 ival = 0;
U32 ival_100 = 0, ival_10 = 0, ival_1 = 0;
U32 buf;
U32 temp;

U8 ADC_str[6];
U8 *pStr = ADC_str;
// 함수 선언------------------------------------------------------------------
void disp_7seg(U32);
void ADC_disp(U32);
void ADC_free_run(void);
void ADC_single_run(void);
void Putch(char data);

//----------------------------------------------------------------------------
void main(void)
{

    DDRC = 0xFF; // LED 출력설정
    PORTC = 0xFF; // LED all off
    DDRB = 0xF0; // 7seg on
    DDRD = 0xF0; // 7seg on 
    DDRG = 0x0F; // 7seg on
    
    TIMSK = 0b01000101; // TOIE2=1, TOIE1=1, TOIE0 = 1 -> overflow interrupt enable
    ETIMSK = 0b00010000; // OCIE3A = 1 -> Compare A interrupt enable

    // 타이머/카운터0 -> 7seg 출력용
    TCCR0 = 0x07; // 프리스케일 - CK/1024
    TCNT0 = 177; // TC0 초기값 177 -> 5.056ms 

    // External interrupt 설정
    EIMSK |= 0b11110000; // EI4,5,6,7 enable
    EICRB |= 0b10111011; // EI4 rising, EI5 falling, EI6 rising, EI7 falling
    SREG |= 0x80; // 전역 인터럽트 enable

    for(i=0;i<10000;i++){
        disp_7seg(1995); // 출생연도 출력
    }
    while(1){
        if(flag_disp_birth == 1){
            disp_7seg(num); // 생일 출력
        }
        if(flag_ext_4 == 1){
            ADMUX = 0x07;     // ADC7 단극성 입력 선택
            ADCSRA = 0xE7;    // ADEN=1, ADSC=1, ADFR=1, 128분주 -> 125kHz
            ADC_free_run(); // ADC 온도 출력
        }
        if(flag_ext_5 == 1){
            ADMUX = 0x06;     // ADC7 단극성 입력 선택
            ADCSRA = 0xC7;    // ADEN=1, ADSC=1, ADFR=0, 128분주 -> 125kHz
            ADC_single_run(); // ADC 전압 출력
            fval = (F32)ADC_val * 5.0 / 1024.0;
            ival = (U32)(fval * 100.0 + 0.5); // ex) 234
            
            ival_100 = ival / 100; // = 2
            buf = ival % 100; // = 34
            ival_10 = buf / 10; // = 3
            ival_1 = buf % 10; // = 4

            ADC_str[0] = (U8)ival_100 + '0';
            ADC_str[1] = '.';
            ADC_str[2] = (U8)ival_10 + '0';
            ADC_str[3] = (U8)ival_1 + '0';
            ADC_str[4] = 'V';
            ADC_str[5] = 0; // 0.00V 형식으로 출력

            pStr = ADC_str;
            while(*pStr != 0) // 널문자가 나올때 까지 
                Putch(*pStr++); // 문자열 전송
            while((UCSR0A & 0x20) == 0x0); // UDRE0= 1이 될 때까지 대기 
            UDR0 = 0x0A; // NEW LINE
            while((UCSR0A & 0x20) == 0x0); // UDRE0= 1이 될 때까지 대기 
            UDR0 = 0x0D; // 맨 앞으로

            flag_ext_5 = 0;
        }
    }// end while(1)
}// end main()----------------------------------------------------------
interrupt [TIM0_OVF] void timer_int0(void) // 7seg 출력 
{ 
    SREG &= 0x7F; 
    TCNT0 = 177; // 초기값 재설정
    flag_7seg_disp++;
    flag_7seg_disp = flag_7seg_disp % 4;
    SREG |= 0x80; 
}//end TIM0_OVF-------------------------------------------------------
interrupt [TIM1_OVF] void timer_int1(void) 
{ 
    SREG &= 0x7F;
    TCNT1H = 0; // 초기값 재설정
    TCNT1L = 0; // 초기값 재설정
    SREG |= 0x80;
}//end TIM1_OVF-------------------------------------------------------
interrupt [TIM2_OVF] void timer_int2(void) 
{ 
    SREG &= 0x7F;
    TCNT2 = 6; // 초기값 재설정
    cnt++;
    if(cnt==280){ // 4500ms 마다
        cnt = 0;
        flag_ADC_thermal = 1;
        cnt_ten++;
        if(cnt_ten==10){
            cnt_ten = 0; // 10번 까지만 ADC 표시
            flag_disp_birth = 1; // 다시 생일 표시
            flag_ext_4 = 0; // ext
        }
    }
    SREG |= 0x80;
}//end TIM2_OVF-------------------------------------------------------
interrupt [TIM3_OVF] void timer_int3(void)
{ 
    SREG &= 0x7F;
    TCNT3H = 0; // 초기값 재설정
    TCNT3L = 0; // 초기값 재설정
    SREG |= 0x80;
}//end TIM3_OVF-------------------------------------------------------
interrupt [EXT_INT4] void external_int4(void)
{
    SREG &= 0x7F; 
    flag_ext_4 = 1;
    flag_disp_birth = 0; // 생일출력 꺼짐

    // 타이머/카운터2 설정
    TCCR2 = 0x05; // 프리스케일 - CK/1024
    TCNT2 = 6; // -> 16ms overflow 발생 
    SREG |= 0x80;
}//end EXT_INT4-------------------------------------------------------
interrupt [EXT_INT5] void external_int5(void)
{
    SREG &= 0x7F;
    flag_ext_5 = 1;
    // 타이머/카운터1 설정
    TCCR1A = 0x00;
    TCCR1B = 0b00001101; // CTC mode, 프리스케일 - CK/1024
    TCCR1C = 0x00;
    TCNT1H = 0; 
    TCNT1L = 0;
    OCR1AH = 0x61; // OCR1A = 24999 -> 16ms
    OCR1AH = 0xA7;

    // UART 설정
    UCSR0A = 0x0;
    UCSR0B = 0b10011000; // RXCIE0=1, RXEN=0, TXEN=0
    UCSR0C = 0b00000110; // asynchronous, 8bit mode
    UBRR0H = 0; 
    UBRR0L = 103; // Baud Rate = 9600

    SREG |= 0x80;
}//end EXT_INT5-------------------------------------------------------
interrupt [EXT_INT6] void external_int6(void)
{
    SREG &= 0x7F;
    
    // 타이머/카운터3 설정
    TCCR3A = 0b10000010; // Fast PWM 9bit mode
    TCCR3B = 0b00001100; // prescale 256
    TCCR3C = 0x00;

    TCNT3H = 0x0;   
    TCNT3L = 0x0;                  

    OCR3AH = 0x00;
    OCR3AL = 0x52; // Duty = 0.16
    DDRE |= 0x08; // PE3 출력설정

    SREG |= 0x80;
}//end EXT_INT6-------------------------------------------------------
interrupt [EXT_INT7] void external_int7(void)
{
    SREG &= 0x7F;
    
    // 타이머/카운터3 설정
    TCCR3A = 0b10000010; // Phase correct PWM 9bit mode
    TCCR3B = 0b00001100; // prescale 256
    TCCR3C = 0x00;
    TCNT3H = 0x0;   
    TCNT3L = 0x0;                  

    OCR3AH = 0x00;
    OCR3AL = 0x52; // Duty = 0.16
    DDRE |= 0x08; // PE3 출력설정
    
    SREG |= 0x80;
}//end EXT_INT7-------------------------------------------------------
void disp_7seg(U32 num)  // 2345
{
    
    N1000 = num / 1000; // 2
    temp = num % 1000; // 345
    N100 = temp / 100; // 3
    temp = temp % 100; // 45
    N10 = temp / 10; // 4
    N1 = num % 10; // 5

    switch(flag_7seg_disp){
            case 0:
                PORTG = 0b00001000; // 4번쨰 칸
                PORTD = ((seg_pat[N1] & 0x0F) << 4) | (PORTD & 0x0F);
                PORTB = (seg_pat[N1] & 0x70 ) | (PORTB & 0x0F);
                break;
            case 1:            
                PORTG = 0b00000100; // 3번째 칸
                PORTD = ((seg_pat[N10] & 0x0F) << 4) | (PORTD & 0x0F);
                PORTB = (seg_pat[N10] & 0x70 ) | (PORTB & 0x0F);
                if(flag_ext_4 == 1) PORTB = PORTB | 0x80; // 소수점 출력
                break;
            case 2:            
                PORTG = 0b00000010; // 두번째 칸
                PORTD = ((seg_pat[N100] & 0x0F) << 4) | (PORTD & 0x0F);
                PORTB = (seg_pat[N100] & 0x70 ) | (PORTB & 0x0F); 
                break;
            case 3:    
                PORTG = 0b00000001; // 첫번쨰 칸
                PORTD = ((seg_pat[N1000] & 0x0F) << 4) | (PORTD & 0x0F);
                PORTB = (seg_pat[N1000] & 0x70 ) | (PORTB & 0x0F); 
                break;
            default:
                break;
    }
}// end disp_7seg----------------------------------------------------------
void ADC_disp(U32 ADC_val)
{
    fval = (F32)ADC_val * 5.0 / 1024.0;      // 전압 값으로 변환
    ival = (U32)(fval * 1000.0 + 0.5);     // 반올림 후 int 변환
    disp_7seg(ival);
    
}// end ADC_disp------------------------------------------------------------
void ADC_free_run(void)
{
    //while ((ADCSRA & 0x10) == 0);           // ADIF=1 될 때까지 대기
    delay_us(100);
    if(flag_ADC_thermal == 1){
        ADC_val = (int)ADCL + ((int)ADCH << 8);  // A/D 변환값 읽기
        flag_ADC_thermal = 0; // 플래그 초기화
    }
    ADC_disp(ADC_val);
}// end_ADC_free_run---------------------------------------------------------
void ADC_single_run(void)
{
    //while ((ADCSRA & 0x10) == 0);           // ADIF=1 될 때까지 대기
    delay_us(100);
    if(flag_ext_5 == 1){
        ADC_val = (int)ADCL + ((int)ADCH << 8);  // A/D 변환값 읽기
        flag_ext_5 = 0;
    }
}// end_ADC_single_run---------------------------------------------------------

void Putch(char data) // 한 바이트 Tx         
{
    while((UCSR0A & 0x20) == 0x0); //UDRE0=1 Tx 준비완료 될 때까지 대기
    UDR0 = data; // 데이터 전송  
} // end Putch()

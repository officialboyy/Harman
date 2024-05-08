/****************************************************************************************************************************/
/* project :                                                                                             */                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
/* Name : KANGHYEONGJU                                                                                                                                                                                                                                                                                                                                            */
/* Modify :                                                                                                                                                                                                                                                                                                                                   */
/* Date : 24-04-02                                                                                                                                                                                                                                                                                                                          */
/* Description :                                                                                                                                                                                                                                                                                                                                     */            
/****************************************************************************************************************************/

#include <mega128.h>
#include <delay.h>   
                         
typedef unsigned char U8;                         
typedef unsigned short U16;                       
typedef unsigned int U32;

const U8 seg_pat[10]= {0x3f, 0x06, 0x5b, 0x4f, 0x66, 0x6d, 0x7d, 0x07, 0x7f, 0x6f};

U8 EINT4_FLAG_BIT=0;                              
U8 EINT5_FLAG_BIT=0;
U8 EINT6_FLAG_BIT=0;
U8 EINT7_FLAG_BIT=0;

U8 TIMER1_CTC_FLAG_BIT=0;
U8 TIMER2_OVF_FLAG_BIT=0;
U16 TIMER2_OVF_COUNT=0;

U32 TEMP_ADC_VALUE=0;
U8 ADC_RESULT_FLAG=0;

U8 NA100, NA10, NA1;
U8 NV100, NV10, NV1;
U32 ad_value=0;
                                               
void Seg4_out1(U8 N1, U8 N10, U8 N100, U8 N1000);
void Seg4_out2(U8 N1, U8 N10, U8 N100, U8 N1000);

void EXIT4_TIMER2(void);
void EXIT5_TIMER1(void);

void SEG7_TEMP_DIS(int val);
void AD_display(int value);
void UART_VOLT(void);
void PWM_RIS(void);
void PWM_FAL(void);
   
void main(void){

    //DDRC = 0xFF;    PORTC = 0xFF;              //작동 확인용으로 LED 출력 설정
    DDRB = 0xF0;                                 //포트B 4,5,6,7 출력 설정(LED)
    DDRD = 0xF0;                                 //4,5,6,7 출력 설정(LED)
    DDRG = 0x0F;                                 //0,1,2,3 출력 설정(COM)

    Seg4_out1(8,9,9,1);                                               

    EIMSK = 0b11110000;                          //인터럽트 사용 여부 결정 레지스터로 INT4,5,6,7 enable
    EICRB = 0b10111011;                          //INT4,5,6,7은 B에 의해 Interrupt trigger 방식 설정(7fa,6ri,5fa,4ri)
    
    SREG |= 0x80;                                //status resister bit7(MSB)만 1으로 설정하여 모든 인터럽트를 허용(global interrupt enable),OR을 사용하여 나머지비트는 그대로

    
        
    while(1){     
            
        if(ADC_RESULT_FLAG==0) Seg4_out2(6,1,7,0);
        else SEG7_TEMP_DIS(TEMP_ADC_VALUE);


        if(EINT4_FLAG_BIT==1) {
            TCCR1B = 0b00001000; 
     //       SEG7_TEMP_DIS(TEMP_ADC_VALUE);
            EXIT4_TIMER2();                                     
            EINT4_FLAG_BIT=0;
        }                                                                         
        if(EINT5_FLAG_BIT==1) {
            AD_display(ad_value);
            EXIT5_TIMER1(); 
            EINT5_FLAG_BIT=0;    
        } 
        if(EINT6_FLAG_BIT==1) {
            TCCR1B = 0b00001000;
            PWM_RIS();
            EINT6_FLAG_BIT=0;        
        }
        if(EINT7_FLAG_BIT==1) {
            TCCR1B = 0b00001000;
            PWM_FAL();
            EINT7_FLAG_BIT=0;
        }
        
        if(TIMER2_OVF_FLAG_BIT==1){                         //오버플로우 모드가 발생하면
        
            TIMER2_OVF_FLAG_BIT=0;                          //0으로 바꿔주고
            TIMER2_OVF_COUNT++;                             //1씩 더해간다
            
            if(TIMER2_OVF_COUNT==868){                      //4.427sec(주기가 5.1msec이므로 868번)
            
                TIMER2_OVF_COUNT=0;
                ADC_RESULT_FLAG++;
                ADMUX = 7;                                  // A/D 변환기 멀티플렉서 선택 레지스터
                ADCSRA = 0xE2;                              // ADEN=1, ADSC=1, ADFR=1, 16MHz, 8분주
                delay_us(10);                                           // 변환시간이 길어져 발생하는 ADC오류의 방지를 위한 딜레이가 필요함
                
                TEMP_ADC_VALUE = (int)ADCL + ((int)ADCH << 8);  //A/D 변환값 읽기
                
                if(ADC_RESULT_FLAG==10){         
                
                  ADC_RESULT_FLAG%=10;                   // 10회동안만 온도 표시
                  TIMSK &= 0b10111111;                   // TOIE2 = 0으로 설정하여 인터럽트가 안걸리게 하는 방법
                  
                }
            }
       }    
       
            if(TIMER1_CTC_FLAG_BIT==1){
            
            TIMER1_CTC_FLAG_BIT=0;
            ADMUX = 6;                                  //ADC6 단극성 입력 선택
            ADCSRA = 0x82;
            ADCSRA = 0xC2;                              // ADEN=1, 8분주 변환 시작
            
            while((ADCSRA & 0x10) == 0);                // ADIF=1이 될 때까지(Single)

            ad_value = (int)ADCL + ((int)ADCH << 8);    // A/D 변환값 읽기
            AD_display(ad_value);                       // A/D 변환값 표시
            UART_VOLT();                                // 유아트 디스플레이를 위한 함수
       }   
                                
    }
}


void Seg4_out1(U8 N1, U8 N10, U8 N100, U8 N1000)    //학번 앞자리 2020 디스플레이
{
    U8 i;
    
    for(i = 0;i <200 ;i++){                 
    
        PORTG = 0b00001000;                                         
        PORTD = ((seg_pat[N1] & 0x0F) << 4) | (PORTD & 0x0F);       
        PORTB = (seg_pat[N1] & 0x70 ) | (PORTB & 0x0F);             
        delay_ms(2);
                                                                   
        PORTG = 0b00000100;                                        
        PORTD = ((seg_pat[N10] & 0x0F) << 4) | (PORTD & 0x0F);
        PORTB = (seg_pat[N10] & 0x70 ) | (PORTB & 0x0F);
        delay_ms(2);
        
        PORTG = 0b00000010;                                         
        PORTD = ((seg_pat[N100] & 0x0F) << 4) | (PORTD & 0x0F);
        PORTB = (seg_pat[N100] & 0x70 ) | (PORTB & 0x0F);
        delay_ms(2);
        
        PORTG = 0b00000001;                                         
        PORTD = ((seg_pat[N1000] & 0x0F) << 4) | (PORTD & 0x0F);
        PORTB = (seg_pat[N1000] & 0x70 ) | (PORTB & 0x0F);
        delay_ms(2);
    }
}

void Seg4_out2(U8 N1, U8 N10, U8 N100, U8 N1000)
{
        PORTG = 0b00001000;
        PORTD = ((seg_pat[N1] & 0x0F) << 4) | (PORTD & 0x0F);
        PORTB = (seg_pat[N1] & 0x70 ) | (PORTB & 0x0F);
        delay_ms(2);
                                                      
        PORTG = 0b00000100;
        PORTD = ((seg_pat[N10] & 0x0F) << 4) | (PORTD & 0x0F);
        PORTB = (seg_pat[N10] & 0x70 ) | (PORTB & 0x0F);
        delay_ms(2);
        
        PORTG = 0b00000010;
        PORTD = ((seg_pat[N100] & 0x0F) << 4) | (PORTD & 0x0F);
        PORTB = (seg_pat[N100] & 0x70 ) | (PORTB & 0x0F);
        delay_ms(2);
        
        PORTG = 0b00000001;
        PORTD = ((seg_pat[N1000] & 0x0F) << 4) | (PORTD & 0x0F);
        PORTB = (seg_pat[N1000] & 0x70 ) | (PORTB & 0x0F);
        delay_ms(2);
}

void SEG7_TEMP_DIS(int val){

    float fval;
    int ival, buf;

    fval = (float)val * 5.0 / 1023.0;                                   // 온도값으로 변환
    ival = (int)(fval * 1000.0);                                        // 반올림 후 정수화(소수 첫째자리까지)

    NA100 = ival / 100;                                                 // 정수부 10의 자리 추출
    buf = ival % 100;
    NA10 = buf / 10;                                                    // 한자리수 추출
    NA1 = buf % 10;                                                     // 소수 첫째 자리 추출

    PORTG = 0b00001000;                                                 // PG3=1, 소수 첫째 자리
    PORTD = ((seg_pat[NA1] & 0x0F) << 4) | (PORTD & 0x0F);              //PORTD 하위 4bits 변경되지 않게 |
    PORTB = (seg_pat[NA1] & 0x70 ) | (PORTB & 0x0F);                    //PORTB 하위 4bits 변경되지 않게 |
    delay_ms(1); 
    
    PORTG = 0b00000100;                                                 // PG2=1
    PORTD = 0x00;
    PORTB = 0x80;                                                       // DP on(소수점)
    delay_ms(1);
    
    PORTG = 0b00000010;                                                 // PG1=1, 정수 일의 자리
    PORTD = ((seg_pat[NA10] & 0x0F) << 4) | (PORTD & 0x0F);
    PORTB = (seg_pat[NA10] & 0x70 ) | (PORTB & 0x0F);
    delay_ms(1);
    
    PORTG = 0b00000001;                                                 // PG0=1,정수 10의 자리
    PORTD = ((seg_pat[NA100] & 0x0F) << 4) | (PORTD & 0x0F);
    PORTB = (seg_pat[NA100] & 0x70 ) | (PORTB & 0x0F);
    delay_ms(1);
}

void AD_display(int value) {

    float fvalue;
    int ivalue, buff;

    fvalue = (float)value * 5.0 / 1024.0;                               // 전압 값으로 변환
    ivalue = (int)(fvalue * 100.0 + 0.5);                               // 반올림 후 정수화,(소수 둘째자리까지)

    NV100 = ivalue / 100;                                               // 정수부 추출
    buff = ivalue % 100;

    NV10 = buff / 10;                                                   // 소수 첫째 자리 추출
    NV1 = buff % 10;                                                    // 소수 둘째 자리 추출
}

void UART_VOLT(){

    UCSR0A = 0x0;                                                       // USART 초기화
    UCSR0B = 0b00001000;                                                // 송신 인에이블 TXEN = 1
    UCSR0C = 0b00000110;                                                // 비동기[7], 데이터 8비트 모드
    UBRR0H = 0;                                                         // X-TAL = 16MHz 일때, BAUD = 9600
    UBRR0L = 103;

    while((UCSR0A & 0x20) == 0x0);                                      //송신 버퍼가 비어지면 UDRE0[5]= 1이 될 때까지 대기
     UDR0 =NV100+0x30;                                                  //위 추출 숫자 아스키코드로 데이터 전송
    while((UCSR0A & 0x20) == 0x0);
     UDR0 ='.';                                                         //문자'.'전송
    while((UCSR0A & 0x20) == 0x0);
     UDR0 =NV10+0x30;                                                   //위 추출 숫자 아스키코드로 데이터 전송
    while((UCSR0A & 0x20) == 0x0);
     UDR0 =NV1+0x30;                                                    //위 추출 숫자 아스키코드로 데이터 전송
    while((UCSR0A & 0x20) == 0x0);
     UDR0 ='V';                                                         //문자'V'전송
    while((UCSR0A & 0x20) == 0x0);
     UDR0 =' ';                 
}           

void PWM_RIS(){

    TCCR3A = 0b10000010;                                                //OC3A(PE3)에 파형출력, mode6
    TCCR3B = 0b00001100;                                                //mode6(Fast PWM모드),256분주 - 122.07Hz 구동
    TCCR3C = 0x00;

    TCNT3H = 0x0;                                                       //레지스터 초기화
    TCNT3L = 0x0;                                                       //레지스터 초기화
    OCR3AH= 0x01;                                                       //260,hex104로 나온 것.
    OCR3AL = 0x04;

    DDRE |= 0x08;      
}

void PWM_FAL(){

    TCCR3A = 0b10000010;                                                //OC3A(PE3)에 파형출력, mode2
    TCCR3B = 0b00000100;                                                //mode2(PWM Phase correct 모드),256분주 - 61.035Hz
    TCCR3C = 0x00;

    TCNT3H = 0x0;                                                       //레지스터 초기화
    TCNT3L = 0x0;                                                       //레지스터 초기화
    OCR3AH= 0x01;                                                       //260,hex104로 나온 것.
    OCR3AL = 0x04;
    DDRE |= 0x08;    

}

void EXIT4_TIMER2(void){
            
    TIMSK |= 0b01000000;                        
    TCCR2 = 0b00000101;                      
    TCNT2 = 174;                                                                 
}

void EXIT5_TIMER1(void){

    TCCR1A = 0b00000000;                                                // mode4
    TCCR1B = 0b00001101;                                                // mode4(CTC), 프리스케일 = 1024분주
    TCCR1C = 0x00;

    TCNT1H = 0x0;                                                       //레지스터 초기화
    TCNT1L = 0x0;                                                       //레지스터 초기화
    OCR1AH= 0x1F;                                                       //7968,hex1F20로 나온 것.
    OCR1AL = 25000;                                                     //1600ms
    TIMSK |= 0x10;                                                      //compare match interrupt enable

}

interrupt [EXT_INT4] void external_int4(void){   
    SREG &= 0x7F;                                
    EINT4_FLAG_BIT=1;
    SREG |= 0x80;                                
}                                                      
 
interrupt [EXT_INT5] void external_int5(void){ 
    SREG &= 0x7F;
    EINT5_FLAG_BIT=1;     
    SREG |= 0x80;  
} 
                                
interrupt [EXT_INT6] void external_int6(void){ 
    SREG &= 0x7F;  
    EINT6_FLAG_BIT=1;  
    SREG |= 0x80;   
}

interrupt [EXT_INT7] void external_int7(void){ 
    SREG &= 0x7F;  
    EINT7_FLAG_BIT=1;       
    SREG |= 0x80;       
}

interrupt [TIM1_COMPA] void TIMER1_CTC_int(void){
    SREG &= 0x7F;
    TIMER1_CTC_FLAG_BIT=1;
    SREG |= 0x80;
}

interrupt [TIM2_OVF] void TIMER2_OVF_int(void){ 
    SREG &= 0x7F;  
    TIMER2_OVF_FLAG_BIT=1; 
    TCNT2 = 174;                               
    SREG |= 0x80;         
}
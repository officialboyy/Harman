/****************************************************************************************************************************/
/* project :                                                                                             */                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       
/* Name : Namheun_Kim                                                                                                                     */
/* Modify :                                                                                                                   */
/* Date : 2024/04/08                                                                                                                   */
/* Description :                                                                                                             */    
/****************************************************************************************************************************/

#include <mega128.h>                              //라이브러리 헤더 파일 포함
#include <delay.h>
                         

typedef unsigned char U8;                         //typedef 전처리문을 사용  
typedef unsigned short U16;                       //변수의 다양한 사용을 위해 main문밖 Global variable로 선언
typedef unsigned int U32;

const U8 seg_pat[10]= {0x3f, 0x06, 0x5b, 0x4f, 0x66, 0x6d, 0x7d, 0x07, 0x7f, 0x6f};
U8 TIM0_OVF_FLAG = 5;                                               
U8 EINT4_FLAG_BIT=0;                              //변수 설정
U8 EINT5_FLAG_BIT=0;
U8 EINT6_FLAG_BIT=0;
U8 EINT7_FLAG_BIT=0;

U8 TIMER1_CTC_FLAG_BIT=0;
U8 TIMER2_OVF_FLAG_BIT=0;
U16 TIMER2_OVF_COUNT=0;
U8 ADC_RESULT_FLAG=0;
U32 ad_val=0;
	
void Seg4_out(U8 N1, U8 N10, U8 N100, U8 N1000);
void Seg4_out2(U8 N1, U8 N10, U8 N100, U8 N1000);
void Putch(char);
void EXIT4_TIMER2(void);
void Tem_AD_disp(int); // A/D 변환값 표시
void AD_disp(int); // A/D 변환값 표시

void EXIT4_TIMER2(void);
void EXIT5_TIMER1(void);
void EXIT6_PWM_M6(void);
void EXIT7_PWM_M2(void);
    
void main(void){
    U8 i=0;

        
    DDRC = 0xFF;    PORTC = 0xFF;              //작동 확인용으로 LED 출력 설정
    DDRB = 0xF0;                                 //학번 디스플레이를 위한 포트B 4,5,6,7 출력 설정(LED)
    DDRD = 0xF0;                                 //학번 디스플레이를 위한 포트D 4,5,6,7 출력 설정(LED)
    DDRG = 0x0F;                                 //학번 디스플레이를 위한 포트G 0,1,2,3 출력 설정(COM)

    ADMUX = 0x07; // ADC7 단극성 입력 선택
    ADCSRA = 0x87; // ADEN=1, 16MHz 256분주 -> 125kHz
    
    TIMSK = 0x01; // TOIE0 = 1
    TCCR0 = 0x07; // 프리스케일 = CK/1024
    TCNT0 = 178; // 타이머/카운터0 레지스터 초기값
    SREG |= 0x80;                                //status resister bit7(MSB)만 1으로 설정하여 모든 인터럽트를 허용(global interrupt enable),OR을 사용하여 나머지비트는 그대로

    for(i=0; i<150; i++){      
        while(TIM0_OVF_FLAG!=0) {
            Seg4_out(7,9,9,1);    
        }              
        TIM0_OVF_FLAG = 5;
    }
    
    for(i=0; i<150; i++){      
        while(TIM0_OVF_FLAG!=0) {
            Seg4_out(2,0,2,1);    
        }              
        TIM0_OVF_FLAG = 5;
    }
    EIMSK = 0b11110000;                          //인터럽트 사용 여부 결정 레지스터로 INT4,5,6,7 enable
    EICRB = 0b10111011;                          //INT4,5,6,7은 B에 의해 Interrupt trigger 방식 설정(7fa,6ri,5fa,4ri)              
   
    while(1){
        if(ADC_RESULT_FLAG==0) Seg4_out2(2,0,2,1);
        else
        Tem_AD_disp(ad_val);
        
        if(EINT4_FLAG_BIT==0) {                        //인터럽트가 발생하면
        PORTC = 0xFF;
        }    
        if(EINT4_FLAG_BIT==1) {                        //인터럽트가 발생하면
        PORTC = 0x77;
        delay_ms(20);
            EINT4_FLAG_BIT=0;                          //0으로 다시 바꿔주고
            EXIT4_TIMER2();
        } //end of if
        if(EINT5_FLAG_BIT==1) { 
            EINT5_FLAG_BIT=0;
            EXIT5_TIMER1();
        } //end of if
        
        if(EINT6_FLAG_BIT==1) { 
            EINT6_FLAG_BIT=0;
            EXIT6_PWM_M6();//EXIT6에서 PWM 1 함수를 실행.
        } //end of if
        
        if(EINT7_FLAG_BIT==1) { 
            EINT7_FLAG_BIT=0;
            EXIT7_PWM_M2();//EXIT7에서 PWM 2 함수를 실행.
        } //end of if  
        
        if(TIMER2_OVF_FLAG_BIT==1) {
            TIMER2_OVF_FLAG_BIT=0;
            if(TIMER2_OVF_COUNT>=2250){
                TIMER2_OVF_COUNT=0;
                ADMUX = 0x07; ADCSRA = 0xC7; // ADEN=1, ADSC = 1 변환 시작
                    
                while((ADCSRA & 0x10) == 0); // ADIF=1이 될 때까지

                ad_val = (int)ADCL + ((int)ADCH << 8); // A/D 변환값 읽기
                if(ADC_RESULT_FLAG==10)ADC_RESULT_FLAG%=10;                  // 10회동안만 온도 표시    

                TIMSK &= 0b10111111;                   // TOIE2 = 0으로 설정하여 인터럽트가 안걸리게 하는 방법 
            }  
        }
                          
        
        if(TIMER1_CTC_FLAG_BIT==1){
        PORTC=0x55;
            TIMER1_CTC_FLAG_BIT=0;
            ADMUX = 6; ADCSRA = 0xC7; // ADEN=1, ADSC = 1 변환 시작
            while((ADCSRA & 0x10) == 0); // ADIF=1이 될 때까지
            ad_val = (int)ADCL + ((int)ADCH << 8); // A/D 변환값 읽기
            AD_disp(ad_val);
            TIMSK &= 0b11101111;                   // TOIE2 = 0으로 설정하여 인터럽트가 안걸리게 하는 방법
        }           
    } //end of while
} //end of main

  
void Seg4_out(U8 N1, U8 N10, U8 N100, U8 N1000)    //학번 앞자리 2020 디스플레이
{
        switch(TIM0_OVF_FLAG){
            case 1:
                PORTG = 0b00001000; 
                PORTD = ((seg_pat[N1] & 0x0F) << 4) | (PORTD & 0x0F); 
                PORTB = (seg_pat[N1] & 0x70 ) | (PORTB & 0x0F);
                break;
            case 2:
                PORTG = 0b00000100; 
                PORTD = ((seg_pat[N10] & 0x0F) << 4) | (PORTD & 0x0F); 
                PORTB = (seg_pat[N10] & 0x70 ) | (PORTB & 0x0F); 
                break;
            case 3:
                PORTG = 0b00000010; 
                PORTD = ((seg_pat[N100] & 0x0F) << 4) | (PORTD & 0x0F); 
                PORTB = (seg_pat[N100] & 0x70 ) | (PORTB & 0x0F); 
                break;
            case 4:
                PORTG = 0b00000001; 
                PORTD = ((seg_pat[N1000] & 0x0F) << 4) | (PORTD & 0x0F); 
                PORTB = (seg_pat[N1000] & 0x70 ) | (PORTB & 0x0F);
                TIM0_OVF_FLAG=0; 
                break;
            default:
                break;
        }
   
}//end of Seg4_out

void Seg4_out2(U8 N1, U8 N10, U8 N100, U8 N1000)   //학번 뒷자리 2251 디스플레이
{ 
        switch(TIM0_OVF_FLAG){
            case 1:
                PORTG = 0b00001000; 
                PORTD = ((seg_pat[N1] & 0x0F) << 4) | (PORTD & 0x0F); 
                PORTB = (seg_pat[N1] & 0x70 ) | (PORTB & 0x0F);
                break;
            case 2:
                PORTG = 0b00000100; 
                PORTD = ((seg_pat[N10] & 0x0F) << 4) | (PORTD & 0x0F); 
                PORTB = (seg_pat[N10] & 0x70 ) | (PORTB & 0x0F); 
                break;
            case 3:
                PORTG = 0b00000010; 
                PORTD = ((seg_pat[N100] & 0x0F) << 4) | (PORTD & 0x0F); 
                PORTB = (seg_pat[N100] & 0x70 ) | (PORTB & 0x0F); 
                break;
            case 4:
                PORTG = 0b00000001; 
                PORTD = ((seg_pat[N1000] & 0x0F) << 4) | (PORTD & 0x0F); 
                PORTB = (seg_pat[N1000] & 0x70 ) | (PORTB & 0x0F);
                TIM0_OVF_FLAG=0; 
                break;
            default:
                break;
        }
} //end of Seg4_out2

void Tem_AD_disp(int val) {
    float fval;
    U32 ival, buf; 
    U8 N100, N10, N1;
    
    fval = (float)val * 5.0 / 1024.0; // 전압 값으로 변환
    ival = (int)(fval * 1000.0 + 0.5); // 반올림 후 정수화, (소수 둘째자리까지) 
    N100 = ival / 100; // 정수부 추출
    buf = ival % 100; 
    N10 = buf / 10; // 소수 첫째 자리 추출
    N1 = buf % 10; // 소수 둘째 자리 추출
    
    
    
        switch(TIM0_OVF_FLAG){
            case 1:
                PORTG = 0b00001000; // PG3=1, 소수 둘째 자리
                PORTD = ((seg_pat[N1] & 0x0F) << 4) | (PORTD & 0x0F);
                PORTB = (seg_pat[N1] & 0x70 ) | (PORTB & 0x0F);
                break;
            case 2:
                PORTG = 0b00000100; // PG2=1, 소수 첫째 자리
                PORTD = ((seg_pat[N10] & 0x0F) << 4) | (PORTD & 0x0F);
                PORTB = (seg_pat[N10] & 0x70 ) | (PORTB & 0x0F);
                PORTB = PORTB | 0x80; // DP on(소수점)      
                break;
            case 3:
                PORTG = 0b00000010; // PG1=1, 정수부
                PORTD = ((seg_pat[N100] & 0x0F) << 4) | (PORTD & 0x0F);
                PORTB = (seg_pat[N100] & 0x70 ) | (PORTB & 0x0F);
                TIM0_OVF_FLAG=0;            
                break;
            default:
                break;
        
    }
}
  
void AD_disp(int val) {
    float fval;
    U32 ival, buf; 
    U8 N100, N10, N1;
    
    UCSR0A = 0x0; // USART 초기화 (251p)
    UCSR0B = 0b00001000; // 송신 인에이블 TXEN = 1 (253p)
    UCSR0C = 0b00000110; // 비동기[7], 데이터 8비트 모드 (253,4p)
    UBRR0H = 0; // X-TAL = 16MHz 일때, BAUD = 9600
    UBRR0L = 103; 
    
    fval = (float)val * 5.0 / 1024.0; // 전압 값으로 변환
    ival = (int)(fval * 100.0 + 0.5); // 반올림 후 정수화, (소수 둘째자리까지)
    N100 = (ival / 100)+'0'; // 정수부 추출
    buf = ival % 100; 
    N10 = (buf / 10)+'0'; // 소수 첫째 자리 추출
    N1 = (buf % 10+'0'); // 소수 둘째 자리 추출 
    
    Putch(N100);
    Putch('.');
    Putch(N10);
    Putch(N1);
    Putch('V');
    Putch(' ');
    
}

void Putch(char data){          // 한 바이트
    while((UCSR0A & 0x20) == 0x0); // 송신 버퍼가 비어지면 UDRE0 = 1 이 될 때까지 대기
    UDR0 = data; // 데이터 전송
}

void EXIT4_TIMER2(void){
    TIMSK |= 0b01000000;                        // overflow interrupt enable
    TCCR2 = 0x04;
    TCNT2 = 131;
}

void EXIT5_TIMER1(void){
    TIMSK |= 0b00010000; // OCIE1A = 1,
    TCCR1A = 0x00; // 모드 4(일반모드)
    TCCR1B = 0x0B; // 프리스케일 = CK/64  CTC
    TCCR1C = 0x0;
    TCNT1H = 0x0;                               //레지스터 초기화
    TCNT1L = 0x0;                               //레지스터 초기화   
    OCR1AH = 0xC3;
    OCR1AL = 0x4F;
}

void EXIT6_PWM_M6(void){           
    TCCR3A = 0b10000010;                        //OC3A(PE3)에 파형출력, mode6 
    TCCR3B = 0b00001100;                        //mode6(Fast PWM모드),256분주 - 122.07Hz 구동
    TCCR3C = 0x00;              
      
    TCNT3H = 0x0;                               //레지스터 초기화
    TCNT3L = 0x0;                               //레지스터 초기화    
    OCR3AH= 0x09;                               //260,hex104로 나온 것.
    OCR3AL = 0xD8;                     
    
    DDRE |= 0x08;                               //TIMER3 PWM PIN PE3은 DDRE 3을 출력설정해야 PWM 파형이 출력됨
} //end of EXIT6_PWM_M6

void EXIT7_PWM_M2(void){
    TCCR3A = 0b10000010;                        //OC3A(PE3)에 파형출력, mode2 
    TCCR3B = 0b00000100;                        //mode2(PWM Phase correct 모드),256분주 - 61.035Hz
    TCCR3C = 0x00;              
      
    TCNT3H = 0x0;                               //레지스터 초기화
    TCNT3L = 0x0;                               //레지스터 초기화   
    OCR3AH= 0x09;                               //260,hex104로 나온 것.
    OCR3AL = 0xD8; 
    DDRE |= 0x08;                               //PE3 출력 
} //end of EXIT7_PWM_M2

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

interrupt [TIM0_OVF] void timer_int0(void) 
{ 
    SREG &= 0x7F;

    TCNT0 = 178; // 초기값 재설정(0인 경우 생략가능) 
       
    TIM0_OVF_FLAG++;    
    TIM0_OVF_FLAG = TIM0_OVF_FLAG%5;   
   
/*    if(TEST==0){ 
      TIM0_OVF_FLAG=1;
      TEST=1;
    } 
    else {
        TIM0_OVF_FLAG++;  
        if(TIM0_OVF_FLAG==5){
            TIM0_OVF_FLAG = TIM0_OVF_FLAG%5;  
            TEST=0;
        }       
    }           
 */   
    SREG |= 0x80;
}

interrupt [TIM2_OVF] void TIMER2_OVF_int(void){ 
    SREG &= 0x7F;
    
    TIMER2_OVF_FLAG_BIT=1;
    TIMER2_OVF_COUNT++; 
    TCNT2 = 131;
                                     //초기값을 인터럽트 안에도 써줘야함
    SREG |= 0x80;         
}

interrupt [TIM1_COMPA] void TIMER1_CTC_int(void){
    SREG &= 0x7F;
    
    TIMER1_CTC_FLAG_BIT=1;
    
    SREG |= 0x80;     
}
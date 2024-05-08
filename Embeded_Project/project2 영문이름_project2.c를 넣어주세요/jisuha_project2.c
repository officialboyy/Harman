/****************************************/
/*  NAME    : jisuha_project2.c         */
/*  Modified and programmed by JS Ha    */
/*  Date    : 2024.04.08                */
/*  Modified by Ha                      */
/*  Description : main (ATMEGA128A)     */
/****************************************/

#include <mega128.h>  //라이브러리 헤더 파일 포함
#include <delay.h>
#include "D:\test.h"
                         
const unsigned char seg_pat[10]
= {0x3f, 0x06, 0x5b, 0x4f, 0x66, 0x6d, 0x7d, 0x27, 0x7f, 0x67};

int num1=2000;
int num2=927;
int i=0;
int ad_val;
int N1000, N100, N10, N1;

typedef unsigned char U8;                         //typedef 전처리문을 사용  
typedef unsigned short U16;                       //변수의 다양한 사용을 위해 main문밖 Global variable로 선언
typedef unsigned int U32;


                                               
U8 EINT4_FLAG_BIT=0;                              //변수 설정
U8 EINT5_FLAG_BIT=0;
U8 EINT6_FLAG_BIT=0;
U8 EINT7_FLAG_BIT=0;

U8 TIMER1_CTC_FLAG_BIT=0;
U16 TIMER2_OVF_FLAG_BIT=0;
U16 TIMER2_OVF_COUNT=0;

//void Seg4_out(U8 N1, U8 N10, U8 N100, U8 N1000);
//void Seg4_out2(U8 N1, U8 N10, U8 N100, U8 N1000); 

void Seg4_out(int);
void Seg4_out2(int);

void EXIT4_TIMER2(void);
void EXIT5_TIMER1(void);
void EXIT6_PWM6(void);
void EXIT7_PWM2(void);
    
void AD_free(int);
void AD_single(int);

void main(void){                             
    DDRC = 0xFF;    PORTC = 0xFF;              //작동 확인용으로 LED 출력 설정
    DDRB = 0xF0;                                 //학번 디스플레이를 위한 포트B 4,5,6,7 출력 설정(LED)
    DDRD = 0xF0;                                 //학번 디스플레이를 위한 포트D 4,5,6,7 출력 설정(LED)
    DDRG = 0x0F;                                 //학번 디스플레이를 위한 포트G 0,1,2,3 출력 설정(COM)      
    
    EIMSK = 0b11110000;                          //인터럽트 사용 여부 결정 레지스터로 INT4,5,6,7 enable
    EICRB = 0b10111011;                          //INT4,5,6,7은 B에 의해 Interrupt trigger 방식 설정(7fa,6ri,5fa,4ri)              
    SREG |= 0x80;                                //status resister bit7(MSB)만 1으로 설정하여 모든 인터럽트를 허용(global interrupt enable),OR을 사용하여 나머지비트는 그대로
         
    // Seg4_out(5,1,0,2)    
    // Seg4_out(4,3,2,1) 
    
    Seg4_out(num1);
    delay_ms(20);
    Seg4_out(num2);     
    delay_ms(20);       
        
    while(1){    
        Seg4_out(num2);
           
        if(EINT4_FLAG_BIT==1) {                        //인터럽트가 발생하면 
            AD_free(ad_val);
            EINT4_FLAG_BIT=0;                          //0으로 다시 바꿔주고
            EXIT4_TIMER2();
            
        } //end of if
        if(EINT5_FLAG_BIT==1) {  
     
            EINT5_FLAG_BIT=0;
            //EXIT5에서 TIMER1함수를 실행.  
            EXIT5_TIMER1();
        } //end of if
        if(EINT6_FLAG_BIT==1) {     
        
            EINT6_FLAG_BIT=0;
            //EXIT6에서 PWM 1 함수를 실행. 
            EXIT6_PWM6();
        } //end of if
        if(EINT7_FLAG_BIT==1) {  
        
            EINT7_FLAG_BIT=0;
            //EXIT7에서 PWM 2 함수를 실행. 
            EXIT7_PWM2();
        } //end of if  
        
        if(TIMER2_OVF_FLAG_BIT==1667) { 
            ADMUX=0x07;
            ADCSRA=0xE7;
            delay_ms(5);
           
            ad_val=(int)ADCL+((int)ADCH<<8);
           
            TIMER2_OVF_FLAG_BIT=0;
        }    
                
    } //end of while
} //end of main

  
//void Seg4_out(U8 N1, U8 N10, U8 N100, U8 N1000)    //학번 앞자리 2020 디스플레이
void Seg4_out(int num){
    int i,N1000, N100, N10, N1, buf; 
    N1000=num/1000;
    buf=num%1000;
    
    N100=buf/100;
    buf=buf%100; 
    
    N10=buf/10;
    N1=buf%10;
               
    PORTG=0x0F;

    for(i = 0;i <40 ;i++){                                          //40번이 될떄까지 디스플레이
        PORTG = 0b00001000;                                         //맨 우측 7Segment DIG4(PG3=1)ON, 1자리 표시
        PORTD = ((seg_pat[N1] & 0x0F) << 4) | (PORTD & 0x0F);       //[0]표시를 위해 ABCD표시, PORTD 하위 4bits 변경되지 않게 | 
        PORTB = (seg_pat[N1] & 0x70 ) | (PORTB & 0x0F);             //[0]표시를 위해 EFG표시, PORTB 하위 4bits 변경되지 않게 | 
        delay_ms(2);    
        
        PORTG = 0b00000100;                                         //우측에서 두번째 7Segment DIG3(PG2=1)ON, 10자리 표시
        PORTD = ((seg_pat[N10] & 0x0F) << 4) | (PORTD & 0x0F); 
        PORTB = (seg_pat[N10] & 0x70 ) | (PORTB & 0x0F); 
        
        delay_ms(2);   
        PORTG = 0b00000010;                                         //우측에서 세번째 7Segment DIG2(PG1=1)ON, 100자리 표시
        PORTD = ((seg_pat[N100] & 0x0F) << 4) | (PORTD & 0x0F);     
        PORTB = (seg_pat[N100] & 0x70 ) | (PORTB & 0x0F); 
       
        delay_ms(2);    
        PORTG = 0b00000001;                                         //우측에서 네번째 7Segment DIG1(PG0=1)ON, 1000자리 표시
        PORTD = ((seg_pat[N1000] & 0x0F) << 4) | (PORTD & 0x0F);    
        PORTB = (seg_pat[N1000] & 0x70 ) | (PORTB & 0x0F); 
       
        delay_ms(2);    
    } //end of for    
}//end of Seg4_out

//void Seg4_out2(U8 N1, U8 N10, U8 N100, U8 N1000)   //학번 뒷자리 2251 디스플레이
void Seg4_out2(int num){ 
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
} //end of Seg4_out2

void EXIT4_TIMER2(void){            
    TIMSK |= 0b01000000;                        // overflow interrupt enable
    TCCR2 = 0b00000101;                         // normal모드, 프리스케일= 1024분주
    TCNT2 = 224;   
    
   
                                    
} //end of EXIT4_TIMER2   


void EXIT5_TIMER1(void){
    TCCR1A=0b00000100;
    TCCR1B=0b00001101; //1024분주
    TCCR1C=0x20;
            
    TCNT1=0x0;
    OCR1A=42200;  //출력 파형 주기 초기값 2700msec; 
            
    AD_single(ad_val);
}

void EXIT6_PWM6(void){
    CCR3A = 0b10000010;                        //OC3A(PE3)에 파형출력, mode6 
    TCCR3B = 0b00001100;                        //mode6(Fast PWM모드),256분주 - 122.07Hz 구동
    TCCR3C = 0x00;              
      
    TCNT3H = 0x0;                               //레지스터 초기화
    TCNT3L = 0x0;                               //레지스터 초기화    
    OCR3AH= 0x01;                               //260,hex104로 나온 것.
    OCR3AL = 0x04;                     
    
    DDRE |= 0x08;                               //TIMER3 PWM PIN PE3은 DDRE 3을 출력설정해야 PWM 파형이 출력됨
}

void EXIT7_PWM2(void){
    TCCR3A = 0b10000010;                        //OC3A(PE3)에 파형출력, mode2 
    TCCR3B = 0b00000100;                        //mode2(PWM Phase correct 모드),256분주 - 61.035Hz
    TCCR3C = 0x00;              
      
    TCNT3H = 0x0;                               //레지스터 초기화
    TCNT3L = 0x0;                               //레지스터 초기화   
    OCR3AH= 0x01;                               //260,hex104로 나온 것.
    OCR3AL = 0x04; 
    DDRE |= 0x08;                               //PE3 출력 
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
    
    ADMUX = 0x06; // ADC6 단극성 입력 선택
    ADCSRA = 0x87; // ADEN=1, 16MHz 256분주 -> 125kHz 
    
    ADCSRA = 0xC7; // ADEN=1, ADSC = 1 변환 시작
    while((ADCSRA & 0x10) == 0); // ADIF=1이 될 때까지
    
    ad_val = (int)ADCL + ((int)ADCH << 8); // A/D 변환값 읽기
    
    AD_single(ad_val); // A/D 변환값 표시 
    delay_ms(1000);
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

interrupt [TIM2_OVF] void TIMER2_OVF_int(void){ 
    SREG &= 0x7F;  
    TIMER2_OVF_FLAG_BIT++; 
    TCNT2 = 224;                                 //초기값을 인터럽트 안에도 써줘야함
    SREG |= 0x80;         
}

void AD_free(int val){

    float fval;
    int ival, buf;
    U8 N100,N10,N1;
    
    fval=(float)val*5.0/1023.0;
    ival=(int)(fval*1000.0+0.5);
    
    
    N100 = ival / 100; // 정수부 추출
    buf = ival % 100;   
    
    N10 = buf / 10; // 소수 첫째 자리 추출  
    
    N1 = buf % 10; // 소수 둘째 자리 추출 
     
    for(i=0;i<40;i++){
    PORTG = 0b00001000; // PG3=1, 소수 둘째 자리
    PORTD = ((seg_pat[N1] & 0x0F) << 4) | (PORTD & 0x0F);
    PORTB = (seg_pat[N1] & 0x70 ) | (PORTB & 0x0F);
    delay_ms(5);
    
    PORTG = 0b00000100; // PG2=1, 소수 첫째 자리
    PORTD = 0x00;
    PORTB = 0x80; 
    delay_ms(5);
    
    PORTG = 0b00000010; // PG1=1, 정수부            
    PORTD = ((seg_pat[N10] & 0x0F) << 4) | (PORTD & 0x0F);
    PORTB = (seg_pat[N10] & 0x70 ) | (PORTB & 0x0F); 
    PORTB = PORTB | 0x80; // DP on(소수점) 
    delay_ms(5);      
    
    PORTG = 0b00000001; // PG1=1, 정수부            
    PORTD = ((seg_pat[N100] & 0x0F) << 4) | (PORTD & 0x0F);
    PORTB = (seg_pat[N100] & 0x70 ) | (PORTB & 0x0F); 
    PORTB = PORTB | 0x80; // DP on(소수점) 
    delay_ms(5);   
    }
    
}

void AD_single(int val){

    float fval;
    int ival, buf;
    U8 N1000, N100,N10,N1;
    
    fval=(float)val*5.0/1023.0;
    ival=(int)(fval*100.0+0.5);
    
    N1000=ival/1000;
    buf=ival%1000;
    
    N100 = ival / 100; // 정수부 추출
    buf = ival % 100;   
    
    N10 = buf / 10; // 소수 첫째 자리 추출  
    
    N1 = buf % 10; // 소수 둘째 자리 추출  
    
    PORTG = 0b00001000; // PG3=1, 소수 둘째 자리
    PORTD = ((seg_pat[N1] & 0x0F) << 4) | (PORTD & 0x0F);
    PORTB = (seg_pat[N1] & 0x70 ) | (PORTB & 0x0F);
    delay_ms(5);
    
    PORTG = 0b00000100; // PG2=1, 소수 첫째 자리
    PORTD = ((seg_pat[N10] & 0x0F) << 4) | (PORTD & 0x0F);
    PORTB = (seg_pat[N10] & 0x70 ) | (PORTB & 0x0F); 
    delay_ms(5);
    
    PORTG = 0b00000010; // PG1=1, 정수부            
    PORTD = ((seg_pat[N100] & 0x0F) << 4) | (PORTD & 0x0F);
    PORTB = (seg_pat[N100] & 0x70 ) | (PORTB & 0x0F); 
    PORTB = PORTB | 0x80; // DP on(소수점) 
    delay_ms(5);
    
}

/****************************************************************************************************************************/
/* project : 2                                                                                            */
/* Name : SongDabom                                                                                                                    */
/* Modify :                                                                                                                   */
/* Date : 2024-04-02                                                                                                                  */
/* Description :                                                                                                             */
/****************************************************************************************************************************/

#include <mega128.h>                              //라이브러리 헤더 파일 포함
#include <delay.h>

typedef unsigned char U8;                         //typedef 전처리문을 사용
typedef unsigned short U16;                       //변수의 다양한 사용을 위해 main문밖 Global variable로 선언
typedef unsigned int U32;

U8 EINT4_FLAG_BIT=0;                              //변수 설정
U8 EINT5_FLAG_BIT=0;
U8 EINT6_FLAG_BIT=0;
U8 EINT7_FLAG_BIT=0;

U8 ADC_RESULT_FLAG = 0;

U8 TIMER0_OVF_FLAG_BIT=0;
U8 TIMER1_CTC_FLAG_BIT=0;
U8 TIMER2_OVF_FLAG_BIT=0;
U16 TIMER2_OVF_COUNT=0;
U16 TIMER1_CTC_COUNT=0;

U8 seg_pat[10]= {0x3F, 0x06, 0x5B, 0x4F, 0x66, 0x6D, 0x7D, 0x07, 0x7F, 0x6F}; // 7segment 0~9
U32 birthyear = 1999;
U32 birthday = 701;
U8 i;
U32 tp_val, ad_val;

void Seg4_out(U32 value);
void AD_disp(U32 val);
void TP_disp(U32 val);
void Putch(U8 data);
void EXIT4_TIMER2(void);
void EXIT5_TIMER1(void);
void EXIT6_PWM_M6(void);
void EXIT7_PWM_M2(void);

void main(void){
    DDRC = 0xFF;    PORTC = 0xFF;              //작동 확인용으로 LED 출력 설정
    DDRB = 0xF0;                                 //학번 디스플레이를 위한 포트B 4,5,6,7 출력 설정(LED)
    DDRD = 0xF0;                                 //학번 디스플레이를 위한 포트D 4,5,6,7 출력 설정(LED)
    DDRG = 0x0F;

    TIMSK= 0x01 ; // TOIE0 = 1 타이머 카운터 0 오버플로우 인터럽트 enable
    TCCR0 =0x07 ; // 일반모드 , 1024 분 주
    TCNT0 = 177; //타이머 카운터 0 레지스터 초기값



    UCSR0A= 0x0;
    UCSR0B = 0b00001000; // 송신부 enable TXEN0 [3] = 1, RXEN0 [4] =1
    UCSR0C = 0b00000110; //비동기 :0, No parity: 00, 정지 bit 1 이면 :0, 데이터 8 비트 모드
    UBRR0H = 0; // 16MHz 일때 , BAUD = 9600
    UBRR0L = 103; // BAUD = 9600

    EIMSK = 0b11110000;   //인터럽트 사용 여부 결정 레지스터로 INT4,5,6,7 enable
    EICRB = 0b10111011;   //INT4,5,6,7은 B에 의해 Interrupt trigger 방식 설정(7fa,6ri,5fa,4ri)
    SREG |= 0x80;         //status resister bit7(MSB)만 1으로 설정하여 모든 인터럽트를 허용(global interrupt enable),OR을 사용하여 나머지비트는 그대로

    Seg4_out(birthyear); //생일 출력문
    Seg4_out(birthday);

    while(1)
    {
        if(ADC_RESULT_FLAG == 0) Seg4_out(birthday);
        else TP_disp(tp_val);


        if(EINT4_FLAG_BIT==1) {          //인터럽트가 발생하면
            EINT4_FLAG_BIT=0;            //0으로 다시 바꿔주고
            TIMER2_OVF_COUNT = 0;
            EXIT4_TIMER2();              //EXIT4에서 TIMER2함수를 실행
        } //end of if

        if(EINT5_FLAG_BIT==1) {
            EINT5_FLAG_BIT=0;
            EXIT5_TIMER1();  //EXIT5에서 TIMER1함수를 실행.
        } //end of if

        if(EINT6_FLAG_BIT==1) {
            EINT6_FLAG_BIT=0;
            EXIT6_PWM_M6(); //EXIT6에서 PWM 1 함수를 실행.
        } //end of if

        if(EINT7_FLAG_BIT==1) {
            EINT7_FLAG_BIT=0;
            EXIT7_PWM_M2(); //EXIT7에서 PWM 2 함수를 실행.
        } //end of if

        if(TIMER2_OVF_FLAG_BIT == 1){
            TIMER2_OVF_FLAG_BIT = 0;
            TIMER2_OVF_COUNT++;
            if(TIMER2_OVF_COUNT == 4) {     //주기가 1ms이기 때문에 4500번 작동해야 4.5s으로 해야하나 4로 설정해도 4초가 나올만큼 주기가 길어짐. 이유는 못찾음
                TIMER2_OVF_COUNT = 0;
                ADC_RESULT_FLAG++;
                ADMUX = 0x07;                //ADC7 입력 선택  [0x07 >> 온도센서에 enable]
                ADCSRA = 0xE2;               //ADEN =1, 16MHz 256분주 -> 125kHz

                delay_us(100);               // 변환시간이 길어져 발생하는 ADC오류의 방지를 위한 딜레이가 필요함
                tp_val =(U32)ADCL + ((U32)ADCH <<8);  //A/D 변환값 읽기
                if(ADC_RESULT_FLAG==10){
                    ADC_RESULT_FLAG = 0;                  // 50회동안만 온도 표시 (1ms 설정이라 값이 너무 작아 50회)
                    TIMSK &= 0b10111111;                   // TOIE2 = 0으로 설정하여 인터럽트가 안걸리게 하는 방법
                } //end of if
            }
        }

        if(TIMER1_CTC_FLAG_BIT == 1){
            TIMER1_CTC_FLAG_BIT = 0;
            TIMER1_CTC_COUNT++;
            if(TIMER1_CTC_COUNT == 6)
            {
                TIMER1_CTC_COUNT = 0;

                ADMUX = 0x06;                //ADC6 입력 선택  [0x06 >> 가변저항에 걸리는 전압 측정 ]
                ADCSRA = 0x87;              //ADEN =1, 16MHz 256분주 -> 125kHz

                ADCSRA = 0xC7;               //ADEN=1 ,  ADSC =1 변환시작
                while ((ADCSRA & 0x10)==0);  //ADIF =1이 될 때까지
                ad_val =(int)ADCL + ((int)ADCH <<8);         //A/D 변환값 읽기
                AD_disp(ad_val);

            }
        }



    } //end of while
} //end of main


void Seg4_out(U32 value)    //학번 앞자리 2020 디스플레이
{
    U32 N1, N10, N100, N1000, buf;
    N1000 = value / 1000; // 1000자리 추출
    buf = value % 1000;
    N100 = buf / 100; // 100자리 추출
    buf = buf % 100;
    N10 = buf / 10; // 10자리 추출
    N1 = buf % 10; // 1자리 추출

    for (i=0;i < 50;i++)
    {
        PORTG = 0b00001000;
        PORTD = ((seg_pat[N1] & 0x0F) << 4) | (PORTD & 0x0F);
        PORTB = (seg_pat[N1] & 0x70 ) | (PORTB & 0x0F);
        while (TIMER0_OVF_FLAG_BIT < 1); // 5ms delay
        TIMER0_OVF_FLAG_BIT = 0;

        PORTG = 0b00000100;
        PORTD = ((seg_pat[N10] & 0x0F) << 4) | (PORTD & 0x0F);
        PORTB = (seg_pat[N10] & 0x70 ) | (PORTB & 0x0F);
        while (TIMER0_OVF_FLAG_BIT < 1);
        TIMER0_OVF_FLAG_BIT = 0;

        PORTG = 0b00000010;
        PORTD = ((seg_pat[N100] & 0x0F) << 4) | (PORTD & 0x0F);
        PORTB = (seg_pat[N100] & 0x70 ) | (PORTB & 0x0F);
        while (TIMER0_OVF_FLAG_BIT < 1);
        TIMER0_OVF_FLAG_BIT = 0;

        PORTG = 0b00000001;
        PORTD = ((seg_pat[N1000] & 0x0F) << 4) | (PORTD & 0x0F);
        PORTB = (seg_pat[N1000] & 0x70 ) | (PORTB & 0x0F);
        while (TIMER0_OVF_FLAG_BIT < 1);
        TIMER0_OVF_FLAG_BIT = 0;

    } // end of for
}//end of Seg4_out

//온도 측정 함수
void TP_disp(U32 val)
{
    float fval;
    U32 ival, buf, N100, N10, N1;

    fval = (float)val*5.0 / 1024.0;      //전압 값으로 변환
    ival = (int)(fval *1000.0 + 5.0);    //반올림 후 정수화(소수 둘째자리까지)


    N100 =ival / 100;
    buf= ival % 100;
    N10 =buf / 10;
    N1 =buf % 10;

    PORTG = 0b00001000;
    PORTD = ((seg_pat [N1] & 0x0F) << 4) | (PORTD &0x0F);
    PORTB = (seg_pat [N1] & 0x70 ) | (PORTB &0x0F);
    while (TIMER0_OVF_FLAG_BIT < 1);
    TIMER0_OVF_FLAG_BIT = 0;

    PORTG = 0b00000100;
    PORTD = 0x00;
    PORTB = 0x80; // DP on (소수점 )
    while (TIMER0_OVF_FLAG_BIT < 1);
    TIMER0_OVF_FLAG_BIT = 0;

    PORTG = 0b00000010;
    PORTD = ((seg_pat [N10] & 0x0F) << 4) | (PORTD & 0x0F);
    PORTB = (seg_pat [N10] & 0x70 ) | (PORTB & 0x0F);
    while (TIMER0_OVF_FLAG_BIT < 1);
    TIMER0_OVF_FLAG_BIT = 0;

    PORTG = 0b00000001;
    PORTD = ((seg_pat [N100] & 0x0F) << 4) | (PORTD & 0x0F);
    PORTB = (seg_pat [N100] & 0x70 ) | (PORTB & 0x0F);
    while (TIMER0_OVF_FLAG_BIT < 1);
    TIMER0_OVF_FLAG_BIT = 0;



}
// 전압 측정 UART 통신
void AD_disp(U32 val)
{
    float fval;
    U32 ival, buf, N100, N10, N1;

    fval = (float)val*5.0 / 1024.0;      //전압 값으로 변환
    ival = (int)(fval *100.0 + 5.0);    //반올림 후 정수화(소수 둘째자리까지)

    N100 =ival / 100;
    buf= ival % 100;
    N10 =buf / 10;
    N1 =buf % 10;

    N100 = N100 + 0x30;
    N10 = N10 + 0x30;
    N1 = N1 + 0x30;
    Putch(N100);Putch(0x2E); Putch(N10); Putch(N1); Putch('V');
    while((UCSR0A & 0x20) == 0x0); UDR0 =0x0D; // 줄바꿈
}

void Putch(char data) // 한 바이트 송신
{
while((UCSR0A & 0x20) == 0x0); //UDRE0[5] = 1 송신준비완료 될 때까지 대기
UDR0 = data; // 데이터 전송
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

void EXIT4_TIMER2(void){
    TIMSK |= 0x40;
    TCCR2 =0x04 ; // 일반모드 , 64 분 주
    TCNT2 = 0x06; //타이머 카운터 2

} //end of EXIT4_TIMER2

void EXIT5_TIMER1(void){
    TCCR1A =0b00000000; // 타이머 1 compare 모드
    TCCR1B =0b00001100 ; // 타이머 1 compare 모드, 분주비 256
    TCCR1C = 0x00;

    TCNT1H = 0x0;                               //레지스터 초기화
    TCNT1L = 0x0;                               //레지스터 초기화
    OCR1AH = 0xF4;
    OCR1AL = 0x23; // 1000ms
    TCNT1 = 0;
    TIMSK |= 0x10;

} //end of EXIT4_TIMER2

void EXIT6_PWM_M6(void){
    TCCR3A = 0b10000010;                        //OC3A(PE3)에 파형출력, mode6
    TCCR3B = 0b00001100;                        //mode6(Fast PWM모드),256분주 - 122.07Hz 구동
    TCCR3C = 0x00;

    TCNT3H = 0x0;                               //레지스터 초기화
    TCNT3L = 0x0;                               //레지스터 초기화
    OCR3AH= 0x00;                               //260,hex104로 나온 것.
    OCR3AL = 0x05;

    DDRE |= 0x08;                               //TIMER3 PWM PIN PE3은 DDRE 3을 출력설정해야 PWM 파형이 출력됨
} //end of EXIT6_PWM_M6

void EXIT7_PWM_M2(void){
    TCCR3A = 0b10000010;                        //OC3A(PE3)에 파형출력, mode2
    TCCR3B = 0b00000100;                        //mode2(PWM Phase correct 모드),256분주 - 61.035Hz
    TCCR3C = 0x00;

    TCNT3H = 0x0;                               //레지스터 초기화
    TCNT3L = 0x0;                               //레지스터 초기화
    OCR3AH= 0x00;                               //260,hex104로 나온 것.
    OCR3AL = 0x05;
    DDRE |= 0x08;                               //PE3 출력
} //end of EXIT7_PWM_M2

interrupt [TIM0_OVF] void TIMER0_OVF_int(void){
    SREG &= 0x7F;
    TIMER0_OVF_FLAG_BIT=1;
    TCNT0 = 177;    //초기값을 인터럽트 안에도 써줘야함
    SREG |= 0x80;
}

interrupt [TIM1_COMPA] void TIMER1_COMP_int(void){
    SREG &= 0x7F;
    TIMER1_CTC_FLAG_BIT = 1;
    SREG |= 0x80;
}

interrupt [TIM2_OVF] void TIMER2_OVF_int(void){
    SREG &= 0x7F;
    TIMER2_OVF_FLAG_BIT=1;
    TCNT2 = 0x06;     //초기값을 인터럽트 안에도 써줘야함
    SREG |= 0x80;
}



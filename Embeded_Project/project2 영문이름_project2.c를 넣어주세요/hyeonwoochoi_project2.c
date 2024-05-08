/***********************************************************************************************************************/
/* project2(hwchoi).c                                                                                                  */
/*                                                                                                                     */
/* Created: 2024-04-02 오전 10:28:29                                                                                    */
/* Author: SAMSUNG                                                                                                     */
/***********************************************************************************************************************/

#include <mega128.h>                              //라이브러리 헤더 파일 포함
#include <delay.h>

const char seg_pat[10] =  {0x3f,0x06,0x5b,0x4f,0x66,0x6d,0x7d,0x27,0x7f,0x6f};

typedef unsigned char U8;                         //typedef 전처리문을 사용
typedef unsigned short U16;                       //변수의 다양한 사용을 위해 main문밖 Global variable로 선언
typedef unsigned int U32;

U8 EINT4_FLAG_BIT=0;                              //변수 설정
U8 EINT5_FLAG_BIT=0;
U8 EINT6_FLAG_BIT=0;
U8 EINT7_FLAG_BIT=0;

U8 cnt = 0;
U8 TIMER0_OVF_FLAG = 0;
U8 TIMER1_CTC_FLAG_BIT=0;
U8 TIMER2_OVF_FLAG_BIT=0;
 U32 adc_value = 0;
U32 N1000, N100, N10, N1;
U32 Nv100, Nv10, Nv1;
U32 year = 1998;
U32 bth = 731;
U32 id = 20171218;
U32 ad_val;

void Seg4_out(int);
void AD_disp(int);
void voltage_disp(int val);



void main(void){
    int i;

    DDRC = 0xFF;                                //LED 출력 설정
    DDRB = 0xF0;                                 //디스플레이를 위한 포트B 4,5,6,7 출력 설정(LED)
    DDRD = 0xF0;                                 //디스플레이를 위한 포트D 4,5,6,7 출력 설정(LED)
    DDRG = 0x0F;                                 //디스플레이를 위한 포트G 0,1,2,3 출력 설정(COM)

    PORTD = 0x0;
    PORTB = 0x0;


    TIMSK = 0x01;                                //TOIE0 = 1 타이머 카운터 0 오버플로우 인터럽트 enable
    TCCR0 = 0x05;                                //1024분주
    TCNT0 = 0;
    EIMSK = 0b11110000;                          //인터럽트 사용 여부 결정 레지스터로 INT4,5,6,7 enable
    EICRB = 0b10111011;                          //INT4,5,6,7은 B에 의해 Interrupt trigger 방식 설정(7-falling,6-rising,5fa,4ri)
    ADCSRA = 0X87;


    SREG |= 0x80;                                //status resister bit7(MSB)만 1으로 설정하여 모든 인터럽트를 허용(global interrupt enable),OR을 사용하여 나머지비트는 그대로

    for (i=0;i<20;i++){
    Seg4_out(year);                              //1998 출력
    while (TIMER0_OVF_FLAG < 1);                 //TIMER0를 이용해 5ms delay 설정 , TIMER0_OVF_FLAG 가 1이 될 때까지 대기
    TIMER0_OVF_FLAG = 0;                         //플래그 초기화
    }
 //   for (i=0;i<20;i++){
 //   Seg4_out(bth);                               //0731 출력
 //   delay_ms(5);
  //  }



    while(1){
        Seg4_out(bth);                                //0731 출력
        if(EINT4_FLAG_BIT==1) {                        //인터럽트가 발생하면
            int j;

            PORTD = 0;
            PORTB = 0;

            TIMSK |= 0b01000000;                        // overflow interrupt enable
            TCCR2 = 0b00000101;                         // normal모드, 프리스케일= 1024분주
            TCNT2 = 100;                                 // 100= 9.984ms

            for (j=0;j<10;j++){                          //10번 실행

            ADMUX = 0x07;                                //ADC7 입력 선택 (온도 센서에 걸리는 전압 측정)
            PORTC = 0x7F;                                //작동확인용 led on
            //delay_ms(100);

            ADCSRA = 0xC7;                                //ADEN=1 ,  ADSC =1 변환시작
            while((ADCSRA & 0x10) == 0);                  //ADIF =1이 될 때까지
            ad_val = (int)ADCL + ((int)ADCH <<8);           //A/D 변환값 읽기
            TIMER2_OVF_FLAG_BIT = 0;

            while (cnt <= 1){                              //'TIMER2_OVF_FLAG_BIT가 450번 반복시, 동작이 안되서 cnt를 두고 두 번 실행될 수 있도록 함
               if (TIMER2_OVF_FLAG_BIT <= 225)              //9.98ms x 450 = 4.5sec
               {
                 cnt++;
                 TIMER2_OVF_FLAG_BIT = 0;                            //cnt = 0 , cnt = 1 일 때 동작(총 두 번)
               }
               AD_disp(ad_val);
               PORTC = 0x7F;                                 //동작확인용 led on
            }                                                 //cnt 초기화
            cnt= 0;
            }
            EINT4_FLAG_BIT=0;          //0으로 다시 바꿔주고
        }
        if(EINT5_FLAG_BIT==1) {

            TCCR1A = 0x00;
            TCCR1B = 0x0D;      // ctc mode & 1024분주
            TCCR1C = 0x00;
            TCNT1H = 0;
            TCNT1L = 0;
            OCR1AH = 0x6D;      //1.8sec, hex
            OCR1AL = 0xE2;
            TIMSK |= 0b00010000;     //timer1 compare b interrupt enable

            PORTC = 0xBF;       //작동확인용 led ON
            EINT5_FLAG_BIT=0;
        }
        if(EINT6_FLAG_BIT==1) {
            PORTC = 0x1F;
         //OCR3A = 92;               //512(9bits) * 18%=92.16  (20171218 뒷자리 2개 - 18)
         EINT6_FLAG_BIT=0;
         TCCR3A = 0b10000010;        //OCR3A(PE3)에 파형 출력 , mode6, PWM 9bits
         TCCR3B = 0b00001100;        //mode6(Fast PWM mode), 256분주 - 122.07Hz
         TCCR3C = 0x00;

         TCNT3H = 0;                   //레지스터 초기화
         TCNT3L = 0;                   //레지스터 초기화
         OCR3AH = 0x00;               //92(01011100) , hex
         OCR3AL = 0x5C;

         DDRE |= 0x08;               //Timer3 PWM PIN PE3는 DDRE3을 출력 설정해야 PWM 파형 출력됨
         //EINT6_FLAG_BIT = 0;
        }
        if(EINT7_FLAG_BIT==1) {
            PORTC = 0x3F;
            EINT7_FLAG_BIT=0;
            TCCR3A = 0b10000010;        //OCR3A(PE3)에 파형 출력 , mode6, PWM 9bits
            TCCR3B = 0b00000100;        //mode2(Phase Correct PWM mode), 256분주 - 122.07Hz
            TCCR3C = 0x00;

            TCNT3H = 0;
            TCNT3L = 0;
            OCR3AH = 0x00;              //92(01011100) , hex
            OCR3AL = 0x5C;

            DDRE |= 0x08;               //Timer3 PWM PIN PE3는 DDRE3을 출력 설정해야 PWM 파형 출력됨
        }
        if(TIMER1_CTC_FLAG_BIT == 1){

               
                UCSR0A = 0x0;
                UCSR0B = 0b00001000;              // 송신부 enable TXEN0 [3] = 1, RXEN0 [4] =1
                UCSR0C = 0b00000110;              //비동기 :0, No parity: 00, 정지 bit 1 이면 :0, 데이터 8 비트 모드
                UBRR0H = 0;                      // 16MHz 일때 , BAUD = 9600
                UBRR0L = 103;                    //BAUD = 9600

                ADMUX = 0x06;                    //ADC6 입력 선택 (가변저항에 걸리는 전압 측정)
                ADCSRA = 0x87;                   //ADEN =1, 16MHz 256분주 -> 125kHz

                ADCSRA = 0xC7;                       //ADEN=1 ,  ADSC =1 변환시작
                while((ADCSRA & 0x10)==0);            //ADIF =1이 될 때까지
                adc_value = (int)ADCL + ((int)ADCH <<8);        //A/D 변환값 읽기
                voltage_disp(adc_value);

                while ((UCSR0A & 0x20) == 0x0);          //송신 버퍼가 비었을 때, UDRE0[5] =1 이 될 때까지 대기
                UDR0 = Nv100 + 0x30;
                while ((UCSR0A & 0x20) == 0x0);
                UDR0 = '.';                              //'.' 전송
                while ((UCSR0A & 0x20) == 0x0);
                UDR0 = Nv10 + 0x30;
                while ((UCSR0A & 0x20) == 0x0);
                UDR0 = Nv1 + 0x30;
                while ((UCSR0A & 0x20) == 0x0);           //'v' 전송
                UDR0 = 'V';
                while ((UCSR0A & 0x20) == 0x0);
                UDR0 = ' ';

                PORTC = 0xFE;                             //작동확인용 led ON
                TIMER1_CTC_FLAG_BIT = 0;

        }
    } //end of while
} //end of main



void Seg4_out(int num)                //생년월일 segment display
{
    U32 i, buf;

    N1000 = num /1000;
    buf = num % 1000;

    N100 = buf / 100;
    buf = buf % 100;

    N10 = buf / 10;
    N1 = buf % 10;

    for(i = 0;i <40 ;i++){                                          //40번이 될떄까지 디스플레이
        PORTG = 0b00001000;                                         //맨 우측 7Segment DIG4(PG3=1)ON, 1자리 표시
        PORTD = ((seg_pat[N1] & 0x0F) << 4) | (PORTD & 0x0F);       //[0]표시를 위해 ABCD표시, PORTD 하위 4bits 변경되지 않게 |
        PORTB = (seg_pat[N1] & 0x70 ) | (PORTB & 0x0F);             //[0]표시를 위해 EFG표시, PORTB 하위 4bits 변경되지 않게 |
        while (TIMER0_OVF_FLAG < 1);                                //5msec delay
        TIMER0_OVF_FLAG = 0;

        PORTG = 0b00000100;                                         //우측에서 두번째 7Segment DIG3(PG2=1)ON, 10자리 표시
        PORTD = ((seg_pat[N10] & 0x0F) << 4) | (PORTD & 0x0F);
        PORTB = (seg_pat[N10] & 0x70 ) | (PORTB & 0x0F);
        while (TIMER0_OVF_FLAG < 1);
        TIMER0_OVF_FLAG = 0;

        PORTG = 0b00000010;                                         //우측에서 세번째 7Segment DIG2(PG1=1)ON, 100자리 표시
        PORTD = ((seg_pat[N100] & 0x0F) << 4) | (PORTD & 0x0F);
        PORTB = (seg_pat[N100] & 0x70 ) | (PORTB & 0x0F);
        while (TIMER0_OVF_FLAG < 1);
        TIMER0_OVF_FLAG = 0;

        PORTG = 0b00000001;                                         //우측에서 네번째 7Segment DIG1(PG0=1)ON, 1000자리 표시
        PORTD = ((seg_pat[N1000] & 0x0F) << 4) | (PORTD & 0x0F);
        PORTB = (seg_pat[N1000] & 0x70 ) | (PORTB & 0x0F);
        while (TIMER0_OVF_FLAG < 1);
        TIMER0_OVF_FLAG = 0;

    } //end of for
}//end of Seg4_out

void AD_disp(int val)                      //온도센서 disp 함수
{
    float fval;
    int ival, buf;
    U8 N100, N10, N1;

    fval = (float)val*5.0 / 1024.0;      //전압 값으로 변환
    ival = (int)(fval*1000.0 + 5.0);    //반올림 후 정수화(소수 둘째자리까지)

    N100 =ival / 100;
    buf= ival % 100;
    N10 =buf / 10;
    N1 =buf % 10;

    PORTG = 0b00001000;
    PORTD = ((seg_pat [N1] & 0x0F) << 4) | (PORTD &0x0F);
    PORTB = (seg_pat [N1] & 0x70 ) | (PORTB &0x0F);
    while (TIMER0_OVF_FLAG < 1);           //5msec delay
    TIMER0_OVF_FLAG = 0;

    PORTG = 0b00000100;
    PORTD = ((seg_pat [N10] & 0x0F) << 4) | (PORTD & 0x0F);
    PORTB = (seg_pat [N10] & 0x70 ) | (PORTB & 0x0F);
    PORTB = PORTB | 0x80; // DP on (소수점 )
    while (TIMER0_OVF_FLAG < 1);
    TIMER0_OVF_FLAG = 0;

    PORTG = 0b00000010;
    PORTD = ((seg_pat [N100] & 0x0F) << 4) | (PORTD & 0x0F);
    PORTB = (seg_pat [N100] & 0x70 ) | (PORTB & 0x0F);
    while (TIMER0_OVF_FLAG < 1);
    TIMER0_OVF_FLAG = 0;

}

void voltage_disp(int val)           //가변저항 전압 측정 함수
{
    float fval;
    int ival, buf;

    fval = (float)val*5.0 / 1024.0;      //전압 값으로 변환
    ival = (int)(fval*100.0 + 5.0);    //반올림 후 정수화(소수 둘째자리까지)

    Nv100 =ival / 100;
    buf= ival % 100;
    Nv10 =buf / 10;
    Nv1 =buf % 10;
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

interrupt [TIM0_OVF] void TIMER0_OVF_int (void)
{
    SREG &= 0x7F;
    TIMER0_OVF_FLAG++;
    TCNT0 = 178;         //5msec
    SREG |= 0x80;
}

interrupt [TIM1_COMPA] void TIMER1_COMP_int(void)
{
    SREG &= 0x7F;
    TIMER1_CTC_FLAG_BIT = 1;
    SREG |= 0x80;
}

interrupt [TIM2_OVF] void TIMER2_OVF_int(void){
    SREG &= 0x7F;
    TCNT2 = 100;          //초기값을 인터럽트 안에도 써줘야함
    TIMER2_OVF_FLAG_BIT++;
    SREG |= 0x80;
}
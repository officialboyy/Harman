/***************************************************************************/
/*       name     : project2.c                                            */
/*       Modified and programmed by LEE JINHO                                 */
/*       Date     : 2024. 04.02                               */
/*       Description : project2 (ATmega128A 8-BIT MCU)                    */
/***************************************************************************/
#include <mega128a.h> /* AVR 마이크로컨트롤러의 라이브러리를 불러옵니다. */
#include "D:\Avrtest\LEEJINHO.h" /* 사용자가 작성한 헤더 파일을 불러옵니다. */

/* 전역 변수 선언 */
FLAG_INT_CHECK INT_CHECK = {0,0,0,0,0}; /* 인터럽트 플래그를 저장하는 구조체 변수 */
FLAG_TIM_CHECK TIM_CHECK; /* 타이머 플래그를 저장하는 구조체 변수 */
VAL_32BIT VAL = {0,0,1998,1211}; /* 32비트 값의 변수 */

/* 함수 프로토타입 선언 메인함수포함 5개 선언 */
void Segment_7(U32 N); /* 7세그먼트 디스플레이를 위한 함수 */
void AD_temp(U32 val); /* 온도를 측정하고 디스플레이하는 함수 */
void Usart_polling(U32 A); /* USART 통신을 수행하는 함수 */
void Start_main(void); /* main 함수에서 필요한 초기 설정을 수행하는 함수 */

void main(void) /* 메인 함수 시작 와일문 설정*/
{                                           
  U8 i=0; /* i 변수를 선언하고 초기화합니다. */
  Start_main(); /* 시작 설정 함수를 호출합니다. */
  
  while (1) /* 무한루프를 계속돌기위해 1로 설정  */
  {
    /* 각 모드에 따라 타이머 설정을 변경합니다. */
    if (VAL.Mode !=2){ 
      TCCR1A = 0x00; TCCR1B = 0x00;
    }
    if (VAL.Mode !=1){
      TCCR2=0x00; TIM_CHECK.Tim02 = 0;
      if(VAL.Mode!=0) PORTG = 0x00;
    }
    
    /* 모드에 따라 동작을 수행합니다. */
    switch(VAL.Mode){ 
      case 0: /* 모드 0: 세그먼트 디스플레이 */
        Segment_7(VAL.Birth);
        break;
      case 1: /* 모드 1: 온도 측정 및 디스플레이 */
        /* 온도 측정 및 디스플레이를 수행합니다. */
        if(TIM_CHECK.Tim0>191) TIM_CHECK.Tim0 = 0;
        if(TIM_CHECK.Tim2 == 20){
          TIM_CHECK.Tim20++; TIM_CHECK.Tim2=0;
        }
        if(TIM_CHECK.Tim20>90){
          ADCSRA = 0xC7;
          while((ADCSRA & 0x10) == 0);
          adc_temp = (int)ADCL + ((int)ADCH << 8);
          i++;
          TIM_CHECK.Tim20=0;
        }
        AD_temp(adc_temp); 
        if(i==10){
          i=0;
          VAL.Mode = 0;
          TCCR2=0x00;
        }  
        break; 
      case 2: /* 모드 2: USART 통신 */
        /* USART 통신을 수행합니다. */
        if(TIM_CHECK.Tim1>500){
          TIM_CHECK.Tim1=0; 
          VAL.U_Mode = 1;
        }
        Usart_polling(adc_val);           
        break;
      default:
        break;// 제3의 상황일때 발동 
    } /* 모드 스위치 종료 */
    
    /* 외부 인터럽트를 확인하고 처리합니다. */
    if(INT_CHECK.Eit4==1){ 
      /* ADC 설정 및 모드 변경 */
      ADMUX = 0x07;
      ADCSRA = 0x87; 
      TCCR2=0x05; 
      TCNT2=217;
      TIM_CHECK.Tim2=0;
      TIM_CHECK.Tim20=0;
      VAL.Mode = 1;  
      INT_CHECK.Eit4 = 0;    
    }
    if(INT_CHECK.Eit5==1){
      /* ADC 설정 및 모드 변경 */
      ADMUX = 0x06; ADCSRA = 0x87;
      TCCR1A = 0x40; TCCR1B = 0x0D; TCCR1C = 0x0;
      OCR1AH = 0x00; OCR1AL = 0x4D; 
      TIM_CHECK.Tim1=0;
      VAL.Mode = 2;
      INT_CHECK.Eit5 = 0;    
    }
    if(INT_CHECK.Eit6==1){  //255 분주
      /* 타이머 설정 및 모드 변경 */
      TCCR3A = 0b10000010; TCCR3B = 0b00000100; TCCR3C = 0x00;
      OCR3AH = 0x00; OCR3AL = 0x7F;
      VAL.Mode = 3;
      INT_CHECK.Eit6= 0;    
    }
    if(INT_CHECK.Eit7==1){  //255 분주
      /* 타이머 설정 및 모드 변경 */
      TCCR3A = 0b10000010; TCCR3B = 0b00001100; TCCR3C = 0x00;
      OCR3AH = 0x00; OCR3AL = 0x7F;
      VAL.Mode = 3;
      INT_CHECK.Eit7 = 0;    
    } /* 외부 인터럽트 확인 종료 */
  } /* 무한루프 종료 */ 
} /* 메인 함수 종료 */ 

/* 시작 설정 함수 시작 */
void Start_main(void){ 
  /* 포트 설정 피의 생태 led세그먼트 표시 데이터시트봐서 핀의 작동유무확인 */
  DDRB = 0xF0; DDRD = 0xF0; DDRG = 0x0F;
     
  /* USART 설정 */
  UCSR0A = 0x0; UCSR0B = 0b10011000; UCSR0C = 0b00000110; UBRR0H = 0; UBRR0L = 103;  
  
  /* 타이머 설정 레지스터 설정   */
  TIMSK=0x51; TCCR0=0x07; TCNT0=178;     
  TCCR1A = 0x00; TCCR1B = 0x00;
  TCCR3A = 0b00001011; TCCR3B = 0b00000100; TCCR3C = 0x00; 
  TCNT3H = 0x0; TCNT3L = 0x0;
    
  /* 외부 인터럽트 설정 2개씩 나눠서 읽기  */
  EIMSK = 0xF0; EICRB = 0b10111011;
  
  /* 전역 인터럽트 활성화 |는 구분하기 위 ㅐ */
  SREG|=0x80;                                   
  
  /* 초기화가 완료될 때까지 7세그먼트 디스플레이 */
  while(TIM_CHECK.Tim0<300) Segment_7(VAL.Year);
} /* 시작 설정 함수 종료 */

/* 7세그먼트 디스플레이를 수행하는 함수 */
void Segment_7(U32 N){ 
  /* 입력된 값을 각 자릿수로 나누어 저장합니다. */
  U8 N1000 = N/1000;
  U8 N100 = (N%1000)/100; 
  U8 N10 = (N%100)/10; 
  U8 N1 = N%10;
  switch(TIM_CHECK.Tim01){  /* 7세그먼트 디스플레이 선택 */
    case 0:                            
      PORTG=0b00001000;
      PORTD=((seg_pat[N1]&0x0F)<<4)|(PORTD&0x0F);
      PORTB=(seg_pat[N1]&0x70)|(PORTB&0x0F);
      break;
    case 1:
      PORTG=0b00000100;
      PORTD=((seg_pat[N10]&0x0F)<<4)|(PORTD&0x0F);
      PORTB=(seg_pat[N10]&0x70)|(PORTB&0x0F);
      break;
    case 2:
      PORTG=0b00000010;
      PORTD=((seg_pat[N100]&0x0F)<<4)|(PORTD&0x0F);
      PORTB=(seg_pat[N100]&0x70)|(PORTB&0x0F);
      break;
    case 3:
      PORTG=0b00000001;
      PORTD=((seg_pat[N1000]&0x0F)<<4)|(PORTD&0x0F);
      PORTB=(seg_pat[N1000]&0x70)|(PORTB&0x0F);
      break;
    default:
      break;
  }
} /* 7세그먼트 디스플레이 함수 종료 */

/* 온도를 측정하고 디스플레이하는 함수 */
void AD_temp(U32 val) {  
  /* 온도를 계산하고 각 자릿수로 나누어 저장합니다. */
  float fval;  int ival, buf;  unsigned char N10, N1, N01;    
  fval = (float)val * 5.0 / 1024.0;  ival = (int)(fval * 1000.0 + 0.5);
  N10 = ival / 100;  buf = ival % 100;   N1 = buf / 10;  N01 = buf % 10;
                                      
  /* 시간에 따라 디스플레이를 변경합니다. */
  switch(TIM_CHECK.Tim02){
    case 0:
      PORTG = 0b00001000;
      PORTD = ((seg_pat[N01] & 0x0F) << 4) | (PORTD & 0x0F);
      PORTB = (seg_pat[N01] & 0x70 ) | (PORTB & 0x0F); 
      break;
    case 1:
      PORTG = 0b00000100;
      PORTD = ((seg_pat[N1] & 0x0F) << 4) | (PORTD & 0x0F);
      PORTB = (seg_pat[N1] & 0x70 ) | (PORTB & 0x0F); 
      PORTB = PORTB | 0x80;
      break;
    case 2:
      PORTG = 0b00000010;
      PORTD = ((seg_pat[N10] & 0x0F) << 4) | (PORTD & 0x0F);
      PORTB = (seg_pat[N10] & 0x70 ) | (PORTB & 0x0F); 
      break;
    default:
      break;
  }
} /* 온도 디스플레이 함수 종료 */

/* USART 통신을 수행하는 함수 */
void Usart_polling(U32 A){  
  /* USART 통신을 수행합니다. */
  float fval_R;
  U32 ival_R, buf_R; 
  U8 N_10, N_1, N0_1;

  fval_R = (float)A * 5.0 / 1024.0;  ival_R = (int) (fval_R * 100.0 + 0.5);  
  N_10 = ival_R / 100; buf_R = ival_R % 100;
  N_1 = buf_R / 10;    N0_1 = buf_R % 10;
  
  if(VAL.U_Mode==1){
    ADCSRA = 0xC7;
    while((ADCSRA & 0x10) == 0);
    adc_val = (int)ADCL + ((int)ADCH << 8); 
    
    while((UCSR0A & 0x20) == 0x0); UDR0 =N_10+0x30;      
       
    while((UCSR0A & 0x20) == 0x0); UDR0 =0x2E;
  
    while((UCSR0A & 0x20) == 0x0); UDR0 =N_1+0x30;
        
    while((UCSR0A & 0x20) == 0x0); UDR0 =N0_1+0x30;
        
    while((UCSR0A & 0x20) == 0x0); UDR0 =0x56;
        
    while((UCSR0A & 0x20) == 0x0); UDR0 =0x0D;
    
    VAL.U_Mode = 0;
  }
} /* USART 통신 함수 종료 */

/* 외부 인터럽트 핸들러 */
interrupt[EXT_INT4] void external_int4(void){  
  SREG&=0x7F;    INT_CHECK.Eit4 = 1;    SREG|=0x80;
}
interrupt[EXT_INT5] void external_int5(void){
  SREG&=0x7F;    INT_CHECK.Eit5 = 1;    SREG|=0x80;
}
interrupt[EXT_INT6] void external_int6(void){
  SREG&=0x7F;    INT_CHECK.Eit6 = 1;    SREG|=0x80;
}
interrupt[EXT_INT7] void external_int7(void){
  SREG&=0x7F;    INT_CHECK.Eit7 = 1;    SREG|=0x80;
}

/* 타이머 0 오버플로우 핸들러 */
interrupt [TIM0_OVF] void Timer_0(void){  
  SREG&=0x7F;
  TCNT0=178;
  TIM_CHECK.Tim0++;
  TIM_CHECK.Tim01=TIM_CHECK.Tim0%4;
  TIM_CHECK.Tim02=TIM_CHECK.Tim0%3;
  SREG|=0x80;
}

/* 타이머 2 오버플로우 핸들러 */
interrupt [TIM2_OVF] void Timer_2(void){  
  SREG&=0x7F;//인터럽트 끝는것
  
  TCNT2=217;// 좀더 정확하게 작동하기 위해서 초기값 설정 
  TIM_CHECK.Tim2++;
  
  SREG|=0x80;//인터럽트 시작
}

/* 타이머 1 비교 일치 핸들러 */
interrupt [TIM1_COMPA] void Timer_1(void){  
  SREG&=0x7F;
  TIM_CHECK.Tim1++;
  SREG|=0x80;
}









































/****************************************************************************************************************************/
/* project :                                                                                             */                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       
/* Name : 이진호                                                                                                                     */
/* Modify :                                                                                                                   */
/* Date :                                                                                                                   */
/* Description :                                                                                                             */    
/****************************************************************************************************************************/
/*
#include <mega128.h> // ATmega128 마이크로컨트롤러 관련 헤더 파일  //내가 2번 (4)까지 설명// 
#include <delay.h> // 딜레이 함수 관련 헤더 파일
#include <stdio.h> // 표준 입출력 관련 헤더 파일
#include <stdlib.h> // 표준 라이브러리 관련 헤더 파일
#include <math.h> // 수학 관련 함수를 사용하기 위한 헤더 파일

typedef unsigned char U8; // 8비트 부호 없는 정수형을 U8로 정의
typedef unsigned short U16; // 16비트 부호 없는 정수형을 U16로 정의
typedef unsigned int U32; // 32비트 부호 없는 정수형을 U32로 정의

const U8 seg_pat[10] = {0x3f, 0x06, 0x5b, 0x4f, 0x66, 0x6d, 0x7d, 0x07, 0x7f, 0x6f}; // 7세그먼트 패턴을 저장한 배열 선언 및 초기화

volatile U8 EINT4_FLAG_BIT = 0; // 외부 인터럽트 4의 플래그 비트를 나타내는 변수 선언 및 초기화
volatile U8 TIMER2_OVF_COUNT = 0; // 타이머 2 오버플로우 카운트를 나타내는 변수 선언 및 초기화

void Seg4_out(U8 N1, U8 N10, U8 N100, U8 N1000); // 7세그먼트 출력 함수의 프로토타입 선언
void displayBirthday(void); // 생일을 표시하는 함수의 프로토타입 선언
void displayVoltage(U16 voltage); // 전압을 표시하는 함수의 프로토타입 선언
void UART_Transmit(U8 data); // UART를 통해 데이터를 전송하는 함수의 프로토타입 선언

interrupt [TIM2_OVF] void TIMER2_OVF_int(void); // 타이머 2 오버플로우 인터럽트 서비스 루틴의 프로토타입 선언
interrupt [TIM1_COMPA] void TIMER1_COMPA_int(void); // 타이머 1 COMPA 인터럽트 서비스 루틴의 프로토타입 선언
interrupt [EXT_INT6] void external_int6(void); // 외부 인터럽트 6 인터럽트 서비스 루틴의 프로토타입 선언
interrupt [EXT_INT7] void external_int7(void); // 외부 인터럽트 7 인터럽트 서비스 루틴의 프로토타입 선언

void main(void) {
    DDRB = 0xF0; // 포트 B의 4~7번 핀을 출력으로 설정
    DDRD = 0xF0; // 포트 D의 4~7번 핀을 출력으로 설정
    DDRG = 0x0F; // 포트 G의 0~3번 핀을 출력으로 설정

    PORTB = 0x0; // 포트 B 출력 레지스터 초기화 
    PORTD = 0x0; // 포트 D 출력 레지스터 초기화
    PORTG = 0x0F; // 포트 G 출력 레지스터의 상위 4비트를 설정하여 7세그먼트 전원을 켬

    displayBirthday(); // 생일을 표시하는 함수 호출

    EIMSK = 0b01100000; // 외부 인터럽트 4, 6, 7 활성화
    EICRB = 0b00101000; // 외부 인터럽트 4는 상승 에지, 외부 인터럽트 6은 상승 에지, 외부 인터럽트 7은 하강 에지에서 트리거됨

    TIMSK = 0b01000000; // 타이머 2 오버플로우 인터럽트 활성화
    TCCR2 = 0b00000111; // 타이머 2 설정: 오버플로우 모드, 프리스케일러 1024

    TCCR1A = 0; // 타이머 1 설정: 정상 모드
    TCCR1B = 0b00001000; // 타이머 1 설정: CTC 모드, 프리스케일러 256
    OCR1AH = 0x0D; // 타이머 1의 비교값 설정 (3400 msec)
    OCR1AL = 0xA0;

    // UART 설정
    UCSR0A = 0x00;
    UCSR0B = 0b00001000;
    UCSR0C = 0b00000110;

    UBRR0H = 0;
    UBRR0L = 0x67;

    SREG |= 0x80; // 전역 인터럽트 활성화

    while (1) {
        // 메인 프로그램 루프
    }
}

void Seg4_out(U8 N1, U8 N10, U8 N100, U8 N1000) {
    U8 i;
    for (i = 0; i < 40; i++) { // 7세그먼트 출력 반복
        PORTG = 0b00001000; // DIG4 활성화
        PORTD = ((seg_pat[N1] & 0x0F) << 4) | (PORTD & 0x0F); // 1의 자릿수 설정
        PORTB = (seg_pat[N1] & 0x70) | (PORTB & 0x0F); // 1의 자릿수 설정
        delay_ms(2);
        PORTG = 0b00000100; // DIG3 활성화
        PORTD = ((seg_pat[N10] & 0x0F) << 4) | (PORTD & 0x0F); // 10의 자릿수 설정
        PORTB = (seg_pat[N10] & 0x70) | (PORTB & 0x0F); // 10의 자릿수 설정
        delay_ms(2);
        PORTG = 0b00000010; // DIG2 활성화
        PORTD = ((seg_pat[N100] & 0x0F) << 4) | (PORTD & 0x0F); // 100의 자릿수 설정
        PORTB = (seg_pat[N100] & 0x70) | (PORTB & 0x0F); // 100의 자릿수 설정
        delay_ms(2);
        PORTG = 0b00000001; // DIG1 활성화
        PORTD = ((seg_pat[N1000] & 0x0F) << 4) | (PORTD & 0x0F); // 1000의 자릿수 설정
        PORTB = (seg_pat[N1000] & 0x70) | (PORTB & 0x0F); // 1000의 자릿수 설정
        delay_ms(2);
    }
}

void displayBirthday(void) {
    Seg4_out(1, 9, 9, 8); // 생일 표시: 1998
    delay_ms(20); // 2초 딜레이
    Seg4_out(1, 2, 1, 1); // 생일 표시: 1211
    delay_ms(20); // 2초 딜레이
}

void displayVoltage(U16 voltage) {
    U8 temp_str[5];
    sprintf(temp_str, "%d.%d", voltage / 10, voltage % 10); // 전압 값을 문자열로 변환하여 저장
    Seg4_out(temp_str[3] - '0', temp_str[2] - '0', temp_str[1] - '0', temp_str[0] - '0'); // 7세그먼트에 전압 값 표시
}

void UART_Transmit(U8 data) {
    while (!(UCSR0A & (1 << UDRE0))); // 전송 버퍼가 비어있을 때까지 대기
    UDR0 = data; // 데이터 전송
}

interrupt [TIM2_OVF] void TIMER2_OVF_int(void) {
    ++TIMER2_OVF_COUNT; // 타이머 2 오버플로우 카운트 증가
}

interrupt [TIM1_COMPA] void TIMER1_COMPA_int(void) {
    U16 voltage = rand() % 1024; // 임의의 전압 값 생성 (0 ~ 1023)
    displayVoltage(voltage); // 전압 값 표시
    UART_Transmit(voltage >> 8); // 상위 8비트 전송
    UART_Transmit(voltage & 0xFF); // 하위 8비트 전송
}

interrupt [EXT_INT6] void external_int6(void) {
    TCCR3A = 0b10000010; // 타이머 3 PWM 모드 6 설정
    TCCR3B = 0b00011001; // 타이머 3 프리스케일러 1, Fast PWM
    OCR3AH = 0;
    OCR3AL = 0xFF * (TIMER2_OVF_COUNT % 100) / 100; // 생일의 마지막 2자리에 따라 듀티 사이클 설정
    OCR3BH = 0;
    OCR3BL = 0xFF * (TIMER2_OVF_COUNT % 100) / 100; // 생일의 마지막 2자리에 따라 듀티 사이클 설정
}

interrupt [EXT_INT7] void external_int7(void) {
    TCCR3A = 0b10000000; // 타이머 3 상태 보정 PWM 모드 2 설정
    TCCR3B = 0b00001001; // 타이머 3 프리스케일러 1
    OCR3AH = 0;
    OCR3AL = 0xFF * (TIMER2_OVF_COUNT % 100) / 100; // 생일의 마지막 2자리에 따라 듀티 사이클 설정
    OCR3BH = 0;
    OCR3BL = 0xFF * (TIMER2_OVF_COUNT % 100) / 100; // 생일의 마지막 2자리에 따라 듀티 사이클 설정
}
/*
#include <mega128.h>        // AVR 마이크로컨트롤러 ATmega128 헤더 파일 2번 (2)까지 설명 
#include <delay.h>          // 딜레이 함수를 사용하기 위한 헤더 파일
#include <stdio.h>          // 표준 입출력 함수 헤더 파일
#include <stdlib.h>         // 표준 라이브러리 함수 헤더 파일
#include <math.h>           // 수학 함수 헤더 파일

typedef unsigned char U8;   // 8비트 부호 없는 정수 형식 정의
typedef unsigned short U16;  // 16비트 부호 없는 정수 형식 정의
typedef unsigned int U32;    // 32비트 부호 없는 정수 형식 정의

const U8 seg_pat[10] = {0x3f, 0x06, 0x5b, 0x4f, 0x66, 0x6d, 0x7d, 0x07, 0x7f, 0x6f};  // 7세그먼트 표시 패턴 배열

volatile U8 EINT4_FLAG_BIT = 0;     // 외부 인터럽트 4 플래그 변수 초기화
volatile U8 TIMER2_OVF_COUNT = 0;   // 타이머2 오버플로우 카운트 변수 초기화

void Seg4_out(U8 N1, U8 N10, U8 N100, U8 N1000);   // 7세그먼트 출력 함수 선언
void displayBirthday(void);                        // 생일을 7세그먼트에 출력하는 함수 선언
void displayVoltage(U16 voltage);                  // 전압을 7세그먼트에 출력하는 함수 선언
void UART_Transmit(U8 data);                       // UART를 통해 데이터를 전송하는 함수 선언

interrupt [TIM2_OVF] void TIMER2_OVF_int(void);    // 타이머2 오버플로우 인터럽트 함수 선언
interrupt [TIM1_COMPA] void TIMER1_COMPA_int(void);  // 타이머1 Compare A 매치 인터럽트 함수 선언

void main(void) {
    DDRB = 0xF0;    // 포트B의 상위 4비트를 출력으로 설정
    DDRD = 0xF0;    // 포트D의 상위 4비트를 출력으로 설정
    DDRG = 0x0F;    // 포트G의 하위 4비트를 출력으로 설정

    PORTB = 0x0;    // 포트B 출력 초기화
    PORTD = 0x0;    // 포트D 출력 초기화
    PORTG = 0x0F;   // 포트G 출력 초기화 (공통 애노드 7세그먼트 사용)

    displayBirthday();  // 메인 루프 진입 전 생일을 7세그먼트에 표시

    EIMSK = 0b00100000; // 외부 인터럽트 5 활성화
    EICRB = 0b00001000; // 외부 인터럽트 5는 하강 에지에서 동작

    TIMSK = 0b01000000; // 타이머2 오버플로우 인터럽트 활성화
    TCCR2 = 0b00000111; // 타이머2: 오버플로우 모드, 프리스케일러 1024

    TCCR1A = 0;         // 타이머1: 일반 모드
    TCCR1B = 0b00001000; // 타이머1: CTC 모드, 프리스케일러 256
    OCR1AH = 0x0D;      // 비교 일치 값 설정 (3400msec)
    OCR1AL = 0xA0;

    // UART 설정
    UCSR0A = 0x00;
    UCSR0B = 0b00001000;    // 송신 가능한 UART 설정
    UCSR0C = 0b00000110;    // 비동기 통신, 8비트 데이터, 1비트 정지 비트

    UBRR0H = 0;
    UBRR0L = 0x67;          // 9600 보오레이트 설정

    SREG |= 0x80;   // 전역 인터럽트 활성화

    while (1) {
        // 메인 루프, 인터럽트에서 처리될 내용을 기다림
    }
}

void Seg4_out(U8 N1, U8 N10, U8 N100, U8 N1000) {
    U8 i;
    for (i = 0; i < 30; i++) { // 30번 반복
        PORTG = 0b00001000; // DIG4 설정
        PORTD = ((seg_pat[N1] & 0x0F) << 4) | (PORTD & 0x0F);  // 1의 자리 출력
        PORTB = (seg_pat[N1] & 0x70) | (PORTB & 0x0F);         // 1의 자리 출력
        delay_ms(2);
        PORTG = 0b00000100; // DIG3 설정
        PORTD = ((seg_pat[N10] & 0x0F) << 4) | (PORTD & 0x0F); // 10의 자리 출력
        PORTB = (seg_pat[N10] & 0x70) | (PORTB & 0x0F);        // 10의 자리 출력
        delay_ms(2);
        PORTG = 0b00000010; // DIG2 설정
        PORTD = ((seg_pat[N100] & 0x0F) << 4) | (PORTD & 0x0F); // 100의 자리 출력
        PORTB = (seg_pat[N100] & 0x70) | (PORTB & 0x0F);        // 100의 자리 출력
        delay_ms(2);
        PORTG = 0b00000001; // DIG1 설정
        PORTD = ((seg_pat[N1000] & 0x0F) << 4) | (PORTD & 0x0F); // 1000의 자리 출력
        PORTB = (seg_pat[N1000] & 0x70) | (PORTB & 0x0F);        // 1000의 자리 출력
        delay_ms(2);
    }
}

void displayBirthday(void) {
    Seg4_out(1, 9, 9, 8); // 생일의 처음 4자리 표시 (1998)
    delay_ms(20); // 2초 대기
    Seg4_out(1, 2, 1, 1); // 생일의 마지막 4자리 표시 (1211)
    delay_ms(20); // 2초 대기
}

void displayVoltage(U16 voltage) {
    U8 temp_str[5]; // 임시 문자열 배열
    sprintf(temp_str, "%d.%d", voltage / 10, voltage % 10); // 전압을 문자열로 변환
    Seg4_out(temp_str[3] - '0', temp_str[2] - '0', temp_str[1] - '0', temp_str[0] - '0'); // 각 자리에 맞게 7세그먼트에 출력
}

void UART_Transmit(U8 data) {
    while (!(UCSR0A & (1 << UDRE0))); // 전송 가능할 때까지 대기
    UDR0 = data; // 데이터 전송
}

interrupt [TIM2_OVF] void TIMER2_OVF_int(void) {
    ++TIMER2_OVF_COUNT; // 오버플로우 카운트 증가
}

interrupt [TIM1_COMPA] void TIMER1_COMPA_int(void) {
    // ADC를 사용하여 전압을 읽음 (10비트 ADC 가정)
    // 시뮬레이션된 전압 값 (0-1023)
    U16 voltage = rand() % 1024;
    displayVoltage(voltage); // 전압을 출력

    // 전압 값을 UART로 전송
    UART_Transmit(voltage >> 8); // 상위 8비트 전송
    UART_Transmit(voltage & 0xFF); // 하위 8비트 전송
}
/*두번고친것 2번 (1)까지 
#include <mega128.h>
#include <delay.h>
#include <stdio.h>
#include <stdlib.h>

typedef unsigned char U8;
typedef unsigned short U16;

const U8 seg_pat[10] = {0x3f, 0x06, 0x5b, 0x4f, 0x66, 0x6d, 0x7d, 0x07, 0x7f, 0x6f};

volatile U8 EINT4_FLAG_BIT = 0;
volatile U8 TIMER2_OVF_COUNT = 0;

void Seg4_out(U8 N1, U8 N10, U8 N100, U8 N1000);
void displayBirthday(void);
void displayTemperature(U8 temp);

interrupt [TIM2_OVF] void TIMER2_OVF_int(void);

void main(void) {
    DDRB = 0xF0;
    DDRD = 0xF0;
    DDRG = 0x0F;

    PORTB = 0x0;
    PORTD = 0x0;
    PORTG = 0x0F; // Enable all common cathodes

    displayBirthday(); // Display birthday before entering the while loop 

    EIMSK = 0b00010000; // Enable external interrupt 4
    EICRB = 0b00000100; // Trigger on rising edge for external interrupt 4

    TIMSK = 0b01000000; // Enable Timer2 overflow interrupt
    TCCR2 = 0b00000111; // Timer2: Overflow mode, Prescaler 1024

    SREG |= 0x80; // Enable global interrupts

    while (1) {
        if (TIMER2_OVF_COUNT >= 10) {
            TIMER2_OVF_COUNT = 0;
            // Read temperature using ADC
            // Assuming temp is a value between 0 and 255 representing temperature
         
            delay_ms(4500); // Display temperature for 4.5 seconds
            displayBirthday(); // Display birthday again
        }
    }
}

void Seg4_out(U8 N1, U8 N10, U8 N100, U8 N1000) {
    U8 i;
    for (i = 0; i < 30; i++) {
        PORTG = 0b00001000; // DIG4
        PORTD = ((seg_pat[N1] & 0x0F) << 4) | (PORTD & 0x0F);
        PORTB = (seg_pat[N1] & 0x70) | (PORTB & 0x0F);
        delay_ms(2);
        PORTG = 0b00000100; // DIG3
        PORTD = ((seg_pat[N10] & 0x0F) << 4) | (PORTD & 0x0F);
        PORTB = (seg_pat[N10] & 0x70) | (PORTB & 0x0F);
        delay_ms(2);
        PORTG = 0b00000010; // DIG2
        PORTD = ((seg_pat[N100] & 0x0F) << 4) | (PORTD & 0x0F);
        PORTB = (seg_pat[N100] & 0x70) | (PORTB & 0x0F);
        delay_ms(2);
        PORTG = 0b00000001; // DIG1
        PORTD = ((seg_pat[N1000] & 0x0F) << 4) | (PORTD & 0x0F);
        PORTB = (seg_pat[N1000] & 0x70) | (PORTB & 0x0F);
        delay_ms(2);
    }
}

void displayBirthday(void) {
    Seg4_out(1, 9, 9, 8); // Display first 4 digits of birthday (1998)
    delay_ms(20); // Delay for 2 seconds
    Seg4_out(1, 2, 1, 1); // Display last 4 digits of birthday (1211)
    delay_ms(20); // Delay for 2 seconds
}

void displayTemperature(U8 temp) {
    // Convert temperature to string
    char temp_str[5];
    sprintf(temp_str, "%d.0", temp);
    // Display temperature on 7-segment display
    Seg4_out(temp_str[3] - '0', temp_str[2] - '0', temp_str[1] - '0', temp_str[0] - '0');
}

interrupt [EXT_INT4] void external_int4(void) {
    EINT4_FLAG_BIT = 1; // Set flag to indicate external interrupt 4 occurred
}

interrupt [TIM2_OVF] void TIMER2_OVF_int(void) {
    ++TIMER2_OVF_COUNT; // Increment overflow count
}


/*처음 고친 코드 1번까지 
#include <mega128.h>
#include <delay.h>

typedef unsigned char U8;
typedef unsigned short U16;

const U8 seg_pat[10] = {0x3f, 0x06, 0x5b, 0x4f, 0x66, 0x6d, 0x7d, 0x07, 0x7f, 0x6f};
U8 EINT4_FLAG_BIT = 0;

void Seg4_out(U8 N1, U8 N10, U8 N100, U8 N1000);
void displayBirthday(void);

void main(void) {
    DDRB = 0xF0;
    DDRD = 0xF0;
    DDRG = 0x0F;

    PORTB = 0x0;
    PORTD = 0x0;
    PORTG = 0x0F; // Enable all common cathodes

    displayBirthday(); // Display birthday before entering the while loop 
    
    EIMSK = 0b11110000;                          //인터럽트 사용 여부 결정 레지스터로 INT4,5,6,7 enable
    EICRB = 0b10111011;                          //INT4,5,6,7은 B에 의해 Interrupt trigger 방식 설정(7fa,6ri,5fa,4ri)              
    SREG |= 0x80;                                //status resister bit7(MSB)만 1으로 설정하여 모든 인터럽트를 허용(global interrupt enable),OR을 사용하여 나머지비트는 그대로

    while (1) {
        Seg4_out(1, 9, 9, 8); // Display first 4 digits of birthday (1998)
        delay_ms(20); // Delay for 2 seconds
        Seg4_out(1, 2, 1, 1); // Display last 4 digits of birthday (1211)
        delay_ms(20); // Delay for 2 seconds
    }
}

void Seg4_out(U8 N1, U8 N10, U8 N100, U8 N1000) {
    U8 i;
    for (i = 0; i < 30; i++) {
        PORTG = 0b00001000; // DIG4
        PORTD = ((seg_pat[N1] & 0x0F) << 4) | (PORTD & 0x0F);
        PORTB = (seg_pat[N1] & 0x70) | (PORTB & 0x0F);
        delay_ms(2);
        PORTG = 0b00000100; // DIG3
        PORTD = ((seg_pat[N10] & 0x0F) << 4) | (PORTD & 0x0F);
        PORTB = (seg_pat[N10] & 0x70) | (PORTB & 0x0F);
        delay_ms(2);
        PORTG = 0b00000010; // DIG2
        PORTD = ((seg_pat[N100] & 0x0F) << 4) | (PORTD & 0x0F);
        PORTB = (seg_pat[N100] & 0x70) | (PORTB & 0x0F);
        delay_ms(2);
        PORTG = 0b00000001; // DIG1
        PORTD = ((seg_pat[N1000] & 0x0F) << 4) | (PORTD & 0x0F);
        PORTB = (seg_pat[N1000] & 0x70) | (PORTB & 0x0F);
        delay_ms(2);
    }
}

void displayBirthday(void) {
    Seg4_out(1, 9, 9, 8); // Display first 4 digits of birthday (1998)
    delay_ms(20); // Delay for 2 seconds
    Seg4_out(1, 2, 1, 1); // Display last 4 digits of birthday (1211)
    delay_ms(20); // Delay for 2 seconds
}

}

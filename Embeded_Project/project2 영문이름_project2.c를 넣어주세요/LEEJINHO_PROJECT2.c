/***************************************************************************/
/*       name     : project2.c                                            */
/*       Modified and programmed by LEE JINHO                                 */
/*       Date     : 2024. 04.02                               */
/*       Description : project2 (ATmega128A 8-BIT MCU)                    */
/***************************************************************************/
#include <mega128a.h> /* AVR ����ũ����Ʈ�ѷ��� ���̺귯���� �ҷ��ɴϴ�. */
#include "D:\Avrtest\LEEJINHO.h" /* ����ڰ� �ۼ��� ��� ������ �ҷ��ɴϴ�. */

/* ���� ���� ���� */
FLAG_INT_CHECK INT_CHECK = {0,0,0,0,0}; /* ���ͷ�Ʈ �÷��׸� �����ϴ� ����ü ���� */
FLAG_TIM_CHECK TIM_CHECK; /* Ÿ�̸� �÷��׸� �����ϴ� ����ü ���� */
VAL_32BIT VAL = {0,0,1998,1211}; /* 32��Ʈ ���� ���� */

/* �Լ� ������Ÿ�� ���� �����Լ����� 5�� ���� */
void Segment_7(U32 N); /* 7���׸�Ʈ ���÷��̸� ���� �Լ� */
void AD_temp(U32 val); /* �µ��� �����ϰ� ���÷����ϴ� �Լ� */
void Usart_polling(U32 A); /* USART ����� �����ϴ� �Լ� */
void Start_main(void); /* main �Լ����� �ʿ��� �ʱ� ������ �����ϴ� �Լ� */

void main(void) /* ���� �Լ� ���� ���Ϲ� ����*/
{                                           
  U8 i=0; /* i ������ �����ϰ� �ʱ�ȭ�մϴ�. */
  Start_main(); /* ���� ���� �Լ��� ȣ���մϴ�. */
  
  while (1) /* ���ѷ����� ��ӵ������� 1�� ����  */
  {
    /* �� ��忡 ���� Ÿ�̸� ������ �����մϴ�. */
    if (VAL.Mode !=2){ 
      TCCR1A = 0x00; TCCR1B = 0x00;
    }
    if (VAL.Mode !=1){
      TCCR2=0x00; TIM_CHECK.Tim02 = 0;
      if(VAL.Mode!=0) PORTG = 0x00;
    }
    
    /* ��忡 ���� ������ �����մϴ�. */
    switch(VAL.Mode){ 
      case 0: /* ��� 0: ���׸�Ʈ ���÷��� */
        Segment_7(VAL.Birth);
        break;
      case 1: /* ��� 1: �µ� ���� �� ���÷��� */
        /* �µ� ���� �� ���÷��̸� �����մϴ�. */
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
      case 2: /* ��� 2: USART ��� */
        /* USART ����� �����մϴ�. */
        if(TIM_CHECK.Tim1>500){
          TIM_CHECK.Tim1=0; 
          VAL.U_Mode = 1;
        }
        Usart_polling(adc_val);           
        break;
      default:
        break;// ��3�� ��Ȳ�϶� �ߵ� 
    } /* ��� ����ġ ���� */
    
    /* �ܺ� ���ͷ�Ʈ�� Ȯ���ϰ� ó���մϴ�. */
    if(INT_CHECK.Eit4==1){ 
      /* ADC ���� �� ��� ���� */
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
      /* ADC ���� �� ��� ���� */
      ADMUX = 0x06; ADCSRA = 0x87;
      TCCR1A = 0x40; TCCR1B = 0x0D; TCCR1C = 0x0;
      OCR1AH = 0x00; OCR1AL = 0x4D; 
      TIM_CHECK.Tim1=0;
      VAL.Mode = 2;
      INT_CHECK.Eit5 = 0;    
    }
    if(INT_CHECK.Eit6==1){  //255 ����
      /* Ÿ�̸� ���� �� ��� ���� */
      TCCR3A = 0b10000010; TCCR3B = 0b00000100; TCCR3C = 0x00;
      OCR3AH = 0x00; OCR3AL = 0x7F;
      VAL.Mode = 3;
      INT_CHECK.Eit6= 0;    
    }
    if(INT_CHECK.Eit7==1){  //255 ����
      /* Ÿ�̸� ���� �� ��� ���� */
      TCCR3A = 0b10000010; TCCR3B = 0b00001100; TCCR3C = 0x00;
      OCR3AH = 0x00; OCR3AL = 0x7F;
      VAL.Mode = 3;
      INT_CHECK.Eit7 = 0;    
    } /* �ܺ� ���ͷ�Ʈ Ȯ�� ���� */
  } /* ���ѷ��� ���� */ 
} /* ���� �Լ� ���� */ 

/* ���� ���� �Լ� ���� */
void Start_main(void){ 
  /* ��Ʈ ���� ���� ���� led���׸�Ʈ ǥ�� �����ͽ�Ʈ���� ���� �۵�����Ȯ�� */
  DDRB = 0xF0; DDRD = 0xF0; DDRG = 0x0F;
     
  /* USART ���� */
  UCSR0A = 0x0; UCSR0B = 0b10011000; UCSR0C = 0b00000110; UBRR0H = 0; UBRR0L = 103;  
  
  /* Ÿ�̸� ���� �������� ����   */
  TIMSK=0x51; TCCR0=0x07; TCNT0=178;     
  TCCR1A = 0x00; TCCR1B = 0x00;
  TCCR3A = 0b00001011; TCCR3B = 0b00000100; TCCR3C = 0x00; 
  TCNT3H = 0x0; TCNT3L = 0x0;
    
  /* �ܺ� ���ͷ�Ʈ ���� 2���� ������ �б�  */
  EIMSK = 0xF0; EICRB = 0b10111011;
  
  /* ���� ���ͷ�Ʈ Ȱ��ȭ |�� �����ϱ� �� �� */
  SREG|=0x80;                                   
  
  /* �ʱ�ȭ�� �Ϸ�� ������ 7���׸�Ʈ ���÷��� */
  while(TIM_CHECK.Tim0<300) Segment_7(VAL.Year);
} /* ���� ���� �Լ� ���� */

/* 7���׸�Ʈ ���÷��̸� �����ϴ� �Լ� */
void Segment_7(U32 N){ 
  /* �Էµ� ���� �� �ڸ����� ������ �����մϴ�. */
  U8 N1000 = N/1000;
  U8 N100 = (N%1000)/100; 
  U8 N10 = (N%100)/10; 
  U8 N1 = N%10;
  switch(TIM_CHECK.Tim01){  /* 7���׸�Ʈ ���÷��� ���� */
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
} /* 7���׸�Ʈ ���÷��� �Լ� ���� */

/* �µ��� �����ϰ� ���÷����ϴ� �Լ� */
void AD_temp(U32 val) {  
  /* �µ��� ����ϰ� �� �ڸ����� ������ �����մϴ�. */
  float fval;  int ival, buf;  unsigned char N10, N1, N01;    
  fval = (float)val * 5.0 / 1024.0;  ival = (int)(fval * 1000.0 + 0.5);
  N10 = ival / 100;  buf = ival % 100;   N1 = buf / 10;  N01 = buf % 10;
                                      
  /* �ð��� ���� ���÷��̸� �����մϴ�. */
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
} /* �µ� ���÷��� �Լ� ���� */

/* USART ����� �����ϴ� �Լ� */
void Usart_polling(U32 A){  
  /* USART ����� �����մϴ�. */
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
} /* USART ��� �Լ� ���� */

/* �ܺ� ���ͷ�Ʈ �ڵ鷯 */
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

/* Ÿ�̸� 0 �����÷ο� �ڵ鷯 */
interrupt [TIM0_OVF] void Timer_0(void){  
  SREG&=0x7F;
  TCNT0=178;
  TIM_CHECK.Tim0++;
  TIM_CHECK.Tim01=TIM_CHECK.Tim0%4;
  TIM_CHECK.Tim02=TIM_CHECK.Tim0%3;
  SREG|=0x80;
}

/* Ÿ�̸� 2 �����÷ο� �ڵ鷯 */
interrupt [TIM2_OVF] void Timer_2(void){  
  SREG&=0x7F;//���ͷ�Ʈ ���°�
  
  TCNT2=217;// ���� ��Ȯ�ϰ� �۵��ϱ� ���ؼ� �ʱⰪ ���� 
  TIM_CHECK.Tim2++;
  
  SREG|=0x80;//���ͷ�Ʈ ����
}

/* Ÿ�̸� 1 �� ��ġ �ڵ鷯 */
interrupt [TIM1_COMPA] void Timer_1(void){  
  SREG&=0x7F;
  TIM_CHECK.Tim1++;
  SREG|=0x80;
}









































/****************************************************************************************************************************/
/* project :                                                                                             */                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       
/* Name : ����ȣ                                                                                                                     */
/* Modify :                                                                                                                   */
/* Date :                                                                                                                   */
/* Description :                                                                                                             */    
/****************************************************************************************************************************/
/*
#include <mega128.h> // ATmega128 ����ũ����Ʈ�ѷ� ���� ��� ����  //���� 2�� (4)���� ����// 
#include <delay.h> // ������ �Լ� ���� ��� ����
#include <stdio.h> // ǥ�� ����� ���� ��� ����
#include <stdlib.h> // ǥ�� ���̺귯�� ���� ��� ����
#include <math.h> // ���� ���� �Լ��� ����ϱ� ���� ��� ����

typedef unsigned char U8; // 8��Ʈ ��ȣ ���� �������� U8�� ����
typedef unsigned short U16; // 16��Ʈ ��ȣ ���� �������� U16�� ����
typedef unsigned int U32; // 32��Ʈ ��ȣ ���� �������� U32�� ����

const U8 seg_pat[10] = {0x3f, 0x06, 0x5b, 0x4f, 0x66, 0x6d, 0x7d, 0x07, 0x7f, 0x6f}; // 7���׸�Ʈ ������ ������ �迭 ���� �� �ʱ�ȭ

volatile U8 EINT4_FLAG_BIT = 0; // �ܺ� ���ͷ�Ʈ 4�� �÷��� ��Ʈ�� ��Ÿ���� ���� ���� �� �ʱ�ȭ
volatile U8 TIMER2_OVF_COUNT = 0; // Ÿ�̸� 2 �����÷ο� ī��Ʈ�� ��Ÿ���� ���� ���� �� �ʱ�ȭ

void Seg4_out(U8 N1, U8 N10, U8 N100, U8 N1000); // 7���׸�Ʈ ��� �Լ��� ������Ÿ�� ����
void displayBirthday(void); // ������ ǥ���ϴ� �Լ��� ������Ÿ�� ����
void displayVoltage(U16 voltage); // ������ ǥ���ϴ� �Լ��� ������Ÿ�� ����
void UART_Transmit(U8 data); // UART�� ���� �����͸� �����ϴ� �Լ��� ������Ÿ�� ����

interrupt [TIM2_OVF] void TIMER2_OVF_int(void); // Ÿ�̸� 2 �����÷ο� ���ͷ�Ʈ ���� ��ƾ�� ������Ÿ�� ����
interrupt [TIM1_COMPA] void TIMER1_COMPA_int(void); // Ÿ�̸� 1 COMPA ���ͷ�Ʈ ���� ��ƾ�� ������Ÿ�� ����
interrupt [EXT_INT6] void external_int6(void); // �ܺ� ���ͷ�Ʈ 6 ���ͷ�Ʈ ���� ��ƾ�� ������Ÿ�� ����
interrupt [EXT_INT7] void external_int7(void); // �ܺ� ���ͷ�Ʈ 7 ���ͷ�Ʈ ���� ��ƾ�� ������Ÿ�� ����

void main(void) {
    DDRB = 0xF0; // ��Ʈ B�� 4~7�� ���� ������� ����
    DDRD = 0xF0; // ��Ʈ D�� 4~7�� ���� ������� ����
    DDRG = 0x0F; // ��Ʈ G�� 0~3�� ���� ������� ����

    PORTB = 0x0; // ��Ʈ B ��� �������� �ʱ�ȭ 
    PORTD = 0x0; // ��Ʈ D ��� �������� �ʱ�ȭ
    PORTG = 0x0F; // ��Ʈ G ��� ���������� ���� 4��Ʈ�� �����Ͽ� 7���׸�Ʈ ������ ��

    displayBirthday(); // ������ ǥ���ϴ� �Լ� ȣ��

    EIMSK = 0b01100000; // �ܺ� ���ͷ�Ʈ 4, 6, 7 Ȱ��ȭ
    EICRB = 0b00101000; // �ܺ� ���ͷ�Ʈ 4�� ��� ����, �ܺ� ���ͷ�Ʈ 6�� ��� ����, �ܺ� ���ͷ�Ʈ 7�� �ϰ� �������� Ʈ���ŵ�

    TIMSK = 0b01000000; // Ÿ�̸� 2 �����÷ο� ���ͷ�Ʈ Ȱ��ȭ
    TCCR2 = 0b00000111; // Ÿ�̸� 2 ����: �����÷ο� ���, ���������Ϸ� 1024

    TCCR1A = 0; // Ÿ�̸� 1 ����: ���� ���
    TCCR1B = 0b00001000; // Ÿ�̸� 1 ����: CTC ���, ���������Ϸ� 256
    OCR1AH = 0x0D; // Ÿ�̸� 1�� �񱳰� ���� (3400 msec)
    OCR1AL = 0xA0;

    // UART ����
    UCSR0A = 0x00;
    UCSR0B = 0b00001000;
    UCSR0C = 0b00000110;

    UBRR0H = 0;
    UBRR0L = 0x67;

    SREG |= 0x80; // ���� ���ͷ�Ʈ Ȱ��ȭ

    while (1) {
        // ���� ���α׷� ����
    }
}

void Seg4_out(U8 N1, U8 N10, U8 N100, U8 N1000) {
    U8 i;
    for (i = 0; i < 40; i++) { // 7���׸�Ʈ ��� �ݺ�
        PORTG = 0b00001000; // DIG4 Ȱ��ȭ
        PORTD = ((seg_pat[N1] & 0x0F) << 4) | (PORTD & 0x0F); // 1�� �ڸ��� ����
        PORTB = (seg_pat[N1] & 0x70) | (PORTB & 0x0F); // 1�� �ڸ��� ����
        delay_ms(2);
        PORTG = 0b00000100; // DIG3 Ȱ��ȭ
        PORTD = ((seg_pat[N10] & 0x0F) << 4) | (PORTD & 0x0F); // 10�� �ڸ��� ����
        PORTB = (seg_pat[N10] & 0x70) | (PORTB & 0x0F); // 10�� �ڸ��� ����
        delay_ms(2);
        PORTG = 0b00000010; // DIG2 Ȱ��ȭ
        PORTD = ((seg_pat[N100] & 0x0F) << 4) | (PORTD & 0x0F); // 100�� �ڸ��� ����
        PORTB = (seg_pat[N100] & 0x70) | (PORTB & 0x0F); // 100�� �ڸ��� ����
        delay_ms(2);
        PORTG = 0b00000001; // DIG1 Ȱ��ȭ
        PORTD = ((seg_pat[N1000] & 0x0F) << 4) | (PORTD & 0x0F); // 1000�� �ڸ��� ����
        PORTB = (seg_pat[N1000] & 0x70) | (PORTB & 0x0F); // 1000�� �ڸ��� ����
        delay_ms(2);
    }
}

void displayBirthday(void) {
    Seg4_out(1, 9, 9, 8); // ���� ǥ��: 1998
    delay_ms(20); // 2�� ������
    Seg4_out(1, 2, 1, 1); // ���� ǥ��: 1211
    delay_ms(20); // 2�� ������
}

void displayVoltage(U16 voltage) {
    U8 temp_str[5];
    sprintf(temp_str, "%d.%d", voltage / 10, voltage % 10); // ���� ���� ���ڿ��� ��ȯ�Ͽ� ����
    Seg4_out(temp_str[3] - '0', temp_str[2] - '0', temp_str[1] - '0', temp_str[0] - '0'); // 7���׸�Ʈ�� ���� �� ǥ��
}

void UART_Transmit(U8 data) {
    while (!(UCSR0A & (1 << UDRE0))); // ���� ���۰� ������� ������ ���
    UDR0 = data; // ������ ����
}

interrupt [TIM2_OVF] void TIMER2_OVF_int(void) {
    ++TIMER2_OVF_COUNT; // Ÿ�̸� 2 �����÷ο� ī��Ʈ ����
}

interrupt [TIM1_COMPA] void TIMER1_COMPA_int(void) {
    U16 voltage = rand() % 1024; // ������ ���� �� ���� (0 ~ 1023)
    displayVoltage(voltage); // ���� �� ǥ��
    UART_Transmit(voltage >> 8); // ���� 8��Ʈ ����
    UART_Transmit(voltage & 0xFF); // ���� 8��Ʈ ����
}

interrupt [EXT_INT6] void external_int6(void) {
    TCCR3A = 0b10000010; // Ÿ�̸� 3 PWM ��� 6 ����
    TCCR3B = 0b00011001; // Ÿ�̸� 3 ���������Ϸ� 1, Fast PWM
    OCR3AH = 0;
    OCR3AL = 0xFF * (TIMER2_OVF_COUNT % 100) / 100; // ������ ������ 2�ڸ��� ���� ��Ƽ ����Ŭ ����
    OCR3BH = 0;
    OCR3BL = 0xFF * (TIMER2_OVF_COUNT % 100) / 100; // ������ ������ 2�ڸ��� ���� ��Ƽ ����Ŭ ����
}

interrupt [EXT_INT7] void external_int7(void) {
    TCCR3A = 0b10000000; // Ÿ�̸� 3 ���� ���� PWM ��� 2 ����
    TCCR3B = 0b00001001; // Ÿ�̸� 3 ���������Ϸ� 1
    OCR3AH = 0;
    OCR3AL = 0xFF * (TIMER2_OVF_COUNT % 100) / 100; // ������ ������ 2�ڸ��� ���� ��Ƽ ����Ŭ ����
    OCR3BH = 0;
    OCR3BL = 0xFF * (TIMER2_OVF_COUNT % 100) / 100; // ������ ������ 2�ڸ��� ���� ��Ƽ ����Ŭ ����
}
/*
#include <mega128.h>        // AVR ����ũ����Ʈ�ѷ� ATmega128 ��� ���� 2�� (2)���� ���� 
#include <delay.h>          // ������ �Լ��� ����ϱ� ���� ��� ����
#include <stdio.h>          // ǥ�� ����� �Լ� ��� ����
#include <stdlib.h>         // ǥ�� ���̺귯�� �Լ� ��� ����
#include <math.h>           // ���� �Լ� ��� ����

typedef unsigned char U8;   // 8��Ʈ ��ȣ ���� ���� ���� ����
typedef unsigned short U16;  // 16��Ʈ ��ȣ ���� ���� ���� ����
typedef unsigned int U32;    // 32��Ʈ ��ȣ ���� ���� ���� ����

const U8 seg_pat[10] = {0x3f, 0x06, 0x5b, 0x4f, 0x66, 0x6d, 0x7d, 0x07, 0x7f, 0x6f};  // 7���׸�Ʈ ǥ�� ���� �迭

volatile U8 EINT4_FLAG_BIT = 0;     // �ܺ� ���ͷ�Ʈ 4 �÷��� ���� �ʱ�ȭ
volatile U8 TIMER2_OVF_COUNT = 0;   // Ÿ�̸�2 �����÷ο� ī��Ʈ ���� �ʱ�ȭ

void Seg4_out(U8 N1, U8 N10, U8 N100, U8 N1000);   // 7���׸�Ʈ ��� �Լ� ����
void displayBirthday(void);                        // ������ 7���׸�Ʈ�� ����ϴ� �Լ� ����
void displayVoltage(U16 voltage);                  // ������ 7���׸�Ʈ�� ����ϴ� �Լ� ����
void UART_Transmit(U8 data);                       // UART�� ���� �����͸� �����ϴ� �Լ� ����

interrupt [TIM2_OVF] void TIMER2_OVF_int(void);    // Ÿ�̸�2 �����÷ο� ���ͷ�Ʈ �Լ� ����
interrupt [TIM1_COMPA] void TIMER1_COMPA_int(void);  // Ÿ�̸�1 Compare A ��ġ ���ͷ�Ʈ �Լ� ����

void main(void) {
    DDRB = 0xF0;    // ��ƮB�� ���� 4��Ʈ�� ������� ����
    DDRD = 0xF0;    // ��ƮD�� ���� 4��Ʈ�� ������� ����
    DDRG = 0x0F;    // ��ƮG�� ���� 4��Ʈ�� ������� ����

    PORTB = 0x0;    // ��ƮB ��� �ʱ�ȭ
    PORTD = 0x0;    // ��ƮD ��� �ʱ�ȭ
    PORTG = 0x0F;   // ��ƮG ��� �ʱ�ȭ (���� �ֳ�� 7���׸�Ʈ ���)

    displayBirthday();  // ���� ���� ���� �� ������ 7���׸�Ʈ�� ǥ��

    EIMSK = 0b00100000; // �ܺ� ���ͷ�Ʈ 5 Ȱ��ȭ
    EICRB = 0b00001000; // �ܺ� ���ͷ�Ʈ 5�� �ϰ� �������� ����

    TIMSK = 0b01000000; // Ÿ�̸�2 �����÷ο� ���ͷ�Ʈ Ȱ��ȭ
    TCCR2 = 0b00000111; // Ÿ�̸�2: �����÷ο� ���, ���������Ϸ� 1024

    TCCR1A = 0;         // Ÿ�̸�1: �Ϲ� ���
    TCCR1B = 0b00001000; // Ÿ�̸�1: CTC ���, ���������Ϸ� 256
    OCR1AH = 0x0D;      // �� ��ġ �� ���� (3400msec)
    OCR1AL = 0xA0;

    // UART ����
    UCSR0A = 0x00;
    UCSR0B = 0b00001000;    // �۽� ������ UART ����
    UCSR0C = 0b00000110;    // �񵿱� ���, 8��Ʈ ������, 1��Ʈ ���� ��Ʈ

    UBRR0H = 0;
    UBRR0L = 0x67;          // 9600 ��������Ʈ ����

    SREG |= 0x80;   // ���� ���ͷ�Ʈ Ȱ��ȭ

    while (1) {
        // ���� ����, ���ͷ�Ʈ���� ó���� ������ ��ٸ�
    }
}

void Seg4_out(U8 N1, U8 N10, U8 N100, U8 N1000) {
    U8 i;
    for (i = 0; i < 30; i++) { // 30�� �ݺ�
        PORTG = 0b00001000; // DIG4 ����
        PORTD = ((seg_pat[N1] & 0x0F) << 4) | (PORTD & 0x0F);  // 1�� �ڸ� ���
        PORTB = (seg_pat[N1] & 0x70) | (PORTB & 0x0F);         // 1�� �ڸ� ���
        delay_ms(2);
        PORTG = 0b00000100; // DIG3 ����
        PORTD = ((seg_pat[N10] & 0x0F) << 4) | (PORTD & 0x0F); // 10�� �ڸ� ���
        PORTB = (seg_pat[N10] & 0x70) | (PORTB & 0x0F);        // 10�� �ڸ� ���
        delay_ms(2);
        PORTG = 0b00000010; // DIG2 ����
        PORTD = ((seg_pat[N100] & 0x0F) << 4) | (PORTD & 0x0F); // 100�� �ڸ� ���
        PORTB = (seg_pat[N100] & 0x70) | (PORTB & 0x0F);        // 100�� �ڸ� ���
        delay_ms(2);
        PORTG = 0b00000001; // DIG1 ����
        PORTD = ((seg_pat[N1000] & 0x0F) << 4) | (PORTD & 0x0F); // 1000�� �ڸ� ���
        PORTB = (seg_pat[N1000] & 0x70) | (PORTB & 0x0F);        // 1000�� �ڸ� ���
        delay_ms(2);
    }
}

void displayBirthday(void) {
    Seg4_out(1, 9, 9, 8); // ������ ó�� 4�ڸ� ǥ�� (1998)
    delay_ms(20); // 2�� ���
    Seg4_out(1, 2, 1, 1); // ������ ������ 4�ڸ� ǥ�� (1211)
    delay_ms(20); // 2�� ���
}

void displayVoltage(U16 voltage) {
    U8 temp_str[5]; // �ӽ� ���ڿ� �迭
    sprintf(temp_str, "%d.%d", voltage / 10, voltage % 10); // ������ ���ڿ��� ��ȯ
    Seg4_out(temp_str[3] - '0', temp_str[2] - '0', temp_str[1] - '0', temp_str[0] - '0'); // �� �ڸ��� �°� 7���׸�Ʈ�� ���
}

void UART_Transmit(U8 data) {
    while (!(UCSR0A & (1 << UDRE0))); // ���� ������ ������ ���
    UDR0 = data; // ������ ����
}

interrupt [TIM2_OVF] void TIMER2_OVF_int(void) {
    ++TIMER2_OVF_COUNT; // �����÷ο� ī��Ʈ ����
}

interrupt [TIM1_COMPA] void TIMER1_COMPA_int(void) {
    // ADC�� ����Ͽ� ������ ���� (10��Ʈ ADC ����)
    // �ùķ��̼ǵ� ���� �� (0-1023)
    U16 voltage = rand() % 1024;
    displayVoltage(voltage); // ������ ���

    // ���� ���� UART�� ����
    UART_Transmit(voltage >> 8); // ���� 8��Ʈ ����
    UART_Transmit(voltage & 0xFF); // ���� 8��Ʈ ����
}
/*�ι���ģ�� 2�� (1)���� 
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


/*ó�� ��ģ �ڵ� 1������ 
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
    
    EIMSK = 0b11110000;                          //���ͷ�Ʈ ��� ���� ���� �������ͷ� INT4,5,6,7 enable
    EICRB = 0b10111011;                          //INT4,5,6,7�� B�� ���� Interrupt trigger ��� ����(7fa,6ri,5fa,4ri)              
    SREG |= 0x80;                                //status resister bit7(MSB)�� 1���� �����Ͽ� ��� ���ͷ�Ʈ�� ���(global interrupt enable),OR�� ����Ͽ� ��������Ʈ�� �״��

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

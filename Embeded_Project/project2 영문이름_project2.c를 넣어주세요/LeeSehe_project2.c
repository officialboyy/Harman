/***************************************************************************/
/*       name     : project2.c                                            */
/*       Modified and programmed by SH LEE                                 */
/*       Date     : 2024. 04.02 first edited                               */
/*       Description : project2 (ATmega128A 8-BIT MCU)                    */
/***************************************************************************/

#include <mega128a.h> /*[Load header file]*/ 
#include "D:\Avrtest\leesehe.h"

FLAG_INT_CHECK INT_CHECK = {0,0,0,0,0};
FLAG_TIM_CHECK TIM_CHECK;
VAL_32BIT VAL = {0,0,1999,225};

void Segment_7(U32 N); /*[Declare Funtion]*/
void AD_temp(U32 val);
void Usart_polling(U32 A);
void Start_main(void);

void main(void) /*[main] start*/ 
{
  U8 i=0;
  Start_main();
  
while (1) /*[While(1)] start*/ 
{
  if (VAL.Mode !=2){ 
    TCCR1A = 0x00; TCCR1B = 0x00;
  }
  if (VAL.Mode !=1){
    TCCR2=0x00; TIM_CHECK.Tim02 = 0;
    if(VAL.Mode!=0) PORTG = 0x00;
  }
  
  switch(VAL.Mode){ /*[Mode Switch] start*/
    case 0:
      Segment_7(VAL.Birth);
    break;
    case 1:
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
    case 2:
        if(TIM_CHECK.Tim1>500){
        TIM_CHECK.Tim1=0; 
        VAL.U_Mode = 1;
        }
        Usart_polling(adc_val);           
    break;
    default:
    break; 
  } /*[Mode Switch] end*/
  if(INT_CHECK.Eit4==1){ /*[check interrupt] start*/
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
    ADMUX = 0x06; ADCSRA = 0x87;
    TCCR1A = 0x40; TCCR1B = 0x0D; TCCR1C = 0x0;
    OCR1AH = 0x00; OCR1AL = 0x4D; 
    TIM_CHECK.Tim1=0;
    VAL.Mode = 2;
    INT_CHECK.Eit5 = 0;    
  }
  if(INT_CHECK.Eit6==1){  //255 분주
    TCCR3A = 0b10000010; TCCR3B = 0b00000100; TCCR3C = 0x00;
    OCR3AH = 0x00; OCR3AL = 0x7F;
    VAL.Mode = 3;
    INT_CHECK.Eit6= 0;    
  }
  if(INT_CHECK.Eit7==1){  //255 분주
    TCCR3A = 0b10000010; TCCR3B = 0b00001100; TCCR3C = 0x00;
    OCR3AH = 0x00; OCR3AL = 0x7F;
    VAL.Mode = 3;
    INT_CHECK.Eit7 = 0;    
  } /*[check interrupt] end*/
} /*[While(1)] end*/ 
} /*[main] end*/ 
void Start_main(void){ /*[Function] start*//*[Declare Register]*/ 
  DDRB = 0xF0; DDRD = 0xF0; DDRG = 0x0F;
     
  UCSR0A = 0x0; UCSR0B = 0b10011000; UCSR0C = 0b00000110; UBRR0H = 0; UBRR0L = 103;  
  
  TIMSK=0x51; TCCR0=0x07; TCNT0=178;     
  
  TCCR1A = 0x00; TCCR1B = 0x00;
  
  TCCR3A = 0b00001011; TCCR3B = 0b00000100; TCCR3C = 0x00; 
  TCNT3H = 0x0; TCNT3L = 0x0;
    
  EIMSK = 0xF0; EICRB = 0b10111011;
  
  SREG|=0x80;                                   
  
  while(TIM_CHECK.Tim0<300) Segment_7(VAL.Year);
}
void Segment_7(U32 N){ 
  U8 N1000 = N/1000;
  U8 N100 = (N%1000)/100; 
  U8 N10 = (N%100)/10; 
  U8 N1 = N%10;
  switch(TIM_CHECK.Tim01){  /*[7segment_4]*/ 
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
}
void AD_temp(U32 val) {  /*[7segment_3(temp)]*/  
  float fval;  int ival, buf;  unsigned char N10, N1, N01;    
  fval = (float)val * 5.0 / 1024.0;  ival = (int)(fval * 1000.0 + 0.5);
  N10 = ival / 100;  buf = ival % 100;   N1 = buf / 10;  N01 = buf % 10;
                                      
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
}
void Usart_polling(U32 A){  /*[Usart_Polling]*/ 
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
} /*[Function] end*/
interrupt[EXT_INT4] void external_int4(void){  /*[External interrupt] start*/
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
} /*[External interrupt] end*/
interrupt [TIM0_OVF] void Timer_0(void){  /*[8bit_OVF_TIMER0]*/
  SREG&=0x7F;
  TCNT0=178;
  TIM_CHECK.Tim0++;
  TIM_CHECK.Tim01=TIM_CHECK.Tim0%4;
  TIM_CHECK.Tim02=TIM_CHECK.Tim0%3;
  SREG|=0x80;
}
interrupt [TIM2_OVF] void Timer_2(void){  /*[8bit_OVF_TIMER2]*/
  SREG&=0x7F;
  
  TCNT2=217;
  TIM_CHECK.Tim2++;
  
  SREG|=0x80;
}
interrupt [TIM1_COMPA] void Timer_1(void){  /*[16bit_CTC_TIMER1]*/
  SREG&=0x7F;
  TIM_CHECK.Tim1++;
  SREG|=0x80;
}





/*
 * UART.c
 *
 * Created: 2024-04-01 오전 9:44:54
 * Author: SAMSUNG
 */


#include <mega128a.h>
#include "D:\aaaaaaa\test.h"

_BYTE_FIELD FLAG_ALL;
_BYTE_FIELD1 FLAG_ALL1;
 
U8 string[] = "[UART Experiment]";  
U8 string1[] = "  Press the Character";
U8 string_LED[] = "  LED Test : L";
U8 string_7seg[] = "  7seg Test : S";
U8 string_main[] = "  Main Menu : M";
U8 string_LED_1[] = "1. Increasing LED";
U8 string_LED_2[] = "2. Decreasing LED";
U8 string_7seg_3[] = "3. Up Counting 7segs";
U8 string_7seg_4[] = "4. Down Counting 7segs";
U8 string_7seg_5[] = "5. Display your ID";

const char seg_pat[10]= {0x3f, 0x06, 0x5b, 0x4f, 0x66, 0x6d, 0x7d, 0x07, 0x7f, 0x6f};

U8 UART_Rx_data=0xFF;
U8 Main_flag=0;
U8 LED_flag=0;
U8 Seg_flag=0;
U8 Delay_Flag =0;
U8 Ic_LED=0;
U8 Dc_LED=0;
U8 Ic_Seg=0;
U8 Dc_Seg=0;
U8 ID_Seg=0;

U8 flag=0;
U8 *pStr;
U8 led =0xFE;
U8 led2 = 0x7F;
U16 Seg_value=7777;

void Main_string(void);
void Putch(char data);
void LED_String(void);
void Seg_String(void);
void DisplaySeg(int value);


void main(void)
{
    DDRC=0xFF; PORTC=led;
    DDRB=0xF0; DDRD=0xF0;
    DDRG=0x0F; PORTG= 0x00; 
    
    UCSR0A = 0x0;
    UCSR0B = 0b10011000;
    UCSR0C = 0b00000110;
    
    UBRR0H = 0;
    UBRR0L = 103; 
                 
    TIMSK= 0x01 ; // TOIE0 = 1 타이머 카운터 0 오버플로우 인터럽트 enable
    TCCR0 =0x07 ; // 일반모드 , 1024 분 주
    TCNT0 = 0x00; //타이머 카운터 0 레지스터 초기값
      
    TCCR2 =0x05 ; // 일반모드 , 1024 분 주
    TCNT2 = 194; //타이머 카운터 2
    TIMSK |= 0x40;

    Main_string();   
    SREG |= 0x80;
                   
    FLAG_ALL.FLAG_EINT7=0;    
    FLAG_ALL1.FLAG4=15;
        
    while (1){  
        if(FLAG_ALL.FLAG_EINT7==0) {
            PORTC=0xfe;
            FLAG_ALL.FLAG_EINT7=1;  
        }      
        else { 
            PORTC=0x7f;
            FLAG_ALL.FLAG_EINT7=0;
        }   
        if(FLAG_ALL1.FLAG4==15) PORTC=0x55;  
      
//        if(Seg_flag==1)DisplaySeg(Seg_value); 
       
        if(flag==1){
           if(UART_Rx_data=='L'||UART_Rx_data=='l')UART_Rx_data='L';
           if(UART_Rx_data=='S'||UART_Rx_data=='s')UART_Rx_data='S';
           if(UART_Rx_data=='M'||UART_Rx_data=='m'){
             UART_Rx_data='M';
             Main_flag=1;
           } 
           switch(UART_Rx_data){
            case 'L': 
              LED_flag=1;
              if(Seg_flag==0) LED_String(); 
              break;
            case 'S': 
                Seg_flag=1;
                if(LED_flag==0){
                    Seg_String(); 
                    Seg_value=7777;
                }    
                break;
            case 'M':
                Main_flag=1;
                 LED_flag=0; Seg_flag=0;
                 Ic_LED=0; Dc_LED=0;
                 led = 0xFE; led2 = 0x7F;  
                 PORTG=0x00;
                 Main_string();  
                 Seg_value=7777;
                break;
            default:
            break;
           }
                              
          if((Main_flag==1) && (LED_flag==1)){ 
            Seg_flag=0;  
            switch(UART_Rx_data) {
              case '1':
                Ic_LED=1;  Dc_LED=0;
                break;                           
              case '2': 
                Ic_LED=0;  Dc_LED=1;
                break;  
              //case 'M'은 위에 'M'에서 실행하도록 만들었음
              default:
              break;
            }                            
          }//end of main_flag & LED_flag    
     
         if((Main_flag==1) && (Seg_flag==1)){
            if(Seg_flag==1)DisplaySeg(Seg_value); 
            LED_flag=0;
            switch(UART_Rx_data){
             case '3':
                Ic_Seg=1; Dc_Seg=0;  
                if(ID_Seg==1){  
                 ID_Seg=0; Seg_value=7777;
                }    
//                Seg_value=7777;    
                 break;
             case '4':
                Ic_Seg=0; Dc_Seg=1;   
                if(ID_Seg==1){  
                 ID_Seg=0; Seg_value=7777;
                } 
//                Seg_value=7777;
                break;               
             case '5':                         
                Ic_Seg=0; Dc_Seg=0; ID_Seg=1;
                break;                 
             case 'M':
                Main_flag=1;
                LED_flag=0;
                Seg_flag=0;
                Main_string();  
                Seg_value=7777;
                break;
            default:
            break;
            }  
         } //end of main_flag & LED_flag  
                   
        flag=0;
     } //end of flag if             
    }
}

void DisplaySeg(int value){

    int N1000, N100, N10, N1, buf;
    N1000 = value / 1000; // 1000자리 추출
    buf = value % 1000;
    N100 = buf / 100; // 100자리 추출
    buf = buf % 100; 
    N10 = buf / 10; // 10자리 추출
    N1 = buf % 10; // 1자리 추출

    
    switch(Delay_Flag){
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
    break;
    
    default:
    break;
    }  
}

void Main_string(void){

    while((UCSR0A & 0x20) == 0x0); UDR0 =0x0D;             
    
    pStr = string;               
    while(*pStr != 0) Putch(*pStr++);                      
    while((UCSR0A & 0x20) == 0x0); UDR0 =0x0D;            
    
    pStr = string1;               
    while(*pStr != 0) Putch(*pStr++);                      
    while((UCSR0A & 0x20) == 0x0); UDR0 =0x0D;
    
    pStr = string_LED;               
    while(*pStr != 0) Putch(*pStr++);
    while((UCSR0A & 0x20) == 0x0); UDR0 =0x0D;
    
    pStr = string_7seg;               
    while(*pStr != 0) Putch(*pStr++);
    while((UCSR0A & 0x20) == 0x0); UDR0 =0x0D;

    pStr = string_main;               
    while(*pStr != 0) Putch(*pStr++);
    while((UCSR0A & 0x20) == 0x0); UDR0 =0x0D;    

}

void LED_String(void){

    while((UCSR0A & 0x20) == 0x0); UDR0 =0x0D;  
    
    pStr = string_LED_1;               
    while(*pStr != 0) Putch(*pStr++);
    while((UCSR0A & 0x20) == 0x0); UDR0 =0x0D;

    pStr = string_LED_2;               
    while(*pStr != 0) Putch(*pStr++);
    while((UCSR0A & 0x20) == 0x0); UDR0 =0x0D;
    
    pStr = string_main;               
    while(*pStr != 0) Putch(*pStr++);
      
}

void Seg_String(void){

    while((UCSR0A & 0x20) == 0x0); UDR0 =0x0D;  
    
    pStr = string_7seg_3;               
    while(*pStr != 0) Putch(*pStr++);
    while((UCSR0A & 0x20) == 0x0); UDR0 =0x0D;

    pStr = string_7seg_4;               
    while(*pStr != 0) Putch(*pStr++);
    while((UCSR0A & 0x20) == 0x0); UDR0 =0x0D;
    
    pStr = string_7seg_5;               
    while(*pStr != 0) Putch(*pStr++);
    while((UCSR0A & 0x20) == 0x0); UDR0 =0x0D;  
    
    pStr = string_main;               
    while(*pStr != 0) Putch(*pStr++);
      
}


void Putch(char data)                 
{
    while((UCSR0A & 0x20) == 0x0);      
    UDR0 = data;                              
}


interrupt [USART0_RXC] void usart_main(void)
{
    SREG &= 0x7F;
     
    UART_Rx_data = UDR0;                                      
    flag=1;
        
    SREG |= 0x80;            
}

interrupt [TIM0_OVF] void timer_int1(void)
{
    SREG&=0x7F;
    
    TCNT0=0;
    
    if(Ic_LED==1){
        led = (led << 1) | 0x01;
        if(led == 0xFF) led = 0xFE;
        PORTC = led;
    } 
       
    if(Dc_LED==1){
        led2 = (led2 >> 1) | 0x80;
        if(led2 == 0xFF) led2 = 0x7F;
        PORTC = led2;
    }
    
    SREG|=0x80;
}

interrupt [TIM2_OVF] void timer_int2(void)
{
    SREG&=0x7F;
    
    TCNT2 = 194;
    
    if(Delay_Flag==5){
        Delay_Flag=0;
        if(Ic_Seg==1){ 
            Seg_value++;
            if(Seg_value==9999) Seg_value=0;
        } 
        if(Dc_Seg==1){  
            Seg_value--;
            if(Seg_value==0) Seg_value=9999;
        }
        if(ID_Seg==1){
            Seg_value=326;
        }
    }
    Delay_Flag++; 
    
    SREG|=0x80;
}











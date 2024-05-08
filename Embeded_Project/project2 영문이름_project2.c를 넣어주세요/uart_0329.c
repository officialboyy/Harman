#include <mega128.h>

typedef unsigned char U8; 
U8 string_menu1[] = "The UART program mode";  
U8 string_menu2[] = "Please inset the number : ";  

U8 UART_Rx_data=0xff;
U8 flag=0;
U8 *pStr;

void UART_menu(void);
void Putch(char data);

void main(void)
{
	UCSR0A = 0x0;
	UCSR0B = 0b10011000; // RXCIE0 [7] =1 : 수신 완료 인터럽트 enable
	
	UCSR0C = 0b00000110; // 비동기 데이터 8비트 모드
	UBRR0H = 0; // X-TAL = 16MHz 일때, BAUD = 9600 
	UBRR0L = 103;
	SREG |= 0x80; // 전역 인터럽트 인에이블 I 비트 셋
	
	UART_menu();
	
	while(1){
		if(flag==1){
			if(UART_Rx_data >= '0' && UART_Rx_data <= '9') {
				while((UCSR0A & 0x20) == 0x0); 
//				UDR0 =0x0A;            // NEW LINE
				UDR0 =0x0D;            // RETURN
				
				while((UCSR0A & 0x20) == 0x0);     //송신 버퍼가 비어지면 UDRE0[5]= 1이 될 때까지 대기       
				UDR0 = UART_Rx_data; 
				while((UCSR0A & 0x20) == 0x0); 
//				UDR0 =0x0A;            // NEW LINE
				UDR0 =0x0D;            // RETURN
				
				pStr = string_menu2;               
				while(*pStr != 0) Putch(*pStr++);    	              // 문자열 전송
			}
			flag=0;
		}		
	}
}

void UART_menu(void){             
	
    pStr = string_menu1;               
    while(*pStr != 0) Putch(*pStr++);    	              // 문자열 전송
	while((UCSR0A & 0x20) == 0x0); UDR0 =0x0A;            // NEW LINE
	
    pStr = string_menu2;               
    while(*pStr != 0) Putch(*pStr++);    	              // 문자열 전송
    
}

void Putch(char data)		   // 한 바이트 송신         
{
    while((UCSR0A & 0x20) == 0x0);	  //UDRE0[5] = 1 송신준비완료 될 때까지 대기
    UDR0 = data;                   		  // 데이터 전송  
} 

interrupt [USART0_RXC] void usart0_rx(void) // 수신 완료 인터럽트
{
	SREG &= 0x7F; 
    UART_Rx_data = UDR0;                      			// 수신     
	flag=1;	
    SREG |= 0x80;            
}

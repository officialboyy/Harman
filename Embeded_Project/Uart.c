/*******************************************************************************************/
/*****                  Name        : Uart.c                                           *****/
/*****                  Modified and Programmed by JH Park                             *****/
/*****                  Date        : 2024. 03. 29 first edited                        *****/
/*******************************************************************************************/

#include <mega128.h>
#include <delay.h>

void Putch(char);

void main(void)
{
    unsigned char rd, dd =0;
    char string1[] = "The UART program mode";
    char string2[] = "Please Insert the Number";
    char *pStr;
    delay_ms(1000);           
    UCSR0A = 0x0;
    UCSR0B = 0b10011000;      //RXCIE[7] = 1: ���ſϷ� ���ͷ�Ʈ enable 
                              // �ۼ��ź� enable TXEN0[3]= 1, RXEN0 [4]=1
    UCSR0C = 0b00000110;      //�񵿱� ������ 8bit mode
    UBRR0H = 0;               //X-TAL = 16MHz �϶� BAUD = 9600
    UBRR0L = 103;
    pStr = string2;
    SREG |= 0x80;
    
    
    while (*pStr != 0) Putch(*pStr++);    

    while(1) 
    { 
        while((UCSR0A & 0x80) == 0x0) // RXC0 [7]bit = 1�� �� ������ ��� 
        { // ���� ���ۿ� ���ο� �����Ͱ� ���ŵǸ� RXC0 = 1
        PORTD = ((seg_pat[dd] & 0x0F) << 4) | (PORTD & 0x0F);
        PORTB = (seg_pat[dd] & 0x70 ) | (PORTB & 0x0F);
        } 
        rd = UDR0; // ���ŵǸ� while���� ���� ����, ���� ���� // ���� ������ �ٷ� RXC0 [7]bit = 0 ��
        if(rd >= '0' && rd <= '9') dd = rd - '0';
    } while (1)
    {
        unsigned char ch;
        ch = UDR0;
        if(rd >= '0' && rd <= '9') dd = rd - '\n';

    }
    
}
void Putch(char data)
{
    while ((UCSR0A & 0x20) == 0x0);
    UDR0 = data;
}

interrupt [USART0_RXC] void usart0_rx(void)         //���� �Ϸ� ���ͷ�Ʈ
{
    unsigned char rd,dd;
    
    rd = UDR0;                                     //���� 
    
    if(rd >= '0' && rd <= '9') dd = rd - '\n';
    
    while ((UCSR0A & 0x20)== 0x0);                       //UERE0 = 1�� �� ������ ��� 
    UDR0 = rd;                                           // �۽� 
}


/*
#include <mega128.h>                    // ���� 7-4)

void main(void)
{
    UCSR0A = 0X0;
    UCSR0B = 0b10011000;        // RXCIE0 [7] = 1 :  ���ſϷ� ���ͷ�Ʈ Enable
    
    UCSR0C = 0b00000110;        // �񵿱� ������ 8��Ʈ ���
    UBRR0H = 0;
    UBRR0L = 103;
    
    SREG |= 0x80;
    
    while (1);
}                                                      

interrupt [USART0_RXC] void usart0_rx(void)
{
    unsigned char ch;
    
    ch = UDR0;
    
    if (ch >= 'a' && ch <= 'z') ch = ch -'a' + 'A'; // �ҹ��� > �빮��
    else if (ch >= 'A' && ch <= 'Z') ch = ch - 'A' + 'a';   // �빮�� > �ҹ���
    
    while ((UCSR0A & 0x20) == 0x0);     // 1 �ɶ����� ��� 
    UDR0 = ch;                          // �ٽ� �۽� 
}
*/

/*
#include <mega128.h>                    // ���� 7-2)

flash unsigned char seg_pat[16]= {0x3f, 0x06, 0x5b, 0x4f, 0x66, 0x6d, 0x7d, 0x07,0x7f, 0x6f, 0x77, 0x7c, 0x39, 0x5e, 0x79, 0x71};

void main(void) 
{ 
    unsigned char rd, dd = 0; //rd �Է� data,
    DDRB = 0xF0; // ��Ʈ B ���� 4��Ʈ ��� ���� 
    DDRD = 0xF0; // ��Ʈ D ���� 4��Ʈ ��� ���� 
    DDRG = 0x0F; // ��Ʈ G ���� 4��Ʈ ��� ����
    PORTG = 0b00001000; // �� ���� ���׸�Ʈ on
    UCSR0A = 0x0; // USART �ʱ�ȭ 
    UCSR0B = 0b00010000; // ���� enable RXEN0 [4]bit=1 
    UCSR0C = 0b00000110; // �񵿱�:0, No parity: 00, ����bit 1�̸�:0, ������ 8��Ʈ ��� 
    UBRR0H = 0; // 16MHz �϶�, BAUD = 9600 
    UBRR0L = 103;
    
    while(1) 
    { 
        while((UCSR0A & 0x80) == 0x0) // RXC0 [7]bit = 1�� �� ������ ��� 
        { // ���� ���ۿ� ���ο� �����Ͱ� ���ŵǸ� RXC0 = 1
        PORTD = ((seg_pat[dd] & 0x0F) << 4) | (PORTD & 0x0F);
        PORTB = (seg_pat[dd] & 0x70 ) | (PORTB & 0x0F);
        } 
        rd = UDR0; // ���ŵǸ� while���� ���� ����, ���� ���� // ���� ������ �ٷ� RXC0 [7]bit = 0 ��
        if(rd >= '0' && rd <= '9') dd = rd - '0';
        else if(rd >= 'a' && rd <= 'f') dd= rd - 'a' + 10;
        else if(rd >= 'A' && rd <= 'F') dd = rd - 'A' + 10;
    } 
}
*/


/*
#include <mega128.h>                // ���� 7-1)
#include <delay.h>

void Putch(char);               // �۽�
void main(void)
{                                             
    char string[] = "This is USART0 control program. ^_______^ ";  
    char *pStr;                
    
    delay_ms(2000);
    UCSR0A = 0x0;
    UCSR0B = 0b00001000;       
    UCSR0C = 0b00000110;       
    UBRR0H = 0;     
    UBRR0L = 103;
    pStr = string;               
while(*pStr != 0) Putch(*pStr++);    
while(1);                           
}
 void Putch(char data)
 {
 while((UCSR0A & 0x20) == 0x0);
 UDR0 = data;                   

}
*/




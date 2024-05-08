/*******************************************************************************************/
/*****                  Name        : Uart_Experiment.c                                *****/
/*****                  Modified and Programmed by JH Park                             *****/
/*****                  Date        : 2024. 04. 01 first edited                        *****/
/*******************************************************************************************/

#include <mega128.h>

typedef unsigned char U8;
// String
U8 string_line[] = "-------------------------------"; 
U8 string_title[] = "[ UART Experiment ]";  
U8 string_press[] = "Press the Char : ";
U8 string_LED[] = "LED Test : L";
U8 string_7seg[] = "7Seg Test : S";
U8 string_main[] = "Main Menu : M";
U8 string_Up_LED[] = "1. Increasing LED";
U8 string_Down_LED[] = "2. Decreseing LED";
U8 string_Main_Menu[] = "M. Main Menu";
U8 string_LED_ok[] = "LED Test Select";
U8 string_7seg_ok[] = "7seg Test Select"; 
U8 string_Up_7seg[] = "3. Up Counting 7segs";
U8 string_Down_7seg[] = "4. Down Counting 7segs";
U8 string_DP_ID[] = "5. Display yout ID";
U8 string_Re_main[] = "Return to Main Menu";
U8 string_Up_LED_title[] = "[ Increasing LED ]";
U8 string_Down_LED_title[] = "[ Decreasing LED ]";
U8 string_Up_7seg_title[] = "[ Up Counting 7segs ]";
U8 string_Down_7seg_title[] = "[ Down Counting 7segs ]";
U8 string_DP_ID_title[] = "[ Display your ID ]";
U8 string_ID[] = "Your ID : ParkJunho";

U8 UART_Rx_data=0xff;
U8 UART_Rx_data_1=0xff;
U8 UART_Rx_data_2=0xff;
U8 UART_Rx_data_3=0xff;
U8 flag=0;
U8 LED_flag=0;
U8 seg_flag=0;
U8 main_flag=0;
U8 LED_flag_sub = 0;
U8 seg_flag_sub = 0;
U8 *pStr;

// ���� 
unsigned char led = 0xFF;
unsigned char TIM2_COMP_FLAG = 0;
unsigned char TIM0_OVF_FLAG = 0; 
unsigned char cnt = 0;
unsigned char i;

const U8 seg_pat[10] = {0x3f, 0x06, 0x5b, 0x4f, 0x66, 0x6d, 0x7d, 0x07, 0x7f, 0x6f};    // 7seg 0 ~ 9

// user �Լ� 
void UART_menu(void);
void UART_LED_menu(void);
void UART_7seg_menu(void);
void UART_Up_LED_menu(void);
void UART_Down_LED_menu(void);
void UART_Up_7seg_menu(void);
void UART_Down_7seg_menu(void);
void UART_DP_ID_menu(void);
void Putch(char data);
void Time_out(void);
void new_line(void);

// main
void main(void)
{    

    UCSR0A = 0x0;       // USART �ʱ�ȭ 
    UCSR0B = 0b10011000; // RXCIE0 [7] =1 : ���� �Ϸ� ���ͷ�Ʈ enable, [4, 3] = 1 : ���ź�, ���ۺ� enable
    
    UCSR0C = 0b00000110; // �񵿱� ������ 8��Ʈ ���
    UBRR0H = 0; // X-TAL = 16MHz �϶�, BAUD = 9600 
    UBRR0L = 103;       // �񵿱� �Ϲݸ�� ���ۼӵ� 9,600
    
    DDRC = 0xFF;        // LED enable
    PORTC = led;
    
    TIMSK = 0x81;           // tim2 �� ��ġ & tim0 overflow 
    TCCR2 = 0x0D;
    OCR2 = 255;             // �⺻ default�� = 1024�� 16.384[msec]
    TCNT2 = 0;
    
    DDRB = 0xF0;        // seg
    DDRD = 0xF0;        // seg
    DDRG = 0x0F;        
                
    EIMSK = 0b00110000;     // �ܺ� INT4 = 1, INT5 = 1
    EICRB = 0b00001010;     // �ܺ� ���ͷ�Ʈ falling edge
    TCCR0 = 0x07;           // 1024���� 
    TCNT0 = 0x00;           // Ÿ�̸�/ī����0 �������� �ʱⰪ 
    
    SREG |= 0x80; // ���� ���ͷ�Ʈ �ο��̺� I ��Ʈ ��
    
    UART_menu();        // �ʱ� ���� ���� �޴� [ UART Experiment ]
    
    while(1)
    {
        if(flag==1)     // Data �Է� �� 
        {                                                                     
            // ��/�ҹ��� ���� 
            if(UART_Rx_data == 'L' || UART_Rx_data == 'l') UART_Rx_data_1 = 'l';
            if(UART_Rx_data == 'S' || UART_Rx_data == 's') UART_Rx_data_1 = 's';
            if(UART_Rx_data == 'M' || UART_Rx_data == 'm')UART_Rx_data_1 = 'm';
            main_flag = 1;
            switch (UART_Rx_data_1)
                   {
                   case 'l': // LED Test  
                    LED_flag = 1;
                    new_line();                 // �鿩����
                    new_line();                 // �鿩����
                    pStr = string_LED_ok;       // LED Test Select ���� 
                    while(*pStr != 0) Putch(*pStr++);                      // ���ڿ� ����
                    new_line();                 // �鿩���� 
                    UART_LED_menu();            // 1, 2, M Menu
                    
                    pStr = string_press;        // Press the Char               
                    new_line();                 // �鿩����                                                           
                   break;
                    
                   case 's':
                    seg_flag = 1; 
                    new_line();                 // �鿩����
                    new_line();                 // �鿩����
                    pStr = string_7seg_ok;
                    while(*pStr != 0) Putch(*pStr++);                      // ���ڿ� ����
                    new_line();                 // �鿩����
                    UART_7seg_menu();           // 3, 4, 5, M Menu
                    
                    pStr = string_press;               
                    new_line();                 // �鿩����
                   break;
                   
                   case 'm':
                    new_line();                 // �鿩����
                    new_line();                 // �鿩����
                    PORTC = 0xFF;               // LED Off
                    PORTD = 0;                  // Seg Off
                    PORTB = 0;                  // Seg Off     
                    main_flag = 1;
                    LED_flag = 0;               
                    seg_flag = 0;
                    LED_flag_sub = 0;
                    seg_flag_sub = 0;                    
                    
                    pStr = string_Re_main;
                    while(*pStr != 0) Putch(*pStr++);                      // ���ڿ� ����
                    new_line();                 // �鿩���� 
                    UART_menu();
                    
                    pStr = string_press;               
                    new_line();                 // �鿩����
                   break;
                   } // Switch out       
            flag=0;     // flag �ʱ�ȭ 
        } // flag == 1 out
                   
        if(main_flag == 1 && LED_flag == 1)     // LED Test ���� 
        {                     
            if(flag == 1)
            {
                if(UART_Rx_data == '1') UART_Rx_data_2 = '1';
                if(UART_Rx_data == '2') UART_Rx_data_2 = '2';
                if(UART_Rx_data == 'M' || UART_Rx_data == 'm') UART_Rx_data_2 = 'm';
                switch (UART_Rx_data_2)
                {
                   case '1':
                    new_line();                 // �鿩����
                    new_line();                 // �鿩����
                    UART_Up_LED_menu();
                    
                    pStr = string_press;               
                    while(*pStr != 0) Putch(*pStr++);                     // ���ڿ� ����
                    LED_flag_sub = 0x01;
                   break;

                   case '2':
                    new_line();                 // �鿩����
                    new_line();                 // �鿩����
                    UART_Down_LED_menu();
                    LED_flag_sub = 0x02;  
                    
                    pStr = string_press;               
                    while(*pStr != 0) Putch(*pStr++);                     // ���ڿ� ����
                   break;
                   
                   case 'm':
                    new_line();                 // �鿩����
                    new_line();                 // �鿩����
                    PORTC = 0xFF;
                    PORTD = 0;
                    PORTB = 0;     
                    main_flag = 1;
                    LED_flag = 0;
                    seg_flag = 0;
                    LED_flag_sub = 0; 
                    seg_flag_sub = 0;   
                    
                    pStr = string_Re_main;
                    while(*pStr != 0) Putch(*pStr++);                      // ���ڿ� ����
                    new_line();                 // �鿩���� 
                    UART_menu();
                    
                    pStr = string_press;               
                    while(*pStr != 0) Putch(*pStr++);                     // ���ڿ� ����
                   break;
                } // Switch out
            flag = 0;   // flag �ʱ�ȭ 
            } // flag == 1 out    
            if(LED_flag_sub == 0x01)        // Select '1'
            {      
                        if (TIM2_COMP_FLAG == 1)
                        {
                            led = led << 1;
                            led = led | 0x01;   // ������ ��Ʈ set
                            if (led == 0xFF) led = 0xFE;
                            PORTC = led;
                            TIM2_COMP_FLAG = 0;            
                        }   
            }
            if(LED_flag_sub == 0x02)        // Select '2'
            {         
                        if (TIM2_COMP_FLAG == 1)
                        {
                            led = led >> 1;
                            led = led | 0x80;   // �ֻ��� ��Ʈ set
                            if (led == 0xFF) led = 0x7F;
                            PORTC = led;
                            TIM2_COMP_FLAG = 0;            
                        }
            }        
        } // LED test out         
        
        if(main_flag == 1 && seg_flag == 1)     // 7Seg Test ���� 
        {            
            if(flag == 1)
            {   
                if(UART_Rx_data == '3') UART_Rx_data_3 = '3';
                if(UART_Rx_data == '4') UART_Rx_data_3 = '4';
                if(UART_Rx_data == '5') UART_Rx_data_3 = '5';
                if(UART_Rx_data == 'M' || UART_Rx_data == 'm') UART_Rx_data_3 = 'm';
                switch (UART_Rx_data_3)
                       {
                           case '3':                     // ���ڿ� ����
                            new_line();                 // �鿩����
                            new_line();                 // �鿩����  
                            UART_Up_7seg_menu();
                            
                            pStr = string_press;               
                            while(*pStr != 0) Putch(*pStr++);                     // ���ڿ� ����
                            seg_flag_sub = 0x01; 
                           break;

                           case '4':
                            new_line();                 // �鿩����
                            new_line();                 // �鿩���� 
                            UART_Down_7seg_menu();
                            
                            pStr = string_press;               
                            while(*pStr != 0) Putch(*pStr++);                     // ���ڿ� ����
                            seg_flag_sub = 0x02;
                           break;
                           
                           case '5':
                            new_line();                 // �鿩����
                            new_line();                 // �鿩����
                            UART_DP_ID_menu();
                            pStr = string_ID;           // Select '5'
                            while(*pStr != 0) Putch(*pStr++);                      // ���ڿ� ���� �
                            new_line();                 // �鿩����
                            new_line();                 // �鿩����
                            
                            pStr = string_press;               
                            while(*pStr != 0) Putch(*pStr++);                     // ���ڿ� ����
                            seg_flag_sub = 0x03;
                           break; 
                           
                           case 'm':  
                            new_line();                 // �鿩����
                            new_line();                 // �鿩����
                            PORTC = 0xFF;
                            PORTD = 0;
                            PORTB = 0;     
                            main_flag = 1;
                            LED_flag = 0;
                            LED_flag_sub = 0;
                            seg_flag = 0;
                            seg_flag_sub = 0;
                            new_line();           
                            
                            pStr = string_Re_main;
                            while(*pStr != 0) Putch(*pStr++);                      // ���ڿ� ����
                            new_line(); 
                            UART_menu();
                            
                            pStr = string_press;               
                            while(*pStr != 0) Putch(*pStr++);                     // ���ڿ� ����
                            main_flag = 1;
                           break;
                       } // Switch out
                flag = 0;
            } // flag == 1 out
            if(seg_flag_sub == 0x01)    // Select '3'
            {   
                if(i < 0 || i > 9) i = 0; 
                Time_out();
                if(cnt >= 10)
                {
                    i++;
                    cnt = 0;
                }
            }
            if(seg_flag_sub == 0x02)    // Select '4'
            {   
                if(i < 0 || i > 9) i = 9;   
                Time_out(); 
                if(cnt >= 10)
                {
                    i--;
                    cnt = 0;
                }    
            }                                    
        } // 7seg Test out
               
    } // while(1) end
} // main end

void UART_menu(void)
{             
    pStr = string_line;               
    while(*pStr != 0) Putch(*pStr++);                      // ���ڿ� ����
    new_line();                 // �鿩����
    
    pStr = string_title;               
    while(*pStr != 0) Putch(*pStr++);                      // ���ڿ� ����
    new_line();                 // �鿩����
    
    pStr = string_press;               
    while(*pStr != 0) Putch(*pStr++);    	              // ���ڿ� ����
    new_line();                 // �鿩����
    
    pStr = string_LED;               
    while(*pStr != 0) Putch(*pStr++);    	              // ���ڿ� ����
    new_line();                 // �鿩����
    
    pStr = string_7seg;               
    while(*pStr != 0) Putch(*pStr++);    	              // ���ڿ� ����
    new_line();                 // �鿩���� 
    
    pStr = string_main;               
    while(*pStr != 0) Putch(*pStr++);    	              // ���ڿ� ����
    new_line();                 // �鿩����
    
    pStr = string_line;               
    while(*pStr != 0) Putch(*pStr++);                      // ���ڿ� ����
    new_line();                 // �鿩����
}

void UART_LED_menu(void)
{
    pStr = string_line;               
    while(*pStr != 0) Putch(*pStr++);                      // ���ڿ� ����
    new_line();                 // �鿩����
    
    pStr = string_Up_LED;               
    while(*pStr != 0) Putch(*pStr++);                      // ���ڿ� ����
    new_line();                 // �鿩����

    pStr = string_Down_LED;               
    while(*pStr != 0) Putch(*pStr++);                      // ���ڿ� ����
    new_line();                 // �鿩����
    
    pStr = string_Main_Menu;               
    while(*pStr != 0) Putch(*pStr++);                      // ���ڿ� ����
    new_line();                 // �鿩����
        
    pStr = string_line;               
    while(*pStr != 0) Putch(*pStr++);                      // ���ڿ� ����
    new_line();                 // �鿩����
}

void UART_7seg_menu(void)
{
    pStr = string_line;               
    while(*pStr != 0) Putch(*pStr++);                      // ���ڿ� ����
    new_line();                 // �鿩����
    
    pStr = string_Up_7seg;               
    while(*pStr != 0) Putch(*pStr++);                      // ���ڿ� ����
    new_line();                 // �鿩����

    pStr = string_Down_7seg;               
    while(*pStr != 0) Putch(*pStr++);                      // ���ڿ� ����
    new_line();                 // �鿩����
    
    pStr = string_DP_ID;               
    while(*pStr != 0) Putch(*pStr++);                      // ���ڿ� ����
    new_line();                 // �鿩����
    
    pStr = string_Main_Menu;               
    while(*pStr != 0) Putch(*pStr++);                      // ���ڿ� ����
    new_line();                 // �鿩����
        
    pStr = string_line;               
    while(*pStr != 0) Putch(*pStr++);                      // ���ڿ� ����
    new_line();                 // �鿩����
}

void UART_Up_LED_menu(void)
{
    pStr = string_line;               
    while(*pStr != 0) Putch(*pStr++);                      // ���ڿ� ����
    new_line();                 // �鿩����
    
    pStr = string_Up_LED_title;               
    while(*pStr != 0) Putch(*pStr++);                      // ���ڿ� ����
    new_line();                 // �鿩����
    
    pStr = string_Up_LED;               
    while(*pStr != 0) Putch(*pStr++);                      // ���ڿ� ����
    new_line();                 // �鿩����

    pStr = string_Down_LED;               
    while(*pStr != 0) Putch(*pStr++);                      // ���ڿ� ����
    new_line();                 // �鿩����
    
    pStr = string_Main_Menu;               
    while(*pStr != 0) Putch(*pStr++);                      // ���ڿ� ����
    new_line();                 // �鿩����
        
    pStr = string_line;               
    while(*pStr != 0) Putch(*pStr++);                      // ���ڿ� ����
    new_line();                 // �鿩���� 
}

void UART_Down_LED_menu(void)
{
    pStr = string_line;               
    while(*pStr != 0) Putch(*pStr++);                      // ���ڿ� ����
    new_line();                 // �鿩����
    
    pStr = string_Down_LED_title;               
    while(*pStr != 0) Putch(*pStr++);                      // ���ڿ� ����
    new_line();                 // �鿩����
    
    pStr = string_Up_LED;               
    while(*pStr != 0) Putch(*pStr++);                      // ���ڿ� ����
    new_line();                 // �鿩����

    pStr = string_Down_LED;               
    while(*pStr != 0) Putch(*pStr++);                      // ���ڿ� ����
    new_line();                 // �鿩����
    
    pStr = string_Main_Menu;               
    while(*pStr != 0) Putch(*pStr++);                      // ���ڿ� ����
    new_line();                 // �鿩����
        
    pStr = string_line;               
    while(*pStr != 0) Putch(*pStr++);                      // ���ڿ� ����
    new_line();                 // �鿩����
}

void UART_Up_7seg_menu(void)
{
    pStr = string_line;               
    while(*pStr != 0) Putch(*pStr++);                      // ���ڿ� ����
    new_line();                 // �鿩����
    
    pStr = string_Up_7seg_title;               
    while(*pStr != 0) Putch(*pStr++);                      // ���ڿ� ����
    new_line();                 // �鿩����
    
    pStr = string_Up_7seg;               
    while(*pStr != 0) Putch(*pStr++);                      // ���ڿ� ����
    new_line();                 // �鿩����

    pStr = string_Down_7seg;               
    while(*pStr != 0) Putch(*pStr++);                      // ���ڿ� ����
    new_line();                 // �鿩����
    
    pStr = string_DP_ID;               
    while(*pStr != 0) Putch(*pStr++);                      // ���ڿ� ����
    new_line();                 // �鿩����
    
    pStr = string_Main_Menu;               
    while(*pStr != 0) Putch(*pStr++);                      // ���ڿ� ����
    new_line();                 // �鿩����
        
    pStr = string_line;               
    while(*pStr != 0) Putch(*pStr++);                      // ���ڿ� ����
    new_line();                 // �鿩���� 
}

void UART_Down_7seg_menu(void)
{
    pStr = string_line;               
    while(*pStr != 0) Putch(*pStr++);                      // ���ڿ� ����
    new_line();                 // �鿩����
    
    pStr = string_Down_7seg_title;               
    while(*pStr != 0) Putch(*pStr++);                      // ���ڿ� ����
    new_line();                 // �鿩����
    
    pStr = string_Up_7seg;               
    while(*pStr != 0) Putch(*pStr++);                      // ���ڿ� ����
    new_line();                 // �鿩����

    pStr = string_Down_7seg;               
    while(*pStr != 0) Putch(*pStr++);                      // ���ڿ� ����
    new_line();                 // �鿩����
    
    pStr = string_DP_ID;               
    while(*pStr != 0) Putch(*pStr++);                      // ���ڿ� ����
    new_line();                 // �鿩����
    
    pStr = string_Main_Menu;               
    while(*pStr != 0) Putch(*pStr++);                      // ���ڿ� ����
    new_line();                 // �鿩����
        
    pStr = string_line;               
    while(*pStr != 0) Putch(*pStr++);                      // ���ڿ� ����
    new_line();                 // �鿩����
}

void UART_DP_ID_menu(void)
{
    pStr = string_line;               
    while(*pStr != 0) Putch(*pStr++);                      // ���ڿ� ����
    new_line();                 // �鿩����
    
    pStr = string_DP_ID_title;               
    while(*pStr != 0) Putch(*pStr++);                      // ���ڿ� ����
    new_line();                 // �鿩����
    
    pStr = string_Up_7seg;               
    while(*pStr != 0) Putch(*pStr++);                      // ���ڿ� ����
    new_line();                 // �鿩����

    pStr = string_Down_7seg;               
    while(*pStr != 0) Putch(*pStr++);                      // ���ڿ� ����
    new_line();                 // �鿩����
    
    pStr = string_DP_ID;               
    while(*pStr != 0) Putch(*pStr++);                      // ���ڿ� ����
    new_line();                 // �鿩����
    
    pStr = string_Main_Menu;               
    while(*pStr != 0) Putch(*pStr++);                      // ���ڿ� ����
    new_line();                 // �鿩����
        
    pStr = string_line;               
    while(*pStr != 0) Putch(*pStr++);                      // ���ڿ� ����
    new_line();                 // �鿩����
}

void Time_out(void)
{
    PORTG = 0b00001000; // ���� ���� Seg�� ��� 
    PORTD = ((seg_pat[i] & 0x0F) << 4) | (PORTD & 0x0F);
    PORTB = (seg_pat[i] & 0x70 ) | (PORTB & 0x0F);
}

void Putch(char data)		   // �� ����Ʈ �۽�         
{
    while((UCSR0A & 0x20) == 0x0);	  //UDRE0[5] = 1 �۽��غ�Ϸ� �� ������ ���
    UDR0 = data;                   		  // ������ ����  
} 

void new_line(void)             // �鿩���� 
{
    while((UCSR0A & 0x20) == 0x0); UDR0 =0x0D;            // NEW LINE
}

interrupt [USART0_RXC] void usart0_rx(void) // ���� �Ϸ� ���ͷ�Ʈ
{
	SREG &= 0x7F; 
    UART_Rx_data = UDR0;
    flag = 1;	
    SREG |= 0x80;            
}

interrupt [TIM2_COMP] void timer_comp2(void)    // Ÿ�̸�2 comp
{
    SREG &= 0x7F; // All Interrupt disable   
    TIM2_COMP_FLAG = 1;  
    SREG |= 0x80; // All Interrupt enable
}

interrupt [TIM0_OVF] void timer_int0(void)      // Ÿ�̸�0 ovf 
{ 
    SREG &= 0x7F; // All Interrupt disable
    TCNT0 = 0;      // �ʱ�ȭ 
    cnt++;
    SREG |= 0x80; // All Interrupt enable
}
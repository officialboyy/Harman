/********************************************************************************************/
/*              Name : Practice.c                                                           */
/*              Date : 2024. 03. 12 first edited                                            */
/*              Modified and Programmed by JH Park                                          */
/********************************************************************************************/      

#include <mega128.h>        // 4�� SW(fall) : 0 - 7 1���� ����, 5�� SW(fall) : 7 - 0 1���� ����, 6�� SW(rise) : LED ��� ON state=0, 7�� SW(rise) : LED ��� OFF state=0

const unsigned char led[8] = {0xFE, 0xFD, 0xFB, 0xF7, 0xEF, 0xDF, 0xBF, 0x7F};          // const : "���"�� �ǹ��ϸ�, �����ؼ� �ѹ� �ʱ�ȭ�Ǹ� ���� �Ұ���.
                                                                                        // const unsigned char : ��ȣ ���� ������ ���.
void main(void)
{
    unsigned char o_sw4, o_sw5, o_sw6, o_sw7, n_sw4, n_sw5, n_sw6, n_sw7;
    unsigned char state = 0;                // LED ��� ���� (0��°)
    
    DDRC = 0xFF;                            // ��ƮC ��� ����
    DDRE = 0x00;                            // ��Ʈ E �Է� ����
    
    PORTC = led[state];                     // PORTC = led[0] => 0��° ��� 0
    o_sw4 = PINE & 0x10;                // SW4 = PE4 ����
    o_sw5 = PINE & 0x20;                // SW5 = PE5 ����
    o_sw6 = PINE & 0x40;                // SW6 = PE6 ����
    o_sw7 = PINE & 0x80;                // SW7 = PE7 ����                 
                                    
    
    while (1)
          {
            n_sw4 = PINE & 0x10;
            n_sw5 = PINE & 0x20;
            n_sw6 = PINE & 0x40;
            n_sw7 = PINE & 0x80;
            
            if (o_sw4 != 0 && n_sw4 == 0)     // OFF => ON �Ǵ� ����
               {
                state = (state + 1) % 8;    // state ���� ���·� ���� ( 0 ~ 7 )
                PORTC = led[state];
               }                   
            o_sw4 = n_sw4;
            
            if (o_sw5 != 0 && n_sw5 == 0)   // OFF => ON �Ǵ� ���� 
               {
                if (state == 0)
                   {
                    state = 7;
                   }
                else
                   {
                    state = (state - 1) % 8;           
                   }
                PORTC = led[state];
               }
            o_sw5 = n_sw5;
            
            if (o_sw6 == 0 && n_sw6 != 00)   // ON => OFF �Ǵ� ���� 
               {
                PORTC = 0x00;
                state = 0;
               }
            o_sw6 = n_sw6;
            
            if (o_sw7 == 0 && n_sw7 != 0)   // ON => OFF �Ǵ� ���� 
               {
                PORTC = 0xFF;
                state = 0;
               }             
            o_sw7 = n_sw7;
          }
} 


/*
#include <mega128.h>                    // ����ġ ���������� LED ���� ����. [ �迭 �̿� ]

const unsigned char led[8] = {0xFE, 0xFD, 0xFB, 0xF7, 0xEF, 0xDF, 0xBF, 0x7F};          // const : "���"�� �ǹ��ϸ�, �����ؼ� �ѹ� �ʱ�ȭ�Ǹ� ���� �Ұ���.
                                                                                        // const unsigned char : ��ȣ ���� ������ ���.
void main(void)
{
    unsigned char o_sw, n_sw;
    unsigned char state = 0;                // LED ��� ���� (0��°)
    
    DDRC = 0xFF;                            // ��ƮC ��� ����
    DDRE = 0x00;                            // ��Ʈ E �Է� ����
    
    PORTC = led[state];                     // PORTC = led[0] => 0��° ��� 0
    o_sw = PINE & 0x10;                     // SW1 = PE4 ���°�
    
    while (1)
          {
            n_sw = PINE & 0x10;
            if (o_sw != 0 && n_sw == 0)     // OFF => ON �Ǵ� ����
               {
                state = (state + 1) % 8;    // state ���� ���·� ���� ( 0 ~ 7 )
                PORTC = led[state];
               }                   
            o_sw = n_sw;                    
          }
} 
*/

/*
#include <mega128.h>                    // ����ġ ���������� LED ���� ����.
void main(void) 
{ 
    unsigned char old_sw, new_sw;
    unsigned char led = 0xFE;
    DDRC = 0xFF; // ��ƮC ��� ���� 
    DDRE = 0x00; // ��ƮE �Է� ���� 
    PORTC = led; // ��ƮC.0=0 led on �ʱⰪ ���
    old_sw = PINE & 0b00010000; // PE4 SW1 ���°� ����
    while(1)
    { 
        new_sw = PINE & 0b00010000;
        if((old_sw != 0) && (new_sw == 0))
        { // OFF(1) -> ON(0) �Ǵ� ���� üũ 
            led = (led << 1) | 0x01; // 1��Ʈ ����Ʈ, 0��Ʈ 1�� ä�� 
        
            if(led == 0xFF) 
            {
                led = 0xFE; // LED ��� off�����̸� �ʱⰪ �缳��
            }   
            PORTC = led;
            
        } 
        old_sw = new_sw; // �������� <- ������� 
    } 
}
*/


/*
#include <mega128.h>                // ����ġ ���¿� ���� �ٸ��� ����ϱ�
void main(void) 
{ 
    unsigned char key;
    DDRC = 0xFF; // ��Ʈ C ��� ���� 
    DDRE = 0x00; // ��Ʈ E �Է� ���� 
    PORTC = 0xFF; // LED ��� OFF 
    
    while(1)
    {
        key = PINE & 0xF0; // ��Ʈ E 4.5.6.7 �о����.
        switch(key)
        {
            case 0b11100000 : // SW1(E.4)�� ������ LED ��� ON 
            PORTC = 0x00;
            break;
            case 0b11010000 : // SW2(E.5)�� ������ LED ��� OFF 
            PORTC = 0xFF;
            break;
            case 0b10110000 : // SW3(E.6)�� ������ ¦����° LED ON 
            PORTC = 0b01010101;
            break;
            case 0b01110000 : // SW4(E.7)�� ������ Ȧ����° LED ON 
            PORTC = 0b10101010;
            break;
            default:
            break;
        } // end of switch 
    } // end of while 
} // end of main
*/

/*
#include <mega128.h>                // ����ġ�� LED ����
#include <delay.h>

void main(void)
{
    unsigned char sw4, sw5, sw6, sw7;
    
    DDRC = 0xFF;            // ��ƮC ��� ����
    DDRE &= 0x0F;           // ��ƮE �Է� ����
    
    PORTC = 0xFF;           // LED ��� OFF.
    
    while (1)
          {
            sw4 = PINE & 0x10;                 // PINE : ������ READ
            sw5 = PINE & 0x20;
            sw6 = PINE & 0x40;
            sw7 = PINE & 0x80;
            
            if (sw4 == 0 ) 
            {
                PORTC = 0x00;
            }
            if (sw5 == 0) 
            {
                PORTC = 0x55;
            }
            if (sw6 == 0)
            {  
                PORTC = 0xAB;
            }                
            if (sw7 == 0)
            {
                PORTC.0 = 0;
                PORTC.7 = 0;
                delay_ms(100);
                PORTC.0 = 1;
                PORTC.7 = 1;
                
                PORTC.1 = 0;
                PORTC.6 = 0;
                delay_ms(100);
                PORTC.1 = 1;
                PORTC.6 = 1;
                
                PORTC.2 = 0;
                PORTC.5 = 0;
                delay_ms(100);
                PORTC.2 = 1;
                PORTC.5 = 1;
                
                
                PORTC.3 = 0;
                PORTC.4 = 0;
                delay_ms(100);
                PORTC.3 = 1;
                PORTC.4 = 1;
            }
            else PORTC = 0xFF;
          }
}
*/


/*
#include <mega128.h>            // PORTC.2 / 0 / 1 / 1 ~       ...���⼭ PORTC.0 = CLOCK, PORTC.1 = DATA.. CLK�� HIGH�϶� DATA ��ȭ�ϸ� �ȵȴٴ� ���� ����.
#include <delay.h>

#define P2_HIGH PORTC|=0x04
#define P2_LOW PORTC&=0xFB
#define P1_HIGH PORTC|=0x02
#define P1_LOW PORTC&=0xFD
#define P0_HIGH PORTC|=0x01
#define P0_LOW PORTC&=0xFE

void main(void)
{
    unsigned char i = 0;
    DDRC = 0x07;            // ��ƮC ��� ����
    while (1)
          {
            P2_LOW;
            
            for (i=0; i<4; i++)
            {
                P0_HIGH;
                P1_HIGH;
                delay_ms(100);
                    
                P0_LOW;
                delay_ms(50);
                      
                P1_LOW;
                delay_ms(50);
                     
                P0_HIGH;
                delay_ms(100);
                     
                P0_LOW;
                delay_ms(50);
                    
                P1_HIGH;
                delay_ms(50);
            }
            
            P2_HIGH;
            P1_LOW;
            delay_ms(500);       
          }
}
*/

/*                                                                            
#include <mega128.h>            // LED ��ƮC�� 0bit�� ���� [ ��Ʈ ���� ������ �̿� ]
#include <delay.h>

void main(void)
{
    DDRC = 0xFF;
    PORTC = 0x55;
    while (1)
          {
            PORTC.0 = !PORTC.0; // PORTC�� 0bit ����
            delay_ms(500);
          }
}
*/


/*
#include <mega128.h>            // LED �ϳ��� �����ϱ� [ define �̿� ]
#include <delay.h>

#define LED0 PORTC.0
#define ON 0
#define OFF 1

void main(void)
{
    DDRC = 0xFF;                // ��ƮC ��� ����
    PORTC = 0x55;               // ��ƮC 0101 0101 ���
    while (1)
          {
            LED0 = OFF;
            delay_ms(500);
            
            LED0 = ON;
            delay_ms(500);
          }
}
*/

/*
#include <mega128.h>
#include <delay.h>
#define P0_HIGH PORTC|=0x01
#define P0_LOW PORTC&=0xFE
#define P1_HIGH PORTC|=0x02
#define P1_LOW PORTC&=0xFD

void main(void)
{
    unsigned char i = 0;
    DDRC = 0x03;
    while (1)
          {
            for (i=0; i<8; i++)
                {
                    P0_HIGH;
                    P1_HIGH;
                    delay_ms(500);
                    P0_LOW;
                    delay_ms(500);
                    
                    P0_HIGH;
                    P1_LOW;
                    delay_ms(500);
                    P0_LOW;
                    delay_ms(500);    
                }
          }
}
*/


/*
#include <mega128.h>    // PORTC.0 : CLK=100ms, PORTC.1 : CLK=200ms --> 8�� �ݺ�
#include <delay.h>      // delay_ms(), delay_us() ���� �������
void P0_HIGH(void);
void P0_LOW(void);
void P1_HIGH(void);
void P1_LOW(void);
int i;

    
void main(void)
{
    DDRC = 0x03;                // ��ƮC ��� ����    
    for (i = 0; i < 16;i++)
        {
            if (i % 4 == 0)
            {
                P0_HIGH();
                P1_HIGH();
                delay_ms(100);
            }
            if (i % 4 == 1)
            {
                P0_LOW();
                P1_HIGH();
                delay_ms(100);
            }
            if (i % 4 == 2)
            {
                P0_HIGH();
                P1_LOW();
                delay_ms(100);
            }                 
            if (i % 4 == 3)
            {
                P0_LOW();
                P1_LOW();
                delay_ms(100);
            }
        }
    P0_HIGH();
    P1_HIGH();
}

void P0_HIGH(void)
{
    PORTC |= 0x01;
}
void P0_LOW(void)
{
    PORTC &= 0xFE;
}
void P1_HIGH(void)
{
    PORTC |= 0x02;
}
void P1_LOW(void)
{
    PORTC &= 0xFD;
}
*/



/*
#include <mega128.h>    // LED ����Ʈ �ϸ鼭 ���� �����ϱ� [ �迭�̿� ]
#include <delay.h>      // delay_ms(), delay_us() ���� �������

void EVEN_ODD(void);
      
void main(void)
{
    DDRC = 0xFF;                // ��ƮC ��� ����
    PORTC = 0x55;               // ��ƮC 0101 0101 ���
    
    while (1)                   // ���� ����
          {
            EVEN_ODD();
          }
}

void EVEN_ODD(void)
{
    PORTC = PORTC ^ 0x01;       // PORTC�� 0��Ʈ�� ����. ^ : XOR ������ ( ������ 0, �ٸ��� 1 )
    delay_ms(500);              // 500ms ������
}
*/

/*
#include <mega128.h>    // LED ����Ʈ �ϸ鼭 ���� �����ϱ� [ �迭�̿� ]
#include <delay.h>      // delay_ms(), delay_us() ���� �������
const unsigned char led[8] = {0xFE, 0xFD, 0xFB, 0xF7, 0xEF, 0xDF, 0xBF, 0x7F};

void EVEN_ODD(void);
      
void main(void)
{
    DDRC = 0xFF;                // ��ƮC ��� ����
    
    while (1)                   // ���� ����
          {
            EVEN_ODD();
          }
}

void EVEN_ODD(void)
{
    int i;
    for (i = 0; i < 8; i++)
        {
            PORTC = led[i];     // i��° LED�� ���
            delay_ms(500);      // 500ms ������
        }
}
*/

/*
#include <mega128.h>    // LED ����Ʈ �ϸ鼭 ���� �����ϱ�(2)
#include <delay.h>      // delay_ms(), delay_us() ���� �������

void EVEN_ODD(void);
      
void main(void)
{
    DDRC = 0xFF;                // ��ƮC ��� ����
    
    while (1)                   // ���� ����
          {
            EVEN_ODD();
          }
}

void EVEN_ODD(void)
{
    int i;
    unsigned char led;
    led = 0xFE;                 // LED �ʱⰪ
    for (i = 0; i < 8; i++)
        {
            PORTC = led;        // LED�� ���
            delay_ms(500);      // 500ms ������
            led = led << 1;     // 1bit ���� ����Ʈ
            led = led | 0x01;   // ������ bit set
        }
}
*/
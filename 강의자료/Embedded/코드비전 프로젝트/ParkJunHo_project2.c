/****************************************************************************************************************************/
/* project : ParkJunHo_project2.c                                                                                           */ 	                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  
/* Name : Park Junho                                                                                                        */
/* Modify : 2024. 04. 08 by Park Junho                                                                                      */
/* Date : 2024. 04. 02                                                                                                      */
/* Description : 8bits processor(AVR Core) Application programming                                                          */    
/****************************************************************************************************************************/

#include <mega128.h>                              //���̺귯�� ��� ���� ����
                         
typedef unsigned char U8;                         //typedef ��ó������ ���  
typedef unsigned short U16;                       //������ �پ��� ����� ���� main���� Global variable�� ����
typedef unsigned int U32;

// �������� 
U8 TIM0_OVF_FLAG = 0;       // Ÿ�̸�0 ovfflag
U8 TIM1_COMP_FLAG = 0;      // Ÿ�̸�1 comp flag
U8 TIMER2_OVF_FLAG_BIT=0;   // Ÿ�̸�2 ovf flag
U8 TIM3_COMP_FLAG=0;        // Ÿ�̸�3 comp flag
U8 cnt = 0;                 // ī��Ʈ��                                                
U8 EINT4_FLAG_BIT=0;        // KEY1                             
U8 EINT5_FLAG_BIT=0;        // KEY2
U8 EINT6_FLAG_BIT=0;        // KEY3
U8 EINT7_FLAG_BIT=0;        // KEY4
U32 tmp_val, ad_val;        // �µ�, ���� ������ 

const U8 seg_pat[10] = {0x3f, 0x06, 0x5b, 0x4f, 0x66, 0x6d, 0x7d, 0x07, 0x7f, 0x6f};    // 7seg 0 ~ 9
const U8 seg_pat_dot[10] = {0xBf, 0x86, 0xDb, 0xCf, 0xE6, 0xEd, 0xFd, 0x87, 0xff, 0xEf};    // 7seg dot 0 ~ 9

void birth_year(U8 N1000, U8 N100, U8 N10, U8 N1);  // ����(����)
void birth_day(U8 N1000, U8 N100, U8 N10, U8 N1);   // ����(����)                                
void delay_1ms(void);                               // Ÿ�̸�0�� �̿��Ͽ� delay ����� 
void TMP_disp(U32 val);                             // �µ� display
void AD_disp(U32 val);                              // ���� display
void EXIT4_TIMER2(void);                            // Ÿ�̸�2 ����
void EXIT5_TIMER1(void);                            // Ÿ�̸�1 ����
void EXIT6_TIMER3(void);                            // Ÿ�̸�3 ���� 
void EXIT7_TIMER3(void);                            // Ÿ�̸�3 (KEY4) ���� 
void Putch(U8 data);                                // uart ������ ���� 

    
void main(void)
{   
    U8 j; 
                              
    DDRC = 0xFF;    PORTC = 0xFE;              //�۵� Ȯ�ο����� LED ��� ����
    DDRB = 0xF0;                                 //�й� ���÷��̸� ���� ��ƮB 4,5,6,7 ��� ����(LED)
    DDRD = 0xF0;                                 //�й� ���÷��̸� ���� ��ƮD 4,5,6,7 ��� ����(LED)
    DDRG = 0x0F;                                 //�й� ���÷��̸� ���� ��ƮG 0,1,2,3 ��� ����(COM)
    DDRE |= 0x08;      
     
    TIMSK = 0x01;                               // TIM0 OVF Enable
    TCCR0 = 0x05;                               // 128���� 
    TCNT0 = 131;                                // 1msec 
    
    UCSR0A = 0x0;           // USART �ʱ�ȭ 
    UCSR0B = 0b00001000;    // �۽ź� enable TXEN0 [3] = 1, RXEN0 [4] =1
    UCSR0C = 0b00000110;    // �񵿱� ������ 8��Ʈ ���
    UBRR0H = 0;             // X-TAL = 16MHz �϶�, BAUD = 9600 
    UBRR0L = 103;           // �񵿱� �Ϲݸ�� ���ۼӵ� 9,600 
     
    EIMSK = 0b11110000;     // ���ͷ�Ʈ ��� ���� ���� �������ͷ� INT4,5,6,7 enable
    EICRB = 0b11111111;     // INT4,5,6,7�� B�� ���� Interrupt trigger ��� ����(7ri,6ri,5ri,4ri)              
    SREG |= 0x80;           // status resister bit7(MSB)�� 1���� �����Ͽ� ��� ���ͷ�Ʈ�� ���(global interrupt enable),OR�� ����Ͽ� ��������Ʈ�� �״��
        
    for(j=0; j<65; j++)     // birth_year display for 520ms
    {
        birth_year(1,9,9,7);
    }
        
    for(j=0; j<65; j++)     // birth_day display for 520ms
    {
        birth_day(1,1,2,5);
    }     
        
    while(1)
    {   
        PORTC = 0x55;   // ���� Ȯ�ο� 
        for(j=0; j<65; j++) // birth_year display for 520ms
        { 
            birth_day(1,1,2,5);
        }
        
        if(EINT4_FLAG_BIT==1)       // If KEY1 Rising 
        {       
            EXIT4_TIMER2();         // TIM2 Setting           
            for(j=0; j<10; j++)      // 10ȸ �ݺ� 
            {   
                PORTC = 0x99;       // ���� Ȯ�ο� 
                ADCSRA = 0xC7;                          // ADEN=1, ADSC = 1 ��ȯ ���� 
                while((ADCSRA & 0x10) == 0);            // ADIF=1�� �� ������           
                tmp_val = (U32)ADCL + ((U32)ADCH << 8); // A/D ��ȯ�� �б�
                TIMER2_OVF_FLAG_BIT = 0;                // Ÿ�̸�2 �ʱ�ȭ   
                while(cnt <= 1)                         // 1250ms * 2 = 4500ms�ֱ� 
                {   
                    if(TIMER2_OVF_FLAG_BIT <= 179)      // 12.5ms * 180 = 2250ms
                    {                                                  
                        cnt++;
                        TIMER2_OVF_FLAG_BIT = 0;        // TIM2 �ʱ�ȭ 
                    }
                    TMP_disp(tmp_val);                  // A/D ��ȯ�� ǥ��            
                } 
                cnt=0;                                  // ī��Ʈ �ʱ�ȭ 
            }
            EINT4_FLAG_BIT = 0;                         // KEY1 �ʱ�ȭ          
        } // end of KEY1
        
        if(EINT5_FLAG_BIT==1)       // If KEY2 Rising 
        {             
            EXIT5_TIMER1();         // TIM1 Setting 
            ADMUX = 0x06;           //ADC6 �ܱؼ� �Է� ����
            ADCSRA = 0x87;          // ADEN=1, 16MHz 256���� -> 125kHz             
            for(j=0; j<5; j++)      // 5ȸ �ݺ�
            {    
                PORTC = 0x66;       // ���� Ȯ�ο� 
                ADCSRA = 0xC7;      // ADEN=1, ADSC = 1 ��ȯ ����
                while((ADCSRA & 0x10) == 0);            // ADIF=1�� �� ������(Single)                    
                ad_val = (U32)ADCL + ((U32)ADCH << 8);  // A/D ��ȯ�� �б�                         
                AD_disp(ad_val);                        // Uart Display                   
                              
                TIM1_COMP_FLAG = 0;                     // TIM1 �ʱ�ȭ 
                while(TIM1_COMP_FLAG == 0);             // 2.5sec(�ֱ�) ��� 
            }
            EINT5_FLAG_BIT=0;                           // KEY2 �ʱ�ȭ             
        } //end of KEY2       
        
        
        if(EINT6_FLAG_BIT==1)       // If KEY3 Rising 
        {    
            EXIT6_TIMER3();         // 9bit PWM ��� ����
            EINT6_FLAG_BIT=0;                 
            for(j=0; j<100; j++)    // ���� Ȯ�ο� 100ms
            {
                PORTC = 0x77;       
                delay_1ms();
            }
            //EXIT6���� PWM 1 �Լ��� ����.
        } //end of KEY3
        
        if(EINT7_FLAG_BIT==1)       // If KEY4 Rising 
        {                        
            EXIT7_TIMER3();         // 9bit Phase correct PWM mode ���� 
            EINT7_FLAG_BIT=0;
            for(j=0; j<100; j++)    // ���� Ȯ�ο� 100ms
            {
                PORTC = 0x77;       
                delay_1ms();
            }
            //EXIT7���� PWM 2 �Լ��� ����.
        } //end of KEY4     
    } // end of while  
} // end of main

void birth_year(U8 N1000, U8 N100, U8 N10, U8 N1)    // �⵵ ��� 
{                 
        PORTG = 0b00001000;                                         //�� ���� 7Segment DIG4(PG3=1)ON, 1�ڸ� ǥ��
        PORTD = ((seg_pat_dot[N1] & 0x0F) << 4) | (PORTD & 0x0F);       //[0]ǥ�ø� ���� ABCDǥ��, PORTD ���� 4bits ������� �ʰ� | 
        PORTB = (seg_pat_dot[N1] & 0xF0 ) | (PORTB & 0x0F);             //[0]ǥ�ø� ���� EFGǥ��, PORTB ���� 4bits ������� �ʰ� |
        delay_1ms();    delay_1ms();    // delay 2ms             
                
        PORTG = 0b00000100;                                         //�������� �ι�° 7Segment DIG3(PG2=1)ON, 10�ڸ� ǥ��
        PORTD = ((seg_pat[N10] & 0x0F) << 4) | (PORTD & 0x0F); 
        PORTB = (seg_pat[N10] & 0x70 ) | (PORTB & 0x0F); 
        delay_1ms();    delay_1ms();
                             
        PORTG = 0b00000010;                                         //�������� ����° 7Segment DIG2(PG1=1)ON, 100�ڸ� ǥ��
        PORTD = ((seg_pat[N100] & 0x0F) << 4) | (PORTD & 0x0F);     
        PORTB = (seg_pat[N100] & 0x70 ) | (PORTB & 0x0F); 
        delay_1ms();    delay_1ms();
                 
        PORTG = 0b00000001;                                         //�������� �׹�° 7Segment DIG1(PG0=1)ON, 1000�ڸ� ǥ��
        PORTD = ((seg_pat[N1000] & 0x0F) << 4) | (PORTD & 0x0F);    
        PORTB = (seg_pat[N1000] & 0x70 ) | (PORTB & 0x0F); 
        delay_1ms();    delay_1ms();
}//end of birth_year

void birth_day(U8 N1000, U8 N100, U8 N10, U8 N1)    // �ϼ� ���  
{
        PORTG = 0b00001000;                                         //�� ���� 7Segment DIG4(PG3=1)ON, 1�ڸ� ǥ��
        PORTD = ((seg_pat[N1] & 0x0F) << 4) | (PORTD & 0x0F);       //[0]ǥ�ø� ���� ABCDǥ��, PORTD ���� 4bits ������� �ʰ� | 
        PORTB = (seg_pat[N1] & 0x70 ) | (PORTB & 0x0F);             //[0]ǥ�ø� ���� EFGǥ��, PORTB ���� 4bits ������� �ʰ� | 
        delay_1ms();    delay_1ms();
        
        PORTG = 0b00000100;                                         //�������� �ι�° 7Segment DIG3(PG2=1)ON, 10�ڸ� ǥ��
        PORTD = ((seg_pat[N10] & 0x0F) << 4) | (PORTD & 0x0F); 
        PORTB = (seg_pat[N10] & 0x70 ) | (PORTB & 0x0F); 
        delay_1ms();    delay_1ms();
        
        PORTG = 0b00000010;                                         //�������� ����° 7Segment DIG2(PG1=1)ON, 100�ڸ� ǥ��
        PORTD = ((seg_pat_dot[N100] & 0x0F) << 4) | (PORTD & 0x0F);     
        PORTB = (seg_pat_dot[N100] & 0xF0 ) | (PORTB & 0x0F); 
        delay_1ms();    delay_1ms();
        
        PORTG = 0b00000001;                                         //�������� �׹�° 7Segment DIG1(PG0=1)ON, 1000�ڸ� ǥ��
        PORTD = ((seg_pat[N1000] & 0x0F) << 4) | (PORTD & 0x0F);    
        PORTB = (seg_pat[N1000] & 0x70 ) | (PORTB & 0x0F); 
        delay_1ms();    delay_1ms();     
}//end of birth_day

void TMP_disp(U32 val)  // �µ� ��� �Լ�  
{ 
    float fval;
    U32 ival, buf, N100, N10, N1;
    
    fval = (float)val * 5.0 / 1024.0; // ���� ������ ��ȯ 
    ival = (U32)(fval * 1000.0 + 0.5); // �ݿø� �� ����ȭ, (�Ҽ� ��°�ڸ�����)
    
    N100 = ival / 100; // ������ ���� 
    buf = ival % 100;  
    N10 = buf / 10; // �Ҽ� ù° �ڸ� ���� 
    N1 = buf % 10; // �Ҽ� ��° �ڸ� ���� 
    
    PORTG = 0b00001000; // PG3=1, �Ҽ� ��° �ڸ� 
    PORTD = ((seg_pat[N1] & 0x0F) << 4) | (PORTD & 0x0F);
    PORTB = (seg_pat[N1] & 0x70 ) | (PORTB & 0x0F);
    delay_1ms();                  
    
    PORTG = 0b00000100; // PG2=1, �Ҽ� ù° �ڸ� 
    PORTD = ((seg_pat[N10] & 0x0F) << 4) | (PORTD & 0x0F);
    PORTB = (seg_pat[N10] & 0x70 ) | (PORTB & 0x0F); 
    PORTB = PORTB | 0x80; // DP on(�Ҽ���)
    delay_1ms();           
    
    PORTG = 0b00000010; // PG1=1, ������ 
    PORTD = ((seg_pat[N100] & 0x0F) << 4) | (PORTD & 0x0F);
    PORTB = (seg_pat[N100] & 0x70 ) | (PORTB & 0x0F); 
    delay_1ms();
} // end of TMP_disp()

void AD_disp(U32 val)   // ���� ��� �Լ�  
{ 
    float fvalue;
    U32 ivalue, buff, NV100, NV10, NV1; 

    fvalue = (float)val * 5.0 / 1024.0;        // ���� ������ ��ȯ
    ivalue = (U32)(fvalue * 100.0 + 0.5);        // �ݿø� �� ����ȭ,(�Ҽ� ��°�ڸ�����) 
    
    NV100 = ivalue / 100;                        // ������ ����
    buff = ivalue % 100; 
    NV10 = buff / 10;                            // �Ҽ� ù° �ڸ� ����
    NV1 = buff % 10;                             // �Ҽ� ��° �ڸ� ���� 
    
    NV100 = NV100 + 0x30;   // +0x30('0') : �͹̳� ����� ���� ������ ��ȯ
    NV10 = NV10 + 0x30;
    NV1 = NV1 + 0x30;
    
    Putch(NV100); 
    Putch(0x2E); 
    Putch(NV10); 
    Putch(NV1); 
    Putch('V');
    while((UCSR0A & 0x20) == 0x0); UDR0 =0x0D; // �ٹٲ�
} //end of AD_disp()

void EXIT4_TIMER2(void) // Ÿ�̸�2 Setting
{            
    TIMSK |= 0b01000000;                        // overflow interrupt enable
    TCCR2 = 0b00000101;                         // normal���, ����������= 1024����
    TCNT2 = 61;                                // 12.5ms
                                    
} //end of EXIT4_TIMER2  

void EXIT5_TIMER1(void) // Ÿ�̸�1 Setting
{   
    // ETIMSK = 0x10;          // OCIE1A = 1 : Ÿ�̸�/ī����1 ��� �� A ��ġ ���ͷ�Ʈ enable         
    TIMSK |= 0b00010000;    // comp interrupt enable
    TCCR1A = 0x00;          // ��� 0(�Ϲݸ��) 
    TCCR1B = 0x0D;          // ���������� = CK/256 
    TCCR1C = 0x00;
    TCNT1H = 0;
    TCNT1L = 0;
    OCR1AH = 0x98;          // 2.5sec
    OCR1AL = 0x96;          // 2.5sec
                                    
} //end of EXIT5_TIMER1

void EXIT6_TIMER3(void) // Ÿ�̸�3 Setting
{
    TCCR3A = 0x82;          // ��� 6 �񱳸�ġ 
    TCCR3B = 0x0C;          // 256����
    TCCR3C = 0x00;
    TCNT3H = 0;
    TCNT3L = 0;
    OCR3AH = 0x00;          // duty ratio = 25%, 512 * 0.25 = 128 = 0x0080;
    OCR3AL = 0x80;
} // end of EXIT6_TIMER3

void EXIT7_TIMER3(void) // Ÿ�̸�3 Setting
{
    TCCR3A = 0x82;          // ��� 2 �񱳸�ġ 
    TCCR3B = 0x04;          // 256����
    TCCR3C = 0x00;
    TCNT3H = 0;
    TCNT3L = 0;
    OCR3AH = 0x00;          // duty ratio = 25%, 512 * 0.25 = 128 = 0x0080;
    OCR3AL = 0x80;
} // end of EXIT6_TIMER3

void delay_1ms(void)    // delay 1ms �Լ� 
{
    TIM0_OVF_FLAG = 0;      // �ʱ�ȭ 
    while(!TIM0_OVF_FLAG);  // TIM0 (1ms)
} // end of delay_1ms

interrupt [EXT_INT4] void external_int4(void)   // KEY1 Interrupt
{   
    SREG &= 0x7F;                                
    EINT4_FLAG_BIT=1;                            
    SREG |= 0x80;                                
} // end of EXT_INT4                                                      
 
interrupt [EXT_INT5] void external_int5(void)   // KEY2 Interrupt
{ 
    SREG &= 0x7F;
    EINT5_FLAG_BIT=1;     
    SREG |= 0x80;  
} // end of EXT_INT5 
                                
interrupt [EXT_INT6] void external_int6(void)   // KEY3 Interrupt
{
    SREG &= 0x7F;  
    EINT6_FLAG_BIT=1;   
    SREG |= 0x80;   
} // end of EXT_INT6

interrupt [EXT_INT7] void external_int7(void)   // KEY4 Interrupt
{ 
    SREG &= 0x7F;  
    EINT7_FLAG_BIT=1;       
    SREG |= 0x80;       
} // end of EXT_INT7

interrupt [TIM2_OVF] void TIMER2_OVF_int(void)  // Ÿ�̸�2 ovf
{ 
    TCNT2 = 61;              //�ʱⰪ�� ���ͷ�Ʈ �ȿ��� �������
    SREG &= 0x7F;  
    TIMER2_OVF_FLAG_BIT++;  
    SREG |= 0x80;         
} // end of TIM2_OVF

interrupt [TIM0_OVF] void timer_int0(void)      // Ÿ�̸�0 ovf 
{ 
    SREG &= 0x7F;   // All Interrupt disable
    TCNT0 = 0;      // �ʱ�ȭ 
    TIM0_OVF_FLAG = 1;  
    SREG |= 0x80;   // All Interrupt enable
} // end of TIM0_OVF

interrupt [TIM1_COMPA] void timer_comp1(void)    // Ÿ�̸�1 comp
{
    SREG &= 0x7F; // All Interrupt disable   
    TIM1_COMP_FLAG = 1;  
    SREG |= 0x80; // All Interrupt enable
} // end of TIM1_COMPA

interrupt [TIM3_COMPA] void timer_comp3(void)   // Ÿ�̸�3 comp
{
    SREG &= 0x7F; // All Interrupt disable   
    TIM3_COMP_FLAG = 1;  
    SREG |= 0x80; // All Interrupt enable
} // end of TIM3_COMPA

void Putch(U8 data) // �� ����Ʈ �۽�
{
    while((UCSR0A & 0x20) == 0x0); //UDRE0[5] = 1 �۽��غ�Ϸ� �� ������ ���
    UDR0 = data; // ������ ����
} // end of Putch()


/*******************************************************************************************/
/************               Name : Timer_Counter.c                              ************/
/************               Modified and Programmed by JH Park                  ************/
/************               Date : 2024. 03. 26 first edited                    ************/
/*******************************************************************************************/

#include <mega128.h>

unsigned int pwm = 0x0200; // ������ ��º� �������� �� ����  

void main(void) 
{ 
    DDRB = 0xFF; // OC1C(PB7) �� ��¹��⼳�� 
    DDRG = 0xFF; // 7-���׸�Ʈ ON/OFF ���� ��Ʈ 
    PORTG = 0x0F; // 7-���׸�Ʈ ��� ON
    
    EIMSK = 0b00110000; // �ܺ�INT4 = 1, INT5 = 1
    EICRB = 0b00001010; // �ܺ� ���ͷ�Ʈ falling edge

    TCCR1A = 0b00001011; // ��� 3-10bits Phase Correct PWM
    TCCR1B = 0b00000100; // Ÿ�̸�/ī����1 ���������Ϸ� = CK/256 
    TCCR1C = 0x0;
    TCNT1 = 0x0; // Ÿ�̸�/ī����1 �������� �ʱⰪ ����
    OCR1CH = (pwm & 0xFF00) >> 8; // OCR1C �ʱⰪ ���� 0x02
    OCR1CL = pwm & 0x00FF; // 0x00
    SREG = 0x80; // ���� ���ͷ�Ʈ �ο��̺� ��Ʈ I ��
    
    while(1);
}

interrupt [EXT_INT4] void external_int4(void) 
{ 
    if(pwm < 0x03B0) pwm += 0x0040; // 0x03B0���� ������ ���� 
    OCR1CH = (pwm & 0xFF00) >> 8; // OCR1C �� ���� 
    OCR1CL = pwm & 0x00FF;
}
// �ܺ� ���ͷ�Ʈ �䱸 5 ���� ��ƾ(SW2 ó��) 
interrupt [EXT_INT5] void external_int5(void) 
{ 
    if(pwm > 0x0050) pwm -= 0x0040; // 0x0050���� ũ�� ���� 
    OCR1CH = (pwm & 0xFF00) >> 8; // OCR1C �� ���� 
    OCR1CL = pwm & 0x00FF;
}


/*
#include <mega128.h>                            // TIM3_COMP_2.5sec 
unsigned char led = 0xFE;
unsigned char TIM3_COMP_FLAG = 0;


void main(void) 
{ 
    DDRC = 0xFF; // ��Ʈ C ������� ���� 
    PORTC = led; // ��Ʈ C�� �ʱⰪ ��� 
    
    ETIMSK = 0x10; 
    
    TCCR3A = 0x00; // ��� 0(�Ϲݸ��) 
    TCCR3B = 0x0D; // ���������� = CK/256 
    TCCR3C = 0x00;                
    
    TCNT3H = 0x00; 
    TCNT3L = 0x00;
    OCR3AH = 0x98;
    OCR3AL = 0x96; 
    SREG |= 0x80; // ���� ���ͷ�Ʈ �ο��̺� ��Ʈ I set 
    
    while(1)
    {
        if (TIM3_COMP_FLAG == 1)
        {    
            TCNT3H = 0x00;
            TCNT3L = 0x00;
            OCR3AH = 0x98;
            OCR3AL = 0x96;
            led = led << 1; // 1��Ʈ ����Ʈ 
            led = led | 0x01; // ������ ��Ʈ set 
            if(led == 0xFF) led = 0xFE; // ��� off�̸� �ʱⰪ �缳�� 
            PORTC = led; // ��Ʈ ��� 
            TIM3_COMP_FLAG = 0;
        }
    }
}
// (1/16)us * 256���� * (65536 - 32768)= 524ms 
interrupt [TIM3_COMPA] void timer_comp3(void) 
{ 
    SREG &= 0x7F; // All Interrupt disable
    TIM3_COMP_FLAG = 1;
    SREG |= 0x80; // All Interrupt enable
}
*/



/*
#include <mega128.h>                            // ���� 6-4) 
unsigned char led = 0xFE;
unsigned int time = 0x8000; // 32768
unsigned char TIM1_OVF_FLAG = 0;


void main(void) 
{ 
    DDRC = 0xFF; // ��Ʈ C ������� ���� 
    PORTC = led; // ��Ʈ C�� �ʱⰪ ��� 
    
    TIMSK = 0x04; // TOIE1 = 1, �����÷ο� ���ͷ�Ʈ �ο��̺� 
    
    TCCR1A = 0x00; // ��� 0(�Ϲݸ��) 
    TCCR1B = 0x04; // ���������� = CK/256 
    TCCR1C = 0x0;                
    
    TCNT1H = 0x80; 
    TCNT1L = 0x00; 
    SREG = 0x80; // ���� ���ͷ�Ʈ �ο��̺� ��Ʈ I set 
    
    while(1)
    {
        if (TIM1_OVF_FLAG == 1)
        {    
            TCNT1 = time;
            led = led << 1; // 1��Ʈ ����Ʈ 
            led = led | 0x01; // ������ ��Ʈ set 
            if(led == 0xFF) led = 0xFE; // ��� off�̸� �ʱⰪ �缳�� 
            PORTC = led; // ��Ʈ ��� 
            TIM1_OVF_FLAG = 0;
        }
    }
}
// (1/16)us * 256���� * (65536 - 32768)= 524ms 
interrupt [TIM1_OVF] void timer_int1(void) 
{ 
    SREG &= 0x7F; // All Interrupt disable
    TIM1_OVF_FLAG = 1;
    SREG |= 0x80; // All Interrupt enable
}
*/
    

/*
#include <mega128.h>                    // Timer�� �ð� ����� 
#include <delay.h>

typedef unsigned char U8;
unsigned char cnt = 0; // Ÿ�̸�/ī����0 ���ͷ�Ʈ �߻� Ƚ��
unsigned char TIM0_OVF_FLAG = 0;

const U8 seg_pat[10] = {0x3f, 0x06, 0x5b, 0x4f, 0x66, 0x6d, 0x7d, 0x07, 0x7f, 0x6f};

U8 N1, N10, N100, N1000;
U8 pos = 0;
U8 hour = 12, min = 0, sec = 0;

void Time_out(void);

void main(void)
{
    unsigned char i;
    
    DDRB = 0xF0;
    DDRD = 0xF0;
    DDRG = 0x0F;
                
    EIMSK = 0b00110000;
    EICRB = 0b00001010;
    TIMSK = 0x01;           // tim0 overflow enable
    TCCR0 = 0x07;           // 1024
    TCNT0 = 0x00;           // Ÿ�̸�/ī����0 �������� �ʱⰪ 
    SREG = 0x80;
    
    while(1)
    {   
        Time_out();
        if (TIM0_OVF_FLAG == 1)
        {
            TCNT0 = 0x0;    // �ʱⰪ �缳�� 
            cnt++;          // ���ͷ�Ʈ Ƚ�� +1
            if (cnt == 61)
            {
                sec = sec + 1;
                if(sec == 60) 
                { 
                    sec = 0;
                    min = min + 1; // �а� +1 
                if(min == 60) 
                    { 
                    min = 0;
                    hour = (hour + 1) % 24; // �ð� +1
                    } // end of min 
                } // end of sec                                 
                cnt = 0;    // ���ͷ�Ʈ ī���� ���� 
            }
            TIM0_OVF_FLAG = 0;
        } 
        
    }
}

void Time_out(void)
{
    PORTG = 0b00001000;
    PORTD = ((seg_pat[min%10] & 0x0F) << 4) | (PORTD & 0x0F);
    PORTB = (seg_pat[min % 10] & 0x70 ) | (PORTB & 0x0F);
    delay_us(300);
    
    PORTG = 0b00000100; // 7-Seg DIG3 ON(PG2=1), �� 10�ڸ� ǥ�� 
    PORTD = ((seg_pat[min / 10] & 0x0F) << 4) | (PORTD & 0x0F);
    PORTB = (seg_pat[min / 10] & 0x70 ) | (PORTB & 0x0F);
    delay_us(300);
    
    PORTG = 0b00000010; // 7-Seg DIG2 ON(PG1=1), �ð� 1�ڸ� ǥ�� 
    PORTD = ((seg_pat[hour % 10] & 0x0F) << 4) | (PORTD & 0x0F);
    PORTB = (seg_pat[hour % 10] & 0x70 ) | (PORTB & 0x0F);
    delay_us(300);

    PORTG = 0b00000001; // 7-Seg DIG1 ON(PG0=1), �ð� 10�ڸ� ǥ�� 
    PORTD = ((seg_pat[hour / 10] & 0x0F) << 4) | (PORTD & 0x0F);
    PORTB = (seg_pat[hour / 10] & 0x70 ) | (PORTB & 0x0F);
    delay_us(300);
}

interrupt [EXT_INT4] void external_int4(void)
{   
    hour = N1000 * 10 + N100;
    min = N10 * 10 + N1;
}

interrupt [TIM0_OVF] void timer_int0(void) 
{ 
    SREG &= 0x7F; // All Interrupt disable
    TIM0_OVF_FLAG = 1;
    SREG |= 0x80; // All Interrupt enable
}
*/

/*
#include <mega128.h>                    // ���� 6-3)

unsigned char led = 0xFF; // LED ��� �ʱⰪ 
unsigned char cnt = 0; // Ÿ�̸�/ī����0 ���ͷ�Ʈ �߻� Ƚ��
unsigned char TIM0_OVF_FLAG = 0;

void main(void) 
{ 
    DDRC = 0xFF; // ��Ʈ C ������� ���� 
    PORTC = led; // ��Ʈ C�� �ʱⰪ ���
    TIMSK = 0x01; // TOIE0 = 1 
    TCCR0 = 0x07; // ���������� = CK/1024 
    TCNT0 = 0x00; // Ÿ�̸�/ī����0 �������� �ʱⰪ S
    SREG = 0x80; // ���� ���ͷ�Ʈ �ο��̺� ��Ʈ I set 
    while(1)
    {
        if (TIM0_OVF_FLAG == 1)
        {
            TCNT0 = 0x0; // �ʱⰪ �缳��(0�� ��� ��������) 
            cnt++; // ���ͷ�Ʈ Ƚ�� +1
            if(cnt == 31)
            { // 16.384ms x 31 = 0.5sec 
                led = led ^ 0xFF; // led�� ���� 
                PORTC = led; // ��Ʈ ��� 
                cnt = 0; // ���ͷ�Ʈ ī���� ���� 
            }
            TIM0_OVF_FLAG = 0;
        }
    }
}
// 1/16us x 1024 x 256 = 16.384ms 
interrupt [TIM0_OVF] void timer_int0(void) 
{ 
    SREG &= 0x7F; // All Interrupt disable
    TIM0_OVF_FLAG = 1;
    SREG |= 0x80; // All Interrupt enable
}
*/

/*
#include <mega128.h>

unsigned char led = 0xFE;
unsigned char TIM2_COMP_FLAG = 0;

void main(void)
{
    DDRC = 0xFF;
    PORTC = led;
    
    TIMSK = 0x80;
    TCCR2 = 0x0D;
    OCR2 = 77;
    TCNT2 = 0;
    SREG = 0x80;
    
    while (1)
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
}

interrupt [TIM2_COMP] void timer_comp2(void)
{
    SREG &= 0x7F; // All Interrupt disable
    TIM2_COMP_FLAG = 1;
    SREG |= 0x80; // All Interrupt enable
}
*/

/*
#include <mega128.h>

unsigned char led = 0xFE;
unsigned char TIM0_OVF_FLAG = 0;

void main(void)
{
    DDRC = 0xFF;
    PORTC = led;
    
    TIMSK = 0x01;
    TCCR0 = 0x07;
    TCNT0 = 0x64;
    SREG = 0x80;
    
    while (1)
    {
        if (TIM0_OVF_FLAG == 1)
        {
            led = led << 1;
            led = led | 0x01;   // ������ ��Ʈ set
            if (led == 0xFF) led = 0xFE;
            PORTC = led;
            TIM0_OVF_FLAG = 0;            
        }
    }
}

interrupt [TIM0_OVF] void timer_int0(void)
{
    SREG &= 0x7F; // All Interrupt disable
    TIM0_OVF_FLAG = 1;
    SREG |= 0x80; // All Interrupt enable
}
*/



/*
#include <mega128.h>                // ���� 6-2)

unsigned char led = 0xFE;
unsigned char TIM0_COMP_FLAG = 0;

void main(void)
{
    DDRC = 0xFF;            // ��Ʈ C ��� ����
    PORTC = led;            // ��Ʈ C �ʱⰪ ���
    
    TIMSK = 0x02;           // OCIE0 = 1 ( ��� �� ���ͷ�Ʈ �ο��̺� )
    TCCR0 = 0x0F;           // WGM01 = 1, CTC���, 1024���� 
    OCR0 = 155;             // ��º� �������Ͱ� (9.98ms �ֱ�)
    TCNT0 = 0x0;            // Ÿ�̸�/ī����0 �������� �ʱⰪ
    SREG = 0x80;            
    
    while (1)
    {
        if (TIM0_COMP_FLAG == 1)
        {
            led = led << 1;     // 1bit Shift
            led = led | 0x01;   // ������ ��Ʈ set
            if (led == 0xFF) led = 0xFE;
            PORTC = led;
            TIM0_COMP_FLAG = 0;
        }    
    }
}

interrupt [TIM0_COMP] void timer_comp0(void)
{
    SREG &= 0x7F; // All Interrupt disable
    TIM0_COMP_FLAG = 1;
    SREG |= 0x80; // All Interrupt enable    
}
*/

/*
#include <mega128.h>                // ���� 6-1)

unsigned char led = 0xFE;
unsigned char TIM0_OVF_FLAG = 0;


void main(void)
{
    DDRC = 0xFF;            // ��ƮC ���
    PORTC = led;            // ��ƮC�� �ʱⰪ ��� 0xFE
    
    TIMSK = 0x01;           // TOIE0 = 1 (overflow interrupt enable)
    TCCR0 = 0x07;           // �Ϲݸ��, 1024����
    TCNT0 = 0x00;           // Ÿ�̸�/ī����0 �������� �ʱⰪ
    SREG |= 0x80;           // ���� ���ͷ�Ʈ enable ��Ʈ | set
    while(1)
    {
        if (TIM0_OVF_FLAG == 1)
        {
            TCNT0 = 0x00;           // �ʱⰪ �缳�� ( 0�ΰ�� ���� ���� )
            led = led << 1;         // 1bit Shift
            led = led | 0x01;       // ������ ��Ʈ set
            if (led == 0xff) led = 0xFE;        // ��� OFF�̸� �ʱⰪ �缳��
            PORTC = led;            // ��Ʈ ���
            TIM0_OVF_FLAG = 0;
        }    
    }
}

interrupt [TIM0_OVF] void timer_int0(void)
{
    SREG &= 0x7F; // All Interrupt disable
    TIM0_OVF_FLAG = 1;
    SREG |= 0x80; // All Interrupt enable        
}
*/

#include <mega128.h>
#include <delay.h>

typedef unsigned char U8;

const U8 seg_pat[10]= {0x3f, 0x06, 0x5b, 0x4f, 0x66, 0x6d, 0x7d, 0x07, 0x7f, 0x6f};
U8 led = 0xFF; // LED ��� �ʱⰪ
U8 cnt = 0; // Ÿ�̸�/ī����0 ���ͷ�Ʈ �߻� Ƚ��
U8 hour = 12, min = 0, sec = 0;
unsigned char TIM0_OVF_FLAG = 0;

void Time_out(void); // �ð� ǥ�� �Լ�

void main(void) { 
    unsigned char i;
    DDRB = 0xF0; 
    DDRD = 0xF0; 
    DDRG = 0x0F; 
    
    DDRC = 0xFF; // ��Ʈ C ������� ����
    PORTC = led; // ��Ʈ C�� �ʱⰪ ���
    
    TIMSK = 0x01; // TOIE0 = 1
    TCCR0 = 0x07; // ���������� = CK/1024
    TCNT0 = 178; // Ÿ�̸�/ī����0 �������� �ʱⰪ
    
    SREG |= 0x80; // ���� ���ͷ�Ʈ �ο��̺� ��Ʈ I se
    
    while(1) { 
        Time_out(); // �� 1�ʰ� �ݺ� ǥ��
    }
}

void Time_out(void) // display
{
    PORTG = 0b00001000; // 7-Seg DIG4 ON(PG3=1), �� 1�ڸ� ǥ��
    PORTD = ((seg_pat[min % 10] & 0x0F) << 4) | (PORTD & 0x0F);
    PORTB = (seg_pat[min % 10] & 0x70 ) | (PORTB & 0x0F);
                                                 
    // 5ms ������
    while (TIM0_OVF_FLAG < 1); // TIM0_OVF_FLAG�� 1�� �� ������ ���
    TIM0_OVF_FLAG = 0; // �÷��� �ʱ�ȭ  
      
    PORTG = 0b00000100; // 7-Seg DIG3 ON(PG2=1), �� 10�ڸ� ǥ��
    PORTD = ((seg_pat[min / 10] & 0x0F) << 4) | (PORTD & 0x0F);
    PORTB = (seg_pat[min / 10] & 0x70 ) | (PORTB & 0x0F); 
    
    // 5ms ������
    while (TIM0_OVF_FLAG < 1); // TIM0_OVF_FLAG�� 1�� �� ������ ���
    TIM0_OVF_FLAG = 0; // �÷��� �ʱ�ȭ  
     
    PORTG = 0b00000010; // 7-Seg DIG2 ON(PG1=1), �ð� 1�ڸ� ǥ��
    PORTD = ((seg_pat[hour % 10] & 0x0F) << 4) | (PORTD & 0x0F);
    PORTB = (seg_pat[hour % 10] & 0x70 ) | (PORTB & 0x0F); 
    
    // 5ms ������
    while (TIM0_OVF_FLAG < 1); // TIM0_OVF_FLAG�� 1�� �� ������ ���
    TIM0_OVF_FLAG = 0; // �÷��� �ʱ�ȭ  
    
    PORTG = 0b00000001; // 7-Seg DIG1 ON(PG0=1), �ð� 10�ڸ� ǥ��
    PORTD = ((seg_pat[hour / 10] & 0x0F) << 4) | (PORTD & 0x0F);
    PORTB = (seg_pat[hour / 10] & 0x70 ) | (PORTB & 0x0F); 
    
    // 5ms ������
    while (TIM0_OVF_FLAG < 1); // TIM0_OVF_FLAG�� 1�� �� ������ ���
    TIM0_OVF_FLAG = 0; // �÷��� �ʱ�ȭ   
}

interrupt [TIM0_OVF] void timer_int0(void) 
{     
    TIM0_OVF_FLAG++; // ������ �÷��� ����
    TCNT0 = 178;   
}
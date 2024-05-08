/*******************************************************************************************/
/*****                  Name        : ADC.c                                            *****/
/*****                  Modified and Programmed by JH Park                             *****/
/*****                  Date        : 2024. 04. 01 first edited                        *****/
/*******************************************************************************************/

#include <mega128.h>            // P85 
#include <delay.h>

typedef unsigned char u_char;

flash u_char seg_pat[10] = {0x3f, 0x06, 0x5b, 0x4f, 0x66, 0x6d, 0x7d, 0x07, 0x7f, 0x6f};

void AD_disp(int);

void main(void)
{
    int ad_val;
    
    DDRB = 0xF0;
    DDRD = 0xF0;
    DDRG = 0x0F;
    
    ADMUX = 0x07;           // ADC7 �ܱؼ� �Է� ���� 
    ADCSRA = 0x87;          // ADEN=1, 16MHz 256���� -> 125kHz
    delay_ms(5);
    
    while(1)
    { 
        ADCSRA = 0xC7; // ADEN=1, ADSC = 1 ��ȯ ���� 
        while((ADCSRA & 0x10) == 0); // ADIF=1�� �� ������
        
        ad_val = (int)ADCL + ((int)ADCH << 8); // A/D ��ȯ�� �б�
        
        AD_disp(ad_val); // A/D ��ȯ�� ǥ�� 
    }
}

void AD_disp(int val) 
{ 
    float fval;
    int ival, buf;
    u_char N100, N10, N1;
    
    fval = (float)val * 5.0 / 1024.0; // ���� ������ ��ȯ 
    ival = (int)(fval * 100.0 + 0.5); // �ݿø� �� ����ȭ, (�Ҽ� ��°�ڸ�����)
    
    N100 = (ival*10) / 100; // ������ ���� 
    buf = ival % 100;  
    
    N10 = (buf*10) / 10; // �Ҽ� ù° �ڸ� ���� 
    N1 = (buf*10) % 10; // �Ҽ� ��° �ڸ� ���� 
    
    PORTG = 0b00001000; // PG3=1, �Ҽ� ��° �ڸ� 
    PORTD = ((seg_pat[N1] & 0x0F) << 4) | (PORTD & 0x0F);
    PORTB = (seg_pat[N1] & 0x70 ) | (PORTB & 0x0F);
    delay_ms(1);                  
    
    PORTG = 0b00000100; // PG2=1, �Ҽ� ù° �ڸ� 
    PORTD = ((seg_pat[N10] & 0x0F) << 4) | (PORTD & 0x0F);
    PORTB = (seg_pat[N10] & 0x70 ) | (PORTB & 0x0F); 
    PORTB = PORTB | 0x80; // DP on(�Ҽ���)
    delay_ms(1);           
    
    PORTG = 0b00000010; // PG1=1, ������ 
    PORTD = ((seg_pat[N100] & 0x0F) << 4) | (PORTD & 0x0F);
    PORTB = (seg_pat[N100] & 0x70 ) | (PORTB & 0x0F); 
    delay_ms(1);
}

/*
#include <mega128.h>            // ���� 8-1)
#include <delay.h>

typedef unsigned char u_char;

flash u_char seg_pat[10] = {0x3f, 0x06, 0x5b, 0x4f, 0x66, 0x6d, 0x7d, 0x07, 0x7f, 0x6f};

void AD_disp(int);

void main(void)
{
    int ad_val;
    
    DDRB = 0xF0;
    DDRD = 0xF0;
    DDRG = 0x0F;
    
    ADMUX = 0x06;           // ADC6 �ܱؼ� �Է� ���� 
    ADCSRA = 0x87;          // ADEN=1, 16MHz 256���� -> 125kHz
    delay_ms(5);
    
    while(1)
    { 
        ADCSRA = 0xC7; // ADEN=1, ADSC = 1 ��ȯ ���� 
        while((ADCSRA & 0x10) == 0); // ADIF=1�� �� ������
        
        ad_val = (int)ADCL + ((int)ADCH << 8); // A/D ��ȯ�� �б�
        
        AD_disp(ad_val); // A/D ��ȯ�� ǥ�� 
    }
}

void AD_disp(int val) 
{ 
    float fval;
    int ival, buf;
    u_char N100, N10, N1;
    
    fval = (float)val * 5.0 / 1024.0; // ���� ������ ��ȯ 
    ival = (int)(fval * 100.0 + 0.5); // �ݿø� �� ����ȭ, (�Ҽ� ��°�ڸ�����)
    
    N100 = ival / 100; // ������ ���� 
    buf = ival % 100;  
    
    N10 = buf / 10; // �Ҽ� ù° �ڸ� ���� 
    N1 = buf % 10; // �Ҽ� ��° �ڸ� ���� 
    
    PORTG = 0b00001000; // PG3=1, �Ҽ� ��° �ڸ� 
    PORTD = ((seg_pat[N1] & 0x0F) << 4) | (PORTD & 0x0F);
    PORTB = (seg_pat[N1] & 0x70 ) | (PORTB & 0x0F);
    delay_ms(1);                  
    
    PORTG = 0b00000100; // PG2=1, �Ҽ� ù° �ڸ� 
    PORTD = ((seg_pat[N10] & 0x0F) << 4) | (PORTD & 0x0F);
    PORTB = (seg_pat[N10] & 0x70 ) | (PORTB & 0x0F);
    delay_ms(1);           
    
    PORTG = 0b00000010; // PG1=1, ������ 
    PORTD = ((seg_pat[N100] & 0x0F) << 4) | (PORTD & 0x0F);
    PORTB = (seg_pat[N100] & 0x70 ) | (PORTB & 0x0F);
    PORTB = PORTB | 0x80; // DP on(�Ҽ���) 
    delay_ms(1);
}
*/

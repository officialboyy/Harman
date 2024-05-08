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
    
    ADMUX = 0x07;           // ADC7 단극성 입력 선택 
    ADCSRA = 0x87;          // ADEN=1, 16MHz 256분주 -> 125kHz
    delay_ms(5);
    
    while(1)
    { 
        ADCSRA = 0xC7; // ADEN=1, ADSC = 1 변환 시작 
        while((ADCSRA & 0x10) == 0); // ADIF=1이 될 때까지
        
        ad_val = (int)ADCL + ((int)ADCH << 8); // A/D 변환값 읽기
        
        AD_disp(ad_val); // A/D 변환값 표시 
    }
}

void AD_disp(int val) 
{ 
    float fval;
    int ival, buf;
    u_char N100, N10, N1;
    
    fval = (float)val * 5.0 / 1024.0; // 전압 값으로 변환 
    ival = (int)(fval * 100.0 + 0.5); // 반올림 후 정수화, (소수 둘째자리까지)
    
    N100 = (ival*10) / 100; // 정수부 추출 
    buf = ival % 100;  
    
    N10 = (buf*10) / 10; // 소수 첫째 자리 추출 
    N1 = (buf*10) % 10; // 소수 둘째 자리 추출 
    
    PORTG = 0b00001000; // PG3=1, 소수 둘째 자리 
    PORTD = ((seg_pat[N1] & 0x0F) << 4) | (PORTD & 0x0F);
    PORTB = (seg_pat[N1] & 0x70 ) | (PORTB & 0x0F);
    delay_ms(1);                  
    
    PORTG = 0b00000100; // PG2=1, 소수 첫째 자리 
    PORTD = ((seg_pat[N10] & 0x0F) << 4) | (PORTD & 0x0F);
    PORTB = (seg_pat[N10] & 0x70 ) | (PORTB & 0x0F); 
    PORTB = PORTB | 0x80; // DP on(소수점)
    delay_ms(1);           
    
    PORTG = 0b00000010; // PG1=1, 정수부 
    PORTD = ((seg_pat[N100] & 0x0F) << 4) | (PORTD & 0x0F);
    PORTB = (seg_pat[N100] & 0x70 ) | (PORTB & 0x0F); 
    delay_ms(1);
}

/*
#include <mega128.h>            // 예제 8-1)
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
    
    ADMUX = 0x06;           // ADC6 단극성 입력 선택 
    ADCSRA = 0x87;          // ADEN=1, 16MHz 256분주 -> 125kHz
    delay_ms(5);
    
    while(1)
    { 
        ADCSRA = 0xC7; // ADEN=1, ADSC = 1 변환 시작 
        while((ADCSRA & 0x10) == 0); // ADIF=1이 될 때까지
        
        ad_val = (int)ADCL + ((int)ADCH << 8); // A/D 변환값 읽기
        
        AD_disp(ad_val); // A/D 변환값 표시 
    }
}

void AD_disp(int val) 
{ 
    float fval;
    int ival, buf;
    u_char N100, N10, N1;
    
    fval = (float)val * 5.0 / 1024.0; // 전압 값으로 변환 
    ival = (int)(fval * 100.0 + 0.5); // 반올림 후 정수화, (소수 둘째자리까지)
    
    N100 = ival / 100; // 정수부 추출 
    buf = ival % 100;  
    
    N10 = buf / 10; // 소수 첫째 자리 추출 
    N1 = buf % 10; // 소수 둘째 자리 추출 
    
    PORTG = 0b00001000; // PG3=1, 소수 둘째 자리 
    PORTD = ((seg_pat[N1] & 0x0F) << 4) | (PORTD & 0x0F);
    PORTB = (seg_pat[N1] & 0x70 ) | (PORTB & 0x0F);
    delay_ms(1);                  
    
    PORTG = 0b00000100; // PG2=1, 소수 첫째 자리 
    PORTD = ((seg_pat[N10] & 0x0F) << 4) | (PORTD & 0x0F);
    PORTB = (seg_pat[N10] & 0x70 ) | (PORTB & 0x0F);
    delay_ms(1);           
    
    PORTG = 0b00000010; // PG1=1, 정수부 
    PORTD = ((seg_pat[N100] & 0x0F) << 4) | (PORTD & 0x0F);
    PORTB = (seg_pat[N100] & 0x70 ) | (PORTB & 0x0F);
    PORTB = PORTB | 0x80; // DP on(소수점) 
    delay_ms(1);
}
*/

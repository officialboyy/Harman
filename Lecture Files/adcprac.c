#include <mega128.h>
#include <delay.h>

typedef unsigned char u_char;
flash unsigned char seg_pat[10]= {0x3f, 0x06, 0x5b, 0x4f, 0x66, 0x6d, 0x7d, 0x07, 0x7f, 0x6f};

void AD_disp(int);

void main(void)
{
    int ad_val;

    DDRB = 0xF0;
    DDRD = 0xF0;
    DDRG = 0x0F;

    ADMUX = 0x07;                //ADC6 입력 선택  [0x06 >> 가변저항에 걸리는 전압 측정 , 0x07 >> 온도센서에 enable]
    ADCSRA = 0x87;              //ADEN =1, 16MHz 256분주 -> 125kHz
    delay_ms(5);

    while (1)
    {
        ADCSRA = 0xC7;               //ADEN=1 ,  ADSC =1 변환시작
        while ((ADCSRA & 0x10)==0);  //ADIF =1이 될 때까지

        ad_val =(int)ADCL + ((int)ADCH <<8);         //A/D 변환값 읽기

        AD_disp(ad_val);
    }
}

void AD_disp(int val)
{
    float fval;
    int ival, buf;
    u_char N100, N10, N1;

    fval = (float)val*5.0 / 1024.0;      //전압 값으로 변환
    ival = (int)(fval *1000.0 + 5.0);    //반올림 후 정수화(소수 둘째자리까지)

    N100 =ival / 100;
    buf= ival % 100;
    N10 =buf / 10;
    N1 =buf % 10;
    PORTG = 0b00001000;
    PORTD = ((seg_pat [N1] & 0x0F) << 4) | (PORTD &0x0F);
    PORTB = (seg_pat [N1] & 0x70 ) | (PORTB &0x0F);
    delay_ms(1);
    PORTG = 0b00000100;
    PORTD = ((seg_pat [N10] & 0x0F) << 4) | (PORTD & 0x0F);
    PORTB = (seg_pat [N10] & 0x70 ) | (PORTB & 0x0F);
    PORTB = PORTB | 0x80; // DP on (소수점 )
    delay_ms(1);
    PORTG = 0b00000010;
    PORTD = ((seg_pat [N100] & 0x0F) << 4) | (PORTD & 0x0F);
    PORTB = (seg_pat [N100] & 0x70 ) | (PORTB & 0x0F);
    delay_ms(1);

}
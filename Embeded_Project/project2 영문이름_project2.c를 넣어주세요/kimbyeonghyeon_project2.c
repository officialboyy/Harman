#include <mega128.h>                              //���̺귯�� ��� ���� ����
#include <delay.h>

typedef unsigned char U8;                         //typedef ��ó������ ���  ������ �پ��� ����� ���� main���� Global variable�� ����
typedef unsigned short U16;
typedef unsigned int U32;

U8 EINT4_FLAG_BIT = 0;                              //4~7�� �÷��� ��Ʈ 0
U8 EINT5_FLAG_BIT = 0;
U8 EINT6_FLAG_BIT = 0;
U8 EINT7_FLAG_BIT = 0;

U8 ADC_RESULT_FLAG = 0;                           //������ ��ȯ �÷��� 0

U8 TIMER0_OVF_FLAG_BIT = 0;                         // Ÿ�̸� �����÷� �÷��� ��Ʈ 0
U8 TIMER1_CTC_FLAG_BIT = 0;                         // Ÿ�̸�1 ���о� ��ġ �÷��� ��Ʈ 0
U8 TIMER2_OVF_FLAG_BIT = 0;                         // Ÿ�̸�2 �����÷� �÷��� ��Ʈ 0
U16 TIMER2_OVF_COUNT = 0;                           // Ÿ�̸�2 �����÷� ī��Ʈ 0

U8 seg_pat[10] = { 0x3F, 0x06, 0x5B, 0x4F, 0x66, 0x6D, 0x7D, 0x07, 0x7F, 0x6F }; // 7segment 0~9 �迭
U32 birthyear = 1997;           //���� 1997
U32 birthday = 1112;            //���� 1112
U8 i;                           // i 
U8 tp_val, ad_val;              // tp, ad val

void Seg4_out(U32 value);       //������� void
void AD_disp(U32 val);          //���� void
void TP_disp(U32 val);          //�µ� void
void Putch(U8 data);            //PUTCH void
void EXIT4_TIMER2(void);        //4 Ÿ�̸�2 void
void EXIT5_TIMER1(void);        //5 Ÿ�̸�1 void
void EXIT6_PWM_M6(void);        //6 pwm 6 void
void EXIT7_PWM_M2(void);        //7 pwm 2 void

void main(void) {
    DDRC = 0xFF;    PORTC = 0xFF;                //�۵� Ȯ�ο����� LED ��� ����
    DDRB = 0xF0;                                 //���÷��̸� ���� ��ƮB 4,5,6,7 ��� ����(LED)
    DDRD = 0xF0;                                 //���÷��̸� ���� ��ƮD 4,5,6,7 ��� ����(LED)
    DDRG = 0x0F;

    TIMSK = 0x01;     // TOIE0 = 1 Ÿ�̸� ī���� 0 �����÷ο� ���ͷ�Ʈ enable   // ���ͷ�Ʈ����
    TCCR0 = 0x07;     // �Ϲݸ�� , 1024 �� ��
    TCNT0 = 177;      //Ÿ�̸� ī���� 0 �������� �ʱⰪ



    UCSR0A = 0x0;           // �͹̳ΰ���
    UCSR0B = 0b00001000;    // �۽ź� enable TXEN0 [3] =1, RXEN0 [4] =1
    UCSR0C = 0b00000110;    //�񵿱� :0, No parity: 00, ���� bit 1 �̸� :0, ������ 8 ��Ʈ ���
    UBRR0H = 0;             // 16MHz �϶� , BAUD = 9600
    UBRR0L = 103;           // BAUD = 9600



    EIMSK = 0b11110000;     //���ͷ�Ʈ ��� ���� ���� �������ͷ� INT4,5,6,7 enable     //���ͷ�Ʈ����
    EICRB = 0b10111011;     //INT4,5,6,7�� B�� ���� Interrupt trigger ��� ����(7fa,6ri,5fa,4ri)
    SREG |= 0x80;           //status resister bit7(MSB)�� 1���� �����Ͽ� ��� ���ͷ�Ʈ�� ���(global interrupt enable),OR�� ����Ͽ� ��������Ʈ�� �״��

    Seg4_out(birthyear);    //���� 
    Seg4_out(birthday);     //���� ��¹�

    while (1)
    {
        if (ADC_RESULT_FLAG == 0) Seg4_out(birthday);              //�µ� ������� ���� ��(ADC RESULT FLAG =0)�� ���� ��� ��� 
        else TP_disp(tp_val);                                    //�µ� ���� ���ö��� �µ��� ���÷�����

        if (EINT4_FLAG_BIT == 1) {          //���ͷ�Ʈ�� �߻��ϸ�
            EINT4_FLAG_BIT = 0;            //0���� �ٽ� �ٲ��ְ�
            EXIT4_TIMER2();              //EXIT_TIMER2 ����
        } //end of if

        if (EINT5_FLAG_BIT == 1) {
            EINT5_FLAG_BIT = 0;
            EXIT5_TIMER1();             //EXIT5���� TIMER1�Լ��� ����.
        } //end of if

        if (EINT6_FLAG_BIT == 1) {
            EINT6_FLAG_BIT = 0;
            PORTC = 0xF0;
            EXIT6_PWM_M6();             //EXIT6���� PWM 1 �Լ��� ����.
        } //end of if

        if (EINT7_FLAG_BIT == 1) {
            EINT7_FLAG_BIT = 0;
            EXIT7_PWM_M2();     //EXIT7���� PWM 2 �Լ��� ����.
        } //end of if
                                                
        if (TIMER2_OVF_FLAG_BIT == 1) {      //Ÿ�̸� �����÷� �÷��� ��Ʈ�� 1�̸�
            TIMER2_OVF_FLAG_BIT = 0;         //Ÿ�̸� �����÷� �÷��� ��Ʈ 0���� ���þ���  
            TIMER2_OVF_COUNT++;              //Ÿ�̸� 2 �����÷� ī��Ʈ++
            if (TIMER2_OVF_COUNT == 4) {        //�ֱⰡ 1ms�̱� ������ 4500�� �۵��ؾ� 4.5s, ī��Ʈ�� 4�� 4�� �Һ� ON
                PORTC = 0xF0;
                TIMER2_OVF_COUNT = 0;        // ī��Ʈ 0 �ʱ�ȭ
                ADC_RESULT_FLAG++;           // ADC ����Ʈ �÷���++
                ADMUX = 0x07;                //ADC7 �Է� ����  [0x07 >> �µ������� enable]     000/ 00111
                ADCSRA = 0xE2;               //ADEN =1, 16MHz 256���� -> 125kHz           1(ad��ȯ�� ����) 1(adc���ۺ�Ʈ ����) 1(����)00010(���ֺ�256)
                delay_us(100);               // ��ȯ�ð��� ����� �߻��ϴ� ADC������ ������ ���� �����̰� �ʿ���

 //               while ((ADCSRA & 0x10) == 0);               //ADIF =1�� �� ������
                tp_val = (U32)ADCL + ((U32)ADCH << 8);      //A/D ��ȯ�� �б�
                if (ADC_RESULT_FLAG == 50) {
                    ADC_RESULT_FLAG = 0;                  // 50ȸ���ȸ� �µ� ǥ�� (1ms �����̶� ���� �ʹ� �۾� 50ȸ)
                    TIMSK &= 0b10111111;                  // TOIE2 = 0���� �����Ͽ� ���ͷ�Ʈ�� �Ȱɸ��� �ϴ� ���
                } //end of if
            }
        }
        if (TIMER1_CTC_FLAG_BIT == 1) {
            TIMER1_CTC_FLAG_BIT = 0;
            ADMUX = 0x06;                //ADC6 �Է� ����  [0x06 >> �������׿� �ɸ��� ���� ���� ]
            ADCSRA = 0x87;              //ADEN =1, 16MHz 256���� -> 125kHz     1000 ad��ȯ���� 0111 ���ֺ�

            ADCSRA = 0xC7;               //ADEN=1 ,  ADSC =1 ��ȯ����     1100 adc ��ȯ��
            while ((ADCSRA & 0x10) == 0);  //ADIF =1�� �� ������
            ad_val = (int)ADCL + ((int)ADCH << 8);         //A/D ��ȯ�� �б�
            AD_disp(ad_val);

        }



    } //end of while
} //end of main


void Seg4_out(U32 value)    //�й� ���ڸ� 2020 ���÷���
{
    U32 N1, N10, N100, N1000, buf;
    N1000 = value / 1000; // 1000�ڸ� ����
    buf = value % 1000;
    N100 = buf / 100; // 100�ڸ� ����
    buf = buf % 100;
    N10 = buf / 10; // 10�ڸ� ����
    N1 = buf % 10; // 1�ڸ� ����

    for (i = 0;i < 50;i++)
    {
        PORTG = 0b00001000;
        PORTD = ((seg_pat[N1] & 0x0F) << 4) | (PORTD & 0x0F);
        PORTB = (seg_pat[N1] & 0x70) | (PORTB & 0x0F);
        while (TIMER0_OVF_FLAG_BIT < 1); // 5ms delay
        TIMER0_OVF_FLAG_BIT = 0;

        PORTG = 0b00000100;
        PORTD = ((seg_pat[N10] & 0x0F) << 4) | (PORTD & 0x0F);
        PORTB = (seg_pat[N10] & 0x70) | (PORTB & 0x0F);
        while (TIMER0_OVF_FLAG_BIT < 1);
        TIMER0_OVF_FLAG_BIT = 0;

        PORTG = 0b00000010;
        PORTD = ((seg_pat[N100] & 0x0F) << 4) | (PORTD & 0x0F);
        PORTB = (seg_pat[N100] & 0x70) | (PORTB & 0x0F);
        while (TIMER0_OVF_FLAG_BIT < 1);
        TIMER0_OVF_FLAG_BIT = 0;

        PORTG = 0b00000001;
        PORTD = ((seg_pat[N1000] & 0x0F) << 4) | (PORTD & 0x0F);
        PORTB = (seg_pat[N1000] & 0x70) | (PORTB & 0x0F);
        while (TIMER0_OVF_FLAG_BIT < 1);
        TIMER0_OVF_FLAG_BIT = 0;

    } // end of for
}//end of Seg4_out

//�µ� ���� �Լ�
void TP_disp(U32 val)
{
    float fval;
    U32 ival, buf, N100, N10, N1;

    fval = (float)val * 5.0 / 1024.0;      //���� ������ ��ȯ
    ival = (int)(fval * 1000.0 + 5.0);    //�ݿø� �� ����ȭ(�Ҽ� ��°�ڸ�����)


    N100 = ival / 100;
    buf = ival % 100;
    N10 = buf / 10;
    N1 = buf % 10;

    PORTG = 0b00001000;
    PORTD = ((seg_pat[N1] & 0x0F) << 4) | (PORTD & 0x0F);
    PORTB = (seg_pat[N1] & 0x70) | (PORTB & 0x0F);
    while (TIMER0_OVF_FLAG_BIT < 1);
    TIMER0_OVF_FLAG_BIT = 0;

    PORTG = 0b00000100;
    PORTD = 0x00;
    PORTB = 0x80; // DP on (�Ҽ��� )
    while (TIMER0_OVF_FLAG_BIT < 1);
    TIMER0_OVF_FLAG_BIT = 0;

    PORTG = 0b00000010;
    PORTD = ((seg_pat[N10] & 0x0F) << 4) | (PORTD & 0x0F);
    PORTB = (seg_pat[N10] & 0x70) | (PORTB & 0x0F);
    while (TIMER0_OVF_FLAG_BIT < 1);
    TIMER0_OVF_FLAG_BIT = 0;

    PORTG = 0b00000001;
    PORTD = ((seg_pat[N100] & 0x0F) << 4) | (PORTD & 0x0F);
    PORTB = (seg_pat[N100] & 0x70) | (PORTB & 0x0F);
    while (TIMER0_OVF_FLAG_BIT < 1);
    TIMER0_OVF_FLAG_BIT = 0;



}
// ���� ���� UART ���
void AD_disp(U32 val)
{
    float fval;
    U32 ival, buf, N100, N10, N1;

    fval = (float)val * 5.0 / 1024.0;      //���� ������ ��ȯ
    ival = (int)(fval * 1000.0 + 5.0);    //�ݿø� �� ����ȭ(�Ҽ� ��°�ڸ�����)

    N100 = ival / 100;
    buf = ival % 100;
    N10 = buf / 10;
    N1 = buf % 10;

    N100 = N100 + 0x30;
    N10 = N10 + 0x30;
    N1 = N1 + 0x30;
    Putch(N100);Putch(0x2E); Putch(N10); Putch(N1); Putch('V');
    while ((UCSR0A & 0x20) == 0x0); UDR0 = 0x0D; // �ٹٲ�
}

void Putch(char data) // �� ����Ʈ �۽�
{
    while ((UCSR0A & 0x20) == 0x0); //UDRE0[5] = 1 �۽��غ�Ϸ� �� ������ ���
    UDR0 = data; // ������ ����
}


interrupt[EXT_INT4] void external_int4(void) {
    SREG &= 0x7F;           //�ٸ� ���ͷ�Ʈ ���x
    EINT4_FLAG_BIT = 1;
    SREG |= 0x80;           //�ٸ� ���ͷ�Ʈ ��� 
}

interrupt[EXT_INT5] void external_int5(void) {
    SREG &= 0x7F;
    EINT5_FLAG_BIT = 1;
    SREG |= 0x80;
}

interrupt[EXT_INT6] void external_int6(void) {
    SREG &= 0x7F;
    EINT6_FLAG_BIT = 1;
    SREG |= 0x80;
}

interrupt[EXT_INT7] void external_int7(void) {
    SREG &= 0x7F;
    EINT7_FLAG_BIT = 1;
    SREG |= 0x80;
}

void EXIT6_PWM_M6(void) {
    TCCR3A = 0b10000010;                        //OC3A(PE3)�� �������, mode6
    TCCR3B = 0b00001100;                        //mode6(Fast PWM���),256���� - 122.07Hz ����
    TCCR3C = 0x00;

    TCNT3H = 0x0;                               //�������� �ʱ�ȭ
    TCNT3L = 0x0;                               //�������� �ʱ�ȭ
    OCR3AH = 0x00;                               //260,hex104�� ���� ��.
    OCR3AL = 0x05;

    DDRE |= 0x08;                               //TIMER3 PWM PIN PE3�� DDRE 3�� ��¼����ؾ� PWM ������ ��µ�
} //end of EXIT6_PWM_M6

void EXIT7_PWM_M2(void) {
    TCCR3A = 0b10000010;                        //OC3A(PE3)�� �������, mode2
    TCCR3B = 0b00000100;                        //mode2(PWM Phase correct ���),256���� - 61.035Hz
    TCCR3C = 0x00;

    TCNT3H = 0x0;                               //�������� �ʱ�ȭ
    TCNT3L = 0x0;                               //�������� �ʱ�ȭ
    OCR3AH = 0x00;                               //260,hex104�� ���� ��.
    OCR3AL = 0x05;
    DDRE |= 0x08;                               //PE3 ���
} //end of EXIT7_PWM_M2
interrupt[TIM0_OVF] void TIMER0_OVF_int(void) {
    SREG &= 0x7F;
    TIMER0_OVF_FLAG_BIT = 1;
    TCNT0 = 177;    //�ʱⰪ�� ���ͷ�Ʈ �ȿ��� �������
    SREG |= 0x80;
}

interrupt[TIM1_COMPA] void TIMER1_COMP_int(void) {
    SREG &= 0x7F;
    TIMER1_CTC_FLAG_BIT = 1;
    SREG |= 0x80;
}


interrupt[TIM2_OVF] void TIMER2_OVF_int(void) {
    SREG &= 0x7F;
    TIMER2_OVF_FLAG_BIT = 1;
    TCNT2 = 6;     //�ʱⰪ�� ���ͷ�Ʈ �ȿ��� �������
    SREG |= 0x80;
}

void EXIT4_TIMER2(void) {
    TIMSK |= 0x40;          // in2
    TCCR2 = 0x03;           // �Ϲݸ�� , 64 �� ��
    TCNT2 = 6;              //Ÿ�̸� ī���� 2

} //end of EXIT4_TIMER2

void EXIT5_TIMER1(void) {
    TCCR1A = 0b00000000;                         // Ÿ�̸� 1 compare ���
    TCCR1B = 0b00001100;                         // Ÿ�̸� 1 compare ���, ���ֺ� 256
    TCCR1C = 0x00;

    TCNT1H = 0x0;                               //�������� �ʱ�ȭ
    TCNT1L = 0x0;                               //�������� �ʱ�ȭ
    OCR1AH = 0xF4;                              //���� 8��Ʈ�� 0xF4�� ����
    OCR1AL = 0x23;                              //���� 8��Ʈ�� 0x23���� ����// 1000ms
    TCNT1 = 0;                                  //�ʱⰪ
    TIMSK |= 0x10;                              //�����

} //end of EXIT4_TIMER2
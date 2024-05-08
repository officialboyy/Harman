/****************************************************************************************************************************/
/* project : 2                                                                                            */
/* Name : SongDabom                                                                                                                    */
/* Modify :                                                                                                                   */
/* Date : 2024-04-02                                                                                                                  */
/* Description :                                                                                                             */
/****************************************************************************************************************************/

#include <mega128.h>                              //���̺귯�� ��� ���� ����
#include <delay.h>

typedef unsigned char U8;                         //typedef ��ó������ ���
typedef unsigned short U16;                       //������ �پ��� ����� ���� main���� Global variable�� ����
typedef unsigned int U32;

U8 EINT4_FLAG_BIT=0;                              //���� ����
U8 EINT5_FLAG_BIT=0;
U8 EINT6_FLAG_BIT=0;
U8 EINT7_FLAG_BIT=0;

U8 ADC_RESULT_FLAG = 0;

U8 TIMER0_OVF_FLAG_BIT=0;
U8 TIMER1_CTC_FLAG_BIT=0;
U8 TIMER2_OVF_FLAG_BIT=0;
U16 TIMER2_OVF_COUNT=0;
U16 TIMER1_CTC_COUNT=0;

U8 seg_pat[10]= {0x3F, 0x06, 0x5B, 0x4F, 0x66, 0x6D, 0x7D, 0x07, 0x7F, 0x6F}; // 7segment 0~9
U32 birthyear = 1999;
U32 birthday = 701;
U8 i;
U32 tp_val, ad_val;

void Seg4_out(U32 value);
void AD_disp(U32 val);
void TP_disp(U32 val);
void Putch(U8 data);
void EXIT4_TIMER2(void);
void EXIT5_TIMER1(void);
void EXIT6_PWM_M6(void);
void EXIT7_PWM_M2(void);

void main(void){
    DDRC = 0xFF;    PORTC = 0xFF;              //�۵� Ȯ�ο����� LED ��� ����
    DDRB = 0xF0;                                 //�й� ���÷��̸� ���� ��ƮB 4,5,6,7 ��� ����(LED)
    DDRD = 0xF0;                                 //�й� ���÷��̸� ���� ��ƮD 4,5,6,7 ��� ����(LED)
    DDRG = 0x0F;

    TIMSK= 0x01 ; // TOIE0 = 1 Ÿ�̸� ī���� 0 �����÷ο� ���ͷ�Ʈ enable
    TCCR0 =0x07 ; // �Ϲݸ�� , 1024 �� ��
    TCNT0 = 177; //Ÿ�̸� ī���� 0 �������� �ʱⰪ



    UCSR0A= 0x0;
    UCSR0B = 0b00001000; // �۽ź� enable TXEN0 [3] = 1, RXEN0 [4] =1
    UCSR0C = 0b00000110; //�񵿱� :0, No parity: 00, ���� bit 1 �̸� :0, ������ 8 ��Ʈ ���
    UBRR0H = 0; // 16MHz �϶� , BAUD = 9600
    UBRR0L = 103; // BAUD = 9600

    EIMSK = 0b11110000;   //���ͷ�Ʈ ��� ���� ���� �������ͷ� INT4,5,6,7 enable
    EICRB = 0b10111011;   //INT4,5,6,7�� B�� ���� Interrupt trigger ��� ����(7fa,6ri,5fa,4ri)
    SREG |= 0x80;         //status resister bit7(MSB)�� 1���� �����Ͽ� ��� ���ͷ�Ʈ�� ���(global interrupt enable),OR�� ����Ͽ� ��������Ʈ�� �״��

    Seg4_out(birthyear); //���� ��¹�
    Seg4_out(birthday);

    while(1)
    {
        if(ADC_RESULT_FLAG == 0) Seg4_out(birthday);
        else TP_disp(tp_val);


        if(EINT4_FLAG_BIT==1) {          //���ͷ�Ʈ�� �߻��ϸ�
            EINT4_FLAG_BIT=0;            //0���� �ٽ� �ٲ��ְ�
            TIMER2_OVF_COUNT = 0;
            EXIT4_TIMER2();              //EXIT4���� TIMER2�Լ��� ����
        } //end of if

        if(EINT5_FLAG_BIT==1) {
            EINT5_FLAG_BIT=0;
            EXIT5_TIMER1();  //EXIT5���� TIMER1�Լ��� ����.
        } //end of if

        if(EINT6_FLAG_BIT==1) {
            EINT6_FLAG_BIT=0;
            EXIT6_PWM_M6(); //EXIT6���� PWM 1 �Լ��� ����.
        } //end of if

        if(EINT7_FLAG_BIT==1) {
            EINT7_FLAG_BIT=0;
            EXIT7_PWM_M2(); //EXIT7���� PWM 2 �Լ��� ����.
        } //end of if

        if(TIMER2_OVF_FLAG_BIT == 1){
            TIMER2_OVF_FLAG_BIT = 0;
            TIMER2_OVF_COUNT++;
            if(TIMER2_OVF_COUNT == 4) {     //�ֱⰡ 1ms�̱� ������ 4500�� �۵��ؾ� 4.5s���� �ؾ��ϳ� 4�� �����ص� 4�ʰ� ���ø�ŭ �ֱⰡ �����. ������ ��ã��
                TIMER2_OVF_COUNT = 0;
                ADC_RESULT_FLAG++;
                ADMUX = 0x07;                //ADC7 �Է� ����  [0x07 >> �µ������� enable]
                ADCSRA = 0xE2;               //ADEN =1, 16MHz 256���� -> 125kHz

                delay_us(100);               // ��ȯ�ð��� ����� �߻��ϴ� ADC������ ������ ���� �����̰� �ʿ���
                tp_val =(U32)ADCL + ((U32)ADCH <<8);  //A/D ��ȯ�� �б�
                if(ADC_RESULT_FLAG==10){
                    ADC_RESULT_FLAG = 0;                  // 50ȸ���ȸ� �µ� ǥ�� (1ms �����̶� ���� �ʹ� �۾� 50ȸ)
                    TIMSK &= 0b10111111;                   // TOIE2 = 0���� �����Ͽ� ���ͷ�Ʈ�� �Ȱɸ��� �ϴ� ���
                } //end of if
            }
        }

        if(TIMER1_CTC_FLAG_BIT == 1){
            TIMER1_CTC_FLAG_BIT = 0;
            TIMER1_CTC_COUNT++;
            if(TIMER1_CTC_COUNT == 6)
            {
                TIMER1_CTC_COUNT = 0;

                ADMUX = 0x06;                //ADC6 �Է� ����  [0x06 >> �������׿� �ɸ��� ���� ���� ]
                ADCSRA = 0x87;              //ADEN =1, 16MHz 256���� -> 125kHz

                ADCSRA = 0xC7;               //ADEN=1 ,  ADSC =1 ��ȯ����
                while ((ADCSRA & 0x10)==0);  //ADIF =1�� �� ������
                ad_val =(int)ADCL + ((int)ADCH <<8);         //A/D ��ȯ�� �б�
                AD_disp(ad_val);

            }
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

    for (i=0;i < 50;i++)
    {
        PORTG = 0b00001000;
        PORTD = ((seg_pat[N1] & 0x0F) << 4) | (PORTD & 0x0F);
        PORTB = (seg_pat[N1] & 0x70 ) | (PORTB & 0x0F);
        while (TIMER0_OVF_FLAG_BIT < 1); // 5ms delay
        TIMER0_OVF_FLAG_BIT = 0;

        PORTG = 0b00000100;
        PORTD = ((seg_pat[N10] & 0x0F) << 4) | (PORTD & 0x0F);
        PORTB = (seg_pat[N10] & 0x70 ) | (PORTB & 0x0F);
        while (TIMER0_OVF_FLAG_BIT < 1);
        TIMER0_OVF_FLAG_BIT = 0;

        PORTG = 0b00000010;
        PORTD = ((seg_pat[N100] & 0x0F) << 4) | (PORTD & 0x0F);
        PORTB = (seg_pat[N100] & 0x70 ) | (PORTB & 0x0F);
        while (TIMER0_OVF_FLAG_BIT < 1);
        TIMER0_OVF_FLAG_BIT = 0;

        PORTG = 0b00000001;
        PORTD = ((seg_pat[N1000] & 0x0F) << 4) | (PORTD & 0x0F);
        PORTB = (seg_pat[N1000] & 0x70 ) | (PORTB & 0x0F);
        while (TIMER0_OVF_FLAG_BIT < 1);
        TIMER0_OVF_FLAG_BIT = 0;

    } // end of for
}//end of Seg4_out

//�µ� ���� �Լ�
void TP_disp(U32 val)
{
    float fval;
    U32 ival, buf, N100, N10, N1;

    fval = (float)val*5.0 / 1024.0;      //���� ������ ��ȯ
    ival = (int)(fval *1000.0 + 5.0);    //�ݿø� �� ����ȭ(�Ҽ� ��°�ڸ�����)


    N100 =ival / 100;
    buf= ival % 100;
    N10 =buf / 10;
    N1 =buf % 10;

    PORTG = 0b00001000;
    PORTD = ((seg_pat [N1] & 0x0F) << 4) | (PORTD &0x0F);
    PORTB = (seg_pat [N1] & 0x70 ) | (PORTB &0x0F);
    while (TIMER0_OVF_FLAG_BIT < 1);
    TIMER0_OVF_FLAG_BIT = 0;

    PORTG = 0b00000100;
    PORTD = 0x00;
    PORTB = 0x80; // DP on (�Ҽ��� )
    while (TIMER0_OVF_FLAG_BIT < 1);
    TIMER0_OVF_FLAG_BIT = 0;

    PORTG = 0b00000010;
    PORTD = ((seg_pat [N10] & 0x0F) << 4) | (PORTD & 0x0F);
    PORTB = (seg_pat [N10] & 0x70 ) | (PORTB & 0x0F);
    while (TIMER0_OVF_FLAG_BIT < 1);
    TIMER0_OVF_FLAG_BIT = 0;

    PORTG = 0b00000001;
    PORTD = ((seg_pat [N100] & 0x0F) << 4) | (PORTD & 0x0F);
    PORTB = (seg_pat [N100] & 0x70 ) | (PORTB & 0x0F);
    while (TIMER0_OVF_FLAG_BIT < 1);
    TIMER0_OVF_FLAG_BIT = 0;



}
// ���� ���� UART ���
void AD_disp(U32 val)
{
    float fval;
    U32 ival, buf, N100, N10, N1;

    fval = (float)val*5.0 / 1024.0;      //���� ������ ��ȯ
    ival = (int)(fval *100.0 + 5.0);    //�ݿø� �� ����ȭ(�Ҽ� ��°�ڸ�����)

    N100 =ival / 100;
    buf= ival % 100;
    N10 =buf / 10;
    N1 =buf % 10;

    N100 = N100 + 0x30;
    N10 = N10 + 0x30;
    N1 = N1 + 0x30;
    Putch(N100);Putch(0x2E); Putch(N10); Putch(N1); Putch('V');
    while((UCSR0A & 0x20) == 0x0); UDR0 =0x0D; // �ٹٲ�
}

void Putch(char data) // �� ����Ʈ �۽�
{
while((UCSR0A & 0x20) == 0x0); //UDRE0[5] = 1 �۽��غ�Ϸ� �� ������ ���
UDR0 = data; // ������ ����
}


interrupt [EXT_INT4] void external_int4(void){
    SREG &= 0x7F;
    EINT4_FLAG_BIT=1;
    SREG |= 0x80;
}

interrupt [EXT_INT5] void external_int5(void){
    SREG &= 0x7F;
    EINT5_FLAG_BIT=1;
    SREG |= 0x80;
}

interrupt [EXT_INT6] void external_int6(void){
    SREG &= 0x7F;
    EINT6_FLAG_BIT=1;
    SREG |= 0x80;
}

interrupt [EXT_INT7] void external_int7(void){
    SREG &= 0x7F;
    EINT7_FLAG_BIT=1;
    SREG |= 0x80;
}

void EXIT4_TIMER2(void){
    TIMSK |= 0x40;
    TCCR2 =0x04 ; // �Ϲݸ�� , 64 �� ��
    TCNT2 = 0x06; //Ÿ�̸� ī���� 2

} //end of EXIT4_TIMER2

void EXIT5_TIMER1(void){
    TCCR1A =0b00000000; // Ÿ�̸� 1 compare ���
    TCCR1B =0b00001100 ; // Ÿ�̸� 1 compare ���, ���ֺ� 256
    TCCR1C = 0x00;

    TCNT1H = 0x0;                               //�������� �ʱ�ȭ
    TCNT1L = 0x0;                               //�������� �ʱ�ȭ
    OCR1AH = 0xF4;
    OCR1AL = 0x23; // 1000ms
    TCNT1 = 0;
    TIMSK |= 0x10;

} //end of EXIT4_TIMER2

void EXIT6_PWM_M6(void){
    TCCR3A = 0b10000010;                        //OC3A(PE3)�� �������, mode6
    TCCR3B = 0b00001100;                        //mode6(Fast PWM���),256���� - 122.07Hz ����
    TCCR3C = 0x00;

    TCNT3H = 0x0;                               //�������� �ʱ�ȭ
    TCNT3L = 0x0;                               //�������� �ʱ�ȭ
    OCR3AH= 0x00;                               //260,hex104�� ���� ��.
    OCR3AL = 0x05;

    DDRE |= 0x08;                               //TIMER3 PWM PIN PE3�� DDRE 3�� ��¼����ؾ� PWM ������ ��µ�
} //end of EXIT6_PWM_M6

void EXIT7_PWM_M2(void){
    TCCR3A = 0b10000010;                        //OC3A(PE3)�� �������, mode2
    TCCR3B = 0b00000100;                        //mode2(PWM Phase correct ���),256���� - 61.035Hz
    TCCR3C = 0x00;

    TCNT3H = 0x0;                               //�������� �ʱ�ȭ
    TCNT3L = 0x0;                               //�������� �ʱ�ȭ
    OCR3AH= 0x00;                               //260,hex104�� ���� ��.
    OCR3AL = 0x05;
    DDRE |= 0x08;                               //PE3 ���
} //end of EXIT7_PWM_M2

interrupt [TIM0_OVF] void TIMER0_OVF_int(void){
    SREG &= 0x7F;
    TIMER0_OVF_FLAG_BIT=1;
    TCNT0 = 177;    //�ʱⰪ�� ���ͷ�Ʈ �ȿ��� �������
    SREG |= 0x80;
}

interrupt [TIM1_COMPA] void TIMER1_COMP_int(void){
    SREG &= 0x7F;
    TIMER1_CTC_FLAG_BIT = 1;
    SREG |= 0x80;
}

interrupt [TIM2_OVF] void TIMER2_OVF_int(void){
    SREG &= 0x7F;
    TIMER2_OVF_FLAG_BIT=1;
    TCNT2 = 0x06;     //�ʱⰪ�� ���ͷ�Ʈ �ȿ��� �������
    SREG |= 0x80;
}



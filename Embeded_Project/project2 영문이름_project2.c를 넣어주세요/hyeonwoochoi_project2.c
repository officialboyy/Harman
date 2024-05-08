/***********************************************************************************************************************/
/* project2(hwchoi).c                                                                                                  */
/*                                                                                                                     */
/* Created: 2024-04-02 ���� 10:28:29                                                                                    */
/* Author: SAMSUNG                                                                                                     */
/***********************************************************************************************************************/

#include <mega128.h>                              //���̺귯�� ��� ���� ����
#include <delay.h>

const char seg_pat[10] =  {0x3f,0x06,0x5b,0x4f,0x66,0x6d,0x7d,0x27,0x7f,0x6f};

typedef unsigned char U8;                         //typedef ��ó������ ���
typedef unsigned short U16;                       //������ �پ��� ����� ���� main���� Global variable�� ����
typedef unsigned int U32;

U8 EINT4_FLAG_BIT=0;                              //���� ����
U8 EINT5_FLAG_BIT=0;
U8 EINT6_FLAG_BIT=0;
U8 EINT7_FLAG_BIT=0;

U8 cnt = 0;
U8 TIMER0_OVF_FLAG = 0;
U8 TIMER1_CTC_FLAG_BIT=0;
U8 TIMER2_OVF_FLAG_BIT=0;
 U32 adc_value = 0;
U32 N1000, N100, N10, N1;
U32 Nv100, Nv10, Nv1;
U32 year = 1998;
U32 bth = 731;
U32 id = 20171218;
U32 ad_val;

void Seg4_out(int);
void AD_disp(int);
void voltage_disp(int val);



void main(void){
    int i;

    DDRC = 0xFF;                                //LED ��� ����
    DDRB = 0xF0;                                 //���÷��̸� ���� ��ƮB 4,5,6,7 ��� ����(LED)
    DDRD = 0xF0;                                 //���÷��̸� ���� ��ƮD 4,5,6,7 ��� ����(LED)
    DDRG = 0x0F;                                 //���÷��̸� ���� ��ƮG 0,1,2,3 ��� ����(COM)

    PORTD = 0x0;
    PORTB = 0x0;


    TIMSK = 0x01;                                //TOIE0 = 1 Ÿ�̸� ī���� 0 �����÷ο� ���ͷ�Ʈ enable
    TCCR0 = 0x05;                                //1024����
    TCNT0 = 0;
    EIMSK = 0b11110000;                          //���ͷ�Ʈ ��� ���� ���� �������ͷ� INT4,5,6,7 enable
    EICRB = 0b10111011;                          //INT4,5,6,7�� B�� ���� Interrupt trigger ��� ����(7-falling,6-rising,5fa,4ri)
    ADCSRA = 0X87;


    SREG |= 0x80;                                //status resister bit7(MSB)�� 1���� �����Ͽ� ��� ���ͷ�Ʈ�� ���(global interrupt enable),OR�� ����Ͽ� ��������Ʈ�� �״��

    for (i=0;i<20;i++){
    Seg4_out(year);                              //1998 ���
    while (TIMER0_OVF_FLAG < 1);                 //TIMER0�� �̿��� 5ms delay ���� , TIMER0_OVF_FLAG �� 1�� �� ������ ���
    TIMER0_OVF_FLAG = 0;                         //�÷��� �ʱ�ȭ
    }
 //   for (i=0;i<20;i++){
 //   Seg4_out(bth);                               //0731 ���
 //   delay_ms(5);
  //  }



    while(1){
        Seg4_out(bth);                                //0731 ���
        if(EINT4_FLAG_BIT==1) {                        //���ͷ�Ʈ�� �߻��ϸ�
            int j;

            PORTD = 0;
            PORTB = 0;

            TIMSK |= 0b01000000;                        // overflow interrupt enable
            TCCR2 = 0b00000101;                         // normal���, ����������= 1024����
            TCNT2 = 100;                                 // 100= 9.984ms

            for (j=0;j<10;j++){                          //10�� ����

            ADMUX = 0x07;                                //ADC7 �Է� ���� (�µ� ������ �ɸ��� ���� ����)
            PORTC = 0x7F;                                //�۵�Ȯ�ο� led on
            //delay_ms(100);

            ADCSRA = 0xC7;                                //ADEN=1 ,  ADSC =1 ��ȯ����
            while((ADCSRA & 0x10) == 0);                  //ADIF =1�� �� ������
            ad_val = (int)ADCL + ((int)ADCH <<8);           //A/D ��ȯ�� �б�
            TIMER2_OVF_FLAG_BIT = 0;

            while (cnt <= 1){                              //'TIMER2_OVF_FLAG_BIT�� 450�� �ݺ���, ������ �ȵǼ� cnt�� �ΰ� �� �� ����� �� �ֵ��� ��
               if (TIMER2_OVF_FLAG_BIT <= 225)              //9.98ms x 450 = 4.5sec
               {
                 cnt++;
                 TIMER2_OVF_FLAG_BIT = 0;                            //cnt = 0 , cnt = 1 �� �� ����(�� �� ��)
               }
               AD_disp(ad_val);
               PORTC = 0x7F;                                 //����Ȯ�ο� led on
            }                                                 //cnt �ʱ�ȭ
            cnt= 0;
            }
            EINT4_FLAG_BIT=0;          //0���� �ٽ� �ٲ��ְ�
        }
        if(EINT5_FLAG_BIT==1) {

            TCCR1A = 0x00;
            TCCR1B = 0x0D;      // ctc mode & 1024����
            TCCR1C = 0x00;
            TCNT1H = 0;
            TCNT1L = 0;
            OCR1AH = 0x6D;      //1.8sec, hex
            OCR1AL = 0xE2;
            TIMSK |= 0b00010000;     //timer1 compare b interrupt enable

            PORTC = 0xBF;       //�۵�Ȯ�ο� led ON
            EINT5_FLAG_BIT=0;
        }
        if(EINT6_FLAG_BIT==1) {
            PORTC = 0x1F;
         //OCR3A = 92;               //512(9bits) * 18%=92.16  (20171218 ���ڸ� 2�� - 18)
         EINT6_FLAG_BIT=0;
         TCCR3A = 0b10000010;        //OCR3A(PE3)�� ���� ��� , mode6, PWM 9bits
         TCCR3B = 0b00001100;        //mode6(Fast PWM mode), 256���� - 122.07Hz
         TCCR3C = 0x00;

         TCNT3H = 0;                   //�������� �ʱ�ȭ
         TCNT3L = 0;                   //�������� �ʱ�ȭ
         OCR3AH = 0x00;               //92(01011100) , hex
         OCR3AL = 0x5C;

         DDRE |= 0x08;               //Timer3 PWM PIN PE3�� DDRE3�� ��� �����ؾ� PWM ���� ��µ�
         //EINT6_FLAG_BIT = 0;
        }
        if(EINT7_FLAG_BIT==1) {
            PORTC = 0x3F;
            EINT7_FLAG_BIT=0;
            TCCR3A = 0b10000010;        //OCR3A(PE3)�� ���� ��� , mode6, PWM 9bits
            TCCR3B = 0b00000100;        //mode2(Phase Correct PWM mode), 256���� - 122.07Hz
            TCCR3C = 0x00;

            TCNT3H = 0;
            TCNT3L = 0;
            OCR3AH = 0x00;              //92(01011100) , hex
            OCR3AL = 0x5C;

            DDRE |= 0x08;               //Timer3 PWM PIN PE3�� DDRE3�� ��� �����ؾ� PWM ���� ��µ�
        }
        if(TIMER1_CTC_FLAG_BIT == 1){

               
                UCSR0A = 0x0;
                UCSR0B = 0b00001000;              // �۽ź� enable TXEN0 [3] = 1, RXEN0 [4] =1
                UCSR0C = 0b00000110;              //�񵿱� :0, No parity: 00, ���� bit 1 �̸� :0, ������ 8 ��Ʈ ���
                UBRR0H = 0;                      // 16MHz �϶� , BAUD = 9600
                UBRR0L = 103;                    //BAUD = 9600

                ADMUX = 0x06;                    //ADC6 �Է� ���� (�������׿� �ɸ��� ���� ����)
                ADCSRA = 0x87;                   //ADEN =1, 16MHz 256���� -> 125kHz

                ADCSRA = 0xC7;                       //ADEN=1 ,  ADSC =1 ��ȯ����
                while((ADCSRA & 0x10)==0);            //ADIF =1�� �� ������
                adc_value = (int)ADCL + ((int)ADCH <<8);        //A/D ��ȯ�� �б�
                voltage_disp(adc_value);

                while ((UCSR0A & 0x20) == 0x0);          //�۽� ���۰� ����� ��, UDRE0[5] =1 �� �� ������ ���
                UDR0 = Nv100 + 0x30;
                while ((UCSR0A & 0x20) == 0x0);
                UDR0 = '.';                              //'.' ����
                while ((UCSR0A & 0x20) == 0x0);
                UDR0 = Nv10 + 0x30;
                while ((UCSR0A & 0x20) == 0x0);
                UDR0 = Nv1 + 0x30;
                while ((UCSR0A & 0x20) == 0x0);           //'v' ����
                UDR0 = 'V';
                while ((UCSR0A & 0x20) == 0x0);
                UDR0 = ' ';

                PORTC = 0xFE;                             //�۵�Ȯ�ο� led ON
                TIMER1_CTC_FLAG_BIT = 0;

        }
    } //end of while
} //end of main



void Seg4_out(int num)                //������� segment display
{
    U32 i, buf;

    N1000 = num /1000;
    buf = num % 1000;

    N100 = buf / 100;
    buf = buf % 100;

    N10 = buf / 10;
    N1 = buf % 10;

    for(i = 0;i <40 ;i++){                                          //40���� �ɋ����� ���÷���
        PORTG = 0b00001000;                                         //�� ���� 7Segment DIG4(PG3=1)ON, 1�ڸ� ǥ��
        PORTD = ((seg_pat[N1] & 0x0F) << 4) | (PORTD & 0x0F);       //[0]ǥ�ø� ���� ABCDǥ��, PORTD ���� 4bits ������� �ʰ� |
        PORTB = (seg_pat[N1] & 0x70 ) | (PORTB & 0x0F);             //[0]ǥ�ø� ���� EFGǥ��, PORTB ���� 4bits ������� �ʰ� |
        while (TIMER0_OVF_FLAG < 1);                                //5msec delay
        TIMER0_OVF_FLAG = 0;

        PORTG = 0b00000100;                                         //�������� �ι�° 7Segment DIG3(PG2=1)ON, 10�ڸ� ǥ��
        PORTD = ((seg_pat[N10] & 0x0F) << 4) | (PORTD & 0x0F);
        PORTB = (seg_pat[N10] & 0x70 ) | (PORTB & 0x0F);
        while (TIMER0_OVF_FLAG < 1);
        TIMER0_OVF_FLAG = 0;

        PORTG = 0b00000010;                                         //�������� ����° 7Segment DIG2(PG1=1)ON, 100�ڸ� ǥ��
        PORTD = ((seg_pat[N100] & 0x0F) << 4) | (PORTD & 0x0F);
        PORTB = (seg_pat[N100] & 0x70 ) | (PORTB & 0x0F);
        while (TIMER0_OVF_FLAG < 1);
        TIMER0_OVF_FLAG = 0;

        PORTG = 0b00000001;                                         //�������� �׹�° 7Segment DIG1(PG0=1)ON, 1000�ڸ� ǥ��
        PORTD = ((seg_pat[N1000] & 0x0F) << 4) | (PORTD & 0x0F);
        PORTB = (seg_pat[N1000] & 0x70 ) | (PORTB & 0x0F);
        while (TIMER0_OVF_FLAG < 1);
        TIMER0_OVF_FLAG = 0;

    } //end of for
}//end of Seg4_out

void AD_disp(int val)                      //�µ����� disp �Լ�
{
    float fval;
    int ival, buf;
    U8 N100, N10, N1;

    fval = (float)val*5.0 / 1024.0;      //���� ������ ��ȯ
    ival = (int)(fval*1000.0 + 5.0);    //�ݿø� �� ����ȭ(�Ҽ� ��°�ڸ�����)

    N100 =ival / 100;
    buf= ival % 100;
    N10 =buf / 10;
    N1 =buf % 10;

    PORTG = 0b00001000;
    PORTD = ((seg_pat [N1] & 0x0F) << 4) | (PORTD &0x0F);
    PORTB = (seg_pat [N1] & 0x70 ) | (PORTB &0x0F);
    while (TIMER0_OVF_FLAG < 1);           //5msec delay
    TIMER0_OVF_FLAG = 0;

    PORTG = 0b00000100;
    PORTD = ((seg_pat [N10] & 0x0F) << 4) | (PORTD & 0x0F);
    PORTB = (seg_pat [N10] & 0x70 ) | (PORTB & 0x0F);
    PORTB = PORTB | 0x80; // DP on (�Ҽ��� )
    while (TIMER0_OVF_FLAG < 1);
    TIMER0_OVF_FLAG = 0;

    PORTG = 0b00000010;
    PORTD = ((seg_pat [N100] & 0x0F) << 4) | (PORTD & 0x0F);
    PORTB = (seg_pat [N100] & 0x70 ) | (PORTB & 0x0F);
    while (TIMER0_OVF_FLAG < 1);
    TIMER0_OVF_FLAG = 0;

}

void voltage_disp(int val)           //�������� ���� ���� �Լ�
{
    float fval;
    int ival, buf;

    fval = (float)val*5.0 / 1024.0;      //���� ������ ��ȯ
    ival = (int)(fval*100.0 + 5.0);    //�ݿø� �� ����ȭ(�Ҽ� ��°�ڸ�����)

    Nv100 =ival / 100;
    buf= ival % 100;
    Nv10 =buf / 10;
    Nv1 =buf % 10;
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

interrupt [TIM0_OVF] void TIMER0_OVF_int (void)
{
    SREG &= 0x7F;
    TIMER0_OVF_FLAG++;
    TCNT0 = 178;         //5msec
    SREG |= 0x80;
}

interrupt [TIM1_COMPA] void TIMER1_COMP_int(void)
{
    SREG &= 0x7F;
    TIMER1_CTC_FLAG_BIT = 1;
    SREG |= 0x80;
}

interrupt [TIM2_OVF] void TIMER2_OVF_int(void){
    SREG &= 0x7F;
    TCNT2 = 100;          //�ʱⰪ�� ���ͷ�Ʈ �ȿ��� �������
    TIMER2_OVF_FLAG_BIT++;
    SREG |= 0x80;
}
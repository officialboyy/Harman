/************************************************************************************************************************/
/* project :  PROJECT2                                                                                                  */                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
/* Name :     KIM_MIN_GI                                                                                                */    
/* Modify :                                                                                                             */                    
/* Date :     2024-04-08                                                                                                */                    
/* Description :                                                                                                        */                    
/************************************************************************************************************************/

#include <mega128.h>                              //���̺귯�� ��� ���� ����
#include <delay.h>                        

typedef unsigned char U8;                         //typedef ��ó������ ���  
typedef unsigned short U16;                       //������ �پ��� ����� ���� main���� Global variable�� ����
typedef unsigned int U32;
const char seg_pat[10]= {0x3f, 0x06, 0x5b, 0x4f, 0x66, 0x6d, 0x7d, 0x07, 0x7f, 0x6f};


U8 EX_INT4_FLAG = 0;
U8 EX_INT5_FLAG = 0;
U8 EX_INT6_FLAG = 0;
U8 EX_INT7_FLAG = 0;
U8 TIMM2_OVF_FLAG = 0;
U8 TEMP_TIM2_VALUE = 0;
U8 mark_Temp = 0;
U16 tim2_cnt = 0;
U8 count = 0;

void Seg4_out2(U8 N1, U8 N10, U8 N100, U8 N1000);
void Seg4_out(U8 N1, U8 N10, U8 N100, U8 N1000);
void SEG7_TEMP_DIS(int);
void TIMER2(void);


U8 NA100, NA10, NA1;






void main(void){                             
	DDRC = 0xFF;    				                  //�۵� Ȯ�ο����� LED ��� ����
    PORTC = 0xAA;
	DDRB |= 0xF0;                                    //�й� ���÷��̸� ���� ��ƮB 4,5,6,7 ��� ����(LED)
    DDRD |= 0xF0;                                    //�й� ���÷��̸� ���� ��ƮD 4,5,6,7 ��� ����(LED)
    DDRG |= 0x0F;                                    //�й� ���÷��̸� ���� ��ƮG 0,1,2,3 ��� ����(COM)      

    EIMSK |= 0xF0;                                   //4,5,6,7�� ���ͷ�Ʈ enalbe
    EICRB = 0b10111011;                              //[4]:rising(11),[5]:falling(10),[6]:rising,[7]:falling
    
    //ADMUX = 0b00000110;								 //ADC6 �ܱؼ� �Է� 
	//ADCSRA = 0b10100111;							 //A/D��ȯ enable[7]-1, ���ֺ�-16MHz  256���� -> 125kHz
	
    SREG |= 0x80;                                    //��� ���ͷ�Ʈ enable (���·�������)
    
    
    
	Seg4_out(9,9,9,1);    
    Seg4_out2(6,0,8,0);     
    
    
    while(1)
    {
		if(mark_Temp==0) Seg4_out2(6,0,8,0);     			//�µ� ������� ���� ���� �й��� ��� ���
        else SEG7_TEMP_DIS(TEMP_TIM2_VALUE); 
		
        if(EX_INT4_FLAG == 1)
        {
			EX_INT4_FLAG = 0;
			TIMSK |= 0b01000000;							 //Ÿ�̸�/ī����2 ���ͷ�Ʈ enable([6]:timer/counter2 overflow mode enable, overflow-TOIE, CTC-OCIE)
			TCCR2 = 0b00000101;								 //Ÿ�̸�/ī����2 ���۸��([6][3]:overflow, [0][1][2]:101-���ֺ� 1024
			TCNT2 = 162;	
		}
		
		
		
		if(TIMM2_OVF_FLAG == 1)
		{
			
			
			tim2_cnt++;
            if(tim2_cnt == 750)                                  //4500msec
            {
				TIMM2_OVF_FLAG = 0;
				PORTC ^= 0x11;
				mark_Temp++;
				ADMUX = 0b00000110;								 //ADC6 �ܱؼ� �Է� 
				ADCSRA = 0b10100111;							 //A/D��ȯ enable[7]-1, ���ֺ�-16MHz  256���� -> 125kHz
                delay_us(100);
                TEMP_TIM2_VALUE = (int)ADCL + ((int)ADCH << 8);                //��ȯ�� �б�
				tim2_cnt = 0;
				if(mark_Temp == 10)
				{
					mark_Temp %= 10;
					TCCR2 = 0x00;											  //Ÿ�̸� ����
				}//end of if(mark_Temp == 4)
            }//end of if(tim2_cnt == 750)
		}//end of if(TIMM2_OVF_FLAG == 1)   
    }//end of while
} //end of main

  
interrupt[EXT_INT4]void ex_int4(void)
{
    SREG &= 0x7F;
	
    EX_INT4_FLAG = 1;
    
    SREG |= 0x80;
}

interrupt[TIM2_OVF]void tim2_ovf(void)
{
    SREG &= 0x7F;
    TCNT2 = 162;     	//�ʱⰪ �缳��
	TIMM2_OVF_FLAG = 1;
    SREG |= 0x80;
}

void SEG7_TEMP_DIS(int val)
{ 
    float fval;
    int ival, buf; 
         
    fval = (float)val * 5.0 / 1023.0;             // �µ������� ��ȯ
    ival = (int)(fval * 1000.0);                  // �ݿø� �� ����ȭ(�Ҽ� ù°�ڸ�����)    
    
    NA100 = ival / 100;                           // ������ 10�� �ڸ� ����
    buf = ival % 100; 
    NA10 = buf / 10;                              // ���ڸ��� ����
    NA1 = buf % 10;                               // �Ҽ� ù° �ڸ� ���� 
    
    PORTG = 0b00001000;                           // PG3=1, �Ҽ� ù° �ڸ�
    PORTD = ((seg_pat[NA1] & 0x0F) << 4) | (PORTD & 0x0F);  //PORTD ���� 4bits ������� �ʰ� |
    PORTB = (seg_pat[NA1] & 0x70 ) | (PORTB & 0x0F);        //PORTB ���� 4bits ������� �ʰ� |
    delay_ms(1);
    PORTG = 0b00000100;                           // PG2=1
    PORTD = 0x00;                                   
    PORTB = 0x80;                                 // DP on(�Ҽ���) 
    delay_ms(1);
    PORTG = 0b00000010;                           // PG1=1, ���� ���� �ڸ�      
    PORTD = ((seg_pat[NA10] & 0x0F) << 4) | (PORTD & 0x0F);
    PORTB = (seg_pat[NA10] & 0x70 ) | (PORTB & 0x0F); 
    delay_ms(1);   
    PORTG = 0b00000001;                           // PG0=1,���� 10�� �ڸ�
    PORTD = ((seg_pat[NA100] & 0x0F) << 4) | (PORTD & 0x0F);
    PORTB = (seg_pat[NA100] & 0x70 ) | (PORTB & 0x0F);                                                                                                                                           
    delay_ms(1); 
} //end of SEG7_TEMP_DIS

void Seg4_out(U8 N1, U8 N10, U8 N100, U8 N1000)    
{
    U8 i;
    for(i = 0;i <20 ;i++){                                          //40���� ��??���� ���÷���
        PORTG = 0b00001000;                                         //�� ���� 7Segment DIG4(PG3=1)ON, 1�ڸ� ǥ��
        PORTD = ((seg_pat[N1] & 0x0F) << 4) | (PORTD & 0x0F);       //[0]ǥ�ø� ���� ABCDǥ��, PORTD ���� 4bits ������� �ʰ� | 
        PORTB = (seg_pat[N1] & 0x70 ) | (PORTB & 0x0F);             //[0]ǥ�ø� ���� EFGǥ��, PORTB ���� 4bits ������� �ʰ� | 
        delay_ms(5);    
        PORTG = 0b00000100;                                         //�������� �ι�° 7Segment DIG3(PG2=1)ON, 10�ڸ� ǥ��
        PORTD = ((seg_pat[N10] & 0x0F) << 4) | (PORTD & 0x0F); 
        PORTB = (seg_pat[N10] & 0x70 ) | (PORTB & 0x0F); 
        delay_ms(5);    
        PORTG = 0b00000010;                                         //�������� ����° 7Segment DIG2(PG1=1)ON, 100�ڸ� ǥ��
        PORTD = ((seg_pat[N100] & 0x0F) << 4) | (PORTD & 0x0F);     
        PORTB = (seg_pat[N100] & 0x70 ) | (PORTB & 0x0F); 
        delay_ms(5);    
        PORTG = 0b00000001;                                         //�������� �׹�° 7Segment DIG1(PG0=1)ON, 1000�ڸ� ǥ��
        PORTD = ((seg_pat[N1000] & 0x0F) << 4) | (PORTD & 0x0F);    
        PORTB = (seg_pat[N1000] & 0x70 ) | (PORTB & 0x0F); 
        delay_ms(5);    
    } //end of for    
}//end of Seg4_out

void Seg4_out2(U8 N1, U8 N10, U8 N100, U8 N1000)   //�й� ���ڸ� 2251 ���÷���
{ 
        PORTG = 0b00001000; 
        PORTD = ((seg_pat[N1] & 0x0F) << 4) | (PORTD & 0x0F); 
        PORTB = (seg_pat[N1] & 0x70 ) | (PORTB & 0x0F);
        delay_ms(1);                                                //������ ���� �ּ����� �̼��� ������ 
        PORTG = 0b00000100; 
        PORTD = ((seg_pat[N10] & 0x0F) << 4) | (PORTD & 0x0F); 
        PORTB = (seg_pat[N10] & 0x70 ) | (PORTB & 0x0F); 
        delay_ms(1); 
        PORTG = 0b00000010; 
        PORTD = ((seg_pat[N100] & 0x0F) << 4) | (PORTD & 0x0F); 
        PORTB = (seg_pat[N100] & 0x70 ) | (PORTB & 0x0F); 
        delay_ms(1);
        PORTG = 0b00000001; 
        PORTD = ((seg_pat[N1000] & 0x0F) << 4) | (PORTD & 0x0F); 
        PORTB = (seg_pat[N1000] & 0x70 ) | (PORTB & 0x0F); 
        delay_ms(1);    
} //end of Seg4_out2

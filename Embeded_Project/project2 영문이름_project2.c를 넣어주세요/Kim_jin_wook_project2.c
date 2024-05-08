/****************************************************************************************************************************/
/* project : ������Ʈ 2                                                                                             */ 	                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  
/* Name : ������        																											*/
/* Modify :           																										*/
/* Date : 2024.04.08               																									*/
/* Description : 																											*/	
/****************************************************************************************************************************/

#include <mega128.h>                              //���̺귯�� ��� ���� ����
                         

typedef unsigned char U8;                         //typedef ��ó������ ���  
typedef unsigned short U16;                       //������ �پ��� ����� ���� main���� Global variable�� ����
typedef unsigned int U32;
                                               
U8 EINT4_FLAG_BIT=2;                              //���� ����
U8 EINT5_FLAG_BIT=0;
U8 EINT6_FLAG_BIT=0;
U8 EINT7_FLAG_BIT=0;

U8 TIMER1_CTC_FLAG_BIT=0;
U8 TIMER2_OVF_FLAG_BIT=0;
U16 TIMER2_OVF_COUNT=0;

void Seg4_out(U8 N1, U8 N10, U8 N100, U8 N1000);
void Seg4_out2(U8 N1, U8 N10, U8 N100, U8 N1000); 
    
void main(void){                             
    //DDRC = 0xFF;    PORTC = 0xFF;              //�۵� Ȯ�ο����� LED ��� ����
    DDRB = 0xF0;                                 //�й� ���÷��̸� ���� ��ƮB 4,5,6,7 ��� ����(LED)
    DDRD = 0xF0;                                 //�й� ���÷��̸� ���� ��ƮD 4,5,6,7 ��� ����(LED)
    DDRG = 0x0F;                                 //�й� ���÷��̸� ���� ��ƮG 0,1,2,3 ��� ����(COM)      
 
     
    EIMSK = 0b11110000;                          //���ͷ�Ʈ ��� ���� ���� �������ͷ� INT4,5,6,7 enable
    EICRB = 0b10111011;                          //INT4,5,6,7�� B�� ���� Interrupt trigger ��� ����(7fa,6ri,5fa,4ri)              
    SREG |= 0x80;                                //status resister bit7(MSB)�� 1���� �����Ͽ� ��� ���ͷ�Ʈ�� ���(global interrupt enable),OR�� ����Ͽ� ��������Ʈ�� �״��
         
	// Seg4_out(5,1,0,2)	
    // Seg4_out(4,3,2,1)	 
        
    while(1){    
	
	    // Seg4_out2(4,3,2,1)
            
        if(EINT4_FLAG_BIT==1) {                        //���ͷ�Ʈ�� �߻��ϸ� 
            EINT4_FLAG_BIT=0;                          //0���� �ٽ� �ٲ��ְ�
            EXIT4_TIMER2();
        } //end of if
        if(EINT5_FLAG_BIT==1) { 
            EINT5_FLAG_BIT=0;
            //EXIT5���� TIMER1�Լ��� ����.
        } //end of if
        if(EINT6_FLAG_BIT==1) { 
            EINT6_FLAG_BIT=0;
            //EXIT6���� PWM 1 �Լ��� ����.
        } //end of if
        if(EINT7_FLAG_BIT==1) { 
            EINT7_FLAG_BIT=0;
            //EXIT7���� PWM 2 �Լ��� ����.
        } //end of if  
		
		if(TIMER2_OVF_FLAG_BIT==1) {
			
		}	
		        
    } //end of while
} //end of main

  
void Seg4_out(U8 N1, U8 N10, U8 N100, U8 N1000)    //�й� ���ڸ� 2020 ���÷���
{
    U8 i;
    for(i = 0;i <40 ;i++){                                          //40���� �ɋ����� ���÷���
        PORTG = 0b00001000;                                         //�� ���� 7Segment DIG4(PG3=1)ON, 1�ڸ� ǥ��
        PORTD = ((seg_pat[N1] & 0x0F) << 4) | (PORTD & 0x0F);       //[0]ǥ�ø� ���� ABCDǥ��, PORTD ���� 4bits ������� �ʰ� | 
        PORTB = (seg_pat[N1] & 0x70 ) | (PORTB & 0x0F);             //[0]ǥ�ø� ���� EFGǥ��, PORTB ���� 4bits ������� �ʰ� | 
//        delay_ms(2);    // timer�� ����ϼ���
        PORTG = 0b00000100;                                         //�������� �ι�° 7Segment DIG3(PG2=1)ON, 10�ڸ� ǥ��
        PORTD = ((seg_pat[N10] & 0x0F) << 4) | (PORTD & 0x0F); 
        PORTB = (seg_pat[N10] & 0x70 ) | (PORTB & 0x0F); 
//        delay_ms(2);    // timer�� ����ϼ���
        PORTG = 0b00000010;                                         //�������� ����° 7Segment DIG2(PG1=1)ON, 100�ڸ� ǥ��
        PORTD = ((seg_pat[N100] & 0x0F) << 4) | (PORTD & 0x0F);     
        PORTB = (seg_pat[N100] & 0x70 ) | (PORTB & 0x0F); 
//        delay_ms(2);    // timer�� ����ϼ���
        PORTG = 0b00000001;                                         //�������� �׹�° 7Segment DIG1(PG0=1)ON, 1000�ڸ� ǥ��
        PORTD = ((seg_pat[N1000] & 0x0F) << 4) | (PORTD & 0x0F);    
        PORTB = (seg_pat[N1000] & 0x70 ) | (PORTB & 0x0F); 
//        delay_ms(2);    // timer�� ����ϼ��� 
    } //end of for    
}//end of Seg4_out

void Seg4_out2(U8 N1, U8 N10, U8 N100, U8 N1000)   //�й� ���ڸ� 2251 ���÷���
{ 
        PORTG = 0b00001000; 
        PORTD = ((seg_pat[N1] & 0x0F) << 4) | (PORTD & 0x0F); 
        PORTB = (seg_pat[N1] & 0x70 ) | (PORTB & 0x0F);
//        delay_ms(2);    // timer�� ����ϼ���
        PORTG = 0b00000100; 
        PORTD = ((seg_pat[N10] & 0x0F) << 4) | (PORTD & 0x0F); 
        PORTB = (seg_pat[N10] & 0x70 ) | (PORTB & 0x0F); 
//        delay_ms(2);    // timer�� ����ϼ���
        PORTG = 0b00000010; 
        PORTD = ((seg_pat[N100] & 0x0F) << 4) | (PORTD & 0x0F); 
        PORTB = (seg_pat[N100] & 0x70 ) | (PORTB & 0x0F); 
//        delay_ms(2);    // timer�� ����ϼ���
        PORTG = 0b00000001; 
        PORTD = ((seg_pat[N1000] & 0x0F) << 4) | (PORTD & 0x0F); 
        PORTB = (seg_pat[N1000] & 0x70 ) | (PORTB & 0x0F); 
//        delay_ms(2);    // timer�� ����ϼ���    
} //end of Seg4_out2

void EXIT4_TIMER2(void){            
    TIMSK |= 0b01000000;                        // overflow interrupt enable
    TCCR2 = 0b00000101;                         // normal���, ����������= 1024����
    TCNT2 = 174;                                // 174=5.184ms (�й����ڸ� 51�̶� 8��Ʈ�� 51ms�Ұ�)
                                    
} //end of EXIT4_TIMER2   


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

interrupt [TIM2_OVF] void TIMER2_OVF_int(void){ 
    SREG &= 0x7F;  
    TIMER2_OVF_FLAG_BIT=1; 
    TCNT2 = 174;                                 //�ʱⰪ�� ���ͷ�Ʈ �ȿ��� �������
    SREG |= 0x80;         
}
/************************************************************************************************************************/
/* project :  PROJECT2                                                                                                  */                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
/* Name :     KIM_MIN_GI                                                                                                */    
/* Modify :                                                                                                             */                    
/* Date :     2024-04-08                                                                                                */                    
/* Description :                                                                                                        */                    
/************************************************************************************************************************/

#include <mega128.h>                              //라이브러리 헤더 파일 포함
#include <delay.h>                        

typedef unsigned char U8;                         //typedef 전처리문을 사용  
typedef unsigned short U16;                       //변수의 다양한 사용을 위해 main문밖 Global variable로 선언
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
	DDRC = 0xFF;    				                  //작동 확인용으로 LED 출력 설정
    PORTC = 0xAA;
	DDRB |= 0xF0;                                    //학번 디스플레이를 위한 포트B 4,5,6,7 출력 설정(LED)
    DDRD |= 0xF0;                                    //학번 디스플레이를 위한 포트D 4,5,6,7 출력 설정(LED)
    DDRG |= 0x0F;                                    //학번 디스플레이를 위한 포트G 0,1,2,3 출력 설정(COM)      

    EIMSK |= 0xF0;                                   //4,5,6,7번 인터럽트 enalbe
    EICRB = 0b10111011;                              //[4]:rising(11),[5]:falling(10),[6]:rising,[7]:falling
    
    //ADMUX = 0b00000110;								 //ADC6 단극성 입력 
	//ADCSRA = 0b10100111;							 //A/D변환 enable[7]-1, 분주비-16MHz  256분주 -> 125kHz
	
    SREG |= 0x80;                                    //모든 인터럽트 enable (상태래지스터)
    
    
    
	Seg4_out(9,9,9,1);    
    Seg4_out2(6,0,8,0);     
    
    
    while(1)
    {
		if(mark_Temp==0) Seg4_out2(6,0,8,0);     			//온도 결과값이 없을 때는 학번을 계속 띄움
        else SEG7_TEMP_DIS(TEMP_TIM2_VALUE); 
		
        if(EX_INT4_FLAG == 1)
        {
			EX_INT4_FLAG = 0;
			TIMSK |= 0b01000000;							 //타이머/카운터2 인터럽트 enable([6]:timer/counter2 overflow mode enable, overflow-TOIE, CTC-OCIE)
			TCCR2 = 0b00000101;								 //타이머/카운터2 동작모드([6][3]:overflow, [0][1][2]:101-분주비 1024
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
				ADMUX = 0b00000110;								 //ADC6 단극성 입력 
				ADCSRA = 0b10100111;							 //A/D변환 enable[7]-1, 분주비-16MHz  256분주 -> 125kHz
                delay_us(100);
                TEMP_TIM2_VALUE = (int)ADCL + ((int)ADCH << 8);                //변환값 읽기
				tim2_cnt = 0;
				if(mark_Temp == 10)
				{
					mark_Temp %= 10;
					TCCR2 = 0x00;											  //타이머 정지
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
    TCNT2 = 162;     	//초기값 재설정
	TIMM2_OVF_FLAG = 1;
    SREG |= 0x80;
}

void SEG7_TEMP_DIS(int val)
{ 
    float fval;
    int ival, buf; 
         
    fval = (float)val * 5.0 / 1023.0;             // 온도값으로 변환
    ival = (int)(fval * 1000.0);                  // 반올림 후 정수화(소수 첫째자리까지)    
    
    NA100 = ival / 100;                           // 정수부 10의 자리 추출
    buf = ival % 100; 
    NA10 = buf / 10;                              // 한자리수 추출
    NA1 = buf % 10;                               // 소수 첫째 자리 추출 
    
    PORTG = 0b00001000;                           // PG3=1, 소수 첫째 자리
    PORTD = ((seg_pat[NA1] & 0x0F) << 4) | (PORTD & 0x0F);  //PORTD 하위 4bits 변경되지 않게 |
    PORTB = (seg_pat[NA1] & 0x70 ) | (PORTB & 0x0F);        //PORTB 하위 4bits 변경되지 않게 |
    delay_ms(1);
    PORTG = 0b00000100;                           // PG2=1
    PORTD = 0x00;                                   
    PORTB = 0x80;                                 // DP on(소수점) 
    delay_ms(1);
    PORTG = 0b00000010;                           // PG1=1, 정수 일의 자리      
    PORTD = ((seg_pat[NA10] & 0x0F) << 4) | (PORTD & 0x0F);
    PORTB = (seg_pat[NA10] & 0x70 ) | (PORTB & 0x0F); 
    delay_ms(1);   
    PORTG = 0b00000001;                           // PG0=1,정수 10의 자리
    PORTD = ((seg_pat[NA100] & 0x0F) << 4) | (PORTD & 0x0F);
    PORTB = (seg_pat[NA100] & 0x70 ) | (PORTB & 0x0F);                                                                                                                                           
    delay_ms(1); 
} //end of SEG7_TEMP_DIS

void Seg4_out(U8 N1, U8 N10, U8 N100, U8 N1000)    
{
    U8 i;
    for(i = 0;i <20 ;i++){                                          //40번이 될??까지 디스플레이
        PORTG = 0b00001000;                                         //맨 우측 7Segment DIG4(PG3=1)ON, 1자리 표시
        PORTD = ((seg_pat[N1] & 0x0F) << 4) | (PORTD & 0x0F);       //[0]표시를 위해 ABCD표시, PORTD 하위 4bits 변경되지 않게 | 
        PORTB = (seg_pat[N1] & 0x70 ) | (PORTB & 0x0F);             //[0]표시를 위해 EFG표시, PORTB 하위 4bits 변경되지 않게 | 
        delay_ms(5);    
        PORTG = 0b00000100;                                         //우측에서 두번째 7Segment DIG3(PG2=1)ON, 10자리 표시
        PORTD = ((seg_pat[N10] & 0x0F) << 4) | (PORTD & 0x0F); 
        PORTB = (seg_pat[N10] & 0x70 ) | (PORTB & 0x0F); 
        delay_ms(5);    
        PORTG = 0b00000010;                                         //우측에서 세번째 7Segment DIG2(PG1=1)ON, 100자리 표시
        PORTD = ((seg_pat[N100] & 0x0F) << 4) | (PORTD & 0x0F);     
        PORTB = (seg_pat[N100] & 0x70 ) | (PORTB & 0x0F); 
        delay_ms(5);    
        PORTG = 0b00000001;                                         //우측에서 네번째 7Segment DIG1(PG0=1)ON, 1000자리 표시
        PORTD = ((seg_pat[N1000] & 0x0F) << 4) | (PORTD & 0x0F);    
        PORTB = (seg_pat[N1000] & 0x70 ) | (PORTB & 0x0F); 
        delay_ms(5);    
    } //end of for    
}//end of Seg4_out

void Seg4_out2(U8 N1, U8 N10, U8 N100, U8 N1000)   //학번 뒷자리 2251 디스플레이
{ 
        PORTG = 0b00001000; 
        PORTD = ((seg_pat[N1] & 0x0F) << 4) | (PORTD & 0x0F); 
        PORTB = (seg_pat[N1] & 0x70 ) | (PORTB & 0x0F);
        delay_ms(1);                                                //구별을 위한 최소한의 미세한 딜레이 
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

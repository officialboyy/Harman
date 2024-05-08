/****************************************************************************************************************************/
/* project : 프로젝트 2                                                                                             */ 	                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  
/* Name : 김진욱        																											*/
/* Modify :           																										*/
/* Date : 2024.04.08               																									*/
/* Description : 																											*/	
/****************************************************************************************************************************/

#include <mega128.h>                              //라이브러리 헤더 파일 포함
                         

typedef unsigned char U8;                         //typedef 전처리문을 사용  
typedef unsigned short U16;                       //변수의 다양한 사용을 위해 main문밖 Global variable로 선언
typedef unsigned int U32;
                                               
U8 EINT4_FLAG_BIT=2;                              //변수 설정
U8 EINT5_FLAG_BIT=0;
U8 EINT6_FLAG_BIT=0;
U8 EINT7_FLAG_BIT=0;

U8 TIMER1_CTC_FLAG_BIT=0;
U8 TIMER2_OVF_FLAG_BIT=0;
U16 TIMER2_OVF_COUNT=0;

void Seg4_out(U8 N1, U8 N10, U8 N100, U8 N1000);
void Seg4_out2(U8 N1, U8 N10, U8 N100, U8 N1000); 
    
void main(void){                             
    //DDRC = 0xFF;    PORTC = 0xFF;              //작동 확인용으로 LED 출력 설정
    DDRB = 0xF0;                                 //학번 디스플레이를 위한 포트B 4,5,6,7 출력 설정(LED)
    DDRD = 0xF0;                                 //학번 디스플레이를 위한 포트D 4,5,6,7 출력 설정(LED)
    DDRG = 0x0F;                                 //학번 디스플레이를 위한 포트G 0,1,2,3 출력 설정(COM)      
 
     
    EIMSK = 0b11110000;                          //인터럽트 사용 여부 결정 레지스터로 INT4,5,6,7 enable
    EICRB = 0b10111011;                          //INT4,5,6,7은 B에 의해 Interrupt trigger 방식 설정(7fa,6ri,5fa,4ri)              
    SREG |= 0x80;                                //status resister bit7(MSB)만 1으로 설정하여 모든 인터럽트를 허용(global interrupt enable),OR을 사용하여 나머지비트는 그대로
         
	// Seg4_out(5,1,0,2)	
    // Seg4_out(4,3,2,1)	 
        
    while(1){    
	
	    // Seg4_out2(4,3,2,1)
            
        if(EINT4_FLAG_BIT==1) {                        //인터럽트가 발생하면 
            EINT4_FLAG_BIT=0;                          //0으로 다시 바꿔주고
            EXIT4_TIMER2();
        } //end of if
        if(EINT5_FLAG_BIT==1) { 
            EINT5_FLAG_BIT=0;
            //EXIT5에서 TIMER1함수를 실행.
        } //end of if
        if(EINT6_FLAG_BIT==1) { 
            EINT6_FLAG_BIT=0;
            //EXIT6에서 PWM 1 함수를 실행.
        } //end of if
        if(EINT7_FLAG_BIT==1) { 
            EINT7_FLAG_BIT=0;
            //EXIT7에서 PWM 2 함수를 실행.
        } //end of if  
		
		if(TIMER2_OVF_FLAG_BIT==1) {
			
		}	
		        
    } //end of while
} //end of main

  
void Seg4_out(U8 N1, U8 N10, U8 N100, U8 N1000)    //학번 앞자리 2020 디스플레이
{
    U8 i;
    for(i = 0;i <40 ;i++){                                          //40번이 될떄까지 디스플레이
        PORTG = 0b00001000;                                         //맨 우측 7Segment DIG4(PG3=1)ON, 1자리 표시
        PORTD = ((seg_pat[N1] & 0x0F) << 4) | (PORTD & 0x0F);       //[0]표시를 위해 ABCD표시, PORTD 하위 4bits 변경되지 않게 | 
        PORTB = (seg_pat[N1] & 0x70 ) | (PORTB & 0x0F);             //[0]표시를 위해 EFG표시, PORTB 하위 4bits 변경되지 않게 | 
//        delay_ms(2);    // timer를 사용하세요
        PORTG = 0b00000100;                                         //우측에서 두번째 7Segment DIG3(PG2=1)ON, 10자리 표시
        PORTD = ((seg_pat[N10] & 0x0F) << 4) | (PORTD & 0x0F); 
        PORTB = (seg_pat[N10] & 0x70 ) | (PORTB & 0x0F); 
//        delay_ms(2);    // timer를 사용하세요
        PORTG = 0b00000010;                                         //우측에서 세번째 7Segment DIG2(PG1=1)ON, 100자리 표시
        PORTD = ((seg_pat[N100] & 0x0F) << 4) | (PORTD & 0x0F);     
        PORTB = (seg_pat[N100] & 0x70 ) | (PORTB & 0x0F); 
//        delay_ms(2);    // timer를 사용하세요
        PORTG = 0b00000001;                                         //우측에서 네번째 7Segment DIG1(PG0=1)ON, 1000자리 표시
        PORTD = ((seg_pat[N1000] & 0x0F) << 4) | (PORTD & 0x0F);    
        PORTB = (seg_pat[N1000] & 0x70 ) | (PORTB & 0x0F); 
//        delay_ms(2);    // timer를 사용하세요 
    } //end of for    
}//end of Seg4_out

void Seg4_out2(U8 N1, U8 N10, U8 N100, U8 N1000)   //학번 뒷자리 2251 디스플레이
{ 
        PORTG = 0b00001000; 
        PORTD = ((seg_pat[N1] & 0x0F) << 4) | (PORTD & 0x0F); 
        PORTB = (seg_pat[N1] & 0x70 ) | (PORTB & 0x0F);
//        delay_ms(2);    // timer를 사용하세요
        PORTG = 0b00000100; 
        PORTD = ((seg_pat[N10] & 0x0F) << 4) | (PORTD & 0x0F); 
        PORTB = (seg_pat[N10] & 0x70 ) | (PORTB & 0x0F); 
//        delay_ms(2);    // timer를 사용하세요
        PORTG = 0b00000010; 
        PORTD = ((seg_pat[N100] & 0x0F) << 4) | (PORTD & 0x0F); 
        PORTB = (seg_pat[N100] & 0x70 ) | (PORTB & 0x0F); 
//        delay_ms(2);    // timer를 사용하세요
        PORTG = 0b00000001; 
        PORTD = ((seg_pat[N1000] & 0x0F) << 4) | (PORTD & 0x0F); 
        PORTB = (seg_pat[N1000] & 0x70 ) | (PORTB & 0x0F); 
//        delay_ms(2);    // timer를 사용하세요    
} //end of Seg4_out2

void EXIT4_TIMER2(void){            
    TIMSK |= 0b01000000;                        // overflow interrupt enable
    TCCR2 = 0b00000101;                         // normal모드, 프리스케일= 1024분주
    TCNT2 = 174;                                // 174=5.184ms (학번뒷자리 51이라 8비트로 51ms불가)
                                    
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
    TCNT2 = 174;                                 //초기값을 인터럽트 안에도 써줘야함
    SREG |= 0x80;         
}
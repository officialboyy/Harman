/* M24C08 */

#include <mega128a.h>
#include <delay.h>

#define CLK_HIGH    PORTD |= 0x01   // PD.0=1
#define CLK_LOW     PORTD &= 0xFE   // PD.0=0
#define DAT_HIGH    PORTD |= 0x02   // PD.1=1
#define DAT_LOW     PORTD &= 0xFD   // PD.1=0
    
#define SCL_OUT     DDRD |= 0x01    // PD.0=1
#define SDA_IN      DDRD &= 0xFD    // PD.1=0
#define SDA_OUT		DDRD |= 0x02    // PD.1=1

typedef unsigned char U8;

U8 DEV_ADD_W = 0xA0;
U8 DEV_ADD_R = 0xA1;
U8 IIC_ADD = 0;
U8 IIC_DAT = 0;
U8 READ_DATA = 0;

void IIC_START(void);
void IIC_STOP(void);
//void ACK_write(void);
//void no_ACK(void);
//void ACK_read(void);
void Process_8data(U8 value);
//void Process_8data_read(void);
//void Byte_write(void);
//void Random_read(void);

void main(void)           
{
    DDRC=0xFF;  
    PORTC=0xAA;
    
    SCL_OUT;                     
    SDA_OUT;                            
    
    
    while(1){
         IIC_START();    
         Process_8data(DEV_ADD_W);
		ACK_write();
		Process_8data(IIC_ADD);
		ACK_write();
		Process_8data(IIC_DAT);		
		ACK_write();		
        IIC_STOP();
    
    }
}

void IIC_START(void)
{
	DAT_HIGH;
    CLK_HIGH;
	DAT_LOW;
    CLK_LOW;
}

void IIC_STOP(void)
{
	DAT_LOW;
	CLK_HIGH;
	DAT_HIGH;
	CLK_LOW;
}

void Process_8data(U8 value)
{
    U8 i_8bit;
    U8 value_buffer;
    
    value_buffer=value;
	for(i_8bit=0;i_8bit<8;i_8bit++)
	{
		if((value_buffer&0x80)==0x80)
		    DAT_HIGH;
		else
        	DAT_LOW;
	
		CLK_HIGH;
		CLK_LOW;  
   		value_buffer<<=1;
	}
}

void Process_8data_read(void)
{
	U8 i, TEMP_READ_DATA = 0;
	SDA_IN;

	for (i = 0; i < 8; i++)
	{
		CLK_LOW;
		CLK_HIGH;
		//DELAY
		CLK_LOW;

		TEMP_READ_DATA = (PIND & 0x02 == 0x00) ? 0x00 : 0x80;
		TEMP_READ_DATA >>= i;
		READ_DATA |= TEMP_READ_DATA;
	} // end of for()
}

void ACK_write(void){
   U8 i = 0;                                // ACK 확인받기위한 반복문 변수

    SDA_IN;                                  // 데이터 입력
    CLK_HIGH;                                // ACK 신호 받기준비
    for(i=10;i>0;i--){                       // 10번 반복중  ACK 받으면 반복문 빠져 나감
        if((PIND & 0x02) == 0x00){i=1;
        PORTC=0xf1;
        }
        else PORTC=0x00;                     // NACK 받았다면 LED 다 켜짐                           
    }//end of for
    delay_us(12);
    CLK_LOW;        
    SDA_OUT;                                 //데이터 출력
    delay_us(6);      
}	
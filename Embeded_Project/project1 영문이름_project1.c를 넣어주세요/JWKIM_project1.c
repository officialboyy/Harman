/*
 * Name : JWKIM.c
 * Modified and Programmed by JW KIM
 * DATE: 2024.03.19 firtst edidted
 * Modified and Programmed by JW KIM 
 Atmega128ภป ภงวั M24C08 วาด็ */



#include <mega128a.h>
#include <delay.h>

#define CLK_HIGH    PORTD |= 0x01   // PD.0=1             1๋ถ ์จ
#define CLK_LOW     PORTD &= 0xFE   // PD.0=0             1๋ถ ์คํ

#define DAT_HIGH    PORTD |= 0x02   // PD.1=1             2๋ถ ์จ
#define DAT_LOW     PORTD &= 0xFD   // PD.1=0             2๋ถ ์คํ
    
#define SCL_OUT     DDRD |= 0x01    // PD.0=1             SCL ํฌํธ D ์ถ๋ ฅ
#define SDA_IN      DDRD &= 0xFD    // PD.1=0             SDA ์๋ ฅ
#define SDA_OUT		DDRD |= 0x02    // PD.1=1             SDA ์ถ๋ ฅ
#define N 5
typedef unsigned char U8;

U8 DEV_ADD_W = 0xA0;                 //DEV ADD  ์ฐ๊ธฐ 1010 0000
U8 DEV_ADD_R = 0xA1;                 //DEV ADD  ์ฝ๊ธฐ 1010 0001
U8 IIC_ADD = 0x55;                      //์ด๋๋ ์ค 0
U8 IIC_DAT = 0x55;                      // ๋ฐ์ดํฐ 0
U8 READ_DATA = 0x77;                    // ๋ฆฌ๋๋ฐ์ดํฐ 0
U8 DATA_FIVE[N]={0xF0,0x0F,0xAA,0x55,0x77};

void IIC_START(void);                // IIC ์คํํธ
void IIC_STOP(void);                 // IIC ์คํ
//void ACK_write(void);
//void no_ACK(void);
void ACK_read(void);
void Process_8data(U8 value);        // ํ๋ก์ธ์ค 8๋นํธ ๋ฐ์ดํฐ
void Process_8data_read(void);
void Byte_write(void);
void Page_write(void);
//void Random_read(void);
//Sequential_read(void);



//---------------------------------------------------------------------------------------------------------------------



void main(void)   //๋ฉ์ธ ๋ณด์ด๋ ์์
{
    U8  o_sw, n_sw;

    DDRC = 0xFF;        	      // ํฌํธC ์ถ๋ ฅ ์ค์ 
    DDRE = 0x00;	    	      // ํฌํธE ์๋ ฅ ์ค์ 

 //   PORTC=0xAA;   //LED๋ฑ 1010 1010
    
    SCL_OUT;      // START             
    SDA_OUT;      // START                      
    
    o_sw = PINE & 0b11110000;      
    while(1){
		n_sw = PINE  & 0b11110000;
        if(o_sw == 0xF0 && n_sw == 0xE0){ 
			Byte_write();
		}	
        if(o_sw == 0xF0 && n_sw == 0xD0){ 
			Page_write();
		}	
		 if(o_sw == 0xF0 && n_sw == 0xB0){ 
			Random_read();
		}	
		 if(o_sw == 0xF0 && n_sw == 0x70){ 
			//Sequential_read();
		}	
/*		if(IIC_DAT==READ_DATA) {
			PORTC=0x55;
			delay_ms(100);
			PORTC=0xAA;
			delay_ms(100);	
			PORTC=0x55;			
		}
*/		
		o_sw=n_sw;
    
    }
}

void Byte_write(void){        // Bytewrite ํจ์ 
    IIC_START();              // start
    Process_8data(DEV_ADD_W); // device address 7bit์ write 
    ACK_read();               // ack
    Process_8data(IIC_ADD);   // address 8bits
    ACK_read();               // ack
    Process_8data(IIC_DAT);   // data 8bits
    ACK_read();               // ack
    IIC_STOP();               // stop  
}//end of Byte_write   

void Page_write(void){        // Bytewrite ํจ์ 
	U8 i=0;
	IIC_START();              // start
    Process_8data(DEV_ADD_W); // device address 7bit์ write 
    ACK_read();               // ack
    Process_8data(IIC_ADD);   // address 8bits
    ACK_read();  				// ack
   
	for(i=0; i<N; i++){
		Process_8data(DATA_FIVE[i]);   // data 8bits
		ACK_read();               // ack
	}
	
 IIC_STOP();               // stop  
}//end of Byte_write 

void IIC_START(void)                           //START์ ํ์ดํ์ด ๋ก์ฐ๋ก์ฐ ์์
{
	DAT_HIGH;
	delay_us(6);  
    CLK_HIGH;
	delay_us(6);  
	DAT_LOW;
	delay_us(6);  
    CLK_LOW;
    delay_us(6);  
}

void IIC_STOP(void)                            //STOP๋ ๋ก์ฐํ์ด ํ์ด๋ก์ฐ ๋
{
	DAT_LOW;
	delay_us(6);  
	CLK_HIGH;
    delay_us(6);  
	DAT_HIGH;
	CLK_LOW;
    delay_us(6); 
}

void Process_8data(U8 value)                   //8data W
{
    U8 i_8bit;
    U8 value_buffer;
    
    value_buffer=value;
	for(i_8bit=0;i_8bit<8;i_8bit++)            //0~7  ++1
	{
		if((value_buffer&0x80)==0x80)          //๋ง์ฝ 1000 0000์ด๋ฉด dat high
		    DAT_HIGH;
		else                                   //์๋๋ฉด data low
        	DAT_LOW;
			
		delay_us(6);  
		CLK_HIGH;  
        delay_us(6); 		//ํด๋ญ ํ์ด ๊ฐ๋ค๊ฐ ๋ค์ ๋ก์ฐ  8๋ฒ ๋ฐ๋ณต
		CLK_LOW; 
        delay_us(6); 		
   		value_buffer<<=1;
	}
}

void Process_8data_read(void)                  //8data R
{
	U8 i, TEMP_READ_DATA = 0;
	SDA_IN;

	for (i = 0; i < 8; i++)
	{
		CLK_LOW;
		CLK_HIGH;
		delay_us(6);  
		CLK_LOW;

		TEMP_READ_DATA = (PIND & 0x02 == 0x00) ? 0x00 : 0x80;
		TEMP_READ_DATA >>= i;
		READ_DATA |= TEMP_READ_DATA;
		
		delay_us(6);  
	} // end of for()
}

void ACK_read(void){
   U8 i = 0;                                // ACK ํ์ธ๋ฐ๊ธฐ์ํ ๋ฐ๋ณต๋ฌธ ๋ณ์

    SDA_IN;                                  // ๋ฐ์ดํฐ ์๋ ฅ
    CLK_HIGH;                                // ACK ์ ํธ ๋ฐ๊ธฐ์ค๋น
    for(i=10;i>0;i--){                       // 10๋ฒ ๋ฐ๋ณต์ค  ACK ๋ฐ์ผ๋ฉด ๋ฐ๋ณต๋ฌธ ๋น ์ ธ ๋๊ฐ
        if((PIND & 0x02) == 0x00){i=1;
        PORTC=0xFE;
        }
        else PORTC=0x0F;                     // NACK ๋ฐ์๋ค๋ฉด LED ๋ค ์ผ์ง                           
    }//end of for
    delay_us(6);
    CLK_LOW;        
    SDA_OUT;                                 //๋ฐ์ดํฐ ์ถ๋ ฅ
    delay_us(6);      
}	

void Random_read(void){      // Randomread ํจ์
    IIC_START();             // start
    Process_8data(DEV_ADD_W);// device address 7bit์ write 0
    ACK_read();              // ack
    Process_8data(IIC_ADD);  // address 8bits
    ACK_read();              // ack
    IIC_START();             // start
    Process_8data(DEV_ADD_R);// device address 7bit์ read 1
    ACK_read();              // ack
    Process_8data_read();    // data 8bits read
    no_ACK();                // nack ๋ฐ์ดํฐ ๊ทธ๋ง ์ฃผ๊ธฐ master->slave
    IIC_STOP();              // stop 
}//end of Random_read

void no_ACK(void){       // NACK ํจ์  master -> slave
    SDA_OUT;  
    DAT_HIGH;    
    CLK_HIGH;  
    delay_us(12);
    CLK_LOW; 
    delay_us(6);  
}//end of no_ACK
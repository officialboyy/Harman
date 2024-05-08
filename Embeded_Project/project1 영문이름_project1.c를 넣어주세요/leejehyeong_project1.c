

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


// 함수 선언
void IIC_START(void);
void IIC_STOP(void);
void Byte_write(void);
void Page_write(void);
void ACK_write(void);
void no_ACK(void);
void ACK_read(void);
void Process_8data(U8 value);
void Process_8data_read(void);
void Random_read(void);

// 변수 선언
U8 DEV_ADD_W = 0xA0;
U8 IIC_ADD = 0xFA; // 1111 1010
U8 IIC_DAT = 0xA5; // 1010 0101
U8 IIC_DATA[5] = {0xA0, 0xA1, 0xA2, 0xA4, 0x77}; // page write 변수
U8 DEV_ADD_R = 0xA1; 
U8 READ_DATA = 0;



void main(void)           
{  
    DDRC=0xFF; // LED 출력 설정  
    PORTC=0xFF; // LED All off
    
    SCL_OUT; // CLK 출력 설정                    
    SDA_OUT; // DATA 출력 설정            
    
    while(1){ 
        Random_read();
    }//end while(1)
}//end main



void Random_read(void){ // read 하는 함수  
    IIC_START(); // START
    Process_8data(DEV_ADD_W); // Device address 전달
    ACK_read(); // ACK
    Process_8data(IIC_ADD); // address 전달
    ACK_read(); // ACK

    IIC_START(); // START             
    Process_8data(DEV_ADD_R); // read address 전달
    ACK_read(); // ACK
    Process_8data_read(); // 8bit Data read
    no_ACK(); // read 끝내기

    IIC_STOP(); // 종료    
}//end Random_read()



void ACK_read(void){ // Acknoledge 함수
    U8 i = 0;       
    SDA_IN; // DATA 입력 설정
	                                  
    CLK_HIGH; // Acknoledge 신호 받기준비
    for(i=10 ; i>0 ; i--){ // Acknoledge 받으면 반복문 빠져 나감
        if((PIND & 0x02) == 0x00){
			i = 1;
        	PORTC=0xF1; // ACK 받으면 0b 1111 0001  LED 3개 ON
        }   
        else 
			PORTC=0x00; // NoACK 받았다면 LED all ON
    }//end for()
    delay_us(5);

    CLK_LOW;        
    SDA_OUT; // DATA 출력 설정
    delay_us(5);      
}//end ACK_write()	  


void no_ACK(void){ // noACK  master -> slave
    SDA_OUT; // DATA 출력으로 설정  
    DAT_HIGH; // noACK 는 DATA HIGH 출력
    CLK_HIGH;  
    delay_us(10);
    CLK_LOW; 
    delay_us(10);  
}//end no_ACK()

void IIC_START(void) // START 함수
{
    CLK_HIGH;
	DAT_HIGH;    
    delay_us(50);
	DAT_LOW; // DATA LOW 먼저
    CLK_LOW; // 다음 CLK LOW 
    delay_us(50);
}
void IIC_STOP(void) // STOP 함수
{
    CLK_LOW;
    DAT_LOW;
    delay_us(50);
    CLK_HIGH; // CLK HIGH 먼저
    DAT_HIGH; // 다음 DATA HIGH
    delay_us(50);            
}


void Byte_write(void){ // 8bit를 write 하는 함수
     
    IIC_START(); // write 시작
    Process_8data(DEV_ADD_W);  // Device Select Code 전달
	ACK_read(); // ACK
	Process_8data(IIC_ADD); // address 전달
	ACK_read(); // ACK
	Process_8data(IIC_DAT); // IIC DATA 전달
	ACK_read(); // ACK
    IIC_STOP(); // write 끝
    
}//end Byte_write()   

void Page_write(void){ // 8bit page 를 write 하는 함수

    U8 i;
    IIC_START(); // page write 시작   
	Process_8data(DEV_ADD_W); // Device Select Code 전달
	ACK_read(); // ACK
	Process_8data(IIC_ADD); // address 전달
	ACK_read(); // ACK
    
    for(i=0 ; i<5 ; i++){
        Process_8data(IIC_DATA[i]); // IIC DATA 전달 5번 반복		
        ACK_read(); 
    }	         
    

	IIC_STOP();
}//end Page_write()

void Process_8data(U8 value) //8bit 를 전달하는 함수
{
    U8 i;
    
	for(i=0 ; i<7 ; i++){ // 7번 반복

		if( (value & 0x80) == 0x80 ) // value의 i번째 bit가 1인지 ?
		    DAT_HIGH; // 1이면 DAT_HIGH
		else 
        	DAT_LOW; // 0이면 DAT_LOW
        value <<= 1; // shift 는 7번만 반복
		delay_us(1);
        CLK_HIGH;
        delay_us(2);
		CLK_LOW;
        delay_us(1);  
	}// end for

    if( (value & 0x80) == 0x80 ) // value의 LSB가 1인지?
        DAT_HIGH; // LSB=1 이면 DAT_HIGH
    else
        DAT_LOW; // LSB=0 이면 DAT_LOW
    delay_us(1);
    CLK_HIGH;
    delay_us(2);
    CLK_LOW;
    
    if( (value & 0x80) == 0x80 ) // LSB = 1 이면 DAT_LOW
        DAT_LOW;
    delay_us(1);
}// end Process_8data()


void Process_8data_read(void) // 8bit 를 읽는 함수
{
	U8 i, TEMP_READ_DATA = 0;
	SDA_IN; // Data 입력 설정 

    READ_DATA &= 0x00; // READ_DATA 초기화
	for (i = 0; i < 8; i++)
	{
		CLK_HIGH;
		delay_us(10);
		CLK_LOW;

		TEMP_READ_DATA = (PIND & 0x02 == 0x00) ? 0x00 : 0x80;
		// 데이터핀 PIND.1 == 0 or 1
        TEMP_READ_DATA >>= i;
		// read 한 data 를 MSB 부터 순서대로 대입
        READ_DATA |= TEMP_READ_DATA; // TEMP_READ_DATA 를 READ_DATA에 대입

	} // end of for()
}






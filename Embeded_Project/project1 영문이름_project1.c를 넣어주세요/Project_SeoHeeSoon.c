/* M24C08 */

#include <mega128a.h>
#include <delay.h>   /*NOP 명령어에 의한 함수, CPU가 놀게 되므로 실제 산업에는 안쓰는 라이브러리 함수임*/

#define CLK_HIGH    PORTD |= 0x01   // PD.0=1   1불 온
#define CLK_LOW     PORTD &= 0xFE   // PD.0=0   1불 오프

#define DAT_HIGH    PORTD |= 0x02   // PD.1=1   2불 온
#define DAT_LOW     PORTD &= 0xFD   // PD.1=0   2불 오프
    
#define SCL_OUT     DDRD |= 0x01    // PD.0=1   SCL 포트 D 출력  AtMega is Master(SCL_OUT)
#define SDA_IN      DDRD &= 0xFD    // PD.1=0   SDA 입력
#define SDA_OUT        DDRD |= 0x02    // PD.1=1   SDA 출력

typedef unsigned char U8;

U8 DEV_ADD_W = 0xA0;                 //DEV ADD  쓰기(LSB=0) 1010 0000
U8 DEV_ADD_R = 0xA1;                 //DEV ADD  읽기(LSB=1) 1010 0001
U8 IIC_ADD = 0;                      //어드레스 0
U8 IIC_DAT = 0;                      //데이터 0
U8 READ_DATA = 0;                    //리드데이터 0
U8 DATA_FIVE[N]={0xF0,0x0F,0xAA,0x55,0x77};

void IIC_START(void);                // IIC 스타트
void IIC_STOP(void);                 // IIC 스탑
//void ACK_write(void);
//void no_ACK(void);
void ACK_read(void);
void Process_8data(U8 value);        // 프로세스 8비트 데이터 (함수 형태로 정의만 함)
void Process_8data_read(void);
void Byte_write(void);
void Page_write(void);
//void Random_read(void);
//Sequential_read(void);



//---------------------------------------------------------------------------------------------------------------------



void main(void)   //메인 보이드 시작
{
    U8  o_sw, n_sw;

    DDRC = 0xFF;                  // 포트C 출력 설정
    DDRE = 0x00;                  // 포트E 입력 설정

 //   PORTC=0xAA;   //LED등 1010 1010
    
    SCL_OUT;      // START             
    SDA_OUT;      // START                      
    
    o_sw = PINE & 0b11110000;      
    while(1){
        n_sw = PINE  & 0b11110000;
        if(o_sw == 0xF0 && n_sw == 0xE0){        //n_sw == 1110 0000
            Byte_write();
        }    
        if(o_sw == 0xF0 && n_sw == 0xD0){         //n_sw == 1101 0000
            //Page_write();
        }    
         if(o_sw == 0xF0 && n_sw == 0xB0){         //n_sw == 1011 0000
            //Random_read();
        }    
         if(o_sw == 0xF0 && n_sw == 0x70){         //n_sw == 0111 0000
            //Sequential_read();
        }    
/*        if(IIC_DAT==READ_DATA) {
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

void Byte_write(void){        // Bytewrite 함수 
    IIC_START();              // start
    Process_8data(DEV_ADD_W); // device address 7bit와 write 
    ACK_read();               // ack
    Process_8data(IIC_ADD);   // address 8bits
    ACK_read();               // ack
    Process_8data(IIC_DAT);   // data 8bits
    ACK_read();               // ack
    IIC_STOP();               // stop  
}//end of Byte_write   

void Page_write(void){        // Bytewrite 함수 
    U8 i=0;
    IIC_START();              // start
    Process_8data(DEV_ADD_W); // device address 7bit와 write 
    ACK_read();               // ack
    Process_8data(IIC_ADD);   // address 8bits
    ACK_read();                  // ack
   
    for(i=0; i<N; i++){
        Process_8data(DATA_FIVE[i]);   // data 8bits
        ACK_read();               // ack
    }
    
 IIC_STOP();               // stop  
}//end of Byte_write 

void IIC_START(void)                           //START에 하이하이 로우로우 시작
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

void IIC_STOP(void)                            //STOP는 로우하이 하이로우 끝
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
        if((value_buffer&0x80)==0x80)          //만약 1000 0000이면 dat high
            DAT_HIGH;
        else                                   //아니면 data low
            DAT_LOW;
            
        delay_us(6);  
        CLK_HIGH;              //클럭 하이 갔다가 다시 로우  8번 반복
        delay_us(6);         
        CLK_LOW; 
        delay_us(6);         
           value_buffer<<=1;   //MSB부터 LSB까지 1bit식 data shift
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
   U8 i = 0;                                // ACK 확인받기위한 반복문 변수

    SDA_IN;                                  // 데이터 입력
    CLK_HIGH;                                // ACK 신호 받기준비
    for(i=10;i>0;i--){                       // 10번 반복중  ACK 받으면 반복문 빠져 나감
        if((PIND & 0x02) == 0x00){i=1;         // PIND의 하위 2번째 bit가 0이면 NACk, 1이면 ACK
        PORTC=0xFE;
        }
        else PORTC=0x0F;                     // NACK 받았다면 LED 다 켜짐                           
    }//end of for
    delay_us(6);
    CLK_LOW;        
    SDA_OUT;                                 //데이터 출력(출력 PD 세팅)
    delay_us(6);      
}    

void Random_read(void){      // Randomread 함수
    IIC_START();             // start
    Process_8data(DEV_ADD_W);// device address 7bit와 write 0
    ACK_read();              // ack
    Process_8data(IIC_ADD);  // address 8bits
    ACK_read();              // ack
    IIC_START();             // start
    Process_8data(DEV_ADD_R);// device address 7bit와 read 1
    ACK_read();              // ack
    Process_8data_read();    // data 8bits read
    no_ACK();                // nack 데이터 그만 주기 master->slave
    IIC_STOP();              // stop 
}//end of Random_read

void no_ACK(void){       // NACK 함수  master -> slave
    SDA_OUT;  
    DAT_HIGH;    
    CLK_HIGH;  
    delay_us(12);
    CLK_LOW; 
    delay_us(6);  
}//end of no_ACK

/********************************************************************************************/
/*              Name : Project_1.c                                                          */
/*              Date : 2024. 03. 19 first edited                                            */
/*              Modified and Programmed by JH Park                                          */
/********************************************************************************************/  


#include <mega128.h>            /****      1 BYTE Write        *****/
#include <delay.h>

#define CLK_HIGH    PORTD |=0x01    // PD.0=1
#define CLK_LOW     PORTD &=0xFE    // PD.0=0
#define DAT_HIGH    PORTD |=0x02    // PD.1=1
#define DAT_LOW     PORTD &=0xFD    // PD.1=0

#define SCL_OUT     DDRD |=0x01     // PD.0=1
#define SDA_IN      DDRD &=0xFD     // PD.1=0
#define SDA_OUT     DDRD |=0x02     // PD.1=1
#define N 5
typedef unsigned char U8;

U8 DEV_ADD_W = 0xA0;                // Write    1010 0000
U8 DEV_ADD_R = 0xA1;                // Read     1010 0001
U8 IIC_ADD = 0x55;                     // Address 0
U8 IIC_DAT = 0x55;                     // Data 0
U8 READ_DATA = 0x00;
U8 DATA_FIVE[N]={0xF0,0x0F,0xAA,0x55,0x77};                   // Read Data 0

void IIC_START(void);               // IIC Start
void IIC_STOP(void);                // IIC Stop
void ACK_write(void);
void no_ACK(void);
void ACK_read(void); 
void Process_8data(U8 value);
void Process_8data_read(void);
void Byte_write(void);
void Page_write(void);
void Random_read(void);
void Sequential_read(void);

/************************ 메 인 *************************************/

void main(void)
{
    unsigned char o_sw, n_sw;
    
    DDRC=0xFF;              // 포트C 출력 설정
    DDRE=0x00;              // 포트E 입력 설정 
    PORTC=0xAA;             // 포트C 1010 1010 출력
    
    SCL_OUT;
    SDA_OUT;
              
    o_sw = PINE & 0b11110000;
    while (1)
          {
            n_sw = PINE & 0b11110000;
            if (o_sw == 0xF0 && n_sw == 0xE0)
                Byte_write();
            if (o_sw == 0xF0 && n_sw == 0xD0)
                Page_write();
            if (o_sw == 0xF0 && n_sw == 0xB0)
                Random_read();
                PORTC = READ_DATA;
            if (o_sw == 0xF0 && n_sw == 0x70)
                Sequential_read();      
               
            if(IIC_DAT==READ_DATA) {
         PORTC=0x55;
         delay_ms(100);
         PORTC=0xAA;
         delay_ms(100);   
         PORTC=0x55;         
          }
               o_sw = n_sw;
          }
        
}

void IIC_START(void)
{
    DAT_HIGH; 
    delay_us(5);   
    CLK_HIGH;
    delay_us(5); 
    DAT_LOW;
    delay_us(5);
    CLK_LOW;
    delay_us(5);
}

void IIC_STOP(void)
{
    DAT_LOW;
    delay_us(5);
    CLK_HIGH;
    delay_us(5);
    DAT_HIGH;
    delay_us(5);
    CLK_LOW;
}

void Byte_write(void)               // 1 Byte write 함수
{
    IIC_START();                    // Start
    Process_8data(DEV_ADD_W);       // Device Address 7bit 와 write
    ACK_read();                     // Ack
    Process_8data(IIC_ADD);         // Address 8bits
    ACK_read();                     // Ack
    Process_8data(IIC_DAT);         // Data 8bits
    ACK_read();                     // Ack
    IIC_STOP();                     // Stop
}// End of Byte_write

void Page_write()
{
     U8 i=0;
   IIC_START();              // start
    Process_8data(DEV_ADD_W); // device address 7bit?� write 
    ACK_read();               // ack
    Process_8data(IIC_ADD);   // address 8bits
    ACK_read();              // ack
   
   for(i=0; i<N; i++){
      Process_8data(DATA_FIVE[i]);   // data 8bits
      ACK_read();               // ack
   }
   
     IIC_STOP();
}

void Process_8data(U8 value)
{
    U8 i_8bit;
    U8 value_buffer;
    
    value_buffer=value;
    for (i_8bit=0; i_8bit<7; i_8bit++)
        {
            if ((value_buffer & 0x80) == 0x80)              // 1000 0000이면 Data HIGH
                DAT_HIGH;
            else
                DAT_LOW;                                    // 0이면 Data LOW
            delay_us(5);    
            CLK_HIGH;
            delay_us(5);
            CLK_LOW;
            delay_us(5);
            value_buffer<<=1;
        }     
    if((value_buffer&0x80)==0x80)DAT_HIGH;     // LSB 따로 써줌 위의 반복문에서  value_buffer의 MSB에 데이터 LSB값이 있음           
    else DAT_LOW;            
    delay_us(6);
    CLK_HIGH;  
    delay_us(6);
    CLK_LOW; 
    if((value_buffer&0x80)==0x80) DAT_LOW;           // data high 이면 ACK값이 clk이 high일때 입력받으므로  
    delay_us(6);
}

void Process_8data_read(void)
{
   U8 i, TEMP_READ_DATA = 0;
   SDA_IN;

   for (i = 0; i < 8; i++)
   {
      CLK_HIGH;
      delay_us(5);
      CLK_LOW;
      delay_us(5);
      

      TEMP_READ_DATA = (PIND & 0x02 == 0x00) ? 0x00 : 0x80;
      TEMP_READ_DATA >>= i;
      READ_DATA |= TEMP_READ_DATA;
   } // end of for()
}

void ACK_write(void)
{
    U8 i=0;                 // ACK 확인받기 위한 반복문 변수
    
    SDA_IN;                 // 데이터 입력
    CLK_HIGH;               // ACK 신호 받기 준비
    for (i=10; i>0; i--)    // 10번 반복 중 ACK 받으면 반복문 탈출
        {
            if ((PIND & 0x02) == 0x00)
               {
                PORTC = 0xF1;
               } 
            else PORTC = 0x00;      // NACK라면 LED 모두 ON
        }//End of for
    delay_us(10);
    CLK_LOW;
    SDA_OUT;                // 데이터 출력
    delay_us(5);
}

void ACK_read(void)
{
    U8 i = 0;
    
    SDA_IN;
    CLK_HIGH;
    for (i=10; i>0; i--)
        {
            if ((PIND & 0x02) == 0x00)
               {
                i = 1;                  // ??
                PORTC = 0xFE;           // 1111 1110 LED ON
               }                                           
            else PORTC = 0x0F;          // NACK => LED 00001111 ON
        }// End of for                                            
 //  SDA_OUT; 
    delay_us(10);
    CLK_LOW;  
    SDA_OUT;
    delay_us(5);
//    SDA_OUT;

}

void Random_read(void){      // Randomread ?⑥닔
    IIC_START();             // start
    Process_8data(DEV_ADD_W);// device address 7bit?� write 0
    ACK_read();              // ack
    Process_8data(IIC_ADD);  // address 8bits
    ACK_read();              // ack
    IIC_START();             // start
    Process_8data(DEV_ADD_R);// device address 7bit?� read 1
    ACK_read();              // ack
    Process_8data_read();    // data 8bits read
    no_ACK();                // nack ?곗씠??洹몃쭔 二쇨린 master->slave
    IIC_STOP();              // stop 
}//end of Random_read

void Sequential_read(void)
{
    IIC_START();             // start
    Process_8data(DEV_ADD_W);// device address 7bit?� write 0
    ACK_read();              // ack
    Process_8data(IIC_ADD);  // address 8bits
    ACK_read();              // ack
    IIC_START();             // start
    Process_8data(DEV_ADD_R);// device address 7bit?� read 1
    ACK_read();              // ack
    for(i=0; i<N; i++){
      Process_8data_read(DATA_FIVE[i]);   // data 8bits
      ACK_read();               // ack
   }
    no_ACK();                // nack ?곗씠??洹몃쭔 二쇨린 master->slave
    IIC_STOP();              // stop 

}


void no_ACK(void){       // NACK ?⑥닔  master -> slave
    SDA_OUT;  
    DAT_HIGH;    
    CLK_HIGH;  
    delay_us(12);
    CLK_LOW; 
    delay_us(6);  
}//end of no_ACK
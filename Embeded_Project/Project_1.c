
/********************************************************************************************/
/*              Name : Project_1.c                                                          */
/*              Date : 2024. 03. 19 first edited                                            */
/*              Modified and Programmed by JH Park                                          */
/********************************************************************************************/  

/***************************************************************************/
/*       name     : Project_1.c                                            */
/*       Modified and programmed by SH LEE                                 */
/*       Date     : 2024. 03.18 first edited                               */
/*       Description : Project_1 (ATmega128A 8-BIT MCU)                    */
/***************************************************************************/

#include <mega128a.h>
#include <delay.h>

#define CLK_HIGH    PORTD |= 0x01   // PD.0=1             1불 온
#define CLK_LOW     PORTD &= 0xFE   // PD.0=0             1불 오프

#define DAT_HIGH    PORTD |= 0x02   // PD.1=1             2불 온
#define DAT_LOW     PORTD &= 0xFD   // PD.1=0             2불 오프
    
#define SCL_OUT     DDRD |= 0x01    // PD.0=1             SCL 포트 D 출력
#define SDA_IN      DDRD &= 0xFD    // PD.1=0             SDA 입력
#define SDA_OUT        DDRD |= 0x02    // PD.1=1             SDA 출력
#define N 5
typedef unsigned char U8;

U8 DEV_ADD_W = 0xA0;                 //DEV ADD  쓰기 1010 0000
U8 DEV_ADD_R = 0xA1;                 //DEV ADD  읽기 1010 0001
U8 IIC_ADD = 0x55;                      //어드레스 0
U8 IIC_DAT = 0x55;                      // 데이터 0
U8 READ_DATA = 0x00;                    // 리드데이터 0
U8 DATA_FIVE[N]={0xF0,0x0F,0xAA,0x55,0x77};
U8 DATA_READ_FIVE[N]={0x00,0x00,0x00,0x00,0x00};
unsigned int check_sum_write = 0;
unsigned int check_sum_read = 0;

void IIC_START(void);                // IIC 스타트
void IIC_STOP(void);                 // IIC 스탑
//void ACK_write(void);
void no_ACK(void);
void ACK_read(void);
void Process_8data(U8 value);        // 프로세스 8비트 데이터
void Process_8data_read(void);
void Byte_write(void);
void Page_write(void);
void Random_read(void);
void Sequential_read(void);



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
            Sequential_read();
            if(check_sum_write==check_sum_read) PORTC=0x66;
        }    
/*     if(IIC_DAT==READ_DATA) {
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
        check_sum_write += DATA_FIVE[i];
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
    for(i_8bit=0;i_8bit<7;i_8bit++)            //0~7  ++1
    {
        if((value_buffer&0x80)==0x80)          //만약 1000 0000이면 dat high
            DAT_HIGH;
        else                                   //아니면 data low
            DAT_LOW;
            
        delay_us(6);  
        CLK_HIGH;  
        delay_us(6);         //클럭 하이 갔다가 다시 로우  8번 반복
        CLK_LOW; 
        delay_us(6);         
           value_buffer<<=1;
    }
    if((value_buffer&0x80)==0x80)          //만약 1000 0000이면 dat high
            DAT_HIGH;
        else                                   //아니면 data low
            DAT_LOW;
            
        delay_us(6);  
        CLK_HIGH;  
        delay_us(6);         //클럭 하이 갔다가 다시 로우  8번 반복
        CLK_LOW; 
        delay_us(6); 
    if((value_buffer&0x80)==0x80) DAT_LOW;
    delay_us(6);             
}

void Process_8data_read(void)                  //8data R
{
    U8 i, TEMP_READ_DATA = 0;
    READ_DATA=0x00;
    SDA_IN;

        

    for (i = 0; i < 8; i++)
    {
        
        CLK_HIGH;
        delay_us(6);  
        CLK_LOW; 
        delay_us(6);
            

    
    
        TEMP_READ_DATA = ((PIND&0x02)==0x00) ? 0x00 : 0x80;
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
        if((PIND & 0x02) == 0x00){i=1;
        PORTC=0xFE;
        }
        else PORTC=0x0F;                     // NACK 받았다면 LED 다 켜짐                           
    }//end of for
    delay_us(6);
    CLK_LOW;        
    SDA_OUT;                                 //데이터 출력
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
    IIC_STOP();  
//    PORTC=READ_DATA;            // 시험용으로 READ_DATA 확인용  
}//end of Random_read

void no_ACK(void){       // NACK 함수  master -> slave
    SDA_OUT;  
    DAT_HIGH;    
    CLK_HIGH;  
    delay_us(12);
    CLK_LOW; 
    delay_us(6);  
}
void ACK(void){       // NACK 함수  master -> slave
    SDA_OUT;  
    DAT_LOW; 
    delay_us(6);     
    CLK_HIGH;  
    delay_us(12);
    CLK_LOW; 
    delay_us(6);  
}
void Sequential_read(void){
    U8 i;
    IIC_START();             
    Process_8data(DEV_ADD_W);
    ACK_read();             
    Process_8data(IIC_ADD);  
    ACK_read();             
    IIC_START();            
    Process_8data(DEV_ADD_R);
    ACK_read();   
    for(i=0;i<4;i++){           
    Process_8data_read();
    DATA_READ_FIVE[i]=READ_DATA;   
    ACK();
	check_sum_read+=DATA_READ_FIVE[i]; 
    }
    Process_8data_read();
    DATA_READ_FIVE[4]=READ_DATA;	
    no_ACK();              
	check_sum_read+=DATA_READ_FIVE[4]; 
    IIC_STOP();
}




/*
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
U8 READ_DATA = 0x77;
U8 DATA_FIVE[N]={0xF0,0x0F,0xAA,0x55,0x77};                   // Read Data 0
U8 i=0;

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

/************************ ?? ?? *************************************/

void main(void)
{
    unsigned char o_sw, n_sw;
    
    DDRC=0xFF;              // ???C ??? ????
    DDRE=0x00;              // ???E ??? ???? 
    PORTC=0xAA;             // ???C 1010 1010 ???
    
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

void Byte_write(void)               // 1 Byte write ???
{
    IIC_START();                    // Start
    Process_8data(DEV_ADD_W);       // Device Address 7bit ?? write
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
    Process_8data(DEV_ADD_W); // device address 7bit?? write 
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
            if ((value_buffer & 0x80) == 0x80)              // 1000 0000??? Data HIGH
                DAT_HIGH;
            else
                DAT_LOW;                                    // 0??? Data LOW
            delay_us(5);    
            CLK_HIGH;
            delay_us(5);
            CLK_LOW;
            delay_us(5);
            value_buffer<<=1;
        }     
    if((value_buffer&0x80)==0x80)DAT_HIGH;     // LSB ???? ???? ???? ?????????  value_buffer?? MSB?? ?????? LSB???? ????           
    else DAT_LOW;            
    delay_us(6);
    CLK_HIGH;  
    delay_us(6);
    CLK_LOW; 
    if((value_buffer&0x80)==0x80) DAT_LOW;           // data high ??? ACK???? clk?? high??? ??¹??????  
    delay_us(6);
}

void Process_8data_read(void)
{
   U8 i, TEMP_READ_DATA = 0;
   SDA_IN;

   for (i = 0; i < 8; i++)
   {
      CLK_LOW;
      delay_us(5);
      CLK_HIGH;
      delay_us(5);
      

      TEMP_READ_DATA = (PIND & 0x02 == 0x00) ? 0x00 : 0x80;
      TEMP_READ_DATA >>= i;
      READ_DATA |= TEMP_READ_DATA;
   } // end of for()
}

void ACK_write(void)
{
    U8 i=0;                 // ACK ??ι?? ???? ????? ????
    
    SDA_IN;                 // ?????? ???
    CLK_HIGH;               // ACK ??? ??? ???
    for (i=10; i>0; i--)    // 10?? ??? ?? ACK ?????? ????? ???
        {
            if ((PIND & 0x02) == 0x00)
               {
                PORTC = 0xF1;
               } 
            else PORTC = 0x00;      // NACK??? LED ??? ON
        }//End of for
    delay_us(10);
    CLK_LOW;
    SDA_OUT;                // ?????? ???
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

void Random_read(void){      // Randomread ??수
    IIC_START();             // start
    Process_8data(DEV_ADD_W);// device address 7bit?? write 0
    ACK_read();              // ack
    Process_8data(IIC_ADD);  // address 8bits
    ACK_read();              // ack
    IIC_START();             // start
    Process_8data(DEV_ADD_R);// device address 7bit?? read 1
    ACK_read();              // ack
    Process_8data_read();    // data 8bits read
    no_ACK();                // nack ??이??그만 주기 master->slave
    IIC_STOP();              // stop 
}//end of Random_read

void Sequential_read(void)
{
    IIC_START();             // start
    Process_8data(DEV_ADD_W);// device address 7bit?? write 0
    ACK_read();              // ack
    Process_8data(IIC_ADD);  // address 8bits
    ACK_read();              // ack
    IIC_START();             // start
    Process_8data(DEV_ADD_R);// device address 7bit?? read 1
    ACK_read();              // ack
    for(i=0; i<N; i++){
      Process_8data_read(DATA_FIVE[i]);   // data 8bits
      ACK_read();               // ack
   }
    no_ACK();                // nack ??이??그만 주기 master->slave
    IIC_STOP();              // stop 

}


void no_ACK(void){       // NACK ??수  master -> slave
    SDA_OUT;  
    DAT_HIGH;    
    CLK_HIGH;  
    delay_us(12);
    CLK_LOW; 
    delay_us(6);  
}//end of no_ACK

*/
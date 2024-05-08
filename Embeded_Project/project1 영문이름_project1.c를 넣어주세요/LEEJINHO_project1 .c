/* Atmega128 - M24C08 */
 

#include <mega128a.h>
#include <delay.h>

#define CLK_HIGH    PORTD |= 0x01   // PD.0=1 ≈¨∂Ù 1
#define CLK_LOW     PORTD &= 0xFE   // PD.0=0 ≈¨∂Ù 0
#define DAT_HIGH    PORTD |= 0x02   // PD.1=1 µ•¿Ã≈Õ 1
#define DAT_LOW     PORTD &= 0xFD   // PD.1=0 µ•¿Ã≈Õ 0

#define SCL_OUT     DDRD |= 0x01    // PD.0=1 ≈¨∂Ù √‚∑¬∏µÂ
#define SDA_IN      DDRD &= 0xFD    // PD.1=0 µ•¿Ã≈Õ ¿‘∑¬∏µÂ
#define SDA_OUT     DDRD |= 0x02    // PD.1=1 µ•¿Ã≈Õ √‚∑¬∏µÂ

typedef unsigned char U8;           // µ•¿Ã≈Õ ≈∏¿‘ ªÛºˆ»≠

U8 DEV_ADD_W = 0xA0;                // µπŸ¿ÃΩ∫ æÓµÂ∑πΩ∫ æ≤±‚∏µÂ
U8 DEV_ADD_R = 0xA1;                // µπŸ¿ÃΩ∫ æÓµÂ∑πΩ∫ ¿–±‚∏µÂ
U8 IIC_ADD = 0xAA;                  // æÓµÂ∑πΩ∫ ¡ˆ¡§
U8 IIC_DAT = 0x55;                  // æµ µ•¿Ã≈Õ ∞™
U8 READ_DATA = 0;                   // ¿–æÓø¬ µ•¿Ã≈Õ ∞™
U8 EINT4_FLAG = 0;                  // inetrrupt 4π¯ flag
U8 EINT5_FLAG = 0;                  // inetrrupt 5π¯ flag
                                    

void IIC_START(void);               // START «‘ºˆ
void IIC_STOP(void);                // STOP «‘ºˆ
void ACK_write(void);               // ACK «‘ºˆ  master -> slave
void no_ACK(void);                  // NACK «‘ºˆ master -> slave
void ACK_read(void);                // ACK «‘ºˆ  slave -> master
void Process_8data(U8 value);       // Bytewrite 8∫Ò∆Æ µ•¿Ã≈Õ æ≤±‚
void Process_8data_read(void);      // Randomread 8∫Ò∆Æ µ•¿Ã≈Õ πﬁ±‚ 
void Byte_write(void);              // Bytewrite «‘ºˆ 
void Random_read(void);             // Randomread «‘ºˆ

void main(void){
    DDRC=0xFF;                      // «¡∑Œ±◊∑• »Æ¿Œ ¿ß«— LED
    PORTC=0xFF;                     // √ ±‚ LED off clear
    SCL_OUT;                        // ≈¨∂Ù √‚∑¬
    SDA_OUT;                        // µ•¿Ã≈Õ √‚∑¬          
                                      
    while(1){
    
       
            Byte_write(); 
            delay_ms(100);          // stop»ƒ sratøÕ¿« ∞£∞›  
      
      //      Random_read();                              
            delay_ms(100);
       
    }//end of while
}//end of main

void IIC_START(void){               //START «‘ºˆ
    DAT_HIGH;                       //8MHZ 8000KHz-> 100Khz 1clock = 0.00001s -> 10us 
    delay_us(6);                    // delay_us(3)*4 =12us ∏∏µÈ∑¡∞Ì «ﬂ¿∏≥™ ø¿Ω«∑ŒΩ∫ƒ⁄«¡ø° 7-8us∑Œ ¬Ô«Ùº≠ µÙ∑π¿Ã √ﬂ∞°.
    CLK_HIGH;   
    delay_us(6);
    DAT_LOW;    
    delay_us(6);
    CLK_LOW;    
    delay_us(6);
}//end of IIC_START

void IIC_STOP(void){               //STOP «‘ºˆ
    SDA_OUT;                       //µ•¿Ã≈Õ √‚∑¬
    DAT_LOW;  
    delay_us(6);
    CLK_HIGH;   
    delay_us(6);
    DAT_HIGH;   
    delay_us(6);
    CLK_LOW;    
    delay_us(6);
}//end of IIC_STOP

void Process_8data(U8 value){    // Bytewrite 8∫Ò∆Æ µ•¿Ã≈Õ æ≤±‚
    U8 i_8bit;                   // 8∫Ò∆Æ µ•¿Ã≈Õ Ω·¡÷±‚¿ß«— π›∫ππÆ ∫Øºˆ
    U8 value_buffer;             // æµ µ•¿Ã≈Õ πˆ∆€∞™     
    value_buffer=value;
    SDA_OUT;                     //µ•¿Ã≈Õ √‚∑¬
    for(i_8bit=0;i_8bit<7;i_8bit++){ // 7∫Ò∆Æ µ•¿Ã≈Õ Ω·¡÷±‚¿ß«— π›∫ππÆ

        if((value_buffer&0x80)==0x80)DAT_HIGH; // Ω·¡ÿ ∞™¿« √÷ªÛ¿ß ∫Ò∆Æ∞° 1¿Ã∏È µ•¿Ã≈Õ HIGH
        else DAT_LOW;                          // æ∆¥œ∏È LOW
        value_buffer<<=1;                      // MSB-> LSB±Ó¡ˆ «œ≥™æø  shift
        delay_us(6);
        CLK_HIGH;  
        delay_us(12);
        CLK_LOW; 
        delay_us(6);       
    }//end of for      
    if((value_buffer&0x80)==0x80)DAT_HIGH;     // LSB µ˚∑Œ Ω·¡‹ ¿ß¿« π›∫ππÆø°º≠  value_buffer¿« MSBø° µ•¿Ã≈Õ LSB∞™¿Ã ¿÷¿Ω           
    else DAT_LOW;            
    delay_us(6);
    CLK_HIGH;  
    delay_us(12);
    CLK_LOW;  
    if(value_buffer==0x80) DAT_LOW;           // data high ¿Ã∏È ACK∞™¿Ã clk¿Ã high¿œ∂ß ¿‘∑¬πﬁ¿∏π«∑Œ  
    delay_us(6);                              // clk low ¿œ∂ß µ•¿Ã≈Õ∞° ∫Ø∞Êµ«¥¬ ∆ƒ«¸∏æÁ¿ª ¿ß«ÿ clk high µ«±‚¿¸ data ¿Œ¿ß¿˚¿∏∑Œ∑Œ low «ÿ¡‹     
}//end of Process_8data

void Process_8data_read(void){                // Randomread 8∫Ò∆Æ µ•¿Ã≈Õ πﬁ±‚ 
    
    U8 i, TEMP_READ_DATA = 0;
    SDA_IN;
    READ_DATA&=0x00 
    
    for (i = 0; i < 8; i++);{
                     // 8∫Ò∆Æµ•¿Ã≈Õ ¿–±‚
        CLK_LOW;
        delay_us(6);
        CLK_HIGH;                               
        delay_us(12);
        CLK_LOW;  
        delay_us(6);
        TEMP_READ_DATA = (PIND & 0x02 == 0x00) ? 0x00 : 0x80;// µ•¿Ã≈Õ ¿–¿∫ ∞™¿Ã 0¿Ã∏È 0x00 æ∆¥œ∏È 0x80
        TEMP_READ_DATA >>= i;                                // MSB∫Œ≈Õ ¿⁄∏Æ ¡§∑ƒ shift
        READ_DATA |= TEMP_READ_DATA;                         // ¿–¿∫ µ•¿Ã≈Õ∞™ ¿˙¿Â
    }//end of for  
    if(IIC_DAT==READ_DATA)PORTC=0xf0;        // write ∞™∞˙ read ∞™¿Ã ¿œƒ°«œ∏È led µø¿€    
}//end of Process_8data_read

void ACK_read(void){                         // ACK «‘ºˆ  slave -> master
    U8 i = 0;                                // ACK »Æ¿Œπﬁ±‚¿ß«— π›∫ππÆ ∫Øºˆ

    SDA_IN;                                  // µ•¿Ã≈Õ ¿‘∑¬
    CLK_HIGH;                                // ACK Ω≈»£ πﬁ±‚¡ÿ∫Ò
    for(i=10;i>0;i--){                       // 10π¯ π›∫π¡ﬂ  ACK πﬁ¿∏∏È π›∫ππÆ ∫¸¡Æ ≥™∞®
        if((PIND & 0x02) == 0x00){i=1;
        PORTC=0xf1;
        }
        else PORTC=0x00;                     // NACK πﬁæ“¥Ÿ∏È LED ¥Ÿ ƒ—¡¸                           
    }//end of for
    delay_us(12);
    CLK_LOW;        
    SDA_OUT;                                 //µ•¿Ã≈Õ √‚∑¬
    delay_us(6);      
}//end of ACK_read

void ACK_write(void){     // ACK «‘ºˆ  master -> slave
    SDA_OUT;              // µ•¿Ã≈Õ √‚∑¬
    DAT_LOW;    
    CLK_HIGH;  
    delay_us(12);
    CLK_LOW; 
    delay_us(6);   
}//end of ACK_write

void no_ACK(void){       // NACK «‘ºˆ  master -> slave
    SDA_OUT;  
    DAT_HIGH;    
    CLK_HIGH;  
    delay_us(12);
    CLK_LOW; 
    delay_us(6);  
}//end of no_ACK

void Byte_write(void){        // Bytewrite «‘ºˆ 
    IIC_START();              // start
    Process_8data(DEV_ADD_W); // device address 7bitøÕ write 
    ACK_read();               // ack
    Process_8data(IIC_ADD);   // address 8bits
    ACK_read();               // ack
    Process_8data(IIC_DAT);   // data 8bits
    ACK_read();               // ack
    IIC_STOP();               // stop  
}//end of Byte_write   

void Random_read(void){      // Randomread «‘ºˆ
    IIC_START();             // start
    Process_8data(DEV_ADD_W);// device address 7bitøÕ write 0
    ACK_read();              // ack
    Process_8data(IIC_ADD);  // address 8bits
    ACK_read();              // ack
    IIC_START();             // start
    Process_8data(DEV_ADD_R);// device address 7bitøÕ read 1
    ACK_read();              // ack
    Process_8data_read();    // data 8bits read
    no_ACK();                // nack µ•¿Ã≈Õ ±◊∏∏ ¡÷±‚ master->slave
    IIC_STOP();              // stop    
}
void Random_read(void) {
    IIC_START();             // start
    Process_8data(DEV_ADD_W); // device address 7bit?Ä write 0
    ACK_read();              // ack
    Process_8data(IIC_ADD);  // address 8bits
    ACK_read();              // ack
    IIC_START();             // start
    Process_8data(DEV_ADD_R); // device address 7bit?Ä read 1
    ACK_read();              // ack
    Process_8data_read();    // data 8bits read
    ACK_read();              // ack
    IIC_STOP();              // stop 
}
void Process_8data_read(void) {
    U8 i, TEMP_READ_DATA = 0;
    SDA_IN;

    for (i = 0; i < 8; i++) {
        CLK_LOW;
        CLK_HIGH;
        delay_us(6);
        CLK_LOW;

        TEMP_READ_DATA = (PIND & 0x02 == 0x00) ? 0x00 : 0x80;
        TEMP_READ_DATA >>= i;
        READ_DATA |= TEMP_READ_DATA;
        
        delay_us(6);
    }
}      
        
}//end of Random_read
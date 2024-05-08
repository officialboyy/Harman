/*
 * iic_bus.c
 *
 * Created: 2024-03-18 오후 2:18:03
 * Author: SAMSUNG
 */

#include <mega128a.h>
#include <delay.h>

#define CLK_HIGH    PORTD |= 0x01   // PD.0=1
#define CLK_LOW    PORTD &= 0xFE   // PD.0=0
#define DAT_HIGH    PORTD |= 0x02   // PD.1=1
#define DAT_LOW    PORTD &= 0xFD   // PD.1=0

#define SCL_OUT   DDRD |= 0x01  // PD.0=1
#define SDA_IN	DDRD &= 0xFD  // PD.1=0
#define SDA_OUT	DDRD |= 0x02  // PD.1=1

typedef unsigned char U8;

U8 DEV_ADD_W = 0xA0;
U8 DEV_ADD_R = 0xA1;
U8 IIC_ADD = 0x55;
U8 IIC_DAT = 0x77;
U8 IIC_DAT_ARR[5] = {0xFF, 0xF5, 0x55, 0x5F, 0xAA};
U8 READ_DATA = 0x00;

void START(void);
void STOP(void);
void ACK_write(void);
void NO_ACK(void);
void ACK_read(void);
void proc_data(U8 tt);
void byte_write(void);
void random_read(void);
void page_write(void);
void proc_data_read(void);

void main(void)
{
    unsigned char  o_sw, n_sw;
    DDRC = 0xFF;
    PORTC = 0xAA;
    
    SCL_OUT;
    SDA_OUT;
    
    o_sw = PINE & 0b11110000;
    while (1)
        {
            
            n_sw = PINE & 0b11110000;
            if(o_sw == 0xF0 && n_sw == 0xE0){
                byte_write();
            }
            if(o_sw == 0xF0 && n_sw == 0xD0){
                page_write();
            }
            if(o_sw == 0xF0 && n_sw == 0xB0){
                random_read();
                PORTC = READ_DATA;
            }              
            o_sw = n_sw;

        }
    }

void START(void)
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

void STOP(void)
{
    SDA_OUT;
    DAT_LOW;
    delay_us(6);
    CLK_HIGH;
    delay_us(6);
    DAT_HIGH;
    delay_us(6);
    CLK_LOW;
    delay_ms(1);
}

void ACK_write(void)
{
    U8 i = 0;
    SDA_IN;
    CLK_HIGH;
    for( i = 10; i > 0; i--)
    {
        if((PIND & 0x02) == 0x00)
        {
            i = 1;
            PORTC = 0xF1;
        }
        else PORTC = 0x00;    
    }
    delay_us(12);
    CLK_LOW;  
    SDA_OUT;
    delay_us(6);
}

void ACK_read(void)
{
    U8 i = 0;
    SDA_IN;
    CLK_HIGH;
    for( i = 10; i > 0; i--)
    {
        if((PIND & 0x02) == 0x00)
        {
            i = 1;
            PORTC = 0xF1;
        }
        else PORTC = 0x00;    
    }
    delay_us(12);
    CLK_LOW;
    SDA_OUT;
    delay_us(6);
}

void NO_ACK(void)
{
    SDA_OUT;  
    DAT_HIGH;    
    CLK_HIGH;  
    delay_us(12);
    CLK_LOW; 
    delay_us(6);    
}

void proc_data(U8 tt)
{
    U8 i;
    for(i = 0; i < 7; i++)
    {
        if((tt & 0x80) == 0x80)
            DAT_HIGH;
        else
            DAT_LOW;
            
        tt <<= 1;
        delay_us(6);
        CLK_HIGH;
        delay_us(12);
        CLK_LOW;
        delay_us(6);                    
    }
    if((tt & 0x80) == 0x80)
            DAT_HIGH;
        else
            DAT_LOW;
    delay_us(6);
    CLK_HIGH;
    delay_us(12);
    CLK_LOW;
    
    if((tt & 0x80) == 0x80) DAT_LOW;
    delay_us(6);
}

void proc_data_read(void){                // Randomread 8비트 데이터 받기 
    
    U8 i, TEMP_READ_DATA = 0;
    READ_DATA &= 0x00;
    SDA_IN;
    
    for (i = 0; i < 8; i++){                  // 8비트데이터 읽기
        CLK_HIGH;
        delay_us(12);
        CLK_LOW;  
        delay_us(6);
        TEMP_READ_DATA = (PIND & 0x02 == 0x00) ? 0x00 : 0x80;// 데이터 읽은 값이 0이면 0x00 아니면 0x80
        TEMP_READ_DATA >>= i;                                // MSB부터 자리 정렬 shift
        READ_DATA |= TEMP_READ_DATA;                         // 읽은 데이터값 저장
    }//end of for  
    if(IIC_DAT==READ_DATA)PORTC=0xf0;        // write 값과 read 값이 일치하면 led 동작    
}//end of Process_8data_read

void byte_write(void)
{
    START();
    proc_data(DEV_ADD_W);
    ACK_write();   
    proc_data(IIC_ADD);   
    ACK_write();
    proc_data(IIC_DAT);
    ACK_write();
    STOP();

}

void page_write(void)
{
    U8 i;
    START();
    proc_data(DEV_ADD_W);
    ACK_write();   
    proc_data(IIC_ADD);   
    ACK_write();
    for(i = 0; i < 5; i++)
    {
        proc_data(IIC_DAT_ARR[i]);
        ACK_write();    
    }
    STOP();


}

void random_read(void)
{
    START();
    proc_data(DEV_ADD_W);
    ACK_write();   
    proc_data(IIC_ADD);   
    ACK_write();
    START();
    proc_data(DEV_ADD_R);
    ACK_write();
    proc_data_read();
    NO_ACK();
    STOP();
    
}
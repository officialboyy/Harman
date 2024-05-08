/* M24C08 */

#include <mega128a.h>
#include <delay.h>

#define CLK_HIGH    PORTD |= 0x01   // PD.0=1             1�� ��
#define CLK_LOW     PORTD &= 0xFE   // PD.0=0             1�� ����

#define DAT_HIGH    PORTD |= 0x02   // PD.1=1             2�� ��
#define DAT_LOW     PORTD &= 0xFD   // PD.1=0             2�� ����
    
#define SCL_OUT     DDRD |= 0x01    // PD.0=1             SCL ��Ʈ D ���
#define SDA_IN      DDRD &= 0xFD    // PD.1=0             SDA �Է�
#define SDA_OUT        DDRD |= 0x02    // PD.1=1             SDA ���

typedef unsigned char U8;

U8 DEV_ADD_W = 0xA0;                 //DEV ADD  ���� 1010 0000
U8 DEV_ADD_R = 0xA1;                 //DEV ADD  �б� 1010 0001
U8 IIC_ADD = 0x55;                      //��巹�� 0
U8 IIC_DAT = 0x55;                      // ������ 0
U8 READ_DATA = 00x77; 
U8 DATA FIVE [N] ={0xF0, 0x0F, 0xAA, 0x55, 0x77};              // ���嵥���� 0

void IIC_START(void);                // IIC ��ŸƮ
void IIC_STOP(void);                 // IIC ��ž
//void ACK_write(void);
//void no_ACK(void);
void ACK_read(void);
void Process_8data(U8 value);        // ���μ��� 8��Ʈ ������
void Process_8data_read(void);
void Byte_write(void);
//void Page_write(void);
//void Random_read(void);
//Sequential_read(void);



//---------------------------------------------------------------------------------------------------------------------



void main(void)   //���� ���̵� ����
{
    unsigned char  o_sw, n_sw;

    DDRC = 0xFF;                  // ��ƮC ��� ����
    DDRE = 0x00;                  // ��ƮE �Է� ����

    PORTC=0xAA;   //LED�� 1010 1010
    
    SCL_OUT;      // START             
    SDA_OUT;      // START                      
    
    o_sw = PINE & 0b11110000;      
    while(1){
        n_sw = PINE  & 0b11110000;
        if(o_sw == 0xF0 && n_sw == 0xE0){ 
            Byte_write();
        }    
        if(o_sw == 0xF0 && n_sw == 0xD0){ 
            //Page_write();
        }    
         if(o_sw == 0xF0 && n_sw == 0xB0){ 
            //Random_read();
        }    
         if(o_sw == 0xF0 && n_sw == 0x70){ 
            //Sequential_read();
        }        
    
    }
}

void Byte_write(void){        // Bytewrite �Լ� 
    IIC_START();              // start
    Process_8data(DEV_ADD_W); // device address 7bit�� write 
    ACK_read();               // ack
    Process_8data(IIC_ADD);   // address 8bits
    ACK_read();               // ack
    Process_8data(IIC_DAT);   // data 8bits
    ACK_read();               // ack
    IIC_STOP();               // stop  
}//end of Byte_write   

void IIC_START(void)                           //START�� �������� �ο�ο� ����
{
    DAT_HIGH;
    CLK_HIGH;
    DAT_LOW;
    CLK_LOW;
}

void IIC_STOP(void)                            //STOP�� �ο����� ���̷ο� ��
{
    DAT_LOW;
    CLK_HIGH;
    DAT_HIGH;
    CLK_LOW;
}

void Process_8data(U8 value)                   //8data W
{
    U8 i_8bit;
    U8 value_buffer;
    
    value_buffer=value;
    for(i_8bit=0;i_8bit<8;i_8bit++)            //0~7  ++1
    {
        if((value_buffer&0x80)==0x80)          //���� 1000 0000�̸� dat high
            DAT_HIGH;
        else                                   //�ƴϸ� data low
            DAT_LOW;
    
        CLK_HIGH;                              //Ŭ�� ���� ���ٰ� �ٽ� �ο�  8�� �ݺ�
        CLK_LOW;  
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
        //DELAY
        CLK_LOW;

        TEMP_READ_DATA = (PIND & 0x02 == 0x00) ? 0x00 : 0x80;
        TEMP_READ_DATA >>= i;
        READ_DATA |= TEMP_READ_DATA;
    } // end of for()
}

void ACK_read(void){
   U8 i = 0;                                // ACK Ȯ�ιޱ����� �ݺ��� ����

    SDA_IN;                                  // ������ �Է�
    CLK_HIGH;                                // ACK ��ȣ �ޱ��غ�
    for(i=10;i>0;i--){                       // 10�� �ݺ���  ACK ������ �ݺ��� ���� ����
        if((PIND & 0x02) == 0x00){i=1;
        PORTC=0xFE;
        }
        else PORTC=0x0F;                     // NACK �޾Ҵٸ� LED �� ����                           
    }//end of for
    delay_us(12);
    CLK_LOW;        
    SDA_OUT;                                 //������ ���
    delay_us(6);      
}    
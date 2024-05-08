/* M24C08 */

#include <mega128a.h>   //�ް� 128a ������� 
#include <delay.h>      //������ ������� 

#define CLK_HIGH PORTD |= 0x01  // LED�� 0�� �� ON       Ŭ�� ����
#define CLK_LOW  PORTD &= 0xFE  // LED�� 0�� �� OFF      Ŭ�� �ο�

#define DAT_HIGH PORTD |= 0x02  // LED�� 1�� �� ON       ������ ����
#define DAT_LOW  PORTD &= 0xFD  // LED�� 1�� �� OFF      ������ �ο�


#define SCL_OUT  DDRD  |= 0x01  // DDR D�� 0�� �ƿ� SLC ���

#define SDA_IN   DDRD  &= 0xFD  // DDR D�� 1�� �ƿ� SDA �Է�
#define SDA_OUT  DDRD  |= 0x02  // DDR D�� 1�� ��  SDA ���

#define N 5                     // N = 5


typedef unsigned char U8;      // char u8 ���

U8 DEV_ADD_W = 0xA0;            // ���W . 1010 0000��  ������ ��Ʈ 0 W ������
U8 DEV_ADD_R = 0xA1;            //  ���R . 1010 0001��  ������ ��Ʈ 1 R �б���
U8 IIC_ADD = 0;                 // I2C ��巹�� ����
U8 IIC_DAT = 0x55;              // I2C Dat �� ������ �� 
U8 READ_DATA = 0x77;                // READ DATA �о�� ������ ��
U8 DATA_FIVE[N] = { 0xF0, 0x0F, 0xAA, 0x55, 0x77 };      // DATA_FIVE[N]�� �迭 5�� �����

void IIC_START(void);                    // IIC ��ŸƮ �Լ� 
void IIC_STOP(void);                     // IIC ��ž �Լ� 
void ACK_read(void);                     // ACK READ �Լ�
//void ACK_write(void);
//void NO_ACK(void);                       // NO ACK �Լ�
void Process_8data(U8 value);            // ���μ��� 8������ ����
void Process_8data_read(void);           // ���μ��� 8������ �ޱ�
void Byte_write(void);                   // ����Ʈ ����Ʈ �Լ�
void Page_write(void);                   // ������ ����Ʈ �Լ�
//void Random_read(void);                // ���� ���� �Լ�
//Sequential_read(void);


//----------------------------------------------------------------------------------------------------------

void main(void)                      // ���� ����
{
    U8 o_sw, n_sw;                   // o����ġ, s����ġ

    DDRC = 0xFF;                     // DDR C ��� ����
    DDRE = 0x00;                     // DDR E �Է� ����

    SCL_OUT;                         // SCL START
    SDA_OUT;                         // SDA START


    o_sw = PINE & 0xF0;                        //  O����ġ = ��E  & 1111 0000
    while (1) {                                //  �ݺ�
        n_sw = PINE & 0xF0;                    //  O����ġ = ��E  & 1111 0000
        if (o_sw == 0xF0 && n_sw == 0xE0) {    //  0XF0 && 0xE0 =4������ġ ON�� ����Ʈ����Ʈ   1111 0000 
            Byte_write();                                                         // 1110 0000
        }                                                                         // 0001 0000
        if (o_sw == 0xF0 && n_sw == 0xD0) {    //  0XF0 && 0xD0 =5������ġ ON�� ����������Ʈ
            Page_write();
        }
        if (o_sw == 0xF0 && n_sw == 0xB0) {    //  0XF0 && 0xB0 =6������ġ ON�� ��������
            //  Random_read();
        }
        if (o_sw == 0xF0 && n_sw == 0x70) {    //  0XF0 && 0x70 =7������ġ ON�� ���� ����
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
        o_sw = n_sw;
    }
} //end




void Byte_write(void)                     // 1����Ʈ ����Ʈ �Լ� ��Ʈ, 4�� ������ ����Ʈ����Ʈ �۵���
{
    IIC_START();                          // ���� ��ŸƮ 

    Process_8data(DEV_ADD_W);             // DEV ADD W 8��Ʈ
    ACK_read();                           // ACK��

    Process_8data(IIC_ADD);               // ADD 8��Ʈ
    ACK_read();                           // ACK

    Process_8data(IIC_DAT);               // DATA 8��Ʈ
    ACK_read();                           // ACK

    IIC_STOP();                           // ��ž 
} //end


void Page_write(void)
{
    U8 i = 0;

    IIC_START();                           //��ŸƮ
    Process_8data(DEV_ADD_W);              // DEV ADD W
    ACK_read();                            // ACK
    Process_8data(IIC_ADD);                // ADD
    ACK_read();                            // ACK       DEV iic �ּҹޱ�

    for (i = 0; i < N; i++) {
        Process_8data(DATA_FIVE[N]);      //DATA_FIVE[N] �迭 �� i>N ��ŭ ����  
        ACK_read();                       //ACK                  0xF0, 0x0F, 0xAA, 0x55, 0x77
    }
    IIC_STOP();                           // stop  
}//end


void IIC_START(void) {                     // IIC START �Լ� ��?
    DAT_HIGH;                             //  2.  _
    CLK_HIGH;                             //  4.   |_
    delay_us(6);
    DAT_LOW;                              //  1. _ 
    CLK_LOW;                              //  3.  ��_
    delay_us(6);

} //end



void Process_8data(U8 value)                  // ���μ��� 8��Ʈ ������ �Լ� ����
{
    U8 i_8bit;                                // i_8bit       8��Ʈ �ݺ���
    U8 value_buffer;                          // value_buffer ���� �� �ӽ� ������ ���� ������

    value_buffer = value;                     // �ӽ������� value�� ����?

    for (i_8bit = 0; i_8bit < 8; i_8bit++)    // 0~7���� ++�ϱ�
    {
        if ((value_buffer & 0x80) == 0x80)    // 1000 0000 ������ DAT_HIGH
            DAT_HIGH;
        else
            DAT_LOW;                          // �ƴϸ� DAT_LOW 
    }
    CLK_HIGH;                                 // CLK HIGH
    CLK_LOW;                                  // CLK LOW �����͸� ���� Ŭ���� ����
    value_buffer <<= 1;                       // 1000 0000�̸� 0000 0000�� 1�ڸ��� <<�� ����
}//end




void Process_8data_read(void)                                 // ���μ��� 8��Ʈ ���� �Լ� ���� 
{
    U8 i, TEMP_READ_DATA = 0;                                 //  I, ���� ���嵥����0
    SDA_IN;                                                   //  SDA IN����
    READ_DATA &= 0x00;
    for (i = 0; i < 8; i++)
    {
        CLK_LOW;
        CLK_HIGH;                                             //  CLK HIGH ���� SDA IN���� �������                
        delay_us(6);
        CLK_LOW;

        TEMP_READ_DATA = (PIND & 0x02 == 0x00) ? 0x00 : 0x80; //  PIND�� 0�̸� 0x00 / 1�̸� 0x80
        TEMP_READ_DATA >>= i;                                 //  �����͸� >> ������  
        READ_DATA |= TEMP_READ_DATA;                          //  READ ������ ��
    }

}//end





void ACK_read(void)
{
    U8  i = 0;                               // i=0

    SDA_IN;                                  // SDA�� �Է� ���·� ���� ������ ���� �غ�
    CLK_HIGH;                                // �����͸� ���� �� CLK�� ���� ���·� ����� �����
    for (i = 10; i > 0; i--)                 //  Ȥ�� �𸣴� 10�� ������ Ȯ��
    {
        if ((PIND & 0x02) == 0x00) {
            i = 1;   //  0000 0010�̸� LED ���� OFF  <<  2��°�ڸ� i�� 1 ������
            PORTC = 0xFE;
        }
        else PORTC = 0x0F;                   //  0000 0000 NO ACK�� LED �� ����
    }
    delay_us(6);
    CLK_LOW;                                 //  �ٽ� CLK�ο� SDA �ƿ����·� �������
    SDA_OUT;
    delay_us(6);
} //end





void IIC_STOP(void) {
    DAT_LOW;                         //  2.  _
    CLK_HIGH;                        //  4.   |_

    DAT_HIGH;                        //  3.    _
    CLK_LOW;                         //  1.  _/
} //end                                            



/*                �ؾ��ϴºκ�
    void Random_read(void) {      // Randomread �Լ�
        IIC_START();             // start
        Process_8data(DEV_ADD_W);// device address 7bit�� write 0
        ACK_read();              // ack
        Process_8data(IIC_ADD);  // address 8bits
        ACK_read();              // ack
        IIC_START();             // start
        Process_8data(DEV_ADD_R);// device address 7bit�� read 1
        ACK_read();              // ack
        Process_8data_read();    // data 8bits read
        no_ACK();                // nack ������ �׸� �ֱ� master->slave
        IIC_STOP();              // stop
    }//end of Random_read

    void no_ACK(void) {       // NACK �Լ�  master -> slave
        SDA_OUT;
        DAT_HIGH;
        CLK_HIGH;
        delay_us(12);
        CLK_LOW;
        delay_us(6);
    }//end of no_ACK*/
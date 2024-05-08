
/*
 * Name : atmega test1
 * Modified and programmed by KIM TAE MYEONG
 * Created: 2024-03-18 ���� 2:13:21
 * Modified by KIM _kim_20240318
 * Author: SAMSUNG
 */
/******************************************/

/* M24C08 */

#include <mega128a.h>
#include <delay.h> //�����̴� ���߿� TIMER�� ��ü ���� DELAY�� CPU�� �ƿ� ������Ű�� ��ɾ� NOP(�����۷��̼�)�� �־ �׻� �����ؾ� �ϴ� CPU���� LOS TIME��


#define CLK_HIGH    PORTD |= 0x01   // PD.0=1 0000 0001  PORT�� ��Ʈ D�� �������� �����ؼ� �����ϱ� ���� ����
#define CLK_LOW     PORTD &= 0xFE   // PD.0=0 1111 1110  �׷��� PORTD �� D��Ʈ�� ��� ���̰� D��Ʈ�� 8���̸� 8byte�� �����Ǿ� ������ �� ��Ʈ��

#define DAT_HIGH    PORTD |= 0x02   // PD.1=1 0000 0010  1�� ��Ʈ�� 0000 0000 �� 8��°(2�� 0��) �ּ��̰� 2��° ��Ʈ�� (2��1���ڸ�)
#define DAT_LOW     PORTD &= 0xFD   // PD.1=0 1111 1101  �� �ڸ����� 1�� 0�� ������ HIgh Low ������ �ϴ°��̸� ����� ������ HIGH(1���) �ƴҶ��� �ݴ��̴�.

#define SCL_OUT     DDRD |= 0x01    // PD.0=1 0000 0001  DDR�� ��Ʈ�� IN OUT ��带 ��ȯ�ϴ� ���ù�
#define SDA_IN      DDRD &= 0xFD    // PD.1=0 1111 1101  �׷��� DDRD�� D��Ʈ�� �� ��� �� ���湮
#define SDA_OUT     DDRD |= 0x02    // PD.1=1 0000 0010  Ŭ���� ������ ����̱� ������ ��¸� ���� �ϸ� ��

#define N 5

typedef unsigned char U8;

/*
******�߿�*******
DEV_ADD�� 0xA0�ε� ���� A�� M24C08 ����Ÿ ��Ʈ�� 13������ 4.5 Device addressing�� Table 3. Device select code�� �츮�� ���� TSSOP8,SO8,PDIP8,
UFDFPN8 ���� Ĩ�� ȣ���(Device type identifier)�� 1010���� ����Ǿ� �ֱ⶧���� 0xA(1010)�� �ٴ� ���̴� �ᱹ�� Ĩ���� ������ ��Ʈ�� Ȯ���ؼ� ȣ����� Ȯ�� �ؾ��Ѵٴ°�
�̰� Ʋ���� SLAVE���忡�� �ڱ� �̸��� 1010�ε� Ʋ���� �θ��� ������ ���ϴ� ������ ���´�

++�߰��� �� �������� ���� �˼��ִ� �߰� ���� ȣ����� 1010�̸� �ڿ� 0000 4�ڸ��� �����ΰ�?
�ڿ� ���ڸ� ���ʴ�� E2 A9 A8 R/W(�̰� �ٷ� �Ʒ��� ��������)�ϰǵ�
�� ������ �� �о�� E2�� 1010���� �� �ҷ� ���� �� ����Ұž� ��� ��ȣ�ִ� ��Ʈ�̰� ���� Ĩ���� ���� 0�϶� ����Ѵٰ� �����ϴ� ����
A9 A8 �� �갡 �и��� �ڿ� �ּ�(ADRESS)�� 256�� ���ε� ���� 1024(1byte)�� �����ִ��� �ǽ��� ��ǵ� �װ� �ذ��ϴ� �Է°���
ADDRES�� ǥ�� ���� �Ѱ� 1111 1111�ε� DEV_ADD�� A9 A8 �ڸ��� �̿��ؼ� Ȯ�� ��Ų��
ADDRES�� 1111 1111�� 256��   (A9 A8�� ������ �����ε� �̴� A9 A8�� 00�ΰŶ� ����)
DEV_ADD�� A8�� 1 �̰� ADDRES�� 1111 1111 �̸� 1 1111 1111 �ΰǵ� �׷��� 257���� 512������ �� �ȿ� ��

 �� ����������
ADDRES�� 1111 1111
DEV_ADD�� A9�� 1�̰� A8�� 1�̸� ADDRES�� 1111 1111 �̷��� �� ��ġ��  11 1111 1111 �׷��� 1111 1111��  256���� A8���� 1,0���� ���� ���еǱ⿡ 512�߰� �����Ǿ� 513~1024���� ���
�׷��� �� ��ġ�� 1024���� �ȴ�
*/
U8 DEV_ADD_W = 0xA0;                 //DEV ADD  ���� 1010 0000 ������ �ǿ����� �� ���� 0�̳� 1�̳ķ� ������
U8 DEV_ADD_R = 0xA1;                 //DEV ADD  �б� 1010 0001
U8 IIC_ADD = 0xAA;                      //��巹�� ��
U8 IIC_DAT = 0x55;                      //������ ��
U8 READ_DATA = 0;                    //���嵥���� ��
U8 DATA_FIVE[N]={0xF0,0x0F,0xAA,0x55,0x77};

void IIC_START(void);                // IIC ��ŸƮ
void IIC_STOP(void);                 // IIC ��ž

void ACK_write(void);
void no_ACK(void);
void ACK_read(void);

void Process_8data(U8 value);        // ���μ��� 8��Ʈ ������
void Process_8data_read(void);
void Byte_write(void);

void Page_write(void);

void Random_read(void);
Sequential_read(void);



/*---------------------------------------------------------------------------------------------------------------------*/



void main(void)   //���� ���̵� ����
{
    U8  o_sw, n_sw;

    DDRC = 0xFF;                  // ��ƮC ��� ����   DDR������ ����� ������
    DDRE = 0x00;                  // ��ƮE �Է� ����

    PORTC=0xAA;   //LED�� 1010 1010 PORT ������ ��ȣ 1,0������ ���ϴ� ���� ���� LEDŰ�� ���� ���ϴ� ����

    SCL_OUT;      //START
    SDA_OUT;      //START

    o_sw = PINE & 0b11110000;
    while(1){

        n_sw = PINE  & 0b11110000; //����ġ�� PIN,E4,E5,E6,E7 �׷��� PINE �����ϰ� 4567�� �ڸ���()�ڸ���  (1111) 0000�� �����Ѱ� ����ġ ������ 1�� 0�̵�
        if(o_sw == 0xF0 && n_sw == 0xE0){
            Byte_write();
            //1110 0000 �޴��� �ʿ� ���� �տ� 4�� ����ġ ������ 1111 0000���� 1110 0000���� �ٲ� �ؿ� �� ����ġ�� �ֱ׷��� �Ǵ� �غ� �� �� �ּ��� �ٷ� �� �ּ��� �� ���� ����
        }
        if(o_sw == 0xF0 && n_sw == 0xD0){
            Page_write();
        }
         if(o_sw == 0xF0 && n_sw == 0xB0){
            Random_read();
        }
         if(o_sw == 0xF0 && n_sw == 0x70){
         Byte_write();
            //Sequential_read();
        }
     if(IIC_DAT==READ_DATA){
			PORTC=0x55;
			delay_ms(300);
			PORTC=0xAA;
			delay_ms(300);
			PORTC=0x55;
			delay_ms(300);
			PORTC=0xAA;
			delay_ms(300);
			PORTC=0x55;
            delay_ms(300);
			PORTC=0xAA;
			delay_ms(300);
			PORTC=0x55;
			delay_ms(300);
			PORTC=0xAA;
			delay_ms(300);
			PORTC=0x55;
		}
    o_sw=n_sw;
            delay_ms(300); //Ȯ�ο�
			PORTC=0xF0;
			delay_ms(300);
			PORTC=0x0F;

    /* ������ ���� ����ǰ� while���� �ٽ� ����
    �ٵ� �Ʊ� ����ġ ������ o_sw�� ����Ȱ��� 1110 0000 ������ �ִ� �͵� 1110 0000 IF������ �ش� ������ �ٽ� o_sw=n_sw ���� �ǰ� ���� ����
     o_sw�� ����Ȱ��� 1110 0000  n_sw�� ����Ȱ��� 1111 0000 ���������� IF���ǹ� ���������� �ٽ� o_sw=n_sw ���� �׷���
     o_sw�� ����Ȱ��� 1111 0000�� �ǰ� �ٽ� ����ġ�� ���� ���� IF ������ �´� ������ ������ �ٽ� ���ǹ��� ���� �̰� �ݺ� �Ǵ°�
     �𸣰����� ������ Byte_write()�� �Ѵٰ� �����ϰ� 0000 0000(������)�� ��� �غ� ��
    */
    }
}
/*
���� �ڵ�� IIC ��Ŷ� m24c08-w ����Ÿ��Ʈ���� 27������ ��� �Ϸ������ �ٽ� �����ϴ� �������� �޽Ľð��� 1300ns�� ���� �����ð��̱⵵ �ϸ� ������ �� ���� ���� ���� ���̱⵵ �� (tDHDL/tBUF/Time between Stop condition and next Start condition 1300ns)

*/
void Byte_write(void){        // Bytewrite �Լ�
    IIC_START();              //start
    delay_us(6);
    Process_8data(DEV_ADD_W); ///device address 7bit�� write
    delay_us(6);
    ACK_read();               //ack
    delay_us(6);
    Process_8data(IIC_ADD);   //address 8bits
    delay_us(6);
    ACK_read();               //ack
    delay_us(6);
    Process_8data(IIC_DAT);   //data 8bits
    delay_us(6);
    ACK_read();              //ack
    delay_us(6);
    IIC_STOP();              //stop
    delay_us(6);
}/*end of Byte_write*/


void Page_write(void){        // Bytewrite �Լ�
	U8 i=0;
	IIC_START();              // start
    Process_8data(DEV_ADD_W); // device address 7bit�� write
    ACK_read();               // ack
    Process_8data(IIC_ADD);   // address 8bits
    ACK_read();  				// ack

	for(i=0; i<N; i++){
		Process_8data(DATA_FIVE[i]);   // data 8bits
		ACK_read();               // ack
	}

 IIC_STOP();               // stop
}//end of Byte_write


void IIC_START(void)                           //START�� �������� �ο�ο� ����
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

void IIC_STOP(void)                            //STOP�� �ο����� ���̷ο� ��
{
    DAT_LOW;
    delay_us(6);
    CLK_HIGH;
    delay_us(6);
    DAT_HIGH;
    delay_us(6);
    CLK_LOW;
    delay_us(6);
}

void Process_8data(U8 value)                   //8data W
{
    U8 i_8bit;
    U8 value_buffer;

    value_buffer=value;                        //�ӽ÷� �Է� ���� ���� ������ ����
    for(i_8bit=0;i_8bit<7;i_8bit++)            //8��Ʈ�� �Է� �ޱ� ������ 0000 0000 �� 8�� ������ 8�� �ؼ� ���� by KIM
    {
        if((value_buffer&0x80)==0x80)          //0x80�� 1000 0000�ε� �̰� &(and)���ϸ� ���� �����Ͱ�  1�϶� 1 0�϶� 0�� ���� by KIM
            DAT_HIGH;
        else                                   //�ƴϸ� data low
            DAT_LOW;

        delay_us(6);
        CLK_HIGH;
        delay_us(6);                              //Ŭ�� ���� ���ٰ� �ٽ� �ο�  8�� �ݺ�
        CLK_LOW;
        value_buffer<<=1;                  //�ּҸ� �Ѱ��� �������� �о �����Ͱ� �����ϱ����� ������ �̴°� (��Ʈ�ϳ��� 8�� ���ؾ� �ϱ⶧��) by KIM
    }
    /*
    ���� for���� 8�� ������ �ǳ� 7�� ������ �Ʒ� ������ ���� ������ ������ �����Ͱ� HIGH�� ������ �� ACK ��ȣ�� �ޱ����� ������ ��Ʈ�� INPUT�̵Ǵµ�
    �̶� HIGH�� ������ ��ȣ�� ACK�� 0��ȣ�� ���������� �������� HIGH��ȣ�� ��(��ȣ�� �����̱⿡ ���� �ܷ� ������ ���� �Ǿ����)�� �� ���������·� �����ϰ� �Ǿ� ������ ��� �Ѵ� ������ �� ó�� ������ �ȴ�
    */
    if((value_buffer&0x80)==0x80)
       DAT_HIGH;
    else
            DAT_LOW;

        delay_us(6);
        CLK_HIGH;
        delay_us(6);
        CLK_LOW;
        //delay_us(3);
        if((value_buffer&0x80)==0x80) DAT_LOW;

}

void Process_8data_read(void)                  //8data R
{
    U8 i, READ_DATA2,TEMP_READ_DATA = 0;
    SDA_IN;

    for (i = 0; i < 8; i++)
    {
        READ_DATA&=0x00;
        CLK_HIGH;
        delay_us(6);
        /*DELAY*/
        CLK_LOW;
        delay_us(6);
        TEMP_READ_DATA = (PIND & 0x02 == 0x00) ? 0x00 : 0x80;
        TEMP_READ_DATA >>= i;
        READ_DATA2 |= TEMP_READ_DATA;

        delay_us(6);
    } //end of for()
       READ_DATA=READ_DATA2;

}

void ACK_read(void){
   U8 i = 0;                                //ACK Ȯ�ιޱ����� �ݺ��� ����
    delay_us(3);
    SDA_IN;
    delay_us(3);                                         //������ �Է� Ȥ�� Ŭ����  HIGH�Ǳ� ���� ��ȣ�� ��� �ñ�� �̸� �Է����� ����
    CLK_HIGH;
    delay_us(6);                                //ACK ��ȣ �ޱ��غ�
    for(i=10;i>0;i--){                       // i�� 10���� ������ ACK�� ���� ������ �𸣱⿡ 10�� üũ �ϴ°� �ް��� ��������
        if((PIND & 0x02) == 0x00){i=1;       // ��Ʈ D�� P1��Ʈ�� �Է��� ������
        PORTC=0xAA;                          // LED ���� 1010 1010
        }
        else PORTC=0xFF;                     // NACK �޾Ҵٸ� LED �� ����
    }//end of for
    delay_us(6);
    CLK_LOW;
    SDA_OUT;                                 //������ ���
    delay_us(6);
}

void Random_read(void){      // Randomread �Լ�
    IIC_START();             // start
    delay_us(6);
    Process_8data(DEV_ADD_W);// device address 7bit�� write 0
    delay_us(6);
    ACK_read();             // ack
    delay_us(6);
    Process_8data(IIC_ADD);  // address 8bits
    delay_us(6);
    ACK_read();              // ack
    delay_us(6);
    IIC_START();             // start
    delay_us(6);
    Process_8data(DEV_ADD_R);// device address 7bit�� read 1
    delay_us(6);
    ACK_read();              // ack
    delay_us(6);
    Process_8data_read();    // data 8bits read
    delay_us(6);
    no_ACK();                // nack ������ �׸� �ֱ� master->slave
    delay_us(6);
    IIC_STOP();              // stop
}//end of Random_read

void no_ACK(void){       // NACK �Լ�  master -> slave
    SDA_OUT;
    //delay_us(6);
    DAT_HIGH;
    delay_us(6);
    CLK_HIGH;
    delay_us(12);
    CLK_LOW;
    delay_us(6);
}//end of no_ACK
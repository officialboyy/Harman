/* M24C08 */

#include <mega128a.h>   //메가 128a 헤더파일 
#include <delay.h>      //딜레이 헤더파일 

#define CLK_HIGH PORTD |= 0x01  // LED에 0번 불 ON       클락 하이
#define CLK_LOW  PORTD &= 0xFE  // LED에 0번 불 OFF      클락 로우

#define DAT_HIGH PORTD |= 0x02  // LED에 1번 불 ON       데이터 하이
#define DAT_LOW  PORTD &= 0xFD  // LED애 1번 불 OFF      데이터 로우


#define SCL_OUT  DDRD  |= 0x01  // DDR D에 0번 아웃 SLC 출력

#define SDA_IN   DDRD  &= 0xFD  // DDR D에 1번 아웃 SDA 입력
#define SDA_OUT  DDRD  |= 0x02  // DDR D에 1번 인  SDA 출력

#define N 5                     // N = 5


typedef unsigned char U8;      // char u8 상수

U8 DEV_ADD_W = 0xA0;            // 디브W . 1010 0000로  마지막 비트 0 W 쓰기모드
U8 DEV_ADD_R = 0xA1;            //  디브R . 1010 0001로  마지막 비트 1 R 읽기모드
U8 IIC_ADD = 0;                 // I2C 어드레스 지정
U8 IIC_DAT = 0x55;              // I2C Dat 쓸 데이터 값 
U8 READ_DATA = 0x77;                // READ DATA 읽어올 데이터 값
U8 DATA_FIVE[N] = { 0xF0, 0x0F, 0xAA, 0x55, 0x77 };      // DATA_FIVE[N]의 배열 5개 만들기

void IIC_START(void);                    // IIC 스타트 함수 
void IIC_STOP(void);                     // IIC 스탑 함수 
void ACK_read(void);                     // ACK READ 함수
//void ACK_write(void);
//void NO_ACK(void);                       // NO ACK 함수
void Process_8data(U8 value);            // 프로세서 8데이터 쓰기
void Process_8data_read(void);           // 프로세서 8데이터 받기
void Byte_write(void);                   // 바이트 라이트 함수
void Page_write(void);                   // 페이지 라이트 함수
//void Random_read(void);                // 랜덤 리드 함수
//Sequential_read(void);


//----------------------------------------------------------------------------------------------------------

void main(void)                      // 메인 시작
{
    U8 o_sw, n_sw;                   // o스위치, s스위치

    DDRC = 0xFF;                     // DDR C 출력 설정
    DDRE = 0x00;                     // DDR E 입력 설정

    SCL_OUT;                         // SCL START
    SDA_OUT;                         // SDA START


    o_sw = PINE & 0xF0;                        //  O스위치 = 핀E  & 1111 0000
    while (1) {                                //  반복
        n_sw = PINE & 0xF0;                    //  O스위치 = 핀E  & 1111 0000
        if (o_sw == 0xF0 && n_sw == 0xE0) {    //  0XF0 && 0xE0 =4번스위치 ON시 바이트라이트   1111 0000 
            Byte_write();                                                         // 1110 0000
        }                                                                         // 0001 0000
        if (o_sw == 0xF0 && n_sw == 0xD0) {    //  0XF0 && 0xD0 =5번스위치 ON시 페이지라이트
            Page_write();
        }
        if (o_sw == 0xF0 && n_sw == 0xB0) {    //  0XF0 && 0xB0 =6번스위치 ON시 랜덤리드
            //  Random_read();
        }
        if (o_sw == 0xF0 && n_sw == 0x70) {    //  0XF0 && 0x70 =7번스위치 ON시 시퀀 리드
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




void Byte_write(void)                     // 1바이트 라이트 함수 세트, 4번 누르면 바이트라이트 작동됨
{
    IIC_START();                          // 먼저 스타트 

    Process_8data(DEV_ADD_W);             // DEV ADD W 8비트
    ACK_read();                           // ACK함

    Process_8data(IIC_ADD);               // ADD 8비트
    ACK_read();                           // ACK

    Process_8data(IIC_DAT);               // DATA 8비트
    ACK_read();                           // ACK

    IIC_STOP();                           // 스탑 
} //end


void Page_write(void)
{
    U8 i = 0;

    IIC_START();                           //스타트
    Process_8data(DEV_ADD_W);              // DEV ADD W
    ACK_read();                            // ACK
    Process_8data(IIC_ADD);                // ADD
    ACK_read();                            // ACK       DEV iic 주소받기

    for (i = 0; i < N; i++) {
        Process_8data(DATA_FIVE[N]);      //DATA_FIVE[N] 배열 을 i>N 만큼 돌림  
        ACK_read();                       //ACK                  0xF0, 0x0F, 0xAA, 0x55, 0x77
    }
    IIC_STOP();                           // stop  
}//end


void IIC_START(void) {                     // IIC START 함수 설?
    DAT_HIGH;                             //  2.  _
    CLK_HIGH;                             //  4.   |_
    delay_us(6);
    DAT_LOW;                              //  1. _ 
    CLK_LOW;                              //  3.  ＼_
    delay_us(6);

} //end



void Process_8data(U8 value)                  // 프로세서 8비트 라이즈 함수 설정
{
    U8 i_8bit;                                // i_8bit       8비트 반복문
    U8 value_buffer;                          // value_buffer 내가 쓸 임시 데이터 저장 공간임

    value_buffer = value;                     // 임시저장을 value에 저장?

    for (i_8bit = 0; i_8bit < 8; i_8bit++)    // 0~7까지 ++하기
    {
        if ((value_buffer & 0x80) == 0x80)    // 1000 0000 나오면 DAT_HIGH
            DAT_HIGH;
        else
            DAT_LOW;                          // 아니면 DAT_LOW 
    }
    CLK_HIGH;                                 // CLK HIGH
    CLK_LOW;                                  // CLK LOW 데이터를 따라 클럭도 맞춤
    value_buffer <<= 1;                       // 1000 0000이면 0000 0000로 1자리씩 <<로 땡김
}//end




void Process_8data_read(void)                                 // 프로세서 8비트 리드 함수 설정 
{
    U8 i, TEMP_READ_DATA = 0;                                 //  I, 템프 리드데이터0
    SDA_IN;                                                   //  SDA IN상태
    READ_DATA &= 0x00;
    for (i = 0; i < 8; i++)
    {
        CLK_LOW;
        CLK_HIGH;                                             //  CLK HIGH 만들어서 SDA IN으로 만들어줌                
        delay_us(6);
        CLK_LOW;

        TEMP_READ_DATA = (PIND & 0x02 == 0x00) ? 0x00 : 0x80; //  PIND가 0이면 0x00 / 1이면 0x80
        TEMP_READ_DATA >>= i;                                 //  데이터를 >> 보내기  
        READ_DATA |= TEMP_READ_DATA;                          //  READ 데이터 값
    }

}//end





void ACK_read(void)
{
    U8  i = 0;                               // i=0

    SDA_IN;                                  // SDA를 입력 상태로 만들어서 데이터 받을 준비
    CLK_HIGH;                                // 데이터를 받을 때 CLK는 하이 상태로 만들어 줘야함
    for (i = 10; i > 0; i--)                 //  혹시 모르니 10번 돌려서 확인
    {
        if ((PIND & 0x02) == 0x00) {
            i = 1;   //  0000 0010이면 LED 전원 OFF  <<  2번째자리 i를 1 넣으면
            PORTC = 0xFE;
        }
        else PORTC = 0x0F;                   //  0000 0000 NO ACK면 LED 다 켜짐
    }
    delay_us(6);
    CLK_LOW;                                 //  다시 CLK로우 SDA 아웃상태로 만들어줌
    SDA_OUT;
    delay_us(6);
} //end





void IIC_STOP(void) {
    DAT_LOW;                         //  2.  _
    CLK_HIGH;                        //  4.   |_

    DAT_HIGH;                        //  3.    _
    CLK_LOW;                         //  1.  _/
} //end                                            



/*                해야하는부분
    void Random_read(void) {      // Randomread 함수
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

    void no_ACK(void) {       // NACK 함수  master -> slave
        SDA_OUT;
        DAT_HIGH;
        CLK_HIGH;
        delay_us(12);
        CLK_LOW;
        delay_us(6);
    }//end of no_ACK*/
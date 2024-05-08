
/*
 * Name : atmega test1
 * Modified and programmed by KIM TAE MYEONG
 * Created: 2024-03-18 오후 2:13:21
 * Modified by KIM _kim_20240318
 * Author: SAMSUNG
 */
/******************************************/

/* M24C08 */

#include <mega128a.h>
#include <delay.h> //딜레이는 나중에 TIMER로 대체 지금 DELAY는 CPU를 아예 정지시키는 명령어 NOP(낫오퍼레이션)을 넣어서 항상 동작해야 하는 CPU에겐 LOS TIME임


#define CLK_HIGH    PORTD |= 0x01   // PD.0=1 0000 0001  PORT는 포트 D의 누군가를 지정해서 동작하기 위해 선언
#define CLK_LOW     PORTD &= 0xFE   // PD.0=0 1111 1110  그래서 PORTD 는 D포트의 라는 뜻이고 D포트는 8개이며 8byte로 구성되어 있으니 각 포트를

#define DAT_HIGH    PORTD |= 0x02   // PD.1=1 0000 0010  1번 포트는 0000 0000 중 8번째(2의 0승) 주소이고 2번째 포트는 (2의1승자리)
#define DAT_LOW     PORTD &= 0xFD   // PD.1=0 1111 1101  그 자리마다 1과 0을 가지고 HIgh Low 지정을 하는것이며 출력이 나갈떈 HIGH(1출력) 아닐때는 반대이다.

#define SCL_OUT     DDRD |= 0x01    // PD.0=1 0000 0001  DDR은 포트의 IN OUT 모드를 전환하는 지시문
#define SDA_IN      DDRD &= 0xFD    // PD.1=0 1111 1101  그래서 DDRD는 D포트의 입 출력 값 변경문
#define SDA_OUT     DDRD |= 0x02    // PD.1=1 0000 0010  클락은 무조건 출력이기 떄문에 출력만 선언 하면 됨

#define N 5

typedef unsigned char U8;

/*
******중요*******
DEV_ADD가 0xA0인데 앞의 A는 M24C08 데이타 시트의 13페이지 4.5 Device addressing의 Table 3. Device select code에 우리가 쓰는 TSSOP8,SO8,PDIP8,
UFDFPN8 계졀 칩의 호출명(Device type identifier)가 1010으로 선언되어 있기때문에 0xA(1010)이 붙는 것이다 결국은 칩마다 데이터 시트를 확인해서 호출명을 확인 해야한다는거
이걸 틀리면 SLAVE입장에선 자기 이름이 1010인데 틀리게 부르면 응답을 안하는 현상이 나온다

++추가로 위 페이지를 보면 알수있는 추가 정보 호출명이 1010이면 뒤에 0000 4자리는 무엇인가?
뒤에 네자리 차례대로 E2 A9 A8 R/W(이거 바로 아래에 예시있음)일건데
그 페이지 싹 읽어보면 E2는 1010으로 얘 불러 놓고 너 사용할거야 라고 신호주는 포트이고 현재 칩에선 값이 0일때 사용한다고 선언하는 것임
A9 A8 은 얘가 분명히 뒤에 주소(ADRESS)가 256개 뿐인데 어찌 1024(1byte)를 쓸수있는지 의심이 들건데 그걸 해결하는 입력값임
ADDRES가 표현 가능 한건 1111 1111인데 DEV_ADD에 A9 A8 자리를 이용해서 확장 시킨것
ADDRES가 1111 1111는 256개   (A9 A8이 없을때 기준인데 이는 A9 A8이 00인거랑 같음)
DEV_ADD의 A8이 1 이고 ADDRES가 1111 1111 이면 1 1111 1111 인건데 그러면 257부터 512까지는 저 안에 들어감

 또 마찬가지로
ADDRES가 1111 1111
DEV_ADD의 A9가 1이고 A8이 1이며 ADDRES가 1111 1111 이렇게 다 합치면  11 1111 1111 그러면 1111 1111의  256개가 A8번의 1,0값에 의해 구분되기에 512추가 구성되어 513~1024까지 담당
그래서 다 합치면 1024개가 된다
*/
U8 DEV_ADD_W = 0xA0;                 //DEV ADD  쓰기 1010 0000 마지막 맨오른쪽 끝 값이 0이냐 1이냐로 정해짐
U8 DEV_ADD_R = 0xA1;                 //DEV ADD  읽기 1010 0001
U8 IIC_ADD = 0xAA;                      //어드레스 값
U8 IIC_DAT = 0x55;                      //데이터 값
U8 READ_DATA = 0;                    //리드데이터 값
U8 DATA_FIVE[N]={0xF0,0x0F,0xAA,0x55,0x77};

void IIC_START(void);                // IIC 스타트
void IIC_STOP(void);                 // IIC 스탑

void ACK_write(void);
void no_ACK(void);
void ACK_read(void);

void Process_8data(U8 value);        // 프로세스 8비트 데이터
void Process_8data_read(void);
void Byte_write(void);

void Page_write(void);

void Random_read(void);
Sequential_read(void);



/*---------------------------------------------------------------------------------------------------------------------*/



void main(void)   //메인 보이드 시작
{
    U8  o_sw, n_sw;

    DDRC = 0xFF;                  // 포트C 출력 설정   DDR구문이 입출력 구문임
    DDRE = 0x00;                  // 포트E 입력 설정

    PORTC=0xAA;   //LED등 1010 1010 PORT 구문이 신호 1,0뭐할지 정하는 구문 현재 LED키고 끄고 정하는 구문

    SCL_OUT;      //START
    SDA_OUT;      //START

    o_sw = PINE & 0b11110000;
    while(1){

        n_sw = PINE  & 0b11110000; //스위치는 PIN,E4,E5,E6,E7 그래서 PINE 선언하고 4567의 자리인()자리인  (1111) 0000을 선언한것 스위치 누르면 1이 0이됨
        if(o_sw == 0xF0 && n_sw == 0xE0){
            Byte_write();
            //1110 0000 뒷단은 필요 없고 앞에 4번 스위치 누르면 1111 0000에서 1110 0000으로 바뀜 밑에 두 스위치는 왜그런지 판단 해볼 것 이 주석과 바로 위 주석이 다 설명 했음
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
            delay_ms(300); //확인용
			PORTC=0xF0;
			delay_ms(300);
			PORTC=0x0F;

    /* 눌렀던 값이 저장되고 while문이 다시 돈다
    근데 아까 스위치 눌러서 o_sw에 저장된값은 1110 0000 누르고 있는 것도 1110 0000 IF구문에 해당 없으니 다시 o_sw=n_sw 저장 되고 손을 떼면
     o_sw에 저장된값은 1110 0000  n_sw에 저장된값은 1111 0000 마찬가지로 IF조건문 미충족으로 다시 o_sw=n_sw 시행 그러면
     o_sw에 저장된값이 1111 0000가 되고 다시 스위치가 눌러 지면 IF 구문에 맞는 조건이 나오니 다시 조건문에 진입 이게 반복 되는것
     모르겠으면 손으로 Byte_write()를 한다고 가정하고 0000 0000(이진법)로 계산 해볼 것
    */
    }
}
/*
위의 코드는 IIC 통신때 m24c08-w 데이타시트에서 27페이지 통신 완료시점과 다시 시작하는 시점간의 휴식시간인 1300ns를 만든 지연시간이기도 하며 파형을 잘 보기 위해 넣은 것이기도 함 (tDHDL/tBUF/Time between Stop condition and next Start condition 1300ns)

*/
void Byte_write(void){        // Bytewrite 함수
    IIC_START();              //start
    delay_us(6);
    Process_8data(DEV_ADD_W); ///device address 7bit와 write
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


void Page_write(void){        // Bytewrite 함수
	U8 i=0;
	IIC_START();              // start
    Process_8data(DEV_ADD_W); // device address 7bit와 write
    ACK_read();               // ack
    Process_8data(IIC_ADD);   // address 8bits
    ACK_read();  				// ack

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
    delay_us(6);
    CLK_LOW;
    delay_us(6);
}

void Process_8data(U8 value)                   //8data W
{
    U8 i_8bit;
    U8 value_buffer;

    value_buffer=value;                        //임시로 입력 받은 값을 저장할 변수
    for(i_8bit=0;i_8bit<7;i_8bit++)            //8비트로 입력 받기 때문에 0000 0000 총 8번 돌려야 8개 해석 가능 by KIM
    {
        if((value_buffer&0x80)==0x80)          //0x80은 1000 0000인데 이걸 &(and)취하면 비교할 데이터가  1일때 1 0일때 0이 나옴 by KIM
            DAT_HIGH;
        else                                   //아니면 data low
            DAT_LOW;

        delay_us(6);
        CLK_HIGH;
        delay_us(6);                              //클럭 하이 갔다가 다시 로우  8번 반복
        CLK_LOW;
        value_buffer<<=1;                  //주소를 한개씩 왼쪽으로 밀어서 데이터값 대조하기위해 옆으로 미는것 (포트하나로 8개 비교해야 하기때문) by KIM
    }
    /*
    원래 for문을 8번 돌리면 되나 7번 돌리고 아래 구문이 붙은 이유는 마지막 데이터가 HIGH로 나왔을 때 ACK 신호를 받기위해 데이터 포트가 INPUT이되는데
    이때 HIGH로 나오던 신호가 ACK의 0신호가 오기전까지 내보내던 HIGH신호의 값(신호는 전압이기에 남은 잔류 전압이 측정 되어버림)이 붕 떠버린상태로 존재하게 되어 파형이 계단 한단 내려온 것 처럼 측정이 된다
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
   U8 i = 0;                                //ACK 확인받기위한 반복문 변수
    delay_us(3);
    SDA_IN;
    delay_us(3);                                         //데이터 입력 혹시 클락이  HIGH되기 전에 신호가 들어 올까봐 미리 입력으로 선언
    CLK_HIGH;
    delay_us(6);                                //ACK 신호 받기준비
    for(i=10;i>0;i--){                       // i가 10번인 이유는 ACK가 언제 들어올지 모르기에 10번 체크 하는것 받고나면 빠져나감
        if((PIND & 0x02) == 0x00){i=1;       // 포트 D의 P1포트가 입력을 받으면
        PORTC=0xAA;                          // LED 켜짐 1010 1010
        }
        else PORTC=0xFF;                     // NACK 받았다면 LED 다 켜짐
    }//end of for
    delay_us(6);
    CLK_LOW;
    SDA_OUT;                                 //데이터 출력
    delay_us(6);
}

void Random_read(void){      // Randomread 함수
    IIC_START();             // start
    delay_us(6);
    Process_8data(DEV_ADD_W);// device address 7bit와 write 0
    delay_us(6);
    ACK_read();             // ack
    delay_us(6);
    Process_8data(IIC_ADD);  // address 8bits
    delay_us(6);
    ACK_read();              // ack
    delay_us(6);
    IIC_START();             // start
    delay_us(6);
    Process_8data(DEV_ADD_R);// device address 7bit와 read 1
    delay_us(6);
    ACK_read();              // ack
    delay_us(6);
    Process_8data_read();    // data 8bits read
    delay_us(6);
    no_ACK();                // nack 데이터 그만 주기 master->slave
    delay_us(6);
    IIC_STOP();              // stop
}//end of Random_read

void no_ACK(void){       // NACK 함수  master -> slave
    SDA_OUT;
    //delay_us(6);
    DAT_HIGH;
    delay_us(6);
    CLK_HIGH;
    delay_us(12);
    CLK_LOW;
    delay_us(6);
}//end of no_ACK
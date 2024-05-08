/*
 * PROJECT2.c
 *
 * Created: 2024-04-08 오전 9:06:30
 * Author: SAMSUNG
 */

#include <mega128a.h>

typedef unsigned char U8;
typedef unsigned short U16;

void MAIN_DISPLAY(void);
void Putch(char);
void BIRTH_DAY(unsigned int value);
void YYYYMMDD(void);

char *pStr;

const U8 seg_pat[10]= {0x3f, 0x06, 0x5b, 0x4f, 0x66, 0x6d, 0x7d, 0x07,0x7f, 0x6f};
U8 INPUT_BUFFER[8]={0,0,0,0,0,0,0,0};


U16 YYYY = 0;  //생년
U16 MMDD = 0;  //월일
U8 YEAR[] = "INSERT_YOUR_BIRTH_YYYY\r";
U8 MD[] = "\rINSERT_YOUR_BIRTH_MMDD\r";
U8 END[] = "\rEND\r";
U8 UART_Rx_data=0xff;
U8 UART_RX_INPUT= 0;
U8 TIMER_SEGMENT_FLAG = 0;
U16 TIMER_SEGMENT_FLAG2 = 0;
U8 BIRTH_DAY_FLAG = 0;
U8 BIRTH_DAY_FLAG2 = 0;
U8 YYMD_FLAG = 0;
U8 MAIN_FLAG = 0;

void main(void)
{


DDRB = 0xF0; // 포트 B 상위 4비트 출력 설정
DDRD = 0xF0; // 포트 D 상위 4비트 출력 설정
DDRG = 0x0F; // 포트 G 하위 4비트 출력 설정

TIMSK = 0x01; // TOIE0 = 1(overflow interrupt enable)
TCCR0 = 0x07; // 일반모드, 1024분주
TCNT0 = 0xF0; // 타이머/카운터0 레지스터 초기값 240 = 1.024ms 0xF0

EIMSK = 0b11110000; // 외부 인터럽트 4,5 enable
EICRB = 0b10111011; // 외부 인터럽트 4,6 : rising edge  5,7 : falling edge

UCSR0A = 0x0;
UCSR0B = 0b10011000; // RXCIE0 [7] =1 : 수신 완료 인터럽트 enable
// 송수신 enable TXEN0 [3] = 1, RXEN0 [4] =1
UCSR0C = 0b00000110; // 비동기 데이터 8비트 모드
UBRR0H = 0; // X-TAL = 16MHz 일때, BAUD = 9600
UBRR0L = 103;


SREG = 0x80; // 전역 인터럽트 enable-bit set



pStr = YEAR;
while(*pStr != 0) Putch(*pStr++);
MAIN_FLAG=1;

while (1)
    {
    if(MAIN_FLAG==1)MAIN_DISPLAY() //UART 송수신으로 생년월일 받고 출력하기
    YYYYMMDD(); //7








    }






}


void MAIN_DISPLAY(void){

    if(UART_RX_INPUT==1) {
		INPUT_BUFFER[BIRTH_DAY_FLAG]=UART_Rx_data;
		UART_RX_INPUT=0;
		BIRTH_DAY_FLAG++;
		if(BIRTH_DAY_FLAG==4) {
				YYYY=(INPUT_BUFFER[0]-'0')*1000+
						(INPUT_BUFFER[1]-'0')*100+
						(INPUT_BUFFER[2]-'0')*10+
						(INPUT_BUFFER[3]-'0');
			pStr = MD;
			while(*pStr != 0) Putch(*pStr++);
		}
		if(BIRTH_DAY_FLAG==8) {
				MMDD=(INPUT_BUFFER[4]-'0')*1000+
						(INPUT_BUFFER[5]-'0')*100+
						(INPUT_BUFFER[6]-'0')*10+
						(INPUT_BUFFER[7]-'0');

            pStr = END;
			while(*pStr != 0) Putch(*pStr++);
            MAIN_FLAG=0;
        if(BIRTH_DAY_FLAG==0)
			pStr = YEAR;
			while(*pStr != 0) Putch(*pStr++);
		}

	}

}

void Putch(char data)           // 한 바이트 송신
{
    while((UCSR0A & 0x20) == 0x0);      //UDRE0[5] = 1 송신준비완료 될 때까지 대기

    UDR0 = data;                             // 데이터 전송
}

void YYYYMMDD(void)           // 한 바이트 송신
{
if (YYMD_FLAG==0)
{
    if (TIMER_SEGMENT_FLAG2<3000)BIRTH_DAY(YYYY);
        else if (TIMER_SEGMENT_FLAG2<4000)BIRTH_DAY(MMDD);
        else if (TIMER_SEGMENT_FLAG2==4000)
        {
        TIMER_SEGMENT_FLAG2=0;
        YYMD_FLAG=1;
        }
}
else if (YYMD_FLAG==1)
BIRTH_DAY(MMDD);


}

void BIRTH_DAY(unsigned int value)           // 한 바이트 송신
{
    int ival, buf, buf2;
    U8 N1000, N100, N10, N1;
        ival = value;
        N1000 = ival / 1000; // ?????? ????
        buf = ival % 1000;
        N100 = buf / 100; // ??? u° ??? ????
        buf2 = buf % 100; // ??? ??° ??? ??
        N10 = buf2 / 10;
        N1 = buf2 % 10;

            if (TIMER_SEGMENT_FLAG==1)
            {

            PORTG = 0b00001000; // PG3=1, 소수 둘째 자리
            PORTD = ((seg_pat[N1] & 0x0F) << 4) | (PORTD & 0x0F);
            PORTB = (seg_pat[N1] & 0x70 ) | (PORTB & 0x0F);
            }
            else if (TIMER_SEGMENT_FLAG==2)
            {
            PORTG = 0b00000100; // PG2=1, 소수 첫째 자리
            PORTD = ((seg_pat[N10] & 0x0F) << 4) | (PORTD & 0x0F);
            PORTB = (seg_pat[N10] & 0x70 ) | (PORTB & 0x0F);
            }
            else if (TIMER_SEGMENT_FLAG==3)
            {
            PORTG = 0b00000010; // PG1=1, 정수부
            PORTD = ((seg_pat[N100] & 0x0F) << 4) | (PORTD & 0x0F);
            PORTB = (seg_pat[N100] & 0x70 ) | (PORTB & 0x0F);
            }
            else if (TIMER_SEGMENT_FLAG==4)
            {
            PORTG = 0b00000001; // PG1=1, 정수부
            PORTD = ((seg_pat[N1000] & 0x0F) << 4) | (PORTD & 0x0F);
            PORTB = (seg_pat[N1000] & 0x70 ) | (PORTB & 0x0F);
            TIMER_SEGMENT_FLAG=0;
            }

}

interrupt [EXT_INT4] void external_int4(void)
{

}

interrupt [EXT_INT5] void external_int5(void)
{

}

interrupt [EXT_INT6] void external_int6(void)
{

}

interrupt [EXT_INT7] void external_int7(void)
{

}

interrupt [USART0_RXC] void usart0_rx(void) // 수신 완료 인터럽트
{
    SREG &= 0x7F;
    UART_Rx_data = UDR0;
    UART_RX_INPUT=1;                      			// 수신
    SREG |= 0x80;
}

interrupt [TIM0_OVF] void timer_int0(void)
{
SREG &= 0x7F;
TCNT0 = 0xF0;
TIMER_SEGMENT_FLAG++;
TIMER_SEGMENT_FLAG2++;
SREG |= 0x80;
}

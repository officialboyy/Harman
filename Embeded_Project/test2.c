/*******************************************************************************/
/*      Name    : main.c                                                           */
/*      Modified and programmed by JH Park                                         */
/*      Date    : 2024. 03. 10 first edited                                        */
/*      Modified by Hong    _hong_20240312                                         */
/*      Description : main                                                         */
/*******************************************************************************/

/*  _hong_20240312 -->  */
#include <mega128a.h> // LED 4개 ON, 4개 OFF
void main(void) 
{ 
    DDRC = 0xFF; // 포트C 출력 설정, DDRC : Register   _hong_20240312
/*  PORTC = 0x55;                   _hong_20240312              */
    PORTC = 0x55; // 포트 C 0x55(또는 0101 0101) 출력
    
    while(1);   // 켜진 상태로 무한루프를 돌림으로써 계속 켜져있음.
}
/*  _hong_20240312 <--  */
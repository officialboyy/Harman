/*******************************************************************************/
/*      Name    : main.c                                                           */
/*      Modified and programmed by JH Park                                         */
/*      Date    : 2024. 03. 10 first edited                                        */
/*      Modified by Hong    _hong_20240312                                         */
/*      Description : main                                                         */
/*******************************************************************************/

/*  _hong_20240312 -->  */
#include <mega128a.h> // LED 4�� ON, 4�� OFF
void main(void) 
{ 
    DDRC = 0xFF; // ��ƮC ��� ����, DDRC : Register   _hong_20240312
/*  PORTC = 0x55;                   _hong_20240312              */
    PORTC = 0x55; // ��Ʈ C 0x55(�Ǵ� 0101 0101) ���
    
    while(1);   // ���� ���·� ���ѷ����� �������ν� ��� ��������.
}
/*  _hong_20240312 <--  */
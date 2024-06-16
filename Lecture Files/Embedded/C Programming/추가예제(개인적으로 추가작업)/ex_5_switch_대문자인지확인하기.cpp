/*	5. 제어문
	switch문 이용 알파벳 대문자인지 확인하기
*/

#include <stdio.h>	// printf

int main()
{
	char ch; 
	int capital;
	
	printf("알파벳 한 개를 입력하세요.");
	scanf("%c", &ch);
	
	capital = ('A' <= ch) && (ch <='Z');

	switch (capital) {
		case 1: printf("입력한 %c는 대문자입니다(ASCII코드값 %d).\n", ch, ch);
				break;
		case 0: printf("입력한 %c는 대문자가 아닙니다(ASCII코드값 %d).\n", ch, ch);
	}

	return 0;
}
/* 
알파벳 한 개를 입력하세요.A
입력한 A는 대문자입니다(ASCII코드값 65).
계속하려면 아무 키나 누르십시오 . . .

알파벳 한 개를 입력하세요.B
입력한 B는 대문자입니다(ASCII코드값 66).
계속하려면 아무 키나 누르십시오 . . .

알파벳 한 개를 입력하세요.c
입력한 c는 대문자가 아닙니다(ASCII코드값 99).
계속하려면 아무 키나 누르십시오 . . .
*/
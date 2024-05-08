/*	3장 입출력문
	부호출력 변환명세를 이용한 2차방정식 출력하기
*/
#include <stdio.h>			// printf, scanf

int main()
{
	int a, b, c;			// 2차 방정식의 계수
	
	printf("\n 2차 방정식 ax^2+bx+c = 0를 출력하는 프로그램입니다.");
	printf("\n 다음을 입력해주세요.\n\n"); 

	printf(" a는?(0외의 정수) "); 
	scanf("%d", &a);

	printf(" b는?(정수) ");
	scanf("%d", &b);

	printf(" c는?(정수) ");
	scanf("%d", &c);

	// 입력된 계수에 맞는 2차 방정식 출력하기
	printf("\n 2차 방정식 %dx^2%+dx%+d = 0 \n", a, b, c);

	return 0;
} 
/* 

 2차 방정식 ax^2+bx+c = 0를 출력하는 프로그램입니다.
 다음을 입력해주세요.

 a는?(0외의 정수) 2
 b는?(정수) -3
 c는?(정수) -1

 2차 방정식 2x^2-3x-1 = 0 
 계속하려면 아무 키나 누르십시오 . . .
*/


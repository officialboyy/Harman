/*	3. 입출력
	두 정수를 16진수(%x를 이용)로 입력 받아 두 수의 합을 다시 십진수로 출력하기
*/

#include <stdio.h>		// printf, scanf

int main()
{
	int a, b;
	
	printf("a값은(16진수)?");
	scanf("%x", &a);
	printf("b값은(16진수)?");
	scanf("%x", &b);

	printf("a(%d) + b(%d) = %d \n", a, b, a + b);
	
	return 0;
}


/*
a값은(16진수)?f
b값은(16진수)?a
a(15) + b(10) = 25
계속하려면 아무 키나 누르십시오 . . .
*/

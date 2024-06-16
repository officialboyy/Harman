/*	6. 매크로
	f(x) = 2x^3 - 2x^2 - 3을 매크로 함수로 정의 한 후 x가 1~10까지 f(x)값 출력하기
*/

#include <stdio.h>		// printf

#define f(x) 2*x*x*x - 2*x*x - 3

int main() 
{
	int x, y;

	printf("x = ? ");
	scanf("%d", &x);

	y = f(x);
	
	printf("f(%d) = %d \n", x, y);
	
	return 0;
}

/*
x = ? 5
f(5) = 197
계속하려면 아무 키나 누르십시오 . . .
*/
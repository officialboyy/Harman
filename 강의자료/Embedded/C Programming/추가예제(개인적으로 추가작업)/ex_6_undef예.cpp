/*	6. 매크로
	#undef를 이용하여 매크로상수를 변화시킴으로써 '*' 출력하기
*/

#include <stdio.h>
#define SIZE 5
#define PRINT(i) for(i = 0; i < SIZE; i++) printf("*");\
		printf("\n");	

int main()
{
	int i = 0;

	PRINT(i); // '*' 5번 출력

	#undef SIZE
	#define SIZE 10

	PRINT(i); // '*' 10번 출력

	#undef SIZE
	#define SIZE 15

	PRINT(i); // '*' 15번 출력

	return 0;
}

/*
실행결과

*****
**********
***************

*/
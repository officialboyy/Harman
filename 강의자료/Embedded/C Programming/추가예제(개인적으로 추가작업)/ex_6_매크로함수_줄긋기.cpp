/*	6. 매크로
	지정한 문자로된 줄을 긋는 매크로 함수 printline(ch) 정의하기
*/

#include <stdio.h>				// printf

#define declare_z int z;		// 다음 매크로 함수에서 사용할 변수 z를 선언하는 매크로 상수
#define printline(ch, n) for (z=1; z<=10; z++) printf("%c", ch)

int main() 
{
	int j;
	declare_z;							// 매크로 상수 사용
	
	printline('=', 30); printf("\n");	// 매크로 함수 사용
	for (j=1; j<=10; j++)
	{
		printline('*', j); printf("\n");
	}
	printline('=', 30); printf("\n");
	
	return 0;
}

/*
==========
**********
**********
**********
**********
**********
**********
**********
**********
**********
**********
==========
계속하려면 아무 키나 누르십시오 . . .
*/
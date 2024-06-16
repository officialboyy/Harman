#include <stdio.h>

int main()
{
	register int i, space;	// 레지스터 변수 선언
	int line;				// 일반 변수 선언

	for (line=0; line<70; line++)
	{
		// line개의 빈칸 출력하기
		for (space=1; space<=line; space++)
			printf(" ");
		
		// 앞서 출력한 빈칸 뒤에 1~10을까지 출력한 후 결과 행 바꾸기
		for (i=1; i<=10; i++)
			printf("%d", i);
		printf("\n");			 
	}

	return 0;
}
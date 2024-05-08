/*	3장 입출력
	scanf, gets 함수를 이용한 문자열 입력
*/

#include <stdio.h>		// printf

int main() 
{
	char name[20];

	printf("\n이름은?(빈칸없이) ");
	scanf("%s", name);
	printf("입력한 이름은 %s입니다.", name);

	printf("\n\n이름이 무엇입니까?(빈칸없이) ");
	scanf("%s", name);
	printf("입력한 이름은 %s입니다.", name);

	fflush(stdin);
	
	printf("\n\n이름이 무엇입니까?(빈칸 가능) ");
	gets(name);
	puts(name);

	return 0;
}
/*

이름은?(빈칸없이) 홍길동
입력한 이름은 홍길동입니다.

이름이 무엇입니까?(빈칸없이) 홍길동
입력한 이름은 홍길동입니다.

이름이 무엇입니까?(빈칸 가능) 홍 길동
홍 길동
계속하려면 아무 키나 누르십시오 . . .
*/
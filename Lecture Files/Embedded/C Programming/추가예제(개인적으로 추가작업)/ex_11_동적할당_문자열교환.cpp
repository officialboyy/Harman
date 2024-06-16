/* 11. 구조체
	포인터에 기억장소를 동적할당 후 두 문자열을 입력한 후 교환하기
*/

#include <stdio.h>		// printf, scanf
#include <stdlib.h>		// malloc

#define MAX 20			// 문자열의 최대 길이

int main() 
{
	char *ptr1, *ptr2, *temp;
	
	// 동적 할당
	ptr1 = (char *) malloc(sizeof(char)*MAX);
	ptr2 = (char *) malloc(sizeof(char)*MAX);

	
	// 문자열 입력
	printf("첫 번째 대학교 이름은? "); scanf("%s", ptr1);
	printf("두 번째 대학교 이름은? "); scanf("%s", ptr2);

	// 두 문자열을 가리키는 포인터를 교환
	temp = ptr1;
	ptr1 = ptr2;
	ptr2 = temp;

	printf("\n\n>> 두 문자열 교환 후 \n");
	printf("첫 번째 대학교 이름은 %-s \n", ptr1);
	printf("두 번째 대학교 이름은 %-s \n", ptr2);

	return 0;
}
/*
첫 번째 대학교 이름은? 우리대학교
두 번째 대학교 이름은? 코리아대학교

>> 두 문자열 교환 후 
첫 번째 대학교 이름은 코리아대학교
두 번째 대학교 이름은 우리대학교
계속하려면 아무 키나 누르십시오 . . .
*/
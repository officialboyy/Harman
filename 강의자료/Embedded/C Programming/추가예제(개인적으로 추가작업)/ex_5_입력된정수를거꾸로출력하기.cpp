/*	5. 제어문 
	정수 입력받은 후 거꾸로 출력하기
*/

#include <stdio.h>			// printf

int main()
{
	int last_digit;			// 숫자의 마지막 자리 값
	int n;					// 입력 정수
	
	printf("거꾸로 출력할 양수를 입력하세요.");
	scanf("%d", &n);

	do
	{
		last_digit = n % 10;		// 1단위의 값을 구하기
		printf("%d", last_digit);	// 1단위의 값 출력하기
		n = n / 10 ;				// 동일 과정으로 반복할 수 있도록 n을 10으로 나눈 몫으로 수정 후 반복함
	}while (n != 0);			 

	return 0;
}

/*
거꾸로 출력할 양수를 입력하세요.13587
78531계속하려면 아무 키나 누르십시오 . . .
*/
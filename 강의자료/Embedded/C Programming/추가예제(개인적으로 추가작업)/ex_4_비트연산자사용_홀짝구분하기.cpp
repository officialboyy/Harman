/*	4. 연산자
	비트연산자 &, 조건연산자를 이용 입력된 정수의 홀/짝 여부 출력하기
*/

#include <stdio.h>		// printf, scanf

int main()
{
	int n;
	
	printf("홀/짝수를 구분할 정수는? ");
	scanf("%d", &n);
		
	(n & 1) == 0 ? printf("짝수 \n"): printf("홀수 \n");	// n을 2로 나누는 것 보다 훨씬 빠르다.
			
	return 0;
}


/*
홀/짝수를 구분할 정수는? 3
홀수
계속하려면 아무 키나 누르십시오 . . .
*/

/* 
	5. 제어문
	현재 온도를 입력 받아 10도에서 20도 사이면 "좋은 날씨입니다."라고 출력하기
*/

#include <stdio.h>

int main()
{
	double degree;

	printf("현재 온도를 입력하세요.");
	scanf("%lf", &degree);
	
	if (degree > 10 && degree < 20)
		printf("좋은 날씨입니다.\n");
		
	return 0;
}


/*
현재 온도를 입력하세요.15
좋은 날씨입니다.
계속하려면 아무 키나 누르십시오 . . .
*/

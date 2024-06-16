/*	9. 참조 영역
	정적 지역 변수와 자동 지역 변수의 값 변화 출력하기
*/

#include <stdio.h>

void increment();			// 함수 원형

int main() 
{	
	int count;				// 자동 지역 변수

	for (count=1; count<=5; count++) 
	{
		increment();		// 5번 함수 호출
	}
}

void increment() 
{
	static int s_index = 1;	// 정적 지역 변수
	int a_index = 1;		// 자동 지역 변수

	printf("정적 지역 변수 s_index = %2d,\t", s_index++);
	printf("자동 지역 변수 a_index = %2d,\t", a_index++);
	printf("\n");
}

/*
정적 지역 변수 s_index =  1,    자동 지역 변수 a_index =  1,
정적 지역 변수 s_index =  2,    자동 지역 변수 a_index =  1,
정적 지역 변수 s_index =  3,    자동 지역 변수 a_index =  1,
정적 지역 변수 s_index =  4,    자동 지역 변수 a_index =  1,
정적 지역 변수 s_index =  5,    자동 지역 변수 a_index =  1,
계속하려면 아무 키나 누르십시오 . . .
*/
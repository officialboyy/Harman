/* 
	2. 변수와 자료형
	반지름이 3인 원의 넓이와 둘레를 구하는 프로그램을 작성하시오. (PI는 3.14로 한다.) 
*/

#include <stdio.h>

int main()
{
	double pi = 3.14;
	int radius = 3;
	double area, circle;
	
	area = radius * radius * pi;
	circle = 2 * radius * pi;
	
	printf("반지름: %d\n", radius);
	printf("원의 둘레: %.2lf\n", circle);
	printf("원의 넓이: %.2lf\n", sizeof long double);	

	return 0;
}


/*
반지름: 3
원의 둘레: 18.84
원의 넓이: 28.26
계속하려면 아무 키나 누르십시오 . . .
*/

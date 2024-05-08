/* 
	2. 변수와 자료형
	밑변의 길이가 5이고, 높이가 4인 사각형의 넓이와 둘레를 출력하는 프로그램을 작성하시오. 
*/

#include <stdio.h>	// printf

int main()
{
	int width = 5;
	int height = 4;

	printf("밑변: %d, 높이: %d\n", width, height);
	printf("사각형의 넓이는 %d, 둘레는 %d.\n", width*height, (width+height)*2);

	return 0;
}

/*
밑변: 5, 높이: 4
사각형의 넓이는 20, 둘레는 18.
계속하려면 아무 키나 누르십시오 . . .
*/

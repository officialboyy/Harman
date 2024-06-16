/*	5장 제어문
	도형의 면적 구하기
	입력되는 숫자 값에 따라 도형의 면적 구하기
	1. 원의면적
	2. 삼각형의 면적
	3. 사각형의 면적
*/

#include <stdio.h>

int main()
{
	double a, b;
	int choice;

	printf("원하는 도형 선택(1. 원, 2. 삼각형, 3. 사각형) : ");
	scanf("%d", &choice);

	switch(choice)
	{
	case 1:
		printf("1. 원의 면적을 구합니다\n");
		printf("반지름 입력 : ");
		scanf("%lf", &a);
		printf("원의 면적 = %.2lf\n", a * a * 3.14);
		break;
	case 2:
		printf("2. 삼각형의 면적을 구합니다\n");
		printf("밑변 입력 : ");
		scanf("%lf", &a);
		printf("높이 입력 : ");
		scanf("%lf", &b);
		printf("삼각형의 면적 = %.2lf\n", a * b / 2);
		break;
	case 3:
		printf("3. 사각형의 면적을 구합니다\n");
		printf("가로 입력 : ");
		scanf("%lf", &a);
		printf("세로 입력 : ");
		scanf("%lf", &b);
		printf("사각형의 면적 = %.2lf\n", a * b);
	}

	return 0;
 }

/* 실행결과

원하는 도형 선택(1. 원, 2. 삼각형, 3. 사각형) : 1
1. 원의 면적을 구합니다
반지름 입력 : 5
원의 면적 = 78.50
계속하려면 아무 키나 누르십시오 . . .

*/




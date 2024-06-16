/*	6. 전처리기
	원의 반지름을 입력 받아, 원의 둘레를 구하는 매크로 함수, 원의 면적을 구하는 매크로 함수를 정의하여 원의 둘레와 면적 구하기
*/

#include <stdio.h>		// printf

#define PI 3.141592
#define CIRCUM(r) (2) * (PI) * (r)
#define AREA(r) (PI) * (r)* (r)

int main()
{
	double radius;

	printf("반지름은? ");
	scanf("%lf", &radius);
		
	printf("반지름 %.2lf인 원의 둘레는 %.2lf, 원의 면적은 %.2lf \n", radius, CIRCUM(radius), AREA(radius));
			
	return 0;
}


/*
반지름은? 2.75
반지름 2.75인 원의 둘레는 17.28, 원의 면적은 23.76
계속하려면 아무 키나 누르십시오 . . ..
*/

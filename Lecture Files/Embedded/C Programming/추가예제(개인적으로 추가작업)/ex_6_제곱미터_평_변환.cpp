/*	6. 매크로
	제곱미터 단위로 계산된 넓이를 평수로 바꾸기
*/

#include <stdio.h>

#define PYEONG 0.3025	// 1평 = 0.3025제곱미터

int main()
{
	float area;	// 제곱미터 단위의 면적

	printf("넓이(제곱미터) : ");
	scanf("%f", &area);
	printf("넓이(평) : %.2lf\n", area * PYEONG);

	return 0;
}

/*
실행결과

넓이(제곱미터) : 80.23
넓이(평) : 24.27
*/
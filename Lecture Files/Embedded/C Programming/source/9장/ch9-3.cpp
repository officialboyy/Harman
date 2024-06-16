#include <stdio.h>
#define N 5

int main()
{
	int i, sum;

	sum = 0;
	for (i=0; i<N; i++)
	{
		int height;			// for 블록의 지역 변수 선언

		printf("%d번의 키는? ", i+1);
		scanf("%d", &height);
		sum += height;
	} // for 블록의 끝

	printf("평균 키: %.1lf cm \n", (double)sum/N);

	return 0;
} // main 블록의 끝
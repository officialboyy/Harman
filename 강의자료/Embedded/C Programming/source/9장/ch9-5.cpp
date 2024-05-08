#include <stdio.h>

int find_larger();				// 함수 원형 선언

int n1, n2, max;  				// 전역 변수 선언

int main()
{
	printf("첫째 정수? "); scanf("%d", &n1);
	printf("둘째 정수? "); scanf("%d", &n2);

	// find_larger 함수 호출 후 반환된 값을 max에 저장
	max = find_larger();
	
	printf("n1=%d, n2=%d 중 큰 값은 %d \n", n1, n2, max);

	return 0;
}

// 전역 변수 n1, n2 중 큰 값을 반환하는 find_larger 함수
int find_larger()
{
	if (n1 > n2)
		return n1;
	else
		return n2;	
}
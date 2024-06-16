#include <stdio.h>

int find_larger(int first, int second); // 함수 원형 선언

int n1, n2, max;						// 전역 변수 선언

int main()
{
	int width, height;					 // main의 지역 변수 선언

	printf("첫째 정수? "); scanf("%d", &n1);
	printf("둘째 정수? "); scanf("%d", &n2);

	// 전역 변수 n1과 n2 중 큰 값을 구하여 max에 저장하기
	max = find_larger(n1, n2);
	printf("n1=%d, n2=%d 중 큰 값은 %d \n", n1, n2, max);

	// main의 width와 height 중 큰 값을 구하여 max에 저장하기
	width = n1 * 4;
	height = n2;
	max = find_larger(width, height);
	printf("width=%d, height=%d 중 큰 값은 %d \n", width, height, max);	
	
	return 0;
}

// 매개변수 first와 second로 전달된 두 정수 중 큰 값을 반환하는 함수
int find_larger(int first, int second)
{
	if (first > second)
		return first;
	else
		return second;	
}
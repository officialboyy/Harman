#include <stdio.h>

double to_dollars();        // 함수 원형 선언

int salary;					// 전역 변수 선언

int main()
{
	printf("월 급여는? "); scanf("%d", &salary);
	printf("월 급여 %d원은 %.1lf달러 \n", salary, to_dollars());

	return 0;
}

// 원 단위 금액을 달러 단위로 변환하는 함수
double to_dollars()
{
	int exchange_rate = 1100;	// 원-달러 환율을 저장할 지역 변수 선언

	return (double)salary / exchange_rate;
} 
#include <stdio.h>

void sum_to_10();

int global_sum;					// 전역 변수 선언

int main()
{
	auto int i;					// 자동(지역) 변수 선언

	// 1~10의 합을 global_sum에 구하기
	for (i=1; i<=10; i++)
		global_sum += i;

	printf("1~10의 합 global_sum: %d\n", global_sum);
	
	sum_to_10(); 

	return 0;
}

// 1~10의 합을 구하여 출력하는 함수
void sum_to_10()
{
	auto int i, local_sum;		// 자동(지역) 변수 선언
	
	//1~10의 합을 local_sum에 구하기
	for (i=1; i<=10; i++)
		local_sum += i;

	printf("1~10의 합 local_sum : %d\n", local_sum);
}

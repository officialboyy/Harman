/*	3. 입력과 출력 
	아르바이트 시간과 일수 입력받아 총 급여 구하기
*/

#include <stdio.h>			// printf

int main()
{
	int hours, days, hourly_rate, pay;		// 하루 아르바이트 시간, 아르바이트 일, 시급, 총급여
		
	// 자료 입력
	printf("하루 아르바이트 시간은? ");	scanf("%d", &hours);
	printf("아르바이트 일은? ");	scanf("%d", &days);
	printf("시급은? ");	scanf("%d", &hourly_rate);

	// 총 급여 구하기
	pay = hours * days * hourly_rate;

	// 결과 출력
	printf("아르바이트 총 시간 %d시간 \n", hours * days);
	printf("총 아르바이트 급여 %d원 \n", pay);
	
	return 0;
}
/*
아르바이트 총 시간 200시간
총 아르바이트 급여 940000원
계속하려면 아무 키나 누르십시오 . . .
*/
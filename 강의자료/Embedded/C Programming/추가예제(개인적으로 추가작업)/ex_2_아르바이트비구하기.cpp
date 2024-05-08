/*	2. 
	아르바이트 급여 구하기
*/

#include <stdio.h>			// printf

int main()
{
	int hours, days, hourly_rate, pay;		// 하루 아르바이트 시간, 아르바이트 일, 시급, 총급여
		
	hours = 8;
	days = 25;
	hourly_rate = 4700;
	pay = hours * days * hourly_rate;

	printf("아르바이트 총 시간 %d시간 \n", hours * days);
	printf("총 아르바이트 급여 %d원 \n", pay);
	
	return 0;
}
/*
아르바이트 총 시간 200시간
총 아르바이트 급여 940000원
계속하려면 아무 키나 누르십시오 . . .
*/
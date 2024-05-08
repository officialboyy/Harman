/*	5. 제어문 
	총 급여를 구한 후 급여액 세자리마다 ,를 표시하기
*/

#include <stdio.h>			// printf
#include <math.h>			// pow

int main()
{
	int hours, days, hourly_rate, pay;		// 하루 아르바이트 시간, 아르바이트 일, 시급, 총급여
	int cnt, printed, i, temp;				// 총급여액의 자릿수
	
	// 자료 입력
	printf("하루 아르바이트 시간은? ");	scanf("%d", &hours);
	printf("아르바이트 일은? ");	scanf("%d", &days);
	printf("시급은? ");	scanf("%d", &hourly_rate);

	// 총 급여 구하기
	pay = hours * days * hourly_rate;

	// 결과 출력
	printf("아르바이트 총 시간 %d시간 \n", hours * days);
	printf("총 아르바이트 급여 ");

	// 급여를 천 단위마다 ,를 넣어 출력하기
		
	temp = pay;				// 총급여를 임시 저장소에 보관
	cnt = 1;				// 급여의 총 자릿수를 cnt에 구하기
	do
	{
		if ((temp = temp / 10) != 0)
			cnt++;		
	} while (temp > 9);
	// printf("%d는 %d 자리 수 \n", pay, cnt);

	printed = 3 - cnt%3;		// 1,000원 이라면 처음,를 출력하기 전 두 자리가 이미 출력되었다고 가정해야함 
	temp = pay;
	for (i=1; i<=cnt; i++)
	{
		printf("%d", temp / ((int) pow(10.0, cnt-i)));
		printed++;			// 화면에 출력한 숫자 수를 1증가(실제 출력 숫자수와는 다름)
		temp %= ((int) pow(10.0, cnt-i));		//  방금 1200의 1을 출력했다면 다음은 temp를 200으로 수정해서 2를 출력해야함
		if ( (printed % 3 == 0) && i != cnt)	// 세자리를 출력했으며 마지막 숫자가 아니라면 ,출력하기
			printf(",");		
	}

	printf("원 \n");
		
	return 0;
}
/*
하루 아르바이트 시간은? 8
아르바이트 일은? 40
시급은? 4600
아르바이트 총 시간 320시간
총 아르바이트 급여 1,472,000원
계속하려면 아무 키나 누르십시오 . . .
*/
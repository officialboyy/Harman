/*	2. 
	대출 년이자, 월이자 구하기
*/

#include <stdio.h>			// printf

int main()
{
	int loan = 3700000;		// 대출금
	double rate = 0.029;	// 1년 이자율 2.9%
	double year_interest, month_interest;	// 년이자, 월이자

	year_interest = loan * rate;
	month_interest = loan * rate/12;

	printf("대출금 %d원 \n", loan);
	printf("월 이자 %lf원 \n", month_interest);
	printf("1년 이자 %lf원 \n", year_interest);

	return 0;
}

/*
대출금 3700000원
월 이자 8941.666667원
1년 이자 107300.000000원
계속하려면 아무 키나 누르십시오 . . .
*/
#include <stdio.h>

extern int salary;	// 전역변수 salary를 외부변수로 선언 

// 월 급여와 연 보너스율을 이용해 연 급여를 계산하는 함수
int compute_total_salary()
{
	int bonus_rate = 300;			// 연 보너스는 월급의 300%임을 의미
		
	return (salary * 12) + (int)(salary * bonus_rate * 0.01);
}

// 최종 세금 부과 대상액 amount로부터 최종 세금을 계산하는 함수
int compute_tax(int amount)
{
	int tax_rate;					// 세금 과세율
	
	if (salary >= 5000000)
		tax_rate = 5;				// 과세율이 5%임을 의미
	else if (salary >= 2000000)
		tax_rate = 3;
	else 
		tax_rate = 2;

	return (int)(amount * tax_rate * 0.01);
}

// 전달된 세금 관련 정보를 이용해 세금 내역서 출력하기 
void display_tax_returns(int total_salary, int tax_target, int tax)
{
	printf("\n    >>>  세금 내역서  <<< \n");
	printf("-------------------------------\n"); 
	printf("연 급여          : %8d원 \n", total_salary);
	printf("세금 부과 대상액 : %8d원 \n", tax_target) ;
	printf("최종 세금 부과액 : %8d원 \n", tax);
}
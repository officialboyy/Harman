/* 9. 외부변수 사용 예 : 책 프로그램 9-12의 함수를 func.cpp로 분리하기
   
   현재 main 함수가 있는 "ex_9_외부변수_사용_main.cpp" 프로그램에서 선언된 전역변수 salary를 
   "ex_9_외부변수_사용_func.cpp" 프로그램에서 참조하기 위해서 salary를 외부변수로 선언해야 한다.
*/

#include <stdio.h>

int compute_total_salary();				// 연 급여 계산
int compute_tax(int amount);			// 최종 세금 계산
// 세금 내역서 출력
void display_tax_returns(int tot_salary, int tax_target, int tax); 

int salary;	// 월 급여를 전역 변수로 선언 

int main()
{
	int exemption = 10000000;						// 세금 공제액 
	int total_salary, tax_target, tax;				// 연 급여, 세금 부과 대상액, 최종 세금
	
	printf("월 급여는? "); scanf("%d", &salary);	// 월 급여 입력

	total_salary = compute_total_salary();			// 연 급여 계산
	tax_target = total_salary - exemption;			// 세금 부과 대상액 계산
	tax = compute_tax(tax_target);					// 세금 부과 대상액으로부터 최종 세금 계산
	
	// 앞에서 구한 정보를 이용해 세금 내역서 출력하기
	display_tax_returns(total_salary, tax_target, tax);	

	return 0;
}
//--------------------------------------------------------------------
// 지금부터의 내용은 "ex_9_외부변수_사용_func.cpp" 내용
/*
#include <stdio.h>

extern int salary;	// 전역변수 salary를 외부변수로 선언하여 참조 

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
*/
//--------------------------------------------------------------------

/*
월 급여는? 6500000

    >>>  세금 내역서  <<<
-------------------------------
연 급여          : 97500000원
세금 부과 대상액 : 87500000원
최종 세금 부과액 :  4375000원
계속하려면 아무 키나 누르십시오 . . .
*/

/*	5. 제어문
	나이구하기
	현재 2015년 3월이고 20살이며 태어난 달이 7월일때 2025년 3월의 나이와 개월을 구하시오.
*/

#include <stdio.h>
	
int main() 
{
	// 입력 변수 
	int year_now, month_now, age_now, month_born, another_year, another_month; 
	
	// 출력 변수
	int total_years, total_months;

	// 처리에 사용될 변수 
	int age_now_in_months, extra_months_from_now;
	
	printf("현재 년 월을 입력하세요(ex. 2014 1) : ");
	scanf("%d %d", &year_now, &month_now);

	printf("현재 나이를 입력하세요 : ");
	scanf("%d", &age_now);

	printf("생년월을 입력하세요(1~12) : ");
	scanf("%d", &month_born);

	printf("나이를 알고 싶은 년 월을 입력하세요(ex. 2019 3) : ");
	scanf("%d %d", &another_year, &another_month);
	
	age_now_in_months = (age_now * 12) + (month_now - month_born);
	if ((month_now - month_born) < 0)
		age_now_in_months = age_now_in_months + 12;
		
	extra_months_from_now = ((another_year * 12) + another_month) 
                                - ((year_now * 12) + month_now);
								
	total_months = age_now_in_months + extra_months_from_now;
	                     
	total_years = total_months / 12;

	if (total_months >= 0) 
	{
		printf("%d년 %d월에는 %d살 %d개월이 됩니다. \n", 
			another_year, another_month, total_years, total_months % 12);
	} 
	else 
	{ 
		printf("%d년 %d월에는 출생전 입니다.\n", another_year, another_month);
	}
							
	return 0;
}

/*
현재 년 월을 입력하세요(ex. 2014 1) : 2015 3
현재 나이를 입력하세요 : 20
생년월을 입력하세요(1~12) : 7
나이를 알고 싶은 년 월을 입력하세요(ex. 2019 3) : 2025 3
2025년 3월에는 30살 8개월이 됩니다.

현재 년 월을 입력하세요(ex. 2014 1) : 2013 2
현재 나이를 입력하세요 : 29
생년월을 입력하세요(1~12) : 4
나이를 알고 싶은 년 월을 입력하세요(ex. 2019 3) : 1975 2
1975년 2월에는 출생전 입니다.
*/

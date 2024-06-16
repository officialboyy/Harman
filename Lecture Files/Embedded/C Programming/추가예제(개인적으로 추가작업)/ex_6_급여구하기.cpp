/*	6. 매크로
	직위와 야근시간을 입력받아 최종 급여 구하기
		기본 급여 1.과장 2. 부장 3. 상무 --> 삼백만, 사백만, 오백만원
		직책 수당율 1.과장 2. 부장 3. 상무 --> 5%, 7%, 10%
		야근 수당은 시간당 이만원
*/

#include <stdio.h>			// printf, scanf

#define SECTION_HEAD	1	// 과장
#define DEPARTMENT_HEAD	2	// 부장
#define DIRECTOR		3	// 상무

int main()
{
	int i;
	int position, position_pay;		// 직위, 직위 수당 
	int overtime, overtime_pay;		// 야근시간, 야근수당
	int basic_pay, pay;				// 기본급, 최종 급여
	double rate;					// 직위 수당 율


	// 직위 입력
	printf(">> 직위? (1.과장 2. 부장 3. 상무) "); scanf("%d", &position);
	printf(">> 야근시간? "); scanf("%d", &overtime);
	
	// 기본 급여 구하기, 직위에 따라 
	switch (position)
	{
		case SECTION_HEAD: basic_pay = 3000000;	break;
		case DEPARTMENT_HEAD: basic_pay = 4000000; break;
		case DIRECTOR: basic_pay = 5000000; break;
	}

	// 직위별 수당율 구하기
	if (position ==  SECTION_HEAD)
		rate = 0.05;
	else if (position == DEPARTMENT_HEAD)
		rate = 0.07;
	else
		rate = 0.1;
	
	position_pay = (int) (basic_pay * rate);		// 직위 수당
	overtime_pay = (int) (overtime * 20000);		// 야근 수당
	pay = basic_pay + position_pay + overtime_pay; 	// 최종 급여 구하기
	
	// 최종 급여 명세서 출력
	printf("\n\n>> 급여 명세서 << \n\n");
	printf("---------------------------------------------------------\n");
	printf(" 직책  야근시간  기본급     직책수당   야근수당    급여  \n");
	printf("---------------------------------------------------------\n");

	if (position == SECTION_HEAD)
		printf("%-8s", " 과장");
	else if (position == DEPARTMENT_HEAD)
		printf("%-8s", " 부장");
	else
		printf("%-8s", " 상무");

	printf(" %2d  %10d  %10d %10d %10d \n", 
				overtime, basic_pay, position_pay, overtime_pay, pay); 

	printf("---------------------------------------------------------\n");

	
	return 0;
}

/*
>> 직위? (1.과장 2. 부장 3. 상무) 2
>> 야근시간? 17


>> 급여 명세서 <<

---------------------------------------------------------
 직책  야근시간  기본급     직책수당   야근수당    급여
---------------------------------------------------------
 부장    17     4000000      280000     340000    4620000
---------------------------------------------------------
계속하려면 아무 키나 누르십시오 . . .
*/
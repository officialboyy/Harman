/*
	4. 연산자
	대도시인지 판별하기
	대도시 조건 : 	1. 수도이거나 2. 인구가 20만 이상이고 총 세입이 1,720,000,000이상
	입력 : 수도, 인구, 일인당 월 납세금액
*/

#include <stdio.h>

int main()
{        
	char capital;		// 수도
	int citizens;		// 인구
	double tax;			// 일인당 납세금액

	printf("수도입니까? "); scanf("%ch", &capital);
	printf("인구는? "); scanf("%d", &citizens);
	printf("일인당 월 납세액은? "); scanf("%lf", &tax); 
	
	capital == 'y' || (citizens >= 200000 && tax*12*citizens >= 1720000000) ? printf("대도시 입니다.\n"): printf("대도시가 아닙니다.\n");

	return 0;
}
/*
수도입니까? y
인구는? 140000
일인당 납세액은? 800
대도시 입니다.
계속하려면 아무 키나 누르십시오 . . .
*/
/*
수도입니까? n
인구는? 200000
일인당 납세액은? 900
대도시 입니다.
계속하려면 아무 키나 누르십시오 . . .
*/

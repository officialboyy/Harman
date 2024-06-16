/*
	2. 자료형
	특정 도시의 수도 여부, 인구수, 일인당 월 납세액 정보를 변수에 저장 후 도시의 총세입 구하기	
*/

#include <stdio.h>

int main()
{
	char capital;		// 수도
	int citizens;		// 인구	
	double tax, total_tax;	// 일인당 납세금액, 총 납세액
	int wrong_tax;		// 총 납세액을 int형으로 잘못 선언한 결과 확인용 변수

	capital = 'y';
	citizens = 2000000;
	tax = 80000;
	
	total_tax = tax * 12 * citizens;
	wrong_tax = tax * 12 * citizens;

	printf("도시 년 총세입은 %lf \n", total_tax);
	printf("정수형으로 잘못 처리하여 \"%%d\"로 출력한 년 총세입 %d \n ", wrong_tax);

	return 0;
}
/*
도시 년 총세입은 1920000000000.000000
정수형으로 잘못 처리하여 "%d"로 출력한 년 총세입 -2147483648
 계속하려면 아무 키나 누르십시오 . . .
*/


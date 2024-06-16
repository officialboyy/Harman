/*
	4. 연산자
	특정 도시의 수도 여부, 인구수, 일인당 월 납세액 정보를 변수에 저장 후 도시의 총세입 구하기
	캐스팅 필요성
*/

#include <stdio.h>

int main()
{
	char capital;		// 수도
	int citizens;		// 인구
	int tax;			// 일인당 납세금액
	double wrong_tax;	// 총 납세액이 잘못 계산된 경우 확인용 변수
	double total_tax;	// 총 납세액

	capital = 'y';
	citizens = 2000000;
	tax = 80000;
	
	wrong_tax = tax * 12 * citizens;	// tax를 double 형으로 캐스팅하지 않으면 식 결과가 int형이 되므로 이미 손상된 데이터가 total_tax에 실수형으로 저장되므로 잘못된 값이 저장된다.
	total_tax = (double)tax * 12 * citizens;

	printf("도시 년 총세입은 %.0lf \n", total_tax);
	printf("정수형 연산 결과로 인해 잘못 처리된 총세입 %.0lf \n ", wrong_tax);

	return 0;
}
/*
도시 년 총세입은 1920000000000
정수형 연산 결과로 인해 잘못 처리된 총세입 149618688
 계속하려면 아무 키나 누르십시오 . . .
*/


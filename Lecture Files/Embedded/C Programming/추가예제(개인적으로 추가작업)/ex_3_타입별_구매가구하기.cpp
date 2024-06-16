/*	3. 입출력
	상품 타입(1 또는 2)과 개수를 입력받아 구매가 구하기
	타입1 단가 : 1500,  타입2 간가 : 1750원
*/

#include <stdio.h>

int main(void)
{
	double total_price = 0.0;		// 구매가
	int type = 0;					// 상품 타입
	int quantity = 0;				// 주문 개수
	double type1_price = 1500;		// 타입1 단가
	double type2_price = 1750;		// 타입2 단가

	// 상품 타입 입력
	printf("상품 타입 (1 또는 2): ");
	scanf("%d", &type);

	// 상품 개수 입력
	printf("주문 개수: ");
	scanf("%d", &quantity);

	// 구매가격 계산
	total_price = quantity*(type1_price + (type - 1)*(type2_price - type1_price));

	// 출력
	printf("타입 %d, %d개 구매가 = %.1lf\n", type, quantity, total_price);

	return 0;
}

/*
상품 타입 (1 또는 2): 1
주문 개수: 15
타입 1, 15개 구매가 = 22500.0
*/

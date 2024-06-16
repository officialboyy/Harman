//[프로그램 10-7] 값에 의한 호출과 주소에 의한 호출의 비교: 두 변수의 값을 교환하기 (ch10-7.cpp)	
#include <stdio.h>

void swap_value(int x, int y); 		// 값에 의한 호출 방식
void swap_address(int *x, int *y);	// 주소에 의한 호출 방식

int main()
{
	int x = 100, y = 200;

	printf("In main: x=%d, y=%d \n\n", x, y);

	swap_value(x, y);			// 값에 의한 호출: x와 y의 값을 전달
	printf("In main: x=%d, y=%d (swap_value(x, y) 호출 후)\n\n", x, y);

	swap_address(&x, &y); 		// 주소에 의한 호출: x와 y의 주소를 전달
	printf("In main: x=%d, y=%d (swap_address(&x, &y) 호출 후)\n\n", x, y);

	return 0;
}

// 매개변수 x와 y의 값을 교환하지만 자신을 호출한 함수의 두 인수는 교환하지 못하는 함수
void swap_value(int x, int y)
{
	int temp;					// 임시 대피 장소

	temp = x;
	x = y;
	y = temp;
	printf("In swap_value: x=%d, y=%d \n", x, y);
}

// 포인터 매개 변수 x와 y를 이용해 자신을 호출한 함수의 두 인수의 값을 교환하는 함수
void swap_address(int *x, int *y) //x, y는 주소를 저장하는 포인터 변수로 선언
{
	int temp; 					// 임시 대피 장소

	temp = *x; 					// x가 가리키는 곳의 값을 temp에 대입
	*x = *y; 					// y가 가리키는 곳의 값을 x가 가리키는 곳에 대입
	*y = temp;					// temp의 값을 y가 가리키는 곳에 대입
	printf("In swap_address: *x=%d, *y=%d \n", *x, *y);
}

#include <stdio.h>

void sort_by_pointer(int *first, int *second); // 함수의 원형 선언

// main 함수의 정의
int main() 
{ 
	int point1 = 5000, point2 = 4000;

	printf("함수 호출 전 포인트 점수 %d, %d \n", point1, point2);
	
	sort_by_pointer(&point1, &point2);
	
	printf("함수 호출 후 포인트 점수 %d, %d \n", point1, point2);

	return 0;
}

// 포인터를 이용하여 자신을 호출한 함수의 두 변수를 오름차순으로 정렬하는 함수
void sort_by_pointer(int *first, int *second) 
{ 
	int temp; 

	if (*first > *second)
	{
		temp = *first;
		*first = *second;
		*second = temp;
	}

	printf("\n( sort_by_pointer 함수의 정렬 결과 ");
	printf("first: %d, second: %d ) \n\n", *first, *second); 
}
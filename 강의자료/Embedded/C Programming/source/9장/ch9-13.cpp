#include <stdio.h>

void sort_by_pointer();				// 함수 원형 선언

int point1 = 5000, point2 = 4000;	// 전역 변수 선언

int main() 
{ 
	printf("함수 호출 전 포인트 점수 %d, %d \n", point1, point2);
	
	sort_by_pointer(); // 전역 변수 point1과 point2를 정렬하기 위해 함수 호출
	
	printf("함수 호출 후 포인트 점수 %d, %d \n", point1, point2);

	return 0;
}

// 전역변수 point1과 point2를 오름차순으로 정렬하는 함수
void sort_by_pointer() 
{ 
	int temp; 

	if (point1 > point2)
	{
		temp = point1;
		point1 = point2;
		point2= temp;
	}

	printf("\n( sort 함수의 정렬 결과 point1: %d, point2: %d ) \n\n",
												point1, point2); 
}
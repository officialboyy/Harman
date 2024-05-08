/*	10. 포인터
	함수의 반환 값으로 포인터를 사용하기: 배열을 함수로 전달한 후 변경된 배열의 시작주소를 반환받기
*/

#include <stdio.h>
#define NUM_OF_ITEMS 10

int* sort_asc(int *p, int size); 
   
int main() 
{ 
	int arr[NUM_OF_ITEMS] = {90, 88, 100, 45, 85, 60, 95, 30, 89, 79}; 
	int *p, i;

	// 함수 반환 값으로 포인터를 받기
	p = sort_asc(arr, NUM_OF_ITEMS);

	for (i=0; i<NUM_OF_ITEMS; i++) 
		printf("%5d", *(p+i)); 
	printf("\n");

	return 0; 
}

int* sort_asc(int *p, int size)
{ 
	int i,j, temp; 

	// 배열을 내림차순으로 정렬하기
	for (i=0; i<size-1; i++) 
		for (j=i+1; j<size; j++) 
			if (*(p+i) < *(p+j)) 
			{ 
				temp = *(p+j); 
				*(p+j) = *(p+i); 
				*(p+i) = temp; 
			} 

	return p;	// 포인터로 전달받은 배열 시작 주소를 다시 반환 값으로 전달
} 



/*
  100   95   90   89   88   85   79   60   45   30
계속하려면 아무 키나 누르십시오 . . .
*/
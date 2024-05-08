#include <stdio.h>
#define SIZE 5

// 함수의 원형 선언
int find_min(int arr[]);
void print_arr(int arr[]);

// main 함수의 정의
int main()
{
	int f[SIZE] = {3, 0, -30, -20, -1}; // 배열을 선언과 동시에 초기화하기
 	int min;

	// 최솟값 구하기
	min = find_min(f);

	// 배열 내용 출력하기
	printf("어는 점 목록:");
	print_arr(f);

	// 최솟값 출력하기
	printf("\n가장 낮은 어는 점: %d \n", min);

	return 0;
}

// 배열의 최솟값을 구하는 함수
int find_min(int arr[])
{
	int i, min;

	min = arr[0];
	for (i=1; i<SIZE; i++)
	{
		if (arr[i] < min)
			min = arr[i];
	}
	
	return min;
}

// 배열의 원소를 출력하는 함수
void print_arr(int arr[])
{
	int i;

	for (i=0; i<SIZE; i++)
		printf("%4d", arr[i]);
}
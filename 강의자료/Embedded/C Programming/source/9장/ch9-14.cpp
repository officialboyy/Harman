#include <stdio.h>
#define SIZE 5

// 함수의 원형 선언
int find_min(int arr[], int *ptr);
void print_arr(int arr[]);

int main()
{
	int f[SIZE] = {3, 0, -30, -20, -1}; // 배열을 선언과 동시에 초기화하기
 	int min;							// 최솟값을 저장하는 변수
	int index;							// 최솟값 min에 저장된 배열 원소의 첨자를 저장하는 변수

	// 함수를 호출해 배열의 최솟값은 반환받고 
	// 최솟값에 해당하는 원소의 첨자는 index에 자동으로 저장되게 한다.
	min = find_min(f, &index);
	
	printf("어는 점 목록:");
	print_arr(f);						// 배열 내용 출력하기

	// 최솟값 출력하기
	printf("\n가장 낮은 어는 점: f[%d] = %d \n", index, min);

	return 0;
}

/* 전달된 배열의 최솟값을 구해 반환하되 최솟값에 해당하는 배열 원소의 첨자를 
	 이 함수를 호출한 함수의 인수에 저장하는 함수 */
int find_min(int arr[], int *ptr)
{
	int i, min;

	min = arr[0];
	*ptr = 0;	// min에 저장된 배열 원소의 첨자를 ptr이 가리키는 곳(main의 index)에 저장
	for (i=1; i<SIZE; i++)
	{
		if (arr[i] < min)
		{
			min = arr[i];
			*ptr = i;		/* min에 새로 저장된 배열 원소의 첨자 i를 
							   ptr이 가리키는 곳(main의 index)에 저장 */
		}
	}
	
	return min;
}

// 배열의 원소를 출력하는 함수 정의
void print_arr(int arr[])
{
	int i;

	for (i=0; i<SIZE; i++)
		printf("%4d", arr[i]);
}

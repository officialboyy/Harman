#include <stdio.h>
#define M 2	// 행렬의 행 개수를 매크로 상수로 정의
#define N 3	// 행렬의 열 개수를 매크로 상수로 정의 

// 함수의 원형 선언
void input_matrix(int arr[M][N]);
void print_matrix(int arr[M][N]);

// main 함수의 정의
int main()
{
	int A[M][N], B[M][N], C[M][N];	
	int i, j;

	// 행렬 A 입력
	printf("\n행렬 A 입력 \n");
	input_matrix(A);

	// 행렬 B 입력
	printf("\n 행렬 B 입력 \n");
	input_matrix(B);

	// 두 행렬의 합을 배열 C에 구하기
	for(i=0; i<M; i++)
		for(j=0; j<N; j++)
			C[i][j] = A[i][j] + B[i][j];

	// 행렬 A 출력 
	printf("\n 행렬 A\n");
	print_matrix(A);

	// 행렬 B 출력	
	printf("\n 행렬 B\n");
	print_matrix(B);

	// 행렬 C 출력 
	printf("\n 행렬 C=A+B \n");
	print_matrix(C);

	return 0;
}

// M×N 행렬을 저장할 arr 배열의 각 원소를 입력받는 함수
void input_matrix(int arr[M][N])
{
	int i, j;

	for(i=0; i<M; i++)
		for(j=0; j<N; j++)
		{ 
			printf("%d행 %d열? ", i+1, j+1);
			scanf("%d", &arr[i][j]);
		}
}

// M×N 행렬이 저장된 arr 배열의 각 원소를 출력하는 함수
void print_matrix(int arr[M][N])
{
	int i, j;

	for(i=0; i<M; i++)
	{
		printf(" [ ");
		for(j=0; j<N; j++)
			printf("%2d ", arr[i][j]);
		printf("] \n");
	}
}
#include <stdio.h>
#define M 2	// ����� �� ������ ��ũ�� ����� ����
#define N 3	// ����� �� ������ ��ũ�� ����� ���� 

// �Լ��� ���� ����
void input_matrix(int arr[M][N]);
void print_matrix(int arr[M][N]);

// main �Լ��� ����
int main()
{
	int A[M][N], B[M][N], C[M][N];	
	int i, j;

	// ��� A �Է�
	printf("\n��� A �Է� \n");
	input_matrix(A);

	// ��� B �Է�
	printf("\n ��� B �Է� \n");
	input_matrix(B);

	// �� ����� ���� �迭 C�� ���ϱ�
	for(i=0; i<M; i++)
		for(j=0; j<N; j++)
			C[i][j] = A[i][j] + B[i][j];

	// ��� A ��� 
	printf("\n ��� A\n");
	print_matrix(A);

	// ��� B ���	
	printf("\n ��� B\n");
	print_matrix(B);

	// ��� C ��� 
	printf("\n ��� C=A+B \n");
	print_matrix(C);

	return 0;
}

// M��N ����� ������ arr �迭�� �� ���Ҹ� �Է¹޴� �Լ�
void input_matrix(int arr[M][N])
{
	int i, j;

	for(i=0; i<M; i++)
		for(j=0; j<N; j++)
		{ 
			printf("%d�� %d��? ", i+1, j+1);
			scanf("%d", &arr[i][j]);
		}
}

// M��N ����� ����� arr �迭�� �� ���Ҹ� ����ϴ� �Լ�
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
//[���α׷� 10-8] �迭�� �����ͷ� ���޹޾� ó���ϱ� (ch10-8.cpp)
#include <stdio.h>
#define N 4

void print_arr(int *arr); 				// void print_arr(int arr[N]);
void percentage(int *arr); 				// void percentage(int arr[N]);

int main()
{
	int count[N] = {42, 37, 83, 33};

	printf("�ο���: ");
	print_arr(count); 					// count �迭�� ������ ����ϱ�

	percentage(count);				 	// count �迭�� ������ ������� ��ȯ�ϱ�

	printf("\n�����: ");
	print_arr(count); 					// count �迭�� ������ ����ϱ�

	return 0;
}

void print_arr(int *arr)				// void print_arr(int arr[N])
{
	int i;

	for (i=0; i<N; i++)
		printf("%3d", *(arr + i));		// printf("%3d", arr[i]);
}

void percentage(int *arr) 				// void percentage(int arr[N])
{
	int i, total = 0;

	for(i=0; i<N; i++)
		total += *(arr + i); 			// total += arr[i];

	for (i=0 ;i<N; i++)
		*(arr + i) = (int) ((double) *(arr + i) / total * 100);
		// arr[i] = (int) ((double) arr[i] / total * 100);
}

#include <stdio.h>
#define N 4

double compute_avg(int arr[]); // �Լ��� ���� ����

int main()
{
	int notebook[N] = {2507, 2232, 2009, 2890};
	int pen[N] = {4527, 5370, 4923, 6097};
	double average;

	// ��Ʈ�� ��� �Ǹż� ���ϱ�	
	average = compute_avg(notebook);	
	printf("��Ʈ ��� �Ǹż�: %.1lf \n", average);

	// ���� ��� �Ǹż� ���ϱ�	
	average = compute_avg(pen);	
	printf("�� ��� �Ǹż�: %.1lf \n", average);

	return 0;
}

// ���޵� �迭�� ����� ���ϴ� �Լ�
double compute_avg(int arr[])
{
	int i, sum = 0;

	for (i=0; i<N; i++)
		sum = sum + arr[i];

	return (double)sum / N;
}
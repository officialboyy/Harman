#include <stdio.h>
#define N 4

int main()
{
	int notebook[N] = {2507, 2232, 2009, 2890}; // ��Ʈ �Ǹż�
	int i, sum, pen[N] = {4527, 5370, 4923, 6097}; // �� �Ǹż�
	double average;

	// ��Ʈ�� ��� �Ǹż� ���ϱ�
	sum = 0;
	for (i=0; i<N; i++)
		sum = sum + notebook[i];
	average = (double)sum / N;

	printf("��Ʈ ��� �Ǹż�: %.1lf \n", average);

	// ���� ��� �Ǹż� ���ϱ�
	sum = 0;
	for (i=0; i<N; i++)
		sum = sum + pen[i];	
	average = (double)sum / N;

	printf("�� ��� �Ǹż�: %.1lf \n", average);

	return 0;
}

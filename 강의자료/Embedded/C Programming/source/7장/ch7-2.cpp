#include <stdio.h>
#define N 5

int main()
{
	int f[N] = {3, 0, -30, -20, -1}; // �迭�� ����� ���ÿ� �ʱ�ȭ�ϱ�
	int i, min;

	// �ּڰ� ���ϱ�
	min = f[0];
	for (i=1; i<N; i++)
	{
		if (f[i] < min)
			min = f[i];
	}

	// �迭 ���� ���
	printf("��� �� ���:");
	for (i=0; i<N; i++)
		printf("%4d", f[i]);

	// �ּڰ� ���
	printf("\n���� ���� ��� ��: %d \n", min);

	return 0;
}

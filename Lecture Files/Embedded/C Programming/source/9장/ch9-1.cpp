#include <stdio.h>
#define N 5

int find_max(int ary[N]);

int main()
{
	int maximum, score[N] = {10, 8, 6, 9, 8};

	maximum = find_max(score);
	printf("�ִ�: %d \n", maximum);

	return 0;
}

// ���޵� �迭�� �ִ��� ��ȯ�ϴ� �Լ�
int find_max(int ary[N])
{
	int i, max;

	max = ary[0];
	for (i=0; i<N; i++)
		if (max < ary[i])
			max = ary[i];

	return max;
}
#include <stdio.h>
#define N 10

int find_larger(int first, int second); // �Լ��� ���� ����

int main()
{
	int freeze[N] = {15, 0, -20, -30, 50, -5, -120, -5, 10, -12};
	int i, max;

	/* max�� �ʱ갪�� ù° ���ҷ� ������ ��
	   ������ max�� ������ �迭 ���� �� ū ���� find_larger �Լ��� �̿��Ͽ� ���� ��
	   �ٽ� max�� �����Ѵ�. */
	max = freeze[0];	
	for (i=1; i< N; i++)
		max = find_larger(max, freeze[i]);
	
	printf(" ��� �� ��� : ");
	for (i=0; i< N; i++)
		printf("%d  ", freeze[i]);
	printf("\n ���� ���� ��� �� : %d \n\n", max);

	return 0;
}

// �� ���� �� ū ���� ��ȯ�ϴ� �Լ�
int find_larger(int first, int second)
{
	if (first > second)
		return first;
	else
		return second;
}
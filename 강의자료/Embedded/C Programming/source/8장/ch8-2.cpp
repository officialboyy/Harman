#include <stdio.h>

// compute_sum �Լ��� ����
int compute_sum(int n)
{
	int i, sum = 0;

	for (i=1; i<=n; i++)
		sum += i;

	return sum;
}
// main �Լ��� ����
int main()
{
	int end=200;

	printf("1~100������ ��: %d \n\n", compute_sum(100));

	printf("1���� ������� ���� ���ұ��? ");
	scanf("%d", &end);
	printf("\n1~%d������ ��: %d \n", end, compute_sum(end));

	return 0;
} 
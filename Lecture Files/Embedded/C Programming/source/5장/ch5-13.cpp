#include <stdio.h>

int main()
{
	int i, n, sum, factorial;

	printf("1���� n������ �հ� ���� ���մϴ�. ���� n��? ");
	scanf("%d", &n);

	// 1���� n������ ���� sum�� ���ϱ�
	sum = 0;
	for (i=1; i<=n; i++)
		sum = sum + i;

	// 1���� n������ �� n!�� factorial�� ���ϱ�
	factorial = 1;
	for (i=1; i<=n; i++)
		factorial = factorial * i;

	printf("1���� %d������ ���� %d�Դϴ�.\n", n, sum);
	printf("1���� %d������ ���� %d�Դϴ�.\n", n, factorial);

	return 0;
}
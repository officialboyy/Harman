#include <stdio.h>

int main()
{
	int i, n;

	printf("����� ���ϴ� ����?");
	scanf("%d", &n);

	for (i=1; i<=9; i++)
		printf("%d * %d = %2d\n", n, i, n*i);

	return 0;
}
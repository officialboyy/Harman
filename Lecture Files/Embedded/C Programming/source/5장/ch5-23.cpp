#include <stdio.h>

int main()
{
	int i, n, sum = 0;

	printf("���� n�� �Է� : ");
	scanf("%d", &n);

	i = 0;
	while (i <= n)
	{
		i++;
		if (i % 2 == 1)
			continue;
		sum += i;
	}

	printf("���� 1���� %d ���� ¦������ ���� %d�Դϴ�.\n", n, sum);

	return 0;

}
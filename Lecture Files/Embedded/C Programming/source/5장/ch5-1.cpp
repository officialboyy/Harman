#include <stdio.h>

int main()
{
	int temp;

	printf("���� �µ��� : ");
	scanf("%d", &temp);

	if (temp < 0)
		printf("������ �����̸� ");

	printf("���� �µ��� %d���Դϴ�.\n", temp);

	return 0;
}

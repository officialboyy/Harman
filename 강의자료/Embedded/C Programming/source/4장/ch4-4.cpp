#include <stdio.h>

int main()
{
	int x, y;

	printf("�� ������ �Է��ϼ��� >> ");
	scanf("%d %d", &x, &y);

	printf("(%d > %d) �� ����� %d�Դϴ�.\n", x, y, x > y);
	printf("(%d < %d) �� ����� %d�Դϴ�.\n", x, y, x < y);
	printf("(%d >= %d) �� ����� %d�Դϴ�.\n", x, y, x >= y);
	printf("(%d <= %d) �� ����� %d�Դϴ�.\n", x, y, x <= y);
	printf("(%d == %d) �� ����� %d�Դϴ�.\n", x, y, x == y);
	printf("(%d != %d) �� ����� %d�Դϴ�.\n", x, y, x != y);

	return 0;
}



#include <stdio.h>

int main()
{
	int x;

	printf("���� �Է� >> ");
	scanf("%d", &x);

	(x % 2 == 0) ? printf("%d�� ¦���Դϴ�.\n", x) : 
				   printf("%d�� Ȧ���Դϴ�.\n", x);

	return 0;
}

#include <stdio.h>

int main()
{
	int x, y;

	x = 1;

	printf("x�� �� : %d\n", x);
	printf("x+1�� ��� : %d\n", x+1);
	printf("y=x+1�� ��� : %d\n", y=x+1);
	printf("y=1+(x=2+3)�� ��� : %d\n", y=1+(x=2+3));
	printf("y=x=5�� ��� : %d\n", y=x=5);

	return 0;
}
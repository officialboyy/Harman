#include <stdio.h>

int main()
{
	int x, y;
	
	printf("정수1 >> ");	scanf("%d", &x);
	printf("정수2 >> ");	scanf("%d", &y);
	printf("\n");

	printf("%d + %d = %d\n", x, y, x+y);
	printf("%d - %d = %d\n", x, y, x-y);
	printf("%d * %d = %d\n", x, y, x*y);
	printf("%d / %d = %d\n", x, y, x/y);
	printf("%d %% %d = %d\n\n", x, y, x%y);

	printf("%d / %.1lf = %.1lf\n", x, 3.0, x / 3.0);

	return 0;
}

#include <stdio.h>

int main()
{
	int n, i, sum;

	for (n=1; n<=10; n++)
	{
		sum= 0;
		for (i=1; i<=n; i++)
			sum = sum + i;

		printf("1~%d������ �� : %d \n", n, sum);
	}

	return 0;
}
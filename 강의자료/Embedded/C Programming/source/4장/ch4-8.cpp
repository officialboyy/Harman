#include <stdio.h>

int main()
{
	int n1, n2, max, min;

	printf("�� ���� �Է� : "); 
	scanf("%d %d", &n1, &n2);

	(n1 > n2) ? (max = n1, min = n2) : (max = n2, min = n1);
	
	printf("\n>> ū �� / ���� �� = %d\n", max / min);
	printf(">> ū �� %% ���� �� = %d\n", max % min);

	return 0;
}

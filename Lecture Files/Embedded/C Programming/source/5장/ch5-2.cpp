#include <stdio.h>
int main()
{
	int num;

	printf("������ �Է��Ͻÿ� : ");
	scanf("%d", &num);

	printf("�Է��� �� %d��(��) ", num);	

	if (num % 2 == 0)
		printf("¦���Դϴ�.\n");
	else
		printf("Ȧ���Դϴ�.\n");

	return 0;
}
/*	6. ��ũ��
	f(x) = 2x^3 - 2x^2 - 3�� ��ũ�� �Լ��� ���� �� �� x�� 1~10���� f(x)�� ����ϱ�
*/

#include <stdio.h>		// printf

#define f(x) 2*x*x*x - 2*x*x - 3

int main() 
{
	int x, y;

	printf("x = ? ");
	scanf("%d", &x);

	y = f(x);
	
	printf("f(%d) = %d \n", x, y);
	
	return 0;
}

/*
x = ? 5
f(5) = 197
����Ϸ��� �ƹ� Ű�� �����ʽÿ� . . .
*/
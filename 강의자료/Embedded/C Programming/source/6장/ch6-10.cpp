#include "ch6-9.h" 
#include <stdio.h> 


int main() 
{ 
	int x;

	printf("�Է� : ");
	scanf("%d", &x);

	printf("%d�� ���� = %d, %d�� ������ = %d\n", x, SQUARE(x), x, CUBE(x));

	return 0;
} 

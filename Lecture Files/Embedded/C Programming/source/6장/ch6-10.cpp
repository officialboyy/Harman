#include "ch6-9.h" 
#include <stdio.h> 


int main() 
{ 
	int x;

	printf("입력 : ");
	scanf("%d", &x);

	printf("%d의 제곱 = %d, %d의 세제곱 = %d\n", x, SQUARE(x), x, CUBE(x));

	return 0;
} 

#include <stdio.h>

int addition(int n);

int main()
{
	int n;
	
	printf("1부터 n까지의 합을 구하는 프로그램입니다. n은? ");
	scanf("%d", &n);

	printf("1부터 %d까지의 합은 %d입니다.", n, addition(n));

	return 0;
}

// 1부터 n까지의 합을 구하는 재귀 함수
int addition(int n)
{
	int result;
	
	if (n > 1)
		result = addition(n-1) + n;
	else
		result = 1;

	return result;
}

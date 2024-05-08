#include <stdio.h>

void reverse(int n);

int main()
{
	int n;
	
	printf("n에서 1까지 거꾸로 출력하는 프로그램입니다. n은? ");
	scanf("%d", &n);

	reverse(n);

	return 0;
}

// n에서 1까지 거꾸로 출력하는 재귀 함수
void reverse(int n)
{
	printf("%3d", n);
	if (n > 1)
		reverse(n-1);

	return;
}
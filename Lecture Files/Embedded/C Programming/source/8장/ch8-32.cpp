#include <stdio.h>

void palindrome(int n);

int main()
{
	int n;
	
	printf("양의 정수 n을 입력하면 거꾸로 출력하는 프로그램입니다. n은? ");
	scanf("%d", &n);

	palindrome(n);

	return 0;
}

// 양의 정수 n을 거꾸로 출력하는 재귀적 함수
void palindrome(int n)
{
	// n의 끝자리 값 출력하기
	printf("%d", n % 10);

	// n이 10단위 이상의 값이라면 재귀 호출로 나머지 자리를 출력하기
	if (n >= 10)
		palindrome(n / 10);
}
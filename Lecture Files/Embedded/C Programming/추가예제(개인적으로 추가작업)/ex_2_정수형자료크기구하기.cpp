/*	2. 자료형
	정수형 변수와 상수의 메모리 크기 알아보기
*/

#include <stdio.h>		// printf

int main() 
{
	int a;
	unsigned int b;
	long c;

	printf("\n sizeof(int)          = %d", sizeof(int));			// 2Byte;
	printf("\n sizeof(unsigned int) = %d", sizeof(unsigned int));	// 2Byte;
	printf("\n sizeof(long)         = %d", sizeof(long));			// 4Byte;

	printf("\n sizeof(a) = %d", sizeof(a));	// 2Byte;
	printf("\n sizeof(b) = %d", sizeof(b));	// 2Byte;
	printf("\n sizeof(c) = %d", sizeof(c));	// 4Byte;

	printf("\n sizeof(10)     = %d", sizeof(10));		// 2Byte;
	printf("\n sizeof(32767)  = %d", sizeof(32767));	// 2Byte;
	printf("\n sizeof(32768)  = %d", sizeof(32768));	// 2Byte;
	printf("\n sizeof(150000) = %d", sizeof(150000));	// 2Byte;

	printf("\n\n");

	return 0;
}

/*

 sizeof(int)          = 4
 sizeof(unsigned int) = 4
 sizeof(long)         = 4
 sizeof(a) = 4
 sizeof(b) = 4
 sizeof(c) = 4
 sizeof(10)     = 4
 sizeof(32767)  = 4
 sizeof(32768)  = 4
 sizeof(150000) = 4

계속하려면 아무 키나 누르십시오 . . .
*/
/*	4. 연산자
	Exclusive OR 연산자 ^를 이용 1의 보수 구하기
*/

#include <stdio.h>		// printf

int main() 
{
	int n, check, complement;

	printf("1의 보수를 구할 정수는? ");
	scanf("%d", &n);
	check = 0xFFFF;				// 모든 비트가 1
	complement = n ^ check;		// exclusive or 연산을 통해 check의 비트는 무조건 1이므로 n의 비트가 1로 동일하면 0, 0으로 다른다면 1이 됨
	
	printf("%04X ^ %04X = %04X \n", n, check, complement);	// %04X는 16진수로 4자리 출력이되 앞의 빈자리르 0으로 표시하기
	printf("%04X의 1의 보수 = %04X \n", n, complement);

	return 0;
}

/*
1의 보수를 구할 정수는? 8
0008 ^ FFFF = FFF7
0008의 1의 보수 = FFF7
계속하려면 아무 키나 누르십시오 . . .
*/

/*
1의 보수를 구할 정수는? 0
0000 ^ FFFF = FFFF
0000의 1의 보수 = FFFF
계속하려면 아무 키나 누르십시오 . . .
*/
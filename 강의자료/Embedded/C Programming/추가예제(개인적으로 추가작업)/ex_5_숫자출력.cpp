/*	 5장 제어문
	for문을 사용 실행결과와 같이 출력하기(숫자와 숫자 사이에는 빈 칸임)
*/


#include <stdio.h>

int main()
{
	int i,  j;

	for (i=0; i<5; i++)
	{
		for (j=0; j<i; j++) 
			printf(" ");
		for (j=1; j<6-i; j++)
			printf("%d",  j);
		printf("\n");
	}

	return 0;
}

/* 실행결과
12345
 1234
  123
   12
    1
계속하려면 아무 키나 누르십시오 . . .
*/


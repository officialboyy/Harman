/*	5장 제어문
	실행결과와 같이 *를 다양하게 숫자를 1씩 증가, 1씩 감소하며 출력하기
*/

#include <stdio.h>

int main()
{
	int i, j;

	for(i=0;i<5;i++)
	{
		for(j=0;j<5;j++)
		{
			if(i%2!=0)
				break;
			printf("* ");
		}
		printf("\n");
	}
	printf("\n\n");

	for(i=0;i<5;i++)
	{ 
		for(j=0;j<5;j++)
		{
			if((i+j)%2==0)
				printf("* ");
			else 
				printf("  ");
		}
		printf("\n");
	}
	printf("\n\n");

	for(i=0;i<5;i++)
	{
		for(j=1;j<=5;j++)
		{
			if(i%2==0)
				printf("%2d ",j+(i*5));
			else 
				printf("%2d ",(i*5)+6-j);
		}
		printf("\n");
	}

	return 0;
} 

/*실행결과
* * * * *

* * * * *

* * * * *


*   *   *
  *   *
*   *   *
  *   *
*   *   *


 1  2  3  4  5
10  9  8  7  6
11 12 13 14 15
20 19 18 17 16
21 22 23 24 25
계속하려면 아무 키나 누르십시오 . . .
*/
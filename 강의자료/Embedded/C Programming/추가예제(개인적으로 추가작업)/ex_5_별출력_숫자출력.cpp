/*	5�� ���
	�������� ���� *�� �پ��ϰ� ���ڸ� 1�� ����, 1�� �����ϸ� ����ϱ�
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

/*������
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
����Ϸ��� �ƹ� Ű�� �����ʽÿ� . . .
*/
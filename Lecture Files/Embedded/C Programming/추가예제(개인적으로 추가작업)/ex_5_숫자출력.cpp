/*	 5�� ���
	for���� ��� �������� ���� ����ϱ�(���ڿ� ���� ���̿��� �� ĭ��)
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

/* ������
12345
 1234
  123
   12
    1
����Ϸ��� �ƹ� Ű�� �����ʽÿ� . . .
*/


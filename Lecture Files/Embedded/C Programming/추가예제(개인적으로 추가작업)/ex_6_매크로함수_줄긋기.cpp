/*	6. ��ũ��
	������ ���ڷε� ���� �ߴ� ��ũ�� �Լ� printline(ch) �����ϱ�
*/

#include <stdio.h>				// printf

#define declare_z int z;		// ���� ��ũ�� �Լ����� ����� ���� z�� �����ϴ� ��ũ�� ���
#define printline(ch, n) for (z=1; z<=10; z++) printf("%c", ch)

int main() 
{
	int j;
	declare_z;							// ��ũ�� ��� ���
	
	printline('=', 30); printf("\n");	// ��ũ�� �Լ� ���
	for (j=1; j<=10; j++)
	{
		printline('*', j); printf("\n");
	}
	printline('=', 30); printf("\n");
	
	return 0;
}

/*
==========
**********
**********
**********
**********
**********
**********
**********
**********
**********
**********
==========
����Ϸ��� �ƹ� Ű�� �����ʽÿ� . . .
*/
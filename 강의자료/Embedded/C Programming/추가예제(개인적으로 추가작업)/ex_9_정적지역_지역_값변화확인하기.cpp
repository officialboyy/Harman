/*	9. ���� ����
	���� ���� ������ �ڵ� ���� ������ �� ��ȭ ����ϱ�
*/

#include <stdio.h>

void increment();			// �Լ� ����

int main() 
{	
	int count;				// �ڵ� ���� ����

	for (count=1; count<=5; count++) 
	{
		increment();		// 5�� �Լ� ȣ��
	}
}

void increment() 
{
	static int s_index = 1;	// ���� ���� ����
	int a_index = 1;		// �ڵ� ���� ����

	printf("���� ���� ���� s_index = %2d,\t", s_index++);
	printf("�ڵ� ���� ���� a_index = %2d,\t", a_index++);
	printf("\n");
}

/*
���� ���� ���� s_index =  1,    �ڵ� ���� ���� a_index =  1,
���� ���� ���� s_index =  2,    �ڵ� ���� ���� a_index =  1,
���� ���� ���� s_index =  3,    �ڵ� ���� ���� a_index =  1,
���� ���� ���� s_index =  4,    �ڵ� ���� ���� a_index =  1,
���� ���� ���� s_index =  5,    �ڵ� ���� ���� a_index =  1,
����Ϸ��� �ƹ� Ű�� �����ʽÿ� . . .
*/
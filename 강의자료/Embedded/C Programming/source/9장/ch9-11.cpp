#include <stdio.h>

int main()
{
	register int i, space;	// �������� ���� ����
	int line;				// �Ϲ� ���� ����

	for (line=0; line<70; line++)
	{
		// line���� ��ĭ ����ϱ�
		for (space=1; space<=line; space++)
			printf(" ");
		
		// �ռ� ����� ��ĭ �ڿ� 1~10������ ����� �� ��� �� �ٲٱ�
		for (i=1; i<=10; i++)
			printf("%d", i);
		printf("\n");			 
	}

	return 0;
}
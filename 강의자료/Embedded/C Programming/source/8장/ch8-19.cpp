#include <stdio.h>
#include <stdlib.h> 	// rand �Լ��� ���� ��� ����

int main()
{
	int i, random;

	for (i=1; i<=5; i++)
	{
		random = rand(); // ������ ��� random ������ ����
		printf("%d��° ����: %5d \n", i, random);
	}

	return 0;
}
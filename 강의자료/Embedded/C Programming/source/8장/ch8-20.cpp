#include <stdio.h>
#include <stdlib.h> 		// rand, srand �Լ��� ���� ��� ����
#include <time.h> 			// time �Լ��� ���� ��� ����

int main()
{
	int i, random;

	// time �Լ��� ������ �� ��ǻ���� ���� �ð��� rand �Լ��� ����� �����ϱ�
	srand(time(NULL));

	for (i=1; i<=5; i++)
	{
		random = rand(); 	// ������ ��� random ������ ����
		printf("%d��° ����: %5d \n", i, random);
	}

	return 0;
}
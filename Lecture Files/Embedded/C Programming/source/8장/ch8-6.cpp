#include <stdio.h>

// �Լ��� ���� ����
int pass(int number);

// main �Լ��� ����
int main()
{
	int absence = 5;

	if (pass(absence))
		printf("��� \n");
	else
		printf("���� \n");

	return 0;
}

// pass �Լ��� ����
int pass(int number)
{
	int limit = 6;

	if (number < limit)
		return 1;
	else 
		return 0;
}

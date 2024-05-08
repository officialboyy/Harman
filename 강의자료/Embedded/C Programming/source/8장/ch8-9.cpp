#include <stdio.h>

// �Լ��� ���� ����
void print_header();
void print_numbers(int end);

// main �Լ� ���� 
int main()
{
	int year = 2015, month = 2, days = 28; // ����, ��, �� ��

	printf("\n\t\t%d�� %d�� �޷� \n", year, month);
	print_header();
	print_numbers(days);

	return 0;
}

// �޷��� ��¥�� ����ϱ� ���� ������ ����ϴ� �Լ�
void print_header()
{
	printf("\n\t===================================================\n");
	printf("\t��\t��\tȭ\t��\t��\t��\t��");
	printf("\n\t===================================================\n");
}

// �޷��� ��¥�� �� �־� ����ϴ� �Լ�
void print_numbers(int end)
{
	int day_num;

	for (day_num=1; day_num<=end; day_num++)
	{
		printf("\t%2d", day_num);
		if (day_num % 7 == 0) // 7���� ���� ������ ���� �ٲٱ�                
			printf("\n");       
	}
	printf("\n");
}
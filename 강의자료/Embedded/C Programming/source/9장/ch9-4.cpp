#include <stdio.h>

double to_dollars();        // �Լ� ���� ����

int salary;					// ���� ���� ����

int main()
{
	printf("�� �޿���? "); scanf("%d", &salary);
	printf("�� �޿� %d���� %.1lf�޷� \n", salary, to_dollars());

	return 0;
}

// �� ���� �ݾ��� �޷� ������ ��ȯ�ϴ� �Լ�
double to_dollars()
{
	int exchange_rate = 1100;	// ��-�޷� ȯ���� ������ ���� ���� ����

	return (double)salary / exchange_rate;
} 
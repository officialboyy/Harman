#include <stdio.h>		// scanf, printf �Լ��� ���� ��� ���� ����
#include <stdlib.h>		// exit �Լ��� ���� ��� ���� ����

int main()
{
	int x, y, result;
	char op;			// ������ ���� �� ���� ������ ������ ����

	printf("������ �Է��Ͻÿ�.\n");
	printf("�������� ���� : + - * / %% & | ^\n");
	printf("�Է� �� : 2 + 3\n\n�Է� >> ");
	scanf("%d %c %d", &x, &op, &y);

	// op�� ����� �����ڿ� ���� �ش� ������ ������ ����� result�� �����ϱ�
	if (op == '+')
		result = x + y;
	else if (op == '-')
		result = x - y;
	else if (op == '*')
		result = x * y;
	else if (op == '/')
		result = x / y;
	else if (op == '%')
		result = x % y;
	else if (op == '&')
		result = x & y;
	else if (op == '|')
		result = x | y;
	else if (op == '^')
		result = x ^ y;
	else
	{
		printf("�߸��� �������Դϴ�.\n");
		exit(0); // ���α׷��� ������ ������.
	}

	printf("\n��� >> %d %c %d = %d\n", x, op, y, result);

	return 0;
}
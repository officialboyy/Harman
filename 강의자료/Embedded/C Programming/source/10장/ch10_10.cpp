//[���α׷� 10-10] ������ ������ ��ȯ���� �� ���ڿ��� ��ȯ�ϱ� (ch10-10.cpp)
#include <stdio.h>

int main()
{
	char *first = "GilDong", *last = "Hong"; // �̸��� ��
	char *temp; // ���ڿ� �ּҸ� �ӽ÷� ������ ������ ����

	printf("Name: %s %s\n", first, last);
	
	// ������ ������ ����� �� �ּҸ� ��ȯ�� �� �����Ͱ� ����Ű�� ���ڿ� ��ȯ�ϱ�
	temp = first;
	first = last;
	last = temp;

	printf("Name: %s %s\n", first, last);	 

	return 0;
 }


//[���α׷� 10-11] char�� �迭�� �̿��� �� ���ڿ��� ��ȯ (ch10-11.cpp)
#include <stdio.h>
#include <string.h>			// strcpy �Լ��� ���� ��� ����

int main()
{
	char first[10] = "GilDong", last[10] = "Hong"; // �̸��� ��
	char temp[10];			// ���ڿ��� �ӽ÷� ������ �迭

	printf("Name: %s %s\n", first, last);
	
	// �迭�� ������ ���� ��ȯ�Ͽ� �� ���ڿ��� ��ȯ�ϱ�
	strcpy(temp, first);	// first �迭�� ���ڿ��� temp �迭�� �����ϱ�
	strcpy(first, last);	// last �迭�� ���ڿ��� first �迭�� �����ϱ�
	strcpy(last, temp); 	// temp �迭�� ���ڿ��� last �迭�� �����ϱ�

	printf("Name: %s %s\n", first, last);	 

	return 0;
 }


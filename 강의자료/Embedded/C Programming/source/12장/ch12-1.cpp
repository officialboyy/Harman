#include <stdio.h>				// fopen, fclose �Լ��� ���� ��� ����
#include <stdlib.h>				// eixt �Լ��� ���� ��� ����

int main() 
{	
	FILE * fp;					// ���� ������ ����
	char filename[80];			// ����ڰ� �Է��� ���ϸ��� ������ �迭

	printf("���� ���� ���ϸ��� �Է��ϼ���. "); 
	gets(filename);				// ���ϸ��� ���� �Է¹ޱ�, scanf("%s", filename);

	fp = fopen(filename, "r"); 	// ������ �б������ ���� fp�� �����ϱ�
	if (fp == NULL)				// ���� ���⿡ ������ ��� 
	{
		printf("\n���� ����: %s ������ �ִ��� Ȯ���غ�����.\n", filename);
		exit(1);				// ���α׷� ���� ����
	}
	printf("\n������ �б� ���� ���������� �������ϴ�.");
	fclose(fp);					// ���� �ݱ�
	printf("\n������ �ݰ� ���α׷��� �����մϴ�.\n");

	return 0;
}


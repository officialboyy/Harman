#include <stdio.h>				// fopen, fscanf, fclose, feof �Լ��� ���� ��� ����
#include <stdlib.h>				// exit �Լ��� ���� ��� ����

int main() 
{ 
	FILE * fp;					// ���� ������ ����
	int age;

	fp = fopen("age.txt", "r");	// ������ �б� ���� ����
	if (fp == NULL)				// ���� ���� ���� ó��
	{
		printf("���� ���� ����!\n"); exit(1); 
	}

	// ���Ͽ� ����� ��� ���̸� �о ����Ϳ� ����ϱ�
	fscanf(fp, "%d", &age);		// �ϴ� ���Ͽ��� ����(����) �б⸦ �õ�
	while (!feof(fp))			// ���� ������ ���� ������ �ʾҴٸ� �ݺ��ϱ�
	{ 		
		printf("%2d \n", age);	// ���Ͽ��� ���� ����(����)�� ����ͷ� ����ϱ�
		fscanf(fp, "%d", &age);	// ���Ͽ��� ���� ����(����) �б⸦ �õ�
	}

	fclose(fp);					// fp�� ����� ���� �ݱ�

	return 0;
} 


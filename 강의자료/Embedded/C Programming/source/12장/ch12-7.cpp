#include <stdio.h>			// fopen, fscanf, fclose, feof �Լ��� ���� ��� ���� 
#include <stdlib.h>			// exit, rand, srand �Լ��� ���� ��� ����
#include <time.h>			// srand, time �Լ��� ���� ��� ����

int main()
{
	int i, size;
	FILE * fp = fopen("rand.txt", "w");	// ������ ���� ���� ����
	if (fp == NULL)
	{
		printf("���� ���� ����! \n");	exit(1); 
	}

	printf("1~1000������ ������ �� �� �߻��ұ��? "); 
	scanf("%d", &size);

	// 1~1000 ���� ���� size���� ���Ͽ� ����
	srand(time(NULL));					// rand �Լ��� ���带 ���� �ð����� ����
	for	(i=0; i<size; i++)		
		fprintf(fp, "%4d \n",  rand() % 1000 + 1);  // ���� ������ �����ϸ��� �� ���Ͽ� ���� 
	fclose(fp);							// ���� �ݱ�

	return 0;
}
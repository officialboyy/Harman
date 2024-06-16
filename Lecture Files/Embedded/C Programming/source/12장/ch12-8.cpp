#include <stdio.h>			// fopen, fscanf, fprintf, fclose �Լ��� ���� ��� ����
#include <stdlib.h>			// eixt �Լ��� ���� ��� ����
#define MAX 100				// �迭 ������ �ִ��

int main()
{
	FILE * fp;
	
	int n[MAX], size, random, pass, i, temp;

	fp = fopen("rand.txt", "r");		// ������ �б� ���� ����
	if (fp == NULL)						// ���� ���� ���� ó��
	{
		printf("���� ���� ����! "); 	exit(1); 
	}

	// ���Ͽ��� ������ ���� �� �����ߴٸ� n �迭�� �����ϱ⸦ �ݺ�
	size = 0;							// ���Ͽ��� ���� ������ ��
	while ( fscanf(fp, "%d", &random) != EOF) 
	{ 
		n[size] = random;				// ���Ͽ��� ���� ������ �迭 ���ҷ� ����
		size++;							// ���Ͽ��� ���� ������ ���� 1����
	}
	fclose(fp);							// ���� �ݱ�
	
	for (pass=1; pass<size; pass++)		// n �迭�� �������� �����ϱ�(���� ����)
		for (i=0; i<size-1; i++)
		{
			if (n[i] > n[i+1])
			{
				temp = n[i];
				n[i] = n[i+1];
				n[i+1] = temp;
			}
		}

	// n �迭�� ������ ����� ���Ͽ� ����
	fp = fopen("sort.txt", "w");
	if (fp == NULL)
	{
		printf("���� ���� ����! ");	exit(1); 
	}

	for (i=0; i<size; i++)
		fprintf(fp, "%4d \n", n[i]);		
	fclose(fp);							// ���� �ݱ�

	return 0;
}


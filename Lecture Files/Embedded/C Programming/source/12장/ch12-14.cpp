#include <stdio.h>		// fopen, fscanf, fprintf, fclose, EOF, printf�� ��� ����
#include <stdlib.h>		// exit �Լ��� ���� ��� ����
#define SIZE 10			// ���Ͽ� ����� �л��� ��

struct student			// ����ü ����
{ 
	char name[20];		// �̸�
	double GPA;			// ����
	int rank;			// ����
}; 

int main()
{
	struct student s[SIZE];				// ����ü �迭 ����
	int i, u;
	FILE * fp;							// ���� ������ ����	 

	fp = fopen("students.txt", "r");	// �л� ������ ���� ���� ����
	if (fp == NULL)						// ���� ���� ���� ó��
	{ 
		printf("\n���� ���� ����! \n"); exit(1); 
	} 
	
	// ���Ͽ� �ִ� �л� ������ �о� ����ü �迭�� �����ϱ�
	for (i=0; i<SIZE; i++)  
	{
		fscanf(fp, "%s %lf", s[i].name, &s[i].GPA);
	}
	fclose(fp);				// ������ ��� �ڷḦ �迭�� ���������Ƿ� �б�� ������ �ݱ�

	// ���Ͽ��� ���� ������ �̿��Ͽ� �� s[i]�� ������ ���ϱ�
	for (i=0; i<SIZE; i++)
	{  
		s[i].rank = 1;		// �ϴ� ��(i)�� ������ 1�� �ʱ�ȭ
		for (u=1; u<SIZE; u++) 
		{
			// ��(i)�� ������ �ٸ� �л�(u)�� �������� ������ ������ 1 ����
			if(s[i]. GPA < s[u].GPA) 
				s[i].rank ++;			
		}
	}
	
	// ���Ͽ� ��� ����ϱ�
	fp = fopen("rank.txt", "w");		// ����� ����� rank.txt ������ ��������� ����
	if (fp == NULL)						// ���� ���� ���� ó��
	{ 
		printf("\n���� ���� ����! \n"); exit(1); 
	} 

	// SIZE���� �̸�, ����, ������ ���Ͽ� ����
	for (i=0; i<SIZE; i++) 
	{
		fprintf(fp, "%-8s %4.2lf %2d\n", s[i].name, s[i].GPA, s[i].rank);
		//printf("%-8s %4.2lf %2d\n",  s[i].name, s[i].GPA, s[i].rank);
	}
	fclose(fp);							// ���� �ݱ�
	printf("���� ��� �Ϸ�! \n");
	
	return 0;
}


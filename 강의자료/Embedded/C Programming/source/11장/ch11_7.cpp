#include <stdio.h>
#include <string.h>		// strcpy �Լ��� ���� ��� ����
#define SIZE 5			// �ο���

int main()
{
	char name[SIZE][7];		// SIZE���� �̸� ���ڿ��� ������ 2���� �迭
	char id[SIZE][10];		// SIZE���� ���̵� ���ڿ��� ������ 2���� �迭
	int salary[SIZE];		// SIZE���� �޿��� ������ 1���� �迭
	int average = 0, sum = 0, i, temp_int, pass; // �޿� ���,  �޿� �հ�
	char temp_string[10];	// ���ڿ��� �ӽ÷� ������ ��
	
	// ���� 5���� ���� �Է� �� �޿� ����
	printf(">> ������ ����(�̸�, ID, �޿�)�� �Է��ϼ���. << \n");

	for (i=0; i<SIZE; i++)  
	{ 
		printf("%d��: ", i+1);
		scanf("%s %s %d", name[i], id[i], &salary[i]); //��÷�ڸ� ����ϸ� (i+1)���� �ּ��̴�.
		sum += salary[i];              // �޿� �հ� ���
	} 
	average = sum / SIZE;              // �޿� ��� ���

	// �޿��� ��� �̻��� ������ id�� �޿��� ����ϱ�
	printf("\n----------------------------------------\n");
	printf("  �޿��� %d����(���) �̻��� ���� ���� ", average);
	printf("\n----------------------------------------\n");
	for (i=0; i<SIZE; i++)
	{
		if (salary[i] >= average)
			 printf("%s\t %d���� \n", id[i], salary[i]); 
	} 
	printf("----------------------------------------\n");
	
	// �޿��� ������������ ������ ������ �����ϱ�(���� ����)
	for (pass=1; pass<SIZE; pass++)
		for (i=0; i<SIZE-pass; i++)
		{
			// �� ������ �޿��� �� ũ�ٸ� ���� ��ȯ�ϱ�
			if (salary[i] > salary[i+1])
			{
				// �̸� ��ȯ
				strcpy(temp_string, name[i]);
				strcpy(name[i], name[i+1]);
				strcpy(name[i+1], temp_string);
				// ���̵� ��ȯ
				strcpy(temp_string, id[i]);
				strcpy(id[i], id[i+1]);
				strcpy(id[i+1], temp_string);
				// �޿� ��ȯ
				temp_int = salary[i];
				salary[i] = salary[i+1];
				salary[i+1] = temp_int;
			}
		}

	// ���� ��� ����ϱ�
	printf("\n----------------------------------------\n");	
	printf("\t�޿��� ���� ��� ");	
	printf("\n----------------------------------------\n");
	for (i=0; i<SIZE; i++)
		 printf("\t%s\t %d���� \n", id[i], salary[i]);
 	printf("\n----------------------------------------\n");

	return 0;
}

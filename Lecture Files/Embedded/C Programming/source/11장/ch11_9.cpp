#include <stdio.h>				// scanf, printf �Լ��� ���� ��� ����
#include <string.h>				// strcmp �Լ��� ���� ��� ����
#include <conio.h>				// getch �Լ��� ���� ��� ����
#include <stdlib.h>				// system �Լ��� ���� ��� ����
#define MAX 100					// ����ü �迭�� ������ �� �ִ� �ִ� ���� ������(����ü) ��

struct experiment				// ���� �����͸� ������ ����ü ����
{
	 int no;					// ���� ����
	 char date[6];				// ���� ��/��
	 int s1, s2, s3;			// ����1, ����2, ����3�� ��
	 int tension;				// ����� ����
};
typedef struct experiment DATA; //struct experiment	�� DATA�� ������

// ���α׷����� ����ϴ� �Լ��� ���� ����, DATA ��� struct experiment ��� ����
DATA find_max(DATA test[]);		// ����� �ִ��� ���� ������ ã��
void input(DATA test[]);		// ���� �ڷḦ �迭�� �߰��ϱ�
void output_element(DATA e);	// ���� �ڷ� �迭�� �� ���Ҹ� ����ϱ�
void output_list(DATA test[]);	// ���� �ڷ� �迭�� ����ϱ�
void print_title();				// ����� ���� ������ ������ ���� ����ϱ�
void search(DATA test[]);		// ���� �ڷ� �迭���� ���� �˻��ϱ�
void sort(DATA test[]);			// ���� �ڷ� �迭 ���� �޴� ó�� �Լ�
void sort_no(DATA test[]);		// ���� �ڷ� �迭�� ��ȣ������ ����ϱ�
void sort_tension(DATA test[]);	// ���� �ڷ� �迭�� ��¼����� �����ϱ�

int size;						// �迭�� ����� ���� ������(����ü) ��, ���� ���� ����

int main()
{
	DATA test[MAX];				// ����ü �迭 ����, struct experiment test[MAX];�� ����
	int menu;

	do  
	{	// ȭ�鿡 �޴� ǥ��
		printf(" >> ���� ������ ���� ���α׷� <<\n\n");
		printf(" 1. �Է�  2. ���  3. ��ȸ  4. ����  5. ������\n");
		printf(" >> ���ϴ� �޴��� �����ϼ��� : "); scanf("%d", &menu);
				
		switch (menu) 						// �޴� ���ÿ� ���� �Լ� ȣ���ϱ�
		{ 			
		case 1: input(test); break;			// ���� ������ �Է� �Լ� ȣ��
		case 2: output_list(test); break;	// ���� ������ ��� �Լ� ȣ��
		case 3: search(test); break;		// ���� ������ �˻� �Լ� ȣ��
		case 4: sort(test); break;			// ���� ������ ���� �Լ� ȣ��
		case 5: return 0;					// ���α׷� ���� ������
		default: printf("\n�޴��� �߸� �����Ͽ����ϴ�.\n\n");
		}

		// ����ڰ� ȭ���� ����� Ȯ���� �� �ƹ�Ű�� ������ ����ϱ�
		printf("\n >> ����Ϸ��� �ƹ�Ű�� ��������."); getch();
		system("cls");						// ���� ȭ�� �����
	} while (menu != 5);					// 5. �����⸦ �������� �ʴ� �� �ݺ��ϱ�
	
	return 0;
}

// ���� ������(����ü)�� �Է¹޴� �Լ�
void input(DATA test[])
{
	test[size].no = size + 1;				// ������ �Է� ���� �����ϱ�
	printf("\n");
	printf("  ��¥(��/��): "); scanf("%s", test[size].date);
	printf("  ����1�� �� : "); scanf("%d", &test[size].s1);
	printf("  ����2�� �� : "); scanf("%d", &test[size].s2);
	printf("  ����3�� �� : "); scanf("%d", &test[size].s3);
	printf("  ��� : "); scanf("%d", &test[size].tension);	
	size++;									// �迭�� ������ ���� ������ ���� 1����(���� ����)
}

// ����ü �迭 test�� ����� ���� �����͸� ����ϴ� �Լ�
void output_list(DATA test[])
{
	int i;

	print_title();							// ��� ���� ����ϱ�
	for (i=0; i<size; i++)
		output_element(test[i]); 			// �迭 ���� �� ����ü ����ϱ�
	printf("========================================\n");
}

// �� ���� ���� ������(����ü)�� ����ϴ� �Լ�
void output_element(DATA e)
{
	printf(" %3d   %-5s %3d    %3d    %3d   %4d \n", 
						e.no, e.date, e.s1, e.s2, e.s3, e.tension);
}

// ��¿� ���� ����� ������ ����ϴ� �Լ�
void print_title()
{
	printf("\n========================================\n");
	printf(" ����  ��¥  ����1  ����2  ����3  ���");
	printf("\n----------------------------------------\n");	
}

// ����ü �迭 test�� �� �ʿ��� ������ �˻��ϴ� �Լ�
void search(DATA test[])
{
	int menu, i;
	char input_date[6];
	
	printf("\n [1] �ִ� ��� ���     [2] ��¥�� ������ ���");
	printf("\n >> ���ϴ� �޴��� �����ϼ��� : "); scanf("%d", &menu);

	switch (menu)	// �޴��� ���� �Լ� ȣ���ϱ�
	{ 			
	case 1: // ����� ���� ū ���� ��� ã��
			print_title();
			output_element(find_max(test));
			printf("========================================\n");
			break;		 
	case 2: // �Է��� ��¥�� ��� ���� �����͸� ����ϴ� �Լ�
			printf("\n >> �˻��� ���� ��¥ (��/��): "); 
			scanf("%s", input_date);
			print_title();
			for (i=0; i<size; i++)
				if (strcmp(test[i].date, input_date) == 0)
					output_element(test[i]);
			printf("========================================\n");	
			break;
	default: printf("\n�޴��� �߸� �����Ͽ����ϴ�.\n\n");
	}
}

// ����ü �迭 test���� ����� ���� ū ���� �����͸� ã�� �Լ�
DATA find_max(DATA test[])
{
	int i;
	DATA max;
	
	max = test[0];					// max�� ù ���ҷ� �����ϱ�
	for (i=0; i<size; i++)
		if (max.tension < test[i].tension) 
			max = test[i];			// max�� �� ū ����� ���� ���ҷ� �����ϱ�

	return max;						// max�� ����ü�̹Ƿ� ��ȯ���� ����ü�� �����
}

// ����ü �迭 test�� ���� ��û�� ó���ϴ� �Լ�
void sort(DATA test[])
{
	int menu;
	
	printf("\n [1] ���(��������)     [2] ������ �Է¼�");
	printf("\n >> ���ϴ� �޴��� �����ϼ��� : "); scanf("%d", &menu);	
	
	switch (menu) 					// �޴� ���ÿ� ���� �Լ� ȣ���ϱ�
	{ 			
	case 1: sort_tension(test); output_list(test); break; // ��� ������� ����
	case 2: sort_no(test); break;	// ���� ������ �Է� ������ ����ϱ�
	default: printf("\n�޴��� �߸� �����Ͽ����ϴ�.\n\n");
	}
}

// ����ü �迭 test�� ����� ū ������� �����ϴ� �Լ�
void sort_tension(DATA test[])
{
	int pass, i;
	DATA temp;	// test[i]�� test[i+1]�� ��ȯ�ϱ� ���� ����� �ӽ� ���Ǽ�
	
	for (pass=1; pass<size; pass++)
		for (i=0; i<size-pass; i++)
			if (test[i].tension < test[i+1].tension)	// �������� ����
			{
				temp = test[i];
				test[i] = test[i+1];
				test[i+1] = temp;
			}
}

// ����ü �迭 test�� ���Ҹ� ó�� ���� ������ �Է�(����) ������ ����ϴ� �Լ�
void sort_no(DATA test[])
{
	int order, i;
		
	// ������ ������ ���� �ʰ� ����ü�� ����� ���� ������ �̿��Ͽ� ����ϱ�
	print_title();
	for (order=1; order<=size; order++)
		for (i=0; i<size; i++)
			if (test[i].no == order)
			{
				output_element(test[i]);
				break;		// order��° �����͸� ��������Ƿ� ���� �񱳴� �����ϱ� 
			}
	printf("========================================\n");	
}
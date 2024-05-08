/*	12. ���� �����
 ���� ���� ����� �Լ� read, write�� ����Ͽ� ��ȭ��ȣ�� �߰�, ����. 
*/

#include <stdio.h>				// scanf, printf �Լ��� ���� ��� ����
#include <string.h>				// strcmp �Լ��� ���� ��� ����
#include <conio.h>				// getch �Լ��� ���� ��� ����
#include <stdlib.h>				// system �Լ��� ���� ��� ����
#define MAX 50					// ����ü �迭�� ������ �� �ִ� �ִ� ���� ��

struct phone					// ����ü ����
{	
	 char name[9];				// �̸�
	 char no[14];				// ��ȭ��ȣ
};

// ���α׷����� ����ϴ� �Լ��� ���� ����
void add(struct phone book[]);				// �� ���� ���� ���
void output_list(struct phone book[]);		// ��ü ���� ���� ���
void remove(struct phone book[]);			// Ư�� ���� ���� ����
int find_index(struct phone book[], char *name);	// ����ü �迭���� Ư�� �̸��� �ش��ϴ� �迭���� ÷�� ���ϱ�
void load(struct phone book[]);
void save(struct phone book[]);
void reset(struct phone book[]);

int size;								// �迭�� ����� ���� ����(����ü) ��, ���� ������ ����
char db_name[] = "phonebook.db";

int main()
{
	struct phone book[MAX];				// ����ü �迭 ����
	int menu;

	load(book);
	do  
	{	
		// ȭ�鿡 �޴� ǥ��
		printf("       ��ȭ��ȣ ����       \n\n");
		printf(" 1. ����  2. ���  3. ���� 4. �ʱ�ȭ 9. ������\n\n");
		printf("       �޴� ���� [ ]\b\b"); scanf("%d", &menu);
		fflush(stdin);

		switch (menu) 							// �޴� ���ÿ� ���� �Լ� ȣ���ϱ�
		{ 			
			case 1: output_list(book); break;	// ��ü ���� ���� ���
			case 2: add(book); break;			// �� ���� ���� �߰�
			case 3: remove(book); break;		// Ư�� ���� ���� ����
			case 4: reset(book); break;
			case 9: return 0;					// ���α׷� ���� ������
			default: printf("\n�޴��� �߸� �����Ͽ����ϴ�.\n\n");
		}

		// ����ڰ� ȭ���� ����� Ȯ���� �� �ƹ�Ű�� ������ ����ϱ�
		printf("\n >> ����Ϸ��� �ƹ�Ű�� ��������."); getch();
		system("cls");						// ���� ȭ�� �����
	} while (menu != 9);					// 4. �����⸦ �������� �ʴ� �� �ݺ��ϱ�
	
	return 0;
}

// �� ���� ������ �Է¹޾� �߰��ϴ� �Լ�
void add(struct phone book[])
{
	if (size < MAX)							// ���� ������ �߰��� �� �ִ� ���
	{
		printf("  ����� �̸�? "); gets(book[size].name);
		printf("  ��ȭ��ȣ? "); gets(book[size].no); 
		printf("  %s ���� ��� �Ϸ�! \n ", book[size].name);

		size++;	// �迭�� ������ ���� ���� ���� 1����(��������)
		save(book);
	}
	else
		printf("���� �ִ� %d���� ������ ��ϵǾ� �־� �߰��� �Ұ����մϴ�. ", MAX);
}

// ����ü �迭 book�� ����� ���� ������ ����ϴ� �Լ�
void output_list(struct phone book[])
{
	int i, j;
	struct phone temp;

	printf("	<< ��ȭ��ȣ���(�̸���) >> \n");
	for (i=0; i<size-1; i++)
		for(j=i; j<size; j++)
			if(strcmp(book[i].name, book[j].name)>0) {
				temp = book[i];
				book[i] = book[j];
				book[j] = temp;
			}
	for (i=0; i<size; i++)
		printf(" %-8s   %-13s \n", book[i].name, book[i].no);	// �迭 ���� �� ����ü ����ϱ�
}

// ����ü �迭 book���� �̸��� name�� ������ ������ �����ϴ� �Լ�
void remove(struct phone book[])
{
	int i, index;
	char name[20];
	
	printf("\n ������ �̸�? ");  gets(name);

	index = find_index(book, name);		// ������ �̸��� ���� ���� ������ ����� �迭 ������ ÷�� ���ϱ�
	
	if (index == -1)
		printf("%s�� ��ϵ� �̸��� �ƴմϴ�. \n", name);
	else
	{
		for (i=index; i<size-1; i++)
		{
			book[i] = book[i+1];
		}
		size--;	
		save(book);
	}
}

void reset(struct phone book[]) 
{
	char y_n;
	printf("\n��� �����Ͻðڽ��ϱ�?(y/n) : ");
	scanf("%c", &y_n);
	if(y_n=='y') {
		size = 0;
		save(book);
	}
}

// ����ü �迭 book���� �̸��� name�� ����ü ������ �迭 ÷�ڸ� ���ϴ� �Լ�
int find_index(struct phone book[], char *name)
{
	int i;
		
	for (i=0; i<size; i++)
		if (strcmp(book[i].name, name) == 0)	// �������� ã�� ���
		{
			return i;				
		}

	return -1;									// �������� ã�� ���� ���
}

//���Ϸ� ���� ���ڵ带 read�Ͽ� ����ü �迭 book�� �ε�
void load(struct phone book[]) {
	FILE *db = fopen(db_name, "rb");
	int position;

	if(db==NULL)
		return;
	
	//���ڵ� ũ�⸦ ���
	fseek(db, 0, SEEK_END);
	position = ftell(db);
	size = position/sizeof(struct phone); 

	//Ŀ���� ������ ó������.
	rewind(db);

	//size��ŭ�� ��ũ�带 read
	fread(book, sizeof(struct phone)*size, 1, db);
	fclose(db);
}

//����ü �迭 book�� ���Ͽ� ����
void save(struct phone book[]) {
	FILE *db = fopen(db_name, "wb");

	//size
	fwrite(book, sizeof(struct phone)*size, 1, db);
	fclose(db);
}

/*

          ��ȭ��ȣ ����

 1. ����  2. ���  3. ���� 4. �ʱ�ȭ 9. ������

       �޴� ���� [2]
  ����� �̸�? ������
  ��ȭ��ȣ? 010-2201-3212
  ������ ���� ��� �Ϸ�!

 >> ����Ϸ��� �ƹ�Ű�� ��������.

           ��ȭ��ȣ ����

 1. ����  2. ���  3. ���� 4. �ʱ�ȭ 9. ������

       �޴� ���� [1]
        << ��ȭ��ȣ���(�̸���) >>
 ������     010-2201-3212

 >> ����Ϸ��� �ƹ�Ű�� ��������.



        ��ȭ��ȣ ����

 1. ����  2. ���  3. ���� 4. �ʱ�ȭ 9. ������

       �޴� ���� [3]

 ������ �̸�? ������

 >> ����Ϸ��� �ƹ�Ű�� ��������.


       ��ȭ��ȣ ����

 1. ����  2. ���  3. ���� 4. �ʱ�ȭ 9. ������

       �޴� ���� [1]
        << ��ȭ��ȣ���(�̸���) >>

 >> ����Ϸ��� �ƹ�Ű�� ��������.
*/
      
/*	11. ����ü
	ȸ���� ���̵�, ��й�ȣ, ����Ʈ ������ ����ü�� �����Ͽ� �α׿� �� ����Ʈ Ȯ���ϱ�
*/

#include <stdio.h>
#include <string.h>
#include <windows.h>

#define SIZE 5

void sort(void);
void gotoxy(int x, int y);

struct information
{
	char id[6];
	char pw[6];
	int point;
};

int main()
{
	struct information  temp, member[SIZE] = {{"hong", "h123", 10}, {"lee", "l123", 20}, 
	{"sung", "s123", 30}, {"kim", "k123", 40}, {"park", "p123", 50}};

	char input_id[6], input_pw[6];

	int i=0, j;

	system("cls");
	gotoxy(20, 5);	printf("���̵�   : "); 
	gotoxy(20, 7);	printf("��й�ȣ : "); 
	gotoxy(32, 5);	gets(input_id);
	gotoxy(32, 7);	gets(input_pw);
	
	for (i=0; i<SIZE; i++)
		if (strcmp(member[i].id, input_id) == 0)
		{
			if (strcmp(member[i].pw, input_pw) == 0)
			{	
				system("cls");
				gotoxy(20, 5);
				printf("%s�� ȯ���մϴ�.(%d��)\n", member[i].id, member[i].point);				
				break;
			}
			else 
			{
				gotoxy(30, 12);
				printf("��й�ȣ�� ���� �ʽ��ϴ�.\n");
				exit(0);
			}
		}

	if (i == SIZE)
	{
		printf("�������� �ʴ� id�Դϴ�.\n");
		exit(0);
	}
	
	for (i=0; i<SIZE -1; i++)
	{
		for (j=0; j<SIZE-(1+i); j++)
		{					
				if (strcmp(member[j].id, member[j+1].id) > 0) 
				{	
					temp = member[j];
					member[j]=member[j+1];
					member[j+1]=temp;

				}	
		}
	}
	
	printf("\n\n\n");
	for (i=0; i<SIZE; i++)
		printf("\t %-10s %-10s %3d�� \n", member[i].id, member[i].pw, member[i].point);

	return 0;
	
}

void gotoxy(int x, int y)
{
	COORD Cur;	Cur.X = x;	Cur.Y = y;
	SetConsoleCursorPosition(GetStdHandle(STD_OUTPUT_HANDLE),Cur);
}


/*	11. ����ü
	ȸ���� ���̵�, ��й�ȣ, ����Ʈ ������ ����� ����ü �迭���� ȸ���� �α׿��ϸ� ������ ����Ʈ 10���� �߰��ϱ�
*/
#include <stdio.h>
#include <string.h>			// strcmp
#include <windows.h>		// gotoxy ����, system

#define SIZE 5

void gotoxy(int x, int y);

struct information
{
	char id[6];
	char pw[6];
	int point;
};

int main()
{
	struct information  temp, member[SIZE] = {{"hong", "h123", 1000}, {"lee", "l123", 800}, 
											{"sung", "s123", 320}, {"kim", "k123", 900}, {"park", "p123", 1100}};
	char input_id[6], input_pw[6];
	int i=0;

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
				printf("%s�� ȯ���մϴ�. %d������ ", member[i].id, member[i].point);	
				member[i].point += 10;
				printf("%d���� �Ǿ����ϴ�.\n", member[i].point);			
				break;
			}
			else 
			{
				gotoxy(30, 12);
				printf("��й�ȣ�� ���� �ʽ��ϴ�.\n");
				return 0;
			}
		}

	if (i == SIZE)
	{
		printf("�������� �ʴ� id�Դϴ�.\n");
		return 0;
	}
	
	printf("\n\n\n");
	for (i=0; i<SIZE; i++)
		printf("\t %-10s %-10s %5d�� \n", member[i].id, member[i].pw, member[i].point);

	return 0;
	
}

void gotoxy(int x, int y)
{
	COORD Cur;	Cur.X = x;	Cur.Y = y;
	SetConsoleCursorPosition(GetStdHandle(STD_OUTPUT_HANDLE),Cur);
}

/*





                    ���̵�   :  sung

                    ��й�ȣ :  s123





                    sung�� ȯ���մϴ�. 320������ 330���� �Ǿ����ϴ�.



         hong       h123        1000��
         lee        l123         800��
         sung       s123         330��
         kim        k123         900��
         park       p123        1100��
����Ϸ��� �ƹ� Ű�� �����ʽÿ� . . .
*/

/*	12. ���� �����
	ȸ���� ���̵�, ��й�ȣ, ����Ʈ ������ ����� ���� ������ ȸ���� �α׿��ϸ� ������ ����Ʈ 10���� �߰��ϱ�
*/

#include <stdio.h>
#include <string.h>			// strcmp
#include <windows.h>		// gotoxy �Լ��� �Լ�

#define SIZE 5				// ȸ�� ��
#define LENGTH 9			// �Ƶ���, ��й�ȣ �ִ� ����

void gotoxy(int x, int y);	// Ŀ�� �̵� �Լ�

struct information
{
	char id[LENGTH];
	char pw[LENGTH];
	int point;
};

int main()
{
	struct information member[SIZE];
	char input_id[LENGTH], input_pw[LENGTH];
	int i;
	FILE * fp;

	//  ���� "member.txt"�� ���� ���̵�, ��й�ȣ, ����Ʈ�� �о �迭�� ����	
	fp = fopen("member.txt", "r");			
	for (i=0; i<SIZE; i++)  
	{
		fscanf(fp, "%s %s %d", member[i].id, member[i].pw, &member[i].point);
	}	
	fclose(fp);
	
	gotoxy(20, 5);	printf("���̵�   : "); 
	gotoxy(20, 7);	printf("��й�ȣ : "); 
	gotoxy(32, 5);	gets(input_id);
	gotoxy(32, 7);	gets(input_pw);
	
	for (i=0; i<SIZE; i++)
		if (strcmp(member[i].id, input_id) == 0)
		{
			if (strcmp(member[i].pw, input_pw) == 0)
			{	
				gotoxy(20, 10);
				printf("%s�� ȯ���մϴ�.%d������ ", member[i].id, member[i].point);	
				member[i].point += 10;
				printf("%d���� �Ǿ����ϴ�.\n", member[i].point);	
				break;
			}
			else 
			{
				gotoxy(20, 10);
				printf("��й�ȣ�� ���� �ʽ��ϴ�.\n");
				return 0;
			}
		}

	if (i == SIZE)
	{
		gotoxy(20, 10);
		printf("�������� �ʴ� id�Դϴ�.\n");
		return 0;
	}	
	
	// ����� ����Ʈ�� ���Ͽ� ����ϱ� ���� �ݱ�
	fp = fopen("member.txt", "w");	
	for (i=0; i<SIZE; i++)  
	{
		fprintf(fp, "%s %s %d\n", member[i].id, member[i].pw, member[i].point);
	}	
	fclose(fp);	

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


                    sung�� ȯ���մϴ�.300������ 310���� �Ǿ����ϴ�.
����Ϸ��� �ƹ� Ű�� �����ʽÿ� . . .
*/

/* ���� �α׿¿��� ������ ����� ������ ��Ÿ��





                    ���̵�   :  sung

                    ��й�ȣ :  s123


                    sung�� ȯ���մϴ�.310������ 320���� �Ǿ����ϴ�.
����Ϸ��� �ƹ� Ű�� �����ʽÿ� . . .
*/

/*





                    ���̵�   :  sung

                    ��й�ȣ :  1234


                    ��й�ȣ�� ���� �ʽ��ϴ�.
����Ϸ��� �ƹ� Ű�� �����ʽÿ� . . .
*/



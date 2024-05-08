/*	11. 구조체
	회원의 아이디, 비밀번호, 포인트 정보가 저장된 구조체 배열에서 회원이 로그온하면 무조건 포인트 10점을 추가하기
*/
#include <stdio.h>
#include <string.h>			// strcmp
#include <windows.h>		// gotoxy 내용, system

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
	gotoxy(20, 5);	printf("아이디   : "); 
	gotoxy(20, 7);	printf("비밀번호 : "); 
	gotoxy(32, 5);	gets(input_id);
	gotoxy(32, 7);	gets(input_pw);
	
	for (i=0; i<SIZE; i++)
		if (strcmp(member[i].id, input_id) == 0)
		{
			if (strcmp(member[i].pw, input_pw) == 0)
			{	
				system("cls");
				gotoxy(20, 5);
				printf("%s님 환영합니다. %d점에서 ", member[i].id, member[i].point);	
				member[i].point += 10;
				printf("%d점이 되었습니다.\n", member[i].point);			
				break;
			}
			else 
			{
				gotoxy(30, 12);
				printf("비밀번호가 맞지 않습니다.\n");
				return 0;
			}
		}

	if (i == SIZE)
	{
		printf("존재하지 않는 id입니다.\n");
		return 0;
	}
	
	printf("\n\n\n");
	for (i=0; i<SIZE; i++)
		printf("\t %-10s %-10s %5d점 \n", member[i].id, member[i].pw, member[i].point);

	return 0;
	
}

void gotoxy(int x, int y)
{
	COORD Cur;	Cur.X = x;	Cur.Y = y;
	SetConsoleCursorPosition(GetStdHandle(STD_OUTPUT_HANDLE),Cur);
}

/*





                    아이디   :  sung

                    비밀번호 :  s123





                    sung님 환영합니다. 320점에서 330점이 되었습니다.



         hong       h123        1000점
         lee        l123         800점
         sung       s123         330점
         kim        k123         900점
         park       p123        1100점
계속하려면 아무 키나 누르십시오 . . .
*/

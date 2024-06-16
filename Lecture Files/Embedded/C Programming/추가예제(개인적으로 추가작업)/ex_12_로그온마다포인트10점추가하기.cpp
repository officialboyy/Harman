/*	12. 파일 입출력
	회원의 아이디, 비밀번호, 포인트 정보가 저장된 파일 정보로 회원이 로그온하면 무조건 포인트 10점을 추가하기
*/

#include <stdio.h>
#include <string.h>			// strcmp
#include <windows.h>		// gotoxy 함수의 함수

#define SIZE 5				// 회원 수
#define LENGTH 9			// 아디이, 비밀번호 최대 길이

void gotoxy(int x, int y);	// 커서 이동 함수

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

	//  파일 "member.txt"로 부터 아이디, 비밀번호, 포인트를 읽어서 배열에 저장	
	fp = fopen("member.txt", "r");			
	for (i=0; i<SIZE; i++)  
	{
		fscanf(fp, "%s %s %d", member[i].id, member[i].pw, &member[i].point);
	}	
	fclose(fp);
	
	gotoxy(20, 5);	printf("아이디   : "); 
	gotoxy(20, 7);	printf("비밀번호 : "); 
	gotoxy(32, 5);	gets(input_id);
	gotoxy(32, 7);	gets(input_pw);
	
	for (i=0; i<SIZE; i++)
		if (strcmp(member[i].id, input_id) == 0)
		{
			if (strcmp(member[i].pw, input_pw) == 0)
			{	
				gotoxy(20, 10);
				printf("%s님 환영합니다.%d점에서 ", member[i].id, member[i].point);	
				member[i].point += 10;
				printf("%d점이 되었습니다.\n", member[i].point);	
				break;
			}
			else 
			{
				gotoxy(20, 10);
				printf("비밀번호가 맞지 않습니다.\n");
				return 0;
			}
		}

	if (i == SIZE)
	{
		gotoxy(20, 10);
		printf("존재하지 않는 id입니다.\n");
		return 0;
	}	
	
	// 변경된 포인트를 파일에 기록하기 파일 닫기
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





                    아이디   :  sung

                    비밀번호 :  s123


                    sung님 환영합니다.300점에서 310점이 되었습니다.
계속하려면 아무 키나 누르십시오 . . .
*/

/* 다음 로그온에서 이전에 변경된 점수가 나타남





                    아이디   :  sung

                    비밀번호 :  s123


                    sung님 환영합니다.310점에서 320점이 되었습니다.
계속하려면 아무 키나 누르십시오 . . .
*/

/*





                    아이디   :  sung

                    비밀번호 :  1234


                    비밀번호가 맞지 않습니다.
계속하려면 아무 키나 누르십시오 . . .
*/



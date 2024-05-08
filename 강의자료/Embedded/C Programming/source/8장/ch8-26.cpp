#include <stdio.h>
#include <windows.h>		// SetConsoleCursorPosition 함수를 위한 헤더 파일

void gotoxy(int x, int y);	// 함수의 원형 선언

int main()
{
	int input;
	
	gotoxy(0, 3);			// 커서 이동하기
	printf("\t>> 다음 중에서 해당하는 번호를 고르세요. (   )\n\n");
	printf("\t1. 초등학생 \t\t	2. 중학생 \n");
	printf("\t3. 고등학생 \t\t	4. 대학생 \n");
	
 	gotoxy(51, 3);			// 커서를 위쪽으로 번호를 입력하는 곳으로 이동하기 
 	scanf("%d", &input);

	gotoxy(0, 9);			// 입력 결과를 출력하기 위해 커서를 아래로 이동하기 
	printf("\t%d번을 선택하셨습니다.\n", input);

	return 0;
}

// 커서를 (x, y) 좌표로 이동하는 함수 
void gotoxy(int x, int y)
{	
 	COORD Cur;
 	Cur.X = x;
 	Cur.Y = y;
 	SetConsoleCursorPosition(GetStdHandle(STD_OUTPUT_HANDLE), Cur);
}

#include <stdio.h>
#include <windows.h>	// SetConsoleCursorPosition 함수를 위한 헤더 파일

void go(int x, int y);	// gotoxy 함수의 원형 선언

int main()
{
	go(5, 5);			// 커서를 (5, 5) 좌표로 이동하기
	printf("*(5, 5)");

	go(10, 3);			// 커서를 (10, 3) 좌표로 이동하기
	printf("*(10, 3)");
		
	return 0;
}

// 커서를 (x, y) 좌표로 이동하는 함수 
void go(int x, int y)
{	
	COORD Cur;
	Cur.X = x;
	Cur.Y = y;
	SetConsoleCursorPosition(GetStdHandle(STD_OUTPUT_HANDLE), Cur);
}
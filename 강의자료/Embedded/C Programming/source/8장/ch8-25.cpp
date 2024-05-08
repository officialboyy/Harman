#include <stdio.h>
#include <windows.h>	// SetConsoleCursorPosition �Լ��� ���� ��� ����

void go(int x, int y);	// gotoxy �Լ��� ���� ����

int main()
{
	go(5, 5);			// Ŀ���� (5, 5) ��ǥ�� �̵��ϱ�
	printf("*(5, 5)");

	go(10, 3);			// Ŀ���� (10, 3) ��ǥ�� �̵��ϱ�
	printf("*(10, 3)");
		
	return 0;
}

// Ŀ���� (x, y) ��ǥ�� �̵��ϴ� �Լ� 
void go(int x, int y)
{	
	COORD Cur;
	Cur.X = x;
	Cur.Y = y;
	SetConsoleCursorPosition(GetStdHandle(STD_OUTPUT_HANDLE), Cur);
}
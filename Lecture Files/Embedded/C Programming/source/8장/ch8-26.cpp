#include <stdio.h>
#include <windows.h>		// SetConsoleCursorPosition �Լ��� ���� ��� ����

void gotoxy(int x, int y);	// �Լ��� ���� ����

int main()
{
	int input;
	
	gotoxy(0, 3);			// Ŀ�� �̵��ϱ�
	printf("\t>> ���� �߿��� �ش��ϴ� ��ȣ�� ������. (   )\n\n");
	printf("\t1. �ʵ��л� \t\t	2. ���л� \n");
	printf("\t3. ����л� \t\t	4. ���л� \n");
	
 	gotoxy(51, 3);			// Ŀ���� �������� ��ȣ�� �Է��ϴ� ������ �̵��ϱ� 
 	scanf("%d", &input);

	gotoxy(0, 9);			// �Է� ����� ����ϱ� ���� Ŀ���� �Ʒ��� �̵��ϱ� 
	printf("\t%d���� �����ϼ̽��ϴ�.\n", input);

	return 0;
}

// Ŀ���� (x, y) ��ǥ�� �̵��ϴ� �Լ� 
void gotoxy(int x, int y)
{	
 	COORD Cur;
 	Cur.X = x;
 	Cur.Y = y;
 	SetConsoleCursorPosition(GetStdHandle(STD_OUTPUT_HANDLE), Cur);
}

#include <stdio.h>
#include <windows.h>	// system, Sleep �Լ��� ���� ��� ����

int main()
{
	printf("3�ʰ� ������ ȭ���� �������ϴ�.");

	Sleep(3000);		// 3000�и��� ���� �� 3�� ���� ������ ������ �� ��� �����ϱ�

	system("cls");		// ���� ȭ�� �����
	printf("3�ʰ� �������ϴ�.\n");

	return 0;
}

#include <stdio.h>
#include <conio.h>		// getch �Լ��� ���� �������
#define ESC 0x1b		// [Esc] Ű�� ASCII �ڵ尪�� ��ũ�� ����� ����, 6.1.1 ����

int main()
{
	char ch, upper;

	do
	{
		printf("���ĺ� �ҹ��ڸ� �Է��Ͻÿ�. : ");
		ch = getche();				// Ű����� ���� �� ���� �Է�

		if (ch>='a' && ch<='z')		// ch�� �ҹ��ڶ��
		{
			upper = 'A' + ch - 'a'; // �ҹ��ڸ� �빮�ڷ� ����
			printf("\n��ȯ�� �빮�ڴ� %c�Դϴ�.\n", upper);
		}
		else
			printf("\n");
	} while (ch != ESC);			// [Esc] Ű�� �Էµ��� �ʴ� �� �ݺ��ϱ�

	return 0;
}
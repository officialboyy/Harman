/*	5. ���
	switch�� �̿� ���ĺ� �빮������ Ȯ���ϱ�
*/

#include <stdio.h>	// printf

int main()
{
	char ch; 
	int capital;
	
	printf("���ĺ� �� ���� �Է��ϼ���.");
	scanf("%c", &ch);
	
	capital = ('A' <= ch) && (ch <='Z');

	switch (capital) {
		case 1: printf("�Է��� %c�� �빮���Դϴ�(ASCII�ڵ尪 %d).\n", ch, ch);
				break;
		case 0: printf("�Է��� %c�� �빮�ڰ� �ƴմϴ�(ASCII�ڵ尪 %d).\n", ch, ch);
	}

	return 0;
}
/* 
���ĺ� �� ���� �Է��ϼ���.A
�Է��� A�� �빮���Դϴ�(ASCII�ڵ尪 65).
����Ϸ��� �ƹ� Ű�� �����ʽÿ� . . .

���ĺ� �� ���� �Է��ϼ���.B
�Է��� B�� �빮���Դϴ�(ASCII�ڵ尪 66).
����Ϸ��� �ƹ� Ű�� �����ʽÿ� . . .

���ĺ� �� ���� �Է��ϼ���.c
�Է��� c�� �빮�ڰ� �ƴմϴ�(ASCII�ڵ尪 99).
����Ϸ��� �ƹ� Ű�� �����ʽÿ� . . .
*/
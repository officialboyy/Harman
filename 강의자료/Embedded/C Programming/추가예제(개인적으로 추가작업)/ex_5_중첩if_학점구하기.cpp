/*	5. ���
	��ø if���� �̿� �Է��� ��޿� ���� ������ ����ϱ�
*/

#include <stdio.h>		// printf

int main()
{
	char ch1, ch2;
	double grade;
	
	printf("�����? (A+, A0, B+, ..., F) "); scanf("%c%c", &ch1, &ch2);	// F�Է� �� ����Ű�� �Է��� ��� ch2�� ����Ű�� �Էµȴ�.

	if ((ch1 == 'A') || (ch1 == 'a'))
		if (ch2 == '+')
			grade = 4.5;
		else 
			grade = 4.0;
	else if ((ch1 == 'B') || (ch1 == 'b'))
		if (ch2 == '+')
			grade = 3.5;
		else 
			grade = 3.0;
	else if ((ch1 == 'C') || (ch1 == 'c'))
		if (ch2 == '+')
			grade = 3.5;
		else 
			grade = 3.0;
	else if ((ch1 == 'D')  || (ch1 == 'd'))
		if (ch2 == '+')
			grade = 2.5;
		else 
			grade = 2.0;
	else if ((ch1 == 'F') || (ch1 == 'f'))
		grade = 0;

	printf("%c", ch1);
	if (ch2 == '+'|| ch2 == '0')		// A ������ ��ٷ� ����Ű�� �Է��߰ų� F�� ����Ű �Է��� ��� �� ° ���ڸ� ������� �ʱ�
		printf("%c", ch2);
	printf(" : %.1lf \n", grade);

	return 0;
}

/*
�����? (A+, A0, B+, ..., F) A+
A+ : 4.5
����Ϸ��� �ƹ� Ű�� �����ʽÿ� . . .
*/

/*
�����? (A+, A0, B+, ..., F) B
B : 3.0
����Ϸ��� �ƹ� Ű�� �����ʽÿ� . . .
*/

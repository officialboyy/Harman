/*	5. ���
	switch ���� �̿� �Է��� ��޿� ���� ������ ����ϱ�
*/

#include <stdio.h>		// printf

int main()
{
	char ch1, ch2;
	double grade;
	
	printf("�����? (A+, A0, B+, ..., F) "); scanf("%c%c", &ch1, &ch2);	// F�Է� �� ����Ű�� �Է��� ��� ch2�� ����Ű�� �Էµȴ�.

	switch (ch1)
	{
	case 'A': 
	case 'a': if (ch2 == '+')
				  grade = 4.5;
			  else 
				  grade = 4.0;
			  break;				
	case 'B':
	case 'b':if (ch2 == '+')
				  grade = 4.5;
			  else 
				  grade = 4.0;
			  break;	
	case 'D':
	case 'd': if (ch2 == '+')
				  grade = 4.5;
			  else 
				  grade = 4.0;
			  break;	
	case 'F':
	case 'f': grade = 0;
	}

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

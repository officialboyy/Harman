/*	2. 
	���� ������, ������ ���ϱ�
*/

#include <stdio.h>			// printf

int main()
{
	int loan = 3700000;		// �����
	double rate = 0.029;	// 1�� ������ 2.9%
	double year_interest, month_interest;	// ������, ������

	year_interest = loan * rate;
	month_interest = loan * rate/12;

	printf("����� %d�� \n", loan);
	printf("�� ���� %lf�� \n", month_interest);
	printf("1�� ���� %lf�� \n", year_interest);

	return 0;
}

/*
����� 3700000��
�� ���� 8941.666667��
1�� ���� 107300.000000��
����Ϸ��� �ƹ� Ű�� �����ʽÿ� . . .
*/
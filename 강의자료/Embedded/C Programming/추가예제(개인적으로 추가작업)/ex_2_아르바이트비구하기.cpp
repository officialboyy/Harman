/*	2. 
	�Ƹ�����Ʈ �޿� ���ϱ�
*/

#include <stdio.h>			// printf

int main()
{
	int hours, days, hourly_rate, pay;		// �Ϸ� �Ƹ�����Ʈ �ð�, �Ƹ�����Ʈ ��, �ñ�, �ѱ޿�
		
	hours = 8;
	days = 25;
	hourly_rate = 4700;
	pay = hours * days * hourly_rate;

	printf("�Ƹ�����Ʈ �� �ð� %d�ð� \n", hours * days);
	printf("�� �Ƹ�����Ʈ �޿� %d�� \n", pay);
	
	return 0;
}
/*
�Ƹ�����Ʈ �� �ð� 200�ð�
�� �Ƹ�����Ʈ �޿� 940000��
����Ϸ��� �ƹ� Ű�� �����ʽÿ� . . .
*/
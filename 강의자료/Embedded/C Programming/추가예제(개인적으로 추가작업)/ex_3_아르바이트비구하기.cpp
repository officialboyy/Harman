/*	3. �Է°� ��� 
	�Ƹ�����Ʈ �ð��� �ϼ� �Է¹޾� �� �޿� ���ϱ�
*/

#include <stdio.h>			// printf

int main()
{
	int hours, days, hourly_rate, pay;		// �Ϸ� �Ƹ�����Ʈ �ð�, �Ƹ�����Ʈ ��, �ñ�, �ѱ޿�
		
	// �ڷ� �Է�
	printf("�Ϸ� �Ƹ�����Ʈ �ð���? ");	scanf("%d", &hours);
	printf("�Ƹ�����Ʈ ����? ");	scanf("%d", &days);
	printf("�ñ���? ");	scanf("%d", &hourly_rate);

	// �� �޿� ���ϱ�
	pay = hours * days * hourly_rate;

	// ��� ���
	printf("�Ƹ�����Ʈ �� �ð� %d�ð� \n", hours * days);
	printf("�� �Ƹ�����Ʈ �޿� %d�� \n", pay);
	
	return 0;
}
/*
�Ƹ�����Ʈ �� �ð� 200�ð�
�� �Ƹ�����Ʈ �޿� 940000��
����Ϸ��� �ƹ� Ű�� �����ʽÿ� . . .
*/
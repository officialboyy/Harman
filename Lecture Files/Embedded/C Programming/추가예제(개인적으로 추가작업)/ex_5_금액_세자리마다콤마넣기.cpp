/*	5. ��� 
	�� �޿��� ���� �� �޿��� ���ڸ����� ,�� ǥ���ϱ�
*/

#include <stdio.h>			// printf
#include <math.h>			// pow

int main()
{
	int hours, days, hourly_rate, pay;		// �Ϸ� �Ƹ�����Ʈ �ð�, �Ƹ�����Ʈ ��, �ñ�, �ѱ޿�
	int cnt, printed, i, temp;				// �ѱ޿����� �ڸ���
	
	// �ڷ� �Է�
	printf("�Ϸ� �Ƹ�����Ʈ �ð���? ");	scanf("%d", &hours);
	printf("�Ƹ�����Ʈ ����? ");	scanf("%d", &days);
	printf("�ñ���? ");	scanf("%d", &hourly_rate);

	// �� �޿� ���ϱ�
	pay = hours * days * hourly_rate;

	// ��� ���
	printf("�Ƹ�����Ʈ �� �ð� %d�ð� \n", hours * days);
	printf("�� �Ƹ�����Ʈ �޿� ");

	// �޿��� õ �������� ,�� �־� ����ϱ�
		
	temp = pay;				// �ѱ޿��� �ӽ� ����ҿ� ����
	cnt = 1;				// �޿��� �� �ڸ����� cnt�� ���ϱ�
	do
	{
		if ((temp = temp / 10) != 0)
			cnt++;		
	} while (temp > 9);
	// printf("%d�� %d �ڸ� �� \n", pay, cnt);

	printed = 3 - cnt%3;		// 1,000�� �̶�� ó��,�� ����ϱ� �� �� �ڸ��� �̹� ��µǾ��ٰ� �����ؾ��� 
	temp = pay;
	for (i=1; i<=cnt; i++)
	{
		printf("%d", temp / ((int) pow(10.0, cnt-i)));
		printed++;			// ȭ�鿡 ����� ���� ���� 1����(���� ��� ���ڼ��ʹ� �ٸ�)
		temp %= ((int) pow(10.0, cnt-i));		//  ��� 1200�� 1�� ����ߴٸ� ������ temp�� 200���� �����ؼ� 2�� ����ؾ���
		if ( (printed % 3 == 0) && i != cnt)	// ���ڸ��� ��������� ������ ���ڰ� �ƴ϶�� ,����ϱ�
			printf(",");		
	}

	printf("�� \n");
		
	return 0;
}
/*
�Ϸ� �Ƹ�����Ʈ �ð���? 8
�Ƹ�����Ʈ ����? 40
�ñ���? 4600
�Ƹ�����Ʈ �� �ð� 320�ð�
�� �Ƹ�����Ʈ �޿� 1,472,000��
����Ϸ��� �ƹ� Ű�� �����ʽÿ� . . .
*/
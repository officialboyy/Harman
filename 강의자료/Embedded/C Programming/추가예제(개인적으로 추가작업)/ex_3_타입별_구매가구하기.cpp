/*	3. �����
	��ǰ Ÿ��(1 �Ǵ� 2)�� ������ �Է¹޾� ���Ű� ���ϱ�
	Ÿ��1 �ܰ� : 1500,  Ÿ��2 ���� : 1750��
*/

#include <stdio.h>

int main(void)
{
	double total_price = 0.0;		// ���Ű�
	int type = 0;					// ��ǰ Ÿ��
	int quantity = 0;				// �ֹ� ����
	double type1_price = 1500;		// Ÿ��1 �ܰ�
	double type2_price = 1750;		// Ÿ��2 �ܰ�

	// ��ǰ Ÿ�� �Է�
	printf("��ǰ Ÿ�� (1 �Ǵ� 2): ");
	scanf("%d", &type);

	// ��ǰ ���� �Է�
	printf("�ֹ� ����: ");
	scanf("%d", &quantity);

	// ���Ű��� ���
	total_price = quantity*(type1_price + (type - 1)*(type2_price - type1_price));

	// ���
	printf("Ÿ�� %d, %d�� ���Ű� = %.1lf\n", type, quantity, total_price);

	return 0;
}

/*
��ǰ Ÿ�� (1 �Ǵ� 2): 1
�ֹ� ����: 15
Ÿ�� 1, 15�� ���Ű� = 22500.0
*/

/*
	2. �ڷ���
	Ư�� ������ ���� ����, �α���, ���δ� �� ������ ������ ������ ���� �� ������ �Ѽ��� ���ϱ�	
*/

#include <stdio.h>

int main()
{
	char capital;		// ����
	int citizens;		// �α�	
	double tax, total_tax;	// ���δ� �����ݾ�, �� ������
	int wrong_tax;		// �� �������� int������ �߸� ������ ��� Ȯ�ο� ����

	capital = 'y';
	citizens = 2000000;
	tax = 80000;
	
	total_tax = tax * 12 * citizens;
	wrong_tax = tax * 12 * citizens;

	printf("���� �� �Ѽ����� %lf \n", total_tax);
	printf("���������� �߸� ó���Ͽ� \"%%d\"�� ����� �� �Ѽ��� %d \n ", wrong_tax);

	return 0;
}
/*
���� �� �Ѽ����� 1920000000000.000000
���������� �߸� ó���Ͽ� "%d"�� ����� �� �Ѽ��� -2147483648
 ����Ϸ��� �ƹ� Ű�� �����ʽÿ� . . .
*/


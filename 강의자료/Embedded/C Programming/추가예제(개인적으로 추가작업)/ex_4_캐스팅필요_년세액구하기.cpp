/*
	4. ������
	Ư�� ������ ���� ����, �α���, ���δ� �� ������ ������ ������ ���� �� ������ �Ѽ��� ���ϱ�
	ĳ���� �ʿ伺
*/

#include <stdio.h>

int main()
{
	char capital;		// ����
	int citizens;		// �α�
	int tax;			// ���δ� �����ݾ�
	double wrong_tax;	// �� �������� �߸� ���� ��� Ȯ�ο� ����
	double total_tax;	// �� ������

	capital = 'y';
	citizens = 2000000;
	tax = 80000;
	
	wrong_tax = tax * 12 * citizens;	// tax�� double ������ ĳ�������� ������ �� ����� int���� �ǹǷ� �̹� �ջ�� �����Ͱ� total_tax�� �Ǽ������� ����ǹǷ� �߸��� ���� ����ȴ�.
	total_tax = (double)tax * 12 * citizens;

	printf("���� �� �Ѽ����� %.0lf \n", total_tax);
	printf("������ ���� ����� ���� �߸� ó���� �Ѽ��� %.0lf \n ", wrong_tax);

	return 0;
}
/*
���� �� �Ѽ����� 1920000000000
������ ���� ����� ���� �߸� ó���� �Ѽ��� 149618688
 ����Ϸ��� �ƹ� Ű�� �����ʽÿ� . . .
*/


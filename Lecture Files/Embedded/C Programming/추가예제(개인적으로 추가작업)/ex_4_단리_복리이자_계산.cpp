/*	4. ������
	���� ������ �����ϴ� ���α׷� �ۼ��ϱ�
	- ���ݰ� ��ġ�Ⱓ�� �� ������ �Է¹޾� ����� �ܸ����ڿ� ���������� �ѱݾ��� ���� ���
	- �� ���� �ܸ����� = ���� * ����(4.5%) * ��(��ġ�Ⱓ)
	- �� ���� �������� = ���� * (1+����4.5%)^��(��ġ�Ⱓ)-����
	- a�� b������ �Լ� pow(a, b) �̿�, #include <math.h>�� �ʿ�
*/

#include <stdio.h>
#include <math.h>

int main()
{
	double money, simple, compound, danhap, compound_sum, simple_sum;
   
	printf("������ �Է��ϼ��� : ");
	scanf("%lf", &money);
 
	printf("��ġ�Ⱓ�� �Է��ϼ��� : ");
	scanf("%lf", &simple_sum);
   
	simple = money * 0.045 * simple_sum;
	compound = money * pow(1 + 0.045, simple_sum) - money;
	danhap = simple + money;
	compound_sum = compound + money;
 
	printf("\n�ܸ�����= %.0lf��, �ѱݾ�=%.0lf��\n", simple, danhap);
	printf("��������= %.0lf��, �ѱݾ�=%.0lf��\n", compound, compound_sum);

	return 0;
}

/*������

������ �Է��ϼ��� : 1000000
�쿹ġ�Ⱓ�� �Է��ϼ��� : 5

�ܸ�����= 225000��, �ѱݾ�=1225000��
��������= 246182��, �ѱݾ�=1246182��
����Ϸ��� �ƹ� Ű�� �����ʽÿ� . . .

*/


#include <stdio.h>

int compute_total_salary();				// �� �޿� ���
int compute_tax(int amount);			// ���� ���� ���
// ���� ������ ���
void display_tax_returns(int tot_salary, int tax_target, int tax); 

int salary;	// �� �޿��� ���� ������ ���� 

int main()
{
	int exemption = 10000000;						// ���� ������ 
	int total_salary, tax_target, tax;				// �� �޿�, ���� �ΰ� ����, ���� ����
	
	printf("�� �޿���? "); scanf("%d", &salary);	// �� �޿� �Է�

	total_salary = compute_total_salary();			// �� �޿� ���
	tax_target = total_salary - exemption;			// ���� �ΰ� ���� ���
	tax = compute_tax(tax_target);					// ���� �ΰ� �������κ��� ���� ���� ���
	
	// �տ��� ���� ������ �̿��� ���� ������ ����ϱ�
	display_tax_returns(total_salary, tax_target, tax);	

	return 0;
}

// �� �޿��� �� ���ʽ����� �̿��� �� �޿��� ����ϴ� �Լ�
int compute_total_salary()
{
	int bonus_rate = 300;			// �� ���ʽ��� ������ 300%���� �ǹ�
		
	return (salary * 12) + (int)(salary * bonus_rate * 0.01);
}

// ���� ���� �ΰ� ���� amount�κ��� ���� ������ ����ϴ� �Լ�
int compute_tax(int amount)
{
	int tax_rate;					// ���� ������
	
	if (salary >= 5000000)
		tax_rate = 5;				// �������� 5%���� �ǹ�
	else if (salary >= 2500000)
		tax_rate = 3;
	else 
		tax_rate = 2;

	return (int)(amount * tax_rate * 0.01);
}

// ���޵� ���� ���� ������ �̿��� ���� ������ ����ϱ� 
void display_tax_returns(int total_salary, int tax_target, int tax)
{
	printf("\n    >>>  ���� ������  <<< \n");
	printf("-------------------------------\n"); 
	printf("�� �޿�          : %8d�� \n", total_salary);
	printf("���� �ΰ� ���� : %8d�� \n", tax_target) ;
	printf("���� ���� �ΰ��� : %8d�� \n", tax);
}
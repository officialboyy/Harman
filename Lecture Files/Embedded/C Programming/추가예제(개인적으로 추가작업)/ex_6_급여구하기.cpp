/*	6. ��ũ��
	������ �߱ٽð��� �Է¹޾� ���� �޿� ���ϱ�
		�⺻ �޿� 1.���� 2. ���� 3. �� --> ��鸸, ��鸸, ���鸸��
		��å ������ 1.���� 2. ���� 3. �� --> 5%, 7%, 10%
		�߱� ������ �ð��� �̸���
*/

#include <stdio.h>			// printf, scanf

#define SECTION_HEAD	1	// ����
#define DEPARTMENT_HEAD	2	// ����
#define DIRECTOR		3	// ��

int main()
{
	int i;
	int position, position_pay;		// ����, ���� ���� 
	int overtime, overtime_pay;		// �߱ٽð�, �߱ټ���
	int basic_pay, pay;				// �⺻��, ���� �޿�
	double rate;					// ���� ���� ��


	// ���� �Է�
	printf(">> ����? (1.���� 2. ���� 3. ��) "); scanf("%d", &position);
	printf(">> �߱ٽð�? "); scanf("%d", &overtime);
	
	// �⺻ �޿� ���ϱ�, ������ ���� 
	switch (position)
	{
		case SECTION_HEAD: basic_pay = 3000000;	break;
		case DEPARTMENT_HEAD: basic_pay = 4000000; break;
		case DIRECTOR: basic_pay = 5000000; break;
	}

	// ������ ������ ���ϱ�
	if (position ==  SECTION_HEAD)
		rate = 0.05;
	else if (position == DEPARTMENT_HEAD)
		rate = 0.07;
	else
		rate = 0.1;
	
	position_pay = (int) (basic_pay * rate);		// ���� ����
	overtime_pay = (int) (overtime * 20000);		// �߱� ����
	pay = basic_pay + position_pay + overtime_pay; 	// ���� �޿� ���ϱ�
	
	// ���� �޿� ���� ���
	printf("\n\n>> �޿� ���� << \n\n");
	printf("---------------------------------------------------------\n");
	printf(" ��å  �߱ٽð�  �⺻��     ��å����   �߱ټ���    �޿�  \n");
	printf("---------------------------------------------------------\n");

	if (position == SECTION_HEAD)
		printf("%-8s", " ����");
	else if (position == DEPARTMENT_HEAD)
		printf("%-8s", " ����");
	else
		printf("%-8s", " ��");

	printf(" %2d  %10d  %10d %10d %10d \n", 
				overtime, basic_pay, position_pay, overtime_pay, pay); 

	printf("---------------------------------------------------------\n");

	
	return 0;
}

/*
>> ����? (1.���� 2. ���� 3. ��) 2
>> �߱ٽð�? 17


>> �޿� ���� <<

---------------------------------------------------------
 ��å  �߱ٽð�  �⺻��     ��å����   �߱ټ���    �޿�
---------------------------------------------------------
 ����    17     4000000      280000     340000    4620000
---------------------------------------------------------
����Ϸ��� �ƹ� Ű�� �����ʽÿ� . . .
*/
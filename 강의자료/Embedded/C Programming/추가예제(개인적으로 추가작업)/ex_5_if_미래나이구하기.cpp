/*	5. ���
	���̱��ϱ�
	���� 2015�� 3���̰� 20���̸� �¾ ���� 7���϶� 2025�� 3���� ���̿� ������ ���Ͻÿ�.
*/

#include <stdio.h>
	
int main() 
{
	// �Է� ���� 
	int year_now, month_now, age_now, month_born, another_year, another_month; 
	
	// ��� ����
	int total_years, total_months;

	// ó���� ���� ���� 
	int age_now_in_months, extra_months_from_now;
	
	printf("���� �� ���� �Է��ϼ���(ex. 2014 1) : ");
	scanf("%d %d", &year_now, &month_now);

	printf("���� ���̸� �Է��ϼ��� : ");
	scanf("%d", &age_now);

	printf("������� �Է��ϼ���(1~12) : ");
	scanf("%d", &month_born);

	printf("���̸� �˰� ���� �� ���� �Է��ϼ���(ex. 2019 3) : ");
	scanf("%d %d", &another_year, &another_month);
	
	age_now_in_months = (age_now * 12) + (month_now - month_born);
	if ((month_now - month_born) < 0)
		age_now_in_months = age_now_in_months + 12;
		
	extra_months_from_now = ((another_year * 12) + another_month) 
                                - ((year_now * 12) + month_now);
								
	total_months = age_now_in_months + extra_months_from_now;
	                     
	total_years = total_months / 12;

	if (total_months >= 0) 
	{
		printf("%d�� %d������ %d�� %d������ �˴ϴ�. \n", 
			another_year, another_month, total_years, total_months % 12);
	} 
	else 
	{ 
		printf("%d�� %d������ ����� �Դϴ�.\n", another_year, another_month);
	}
							
	return 0;
}

/*
���� �� ���� �Է��ϼ���(ex. 2014 1) : 2015 3
���� ���̸� �Է��ϼ��� : 20
������� �Է��ϼ���(1~12) : 7
���̸� �˰� ���� �� ���� �Է��ϼ���(ex. 2019 3) : 2025 3
2025�� 3������ 30�� 8������ �˴ϴ�.

���� �� ���� �Է��ϼ���(ex. 2014 1) : 2013 2
���� ���̸� �Է��ϼ��� : 29
������� �Է��ϼ���(1~12) : 4
���̸� �˰� ���� �� ���� �Է��ϼ���(ex. 2019 3) : 1975 2
1975�� 2������ ����� �Դϴ�.
*/

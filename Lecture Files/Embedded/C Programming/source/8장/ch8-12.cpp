#include <stdio.h>
#define TRUE 1  
#define FALSE 0

// �Լ��� ���� ����
int days(int yy);
int leap_year(int y);

int main()
{	
	int year;

	printf("������ ���ϰ� ���� ������? "); scanf("%d", &year);	
	
	// days �Լ��� ȣ���� year���� ������ ���ϱ�
	printf("%d���� %d�ϱ��� �ֽ��ϴ�. \n", year, days(year));	

	return 0;
}

int days(int yy)				// yy���� ����(365 �Ǵ� 366)�� ��ȯ�ϴ� �Լ�
{
	if (leap_year(yy) == TRUE)	// if (leap_year(yy))�� ����
		return 366;
	else 
		return 365;
}

int leap_year(int y)			// y�⵵�� ���� ���θ� ��ȯ�ϴ� �Լ�
{
	if (y%400 == 0 || ((y%4==0) && (y%100 != 0)))
		return TRUE;			// �����̹Ƿ� return 1;
	else 
		return FALSE;			// ������ �ƴϹǷ� return 0;
}
/*	2. �ڷ���
	�� ��¥ 2013�� 12�� 25�Ϻ��� 2013�� 7�� 7�ϱ��� ��ĥ�� ���������� ���ϱ�
*/

#include <stdio.h>			// printf

int main()
{
	int days;				// ���� �� �� ���� ����
	int yy1=1900, mm1=12, dd1=25;		// ���� ��¥�� ��, ��, �� ���� ����
	int yy2=, mm2, dd2;		// ������ ��¥�� ��, ��, �� ���� ����

	printf("�޷� ��� ���α׷���\n");
	printf("������� �޷��� ������?");	scanf("%d", &year);
	printf("������� �޷��� ����?");	scanf("%d", &month);

	sum=0;
	if (year >= 1995)
	{
		for(i=1995; i<year ; i++){                
			sum+=daysInYear(i);
		}
		for(i=1; i<month ;i++){
			sum+=endOfMonth(year, i);
		}                
		blank=sum%7;	// printf("%d, %d \n", sum, blank);		
	}
	else // ������ ���� �޷��� ��� 
	{
		for(i=year+1; i<1995 ; i++){                
			sum+=daysInYear(i);        
		}

		for(i=month; i<=12 ; i++){
			sum+=endOfMonth(year, i);
		}
		blank=(7-sum%7)%7;	// printf("%d, %d \n", sum, blank);	
	}

	// �޷� ����ϱ�
	printf("\n%d�� %d��\n",year,month);
	printf("\n====================================================\n");
	printf("��\t��\tȭ\t��\t��\t��\t��\n");

	for(i=1; i<=blank; i++)                        
		printf("\t");               

	for(i=1; i<=endOfMonth(year, month); i++){
		printf("%2d\t",i);
		if((blank+i)%7==0)                
			printf("\n");       
	}
	printf("\n====================================================\n");
}

// ���μ� yy�⵵�� ���� ���θ� �����ϴ� �Լ�
int leapYear(int yy)
{
	if(yy%400==0 || yy%100!=0 && yy%4==0)
		return 1;
	else 
		return 0;
}

// ���μ� yy���� �� �ϼ��� �����ϴ� �Լ�, ��� ���縦 ���� leapYear()�Լ��� �̿���
int daysInYear(int yy)
{
	if (leapYear(yy))
		return 366;
	else
		return 365;
} 

// ���μ� yy�� mm���� ���������� �����ϴ� �Լ�
int endOfMonth(int yy, int mm)
{
	if (mm==4 || mm==6 || mm==9 || mm==11)	
		return 30;
	else if(mm==2){
		if(leapYear(yy))
			return 29;
		else                        
			return 28;
	}
	else
		return 31;
}


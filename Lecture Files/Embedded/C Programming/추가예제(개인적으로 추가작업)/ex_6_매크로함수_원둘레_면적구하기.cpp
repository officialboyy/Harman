/*	6. ��ó����
	���� �������� �Է� �޾�, ���� �ѷ��� ���ϴ� ��ũ�� �Լ�, ���� ������ ���ϴ� ��ũ�� �Լ��� �����Ͽ� ���� �ѷ��� ���� ���ϱ�
*/

#include <stdio.h>		// printf

#define PI 3.141592
#define CIRCUM(r) (2) * (PI) * (r)
#define AREA(r) (PI) * (r)* (r)

int main()
{
	double radius;

	printf("��������? ");
	scanf("%lf", &radius);
		
	printf("������ %.2lf�� ���� �ѷ��� %.2lf, ���� ������ %.2lf \n", radius, CIRCUM(radius), AREA(radius));
			
	return 0;
}


/*
��������? 2.75
������ 2.75�� ���� �ѷ��� 17.28, ���� ������ 23.76
����Ϸ��� �ƹ� Ű�� �����ʽÿ� . . ..
*/

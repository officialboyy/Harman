/* 
	2. ������ �ڷ���
	�������� 3�� ���� ���̿� �ѷ��� ���ϴ� ���α׷��� �ۼ��Ͻÿ�. (PI�� 3.14�� �Ѵ�.) 
*/

#include <stdio.h>

int main()
{
	double pi = 3.14;
	int radius = 3;
	double area, circle;
	
	area = radius * radius * pi;
	circle = 2 * radius * pi;
	
	printf("������: %d\n", radius);
	printf("���� �ѷ�: %.2lf\n", circle);
	printf("���� ����: %.2lf\n", sizeof long double);	

	return 0;
}


/*
������: 3
���� �ѷ�: 18.84
���� ����: 28.26
����Ϸ��� �ƹ� Ű�� �����ʽÿ� . . .
*/

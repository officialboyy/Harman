/* 
	2. ������ �ڷ���
	���� �������� �� 6,378,000m�� ������ ������ ���ϱ�
*/

#include <stdio.h>	// printf

int main()
{
	int radius, circum;
	double pi = 3.1415;	
	double area;			// �ѷ��� int�� �ڷᰪ�� �ִ��� �ʰ��ϹǷ� double ���� ���ؾ� ��
	
	radius = 6378000;		// ������ ������
	area = pi * radius * radius;
	circum = 2 * pi * radius;
	
	printf("������: %d m \n", radius);
	printf("��  ��: %d m \n", circum);
	printf("��  ��: %.1lf m��\n", area);	

	return 0;
}


/*
������: 6378000 m
��  ��: 40072974 m
��  ��: 127792714086000.0 m��
����Ϸ��� �ƹ� Ű�� �����ʽÿ� . . .
*/

/*	2. �ڷ���
	ü��������(BMI:Body Mass Index) ���ϱ�
	BMI = (������kg)/(Űm)��
*/

#include <stdio.h>		// printf
	
int main() 
{
	double height, weight;	// �Է� ������ Ű, ������
	double bmi;				// ��� ������ ü��������

	weight = 70;
	height = 175/100.0;		// ����/������ �����̹Ƿ� 100.0���� ������ m������ ��ȯ

	bmi = weight/(height*height);

	printf("BMI = %lf\n", bmi);

	return 0;
}

/*
BMI = 22.857143
����Ϸ��� �ƹ� Ű�� �����ʽÿ� . . .
*/
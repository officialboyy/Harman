/*	3. �����
	Ű�� �������� �Է¹޾� ü��������(BMI:Body Mass Index) ���ϱ�
	BMI = (������kg)/(Űm)��
*/

#include <stdio.h>		// printf
	
int main() 
{
	double height, weight;	// �Է� ������ Ű, ������
	double bmi;				// ��� ������ ü��������

	printf("������(kg) : ");
	scanf("%lf", &weight);

	printf("Ű(cm) : ");
	scanf("%lf", &height);
	height = height/100;		// m ������ ��ȯ

	bmi = weight/(height*height);

	printf("������ : %.1lf kg \n", weight);
	printf("Ű : %.1lf cm \n", height*100);
	printf("BMI: %.2lf \n", bmi);

	return 0;
}

/*
������(kg) : 70.5
Ű(cm) : 178.3
������ : 70.5 kg
Ű : 178.3 cm
BMI: 22.18
����Ϸ��� �ƹ� Ű�� �����ʽÿ� . . .
*/

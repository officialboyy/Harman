/*	5. ���
	Ű, ������ �Է� �� ǥ��ü�� ���� �� ����(����ġ) ����ϱ�
*/

#include <stdio.h>		// printf

int main()
{
	double height, weight;
	double dif, std_weight;
  
	printf("\nŰ��?");
	scanf("%lf", &height);
	printf("�����Դ�?");
	scanf("%lf", &weight);

	std_weight = (height - 100) * 0.9;	// ǥ�� ü�� ���ϱ�
	
	dif = std_weight - weight;
	if (dif < 0 )						// ����ġ ���ϱ�
		dif = -dif;
	
	printf("���� Ű : %.1lf \n", height);
	printf("���� ������ : %.1lf \n", weight);
	printf("Ű�� %.1lfcm�� ����� ǥ��ü�� : %.1lfkg \n", height, std_weight);
	printf("ǥ��ü�߰��� ���� : %.1lfkg \n", dif);

	return 0;
}
/* ���� ��� 

Ű��?180
�����Դ�?75.5
���� Ű : 180.0
���� ������ : 75.5
Ű�� 180.0cm�� ����� ǥ��ü�� : 72.0kg
ǥ��ü�߰��� ���� : 3.5kg
����Ϸ��� �ƹ� Ű�� �����ʽÿ� . . .
*/
/*	2. �ڷ���
	���� ���ϱ�
	������ ��������, ������, ���̸� �̿��Ͽ� �ּ� ���� ���ϱ�	
*/

#include <stdio.h>					// printf

int main()
{       
	double length = 2;				// 2 Miter
	double diameter = 0.001;		// 1 mm
	double resistivity = 1.78E-8;	// ������ ���� ����
	double area = (diameter * diameter / 4) * 3.14;
	double resistance = resistivity * ( length / area); // ����
	
	double current = 2;				// 1A (Ampere)
        
	printf("���� : %e Ohm(��) \n", resistance);
    
	printf("%f ���� �帣�� ���ؼ� %e ��Ʈ�� �ʿ�\n", current, ( resistance * current )); 

	return 0;
}

/*
���� : 4.535032e-002 Ohm(��)
2.000000 ���� �帣�� ���ؼ� 9.070064e-002 ��Ʈ�� �ʿ�
*/
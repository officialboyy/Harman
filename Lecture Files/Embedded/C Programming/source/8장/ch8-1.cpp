#include <stdio.h>		// printf �Լ��� ���� ��� ����
#include <math.h>		// sin �Լ��� ���� ��� ����
#define PI 3.141592

int main()
{	
	int degree;			// ���� ���� ������ ����
	double radian;		// degree�� ���� ���� ������ ����

	for (degree=0; degree<=180; degree+=30)
	{
		radian = (PI * degree) / 180; // ������ ���� ������ ��ȯ	
		printf("sin(%d��) = %.5lf \n", degree, sin(radian)); 
	}

	return 0;
}

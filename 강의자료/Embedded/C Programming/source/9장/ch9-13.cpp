#include <stdio.h>

void sort_by_pointer();				// �Լ� ���� ����

int point1 = 5000, point2 = 4000;	// ���� ���� ����

int main() 
{ 
	printf("�Լ� ȣ�� �� ����Ʈ ���� %d, %d \n", point1, point2);
	
	sort_by_pointer(); // ���� ���� point1�� point2�� �����ϱ� ���� �Լ� ȣ��
	
	printf("�Լ� ȣ�� �� ����Ʈ ���� %d, %d \n", point1, point2);

	return 0;
}

// �������� point1�� point2�� ������������ �����ϴ� �Լ�
void sort_by_pointer() 
{ 
	int temp; 

	if (point1 > point2)
	{
		temp = point1;
		point1 = point2;
		point2= temp;
	}

	printf("\n( sort �Լ��� ���� ��� point1: %d, point2: %d ) \n\n",
												point1, point2); 
}
#include <stdio.h> 
#define PI 3.141592
#define CIRCUM(r) (2 * PI * r)
#define AREA(r) (PI * r * r)

int main() 
{ 
	int radius; 

	printf("���� ������ radius(cm)�� ���� ? "); 
	scanf("%d", &radius); 
	printf("���� �ѷ��� %.2f(cm)�̰�\n", CIRCUM(radius)); 
	printf("���� ������ %.2f(cm��)�Դϴ�\n", AREA(radius)); 

	return 0;
} 

#include <stdio.h>

// find_larger �Լ��� ���� ����
int find_larger(int first, int second);

// main �Լ��� ����
int main()
{
 	int n1, n2, max;
	
	printf("ù° ����? "); scanf("%d", &n1);
	printf("��° ����? "); scanf("%d", &n2);

	// find_larger �Լ� ȣ�� �� ��ȯ�� ���� max�� ����
	max = find_larger(n1, n2);	
	printf("%d, %d �� ū ���� %d \n", n1, n2, max);

	return 0;
}

// find_larger �Լ��� ����
int find_larger(int first, int second)
{
	if (first > second)
		return first;
	else
		return second;
}
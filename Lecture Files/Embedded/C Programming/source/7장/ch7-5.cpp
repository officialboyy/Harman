#include <stdio.h>
#define SIZE 5

int main()
{	
	int i, repeat, temp, a[SIZE] = {5, 4, 3, 2, 1};

	// �����ϱ� �� ������ �迭 ������ ����ϱ�
	printf(" ���� �� �迭: ");
	for(i=0; i<SIZE; i++)
		printf("%4d", a[i]);

	// ���� ���� ����
	for (repeat=1; repeat<SIZE; repeat++) 
	{
		for (i=0; i<SIZE-repeat; i++) 
		{
			if (a[i] > a[i+1])
			{
				temp = a[i];	
				a[i] = a[i+1];
				a[i+1] = temp;
			}
		}
	}

	// ���ĵ� ����� ����ϱ�
	printf("\n\n ���� �� �迭: ");
	for(i=0; i<SIZE; i++)
		printf("%4d", a[i]);	
	printf("\n");

	return 0;
}

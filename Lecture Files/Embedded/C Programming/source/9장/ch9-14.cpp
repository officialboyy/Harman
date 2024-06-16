#include <stdio.h>
#define SIZE 5

// �Լ��� ���� ����
int find_min(int arr[], int *ptr);
void print_arr(int arr[]);

int main()
{
	int f[SIZE] = {3, 0, -30, -20, -1}; // �迭�� ����� ���ÿ� �ʱ�ȭ�ϱ�
 	int min;							// �ּڰ��� �����ϴ� ����
	int index;							// �ּڰ� min�� ����� �迭 ������ ÷�ڸ� �����ϴ� ����

	// �Լ��� ȣ���� �迭�� �ּڰ��� ��ȯ�ް� 
	// �ּڰ��� �ش��ϴ� ������ ÷�ڴ� index�� �ڵ����� ����ǰ� �Ѵ�.
	min = find_min(f, &index);
	
	printf("��� �� ���:");
	print_arr(f);						// �迭 ���� ����ϱ�

	// �ּڰ� ����ϱ�
	printf("\n���� ���� ��� ��: f[%d] = %d \n", index, min);

	return 0;
}

/* ���޵� �迭�� �ּڰ��� ���� ��ȯ�ϵ� �ּڰ��� �ش��ϴ� �迭 ������ ÷�ڸ� 
	 �� �Լ��� ȣ���� �Լ��� �μ��� �����ϴ� �Լ� */
int find_min(int arr[], int *ptr)
{
	int i, min;

	min = arr[0];
	*ptr = 0;	// min�� ����� �迭 ������ ÷�ڸ� ptr�� ����Ű�� ��(main�� index)�� ����
	for (i=1; i<SIZE; i++)
	{
		if (arr[i] < min)
		{
			min = arr[i];
			*ptr = i;		/* min�� ���� ����� �迭 ������ ÷�� i�� 
							   ptr�� ����Ű�� ��(main�� index)�� ���� */
		}
	}
	
	return min;
}

// �迭�� ���Ҹ� ����ϴ� �Լ� ����
void print_arr(int arr[])
{
	int i;

	for (i=0; i<SIZE; i++)
		printf("%4d", arr[i]);
}

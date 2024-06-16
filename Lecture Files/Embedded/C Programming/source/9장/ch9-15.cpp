#include <stdio.h>
#define SIZE 5

// �Լ��� ���� ����
int find_min(int arr[]);
void print_arr(int arr[]);

int index;					// �ּڰ��� ÷�ڸ� ������ ���� ���� ����

int main()
{
	int f[SIZE] = {3, 0, -30, -20, -1}; // �迭�� ����� ���ÿ� �ʱ�ȭ�ϱ�
 	int min;

	// �迭�� �ּڰ��� ��ȯ�ް� �ּڰ��� ÷�ڴ� find_min���� ���� �����ϱ�
	min = find_min(f);
	
	printf("��� �� ���:");
	print_arr(f);			// �迭 ���� ����ϱ�

	printf("\n���� ���� ��� ��: f[%d] = %d \n", index, min);

	return 0;
}

/* ���޵� �迭�� �ּڰ��� ���� ��ȯ�ϵ�		
		�ּڰ��� �ش��ϴ� �迭 ������ ÷�ڸ� ���� ���� index�� ���� �����ϴ� �Լ� */
int find_min(int arr[])
{
	int i, min;

	min = arr[0];
	index = 0;				// ���� min�� ����� �迭 ������ ÷�ڸ� index�� ���� ����
	for (i=1; i<SIZE; i++)
	{
		if (arr[i] < min)
		{
			min = arr[i];
			index = i;		// min�� ���� ����� �迭 ������ ÷�ڸ� index�� ���� ����
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

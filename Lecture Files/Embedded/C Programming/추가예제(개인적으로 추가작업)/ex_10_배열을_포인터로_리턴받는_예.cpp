/*	10. ������
	�Լ��� ��ȯ ������ �����͸� ����ϱ�: �迭�� �Լ��� ������ �� ����� �迭�� �����ּҸ� ��ȯ�ޱ�
*/

#include <stdio.h>
#define NUM_OF_ITEMS 10

int* sort_asc(int *p, int size); 
   
int main() 
{ 
	int arr[NUM_OF_ITEMS] = {90, 88, 100, 45, 85, 60, 95, 30, 89, 79}; 
	int *p, i;

	// �Լ� ��ȯ ������ �����͸� �ޱ�
	p = sort_asc(arr, NUM_OF_ITEMS);

	for (i=0; i<NUM_OF_ITEMS; i++) 
		printf("%5d", *(p+i)); 
	printf("\n");

	return 0; 
}

int* sort_asc(int *p, int size)
{ 
	int i,j, temp; 

	// �迭�� ������������ �����ϱ�
	for (i=0; i<size-1; i++) 
		for (j=i+1; j<size; j++) 
			if (*(p+i) < *(p+j)) 
			{ 
				temp = *(p+j); 
				*(p+j) = *(p+i); 
				*(p+i) = temp; 
			} 

	return p;	// �����ͷ� ���޹��� �迭 ���� �ּҸ� �ٽ� ��ȯ ������ ����
} 



/*
  100   95   90   89   88   85   79   60   45   30
����Ϸ��� �ƹ� Ű�� �����ʽÿ� . . .
*/
/*  10. ������
    �迭�� �����ͷ� �����Ͽ� �Լ����� �迭 ���ҵ��� �������� �����ϱ�
*/

#include <stdio.h>
#define N 5

void reverse(int *p);
void print_array(int *p);

int main()
{
	int x[N] = {3, 7, 5, 9, 1}; 
	
	printf("���� �迭 : ");
	print_array(x);

	reverse(x);		// �������� ��ȯ�ϱ�

	printf("���� �迭 : ");
	print_array(x);

	return 0;
}

void reverse(int *p)
{
	int i, temp;

	// ��Ī�Ǵ� ���Ҹ� ���� ��ȯ�Ͽ� �������� �����
	for (i=0; i<N/2; i++)
	{
		// *(p+N-i-1)�� *(p+i)�� ��Ī�Ǵ� ���ҷ� �� ���Ҹ� ��ȯ
		temp=*(p+i);
		*(p+i) = *(p+N-i-1); // p[i] = p[N-i-1];�� ����
		*(p+N-i-1) = temp;
	} 
}

void print_array(int *p) 
{
	int i;

	for (i=0; i<N; i++) 
		printf("%5d",*(p+i)); //�迭�� ���
	printf("\n");
}

/*
���� �迭 :     3    7    5    9    1
���� �迭 :     1    9    5    7    3
����Ϸ��� �ƹ� Ű�� �����ʽÿ� . . .
*/
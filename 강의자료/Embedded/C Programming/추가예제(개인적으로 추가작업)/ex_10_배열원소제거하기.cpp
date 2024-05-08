/*	10. ������
	�迭�� ����� �ڷ� �� �� ����ڰ� ���ϴ� ���� �����͸� �̿��Ͽ� �����ϱ�
*/
	
#include <stdio.h>

#define MAX 10							// �迭�� �ִ� ũ��

void output(int data[]);				// �迭 ���� ���
void deletion(int data[], int target);	// �迭 �ڷ� ����

int size = MAX;							// �迭�� ����� ���� ���� ����, ���� ������ ����
	
int main()
{
	int d[MAX] = {85, 90, 91, 92, 93, 86, 91, 85, 80, 79};	// �迭 �ڷ�
	int position;
	char reply;

	do
	{		
		if (size == 0)
		{
			printf("���̻� ������ �ڷᰡ �����ϴ�.\n");
			break;
		}

		output(d);					// ���� �迭�� ���� ǥ��
		printf("�ڷḦ �����ؼ� �����Ͻðڽ��ϱ�? (y/n) "); 
		
		fflush(stdin);				// ���� target �Է½� ���� <enter>Ű�� ���ۿ� �����ִٰ� 
									// ��ٷ� reply�� ����Ǵ� ���� ���� ���� ���۸� ���
		scanf("%c", &reply);

		if (reply == 'n' || reply == 'N')
			break;		
					
		while (1)					// ���� ��ȣ�� ��ȿ�� �˻�
		{
			printf("\n ������ �ڷ��� ��ȣ�� (1~%d)?", size); 
			scanf("%d", &position);
		
			if (position < 1 || position > size)
					printf("�߸� �����ϼ̽��ϴ�.\n");
			else
				break;
		} 

		deletion(d, position-1);		// �� ���� �Լ� ȣ��

		size--;						// �迭�� ���� �ڷ� �� 1 ����
	} while (1);
	

	return 0;
}

// data �迭���� data[target] ���Ҹ� �����ϱ�
void deletion(int data[], int target)
{
	int *current;

	current = &data[target];		// ������ �迭 ���Ҹ� current �����Ͱ� ����Ű�� ��
	
	// current�� ����Ű�� ������ current �ٷ� ���� �迭 ���� ���� �̵��ϱ�, �� ��ĭ�� ������ ����
	for (current = &data[target]; current<&data[size-1]; current++)
	{
		*current = *(current + 1);	// current�� ����Ű�� �� ���� ������ ���� current�� ����Ű�� ������ �̵��ϱ�
	}
	for (current = &data[size-1]; current<&data[MAX]; current++)
	{
		*current = -1;				// �迭 ���� ��ȿ���� ���� ���������� ǥ���ϱ� ���� -1�� ����
	}

}

// �迭 ���� ��� �Լ�
void output(int data[])
{
	int i;
	
	printf("\n============\n");
	for (i=0; i<size; i++)
		printf("%2d  %3d \n", i+1, data[i]);	
	printf("============\n");
}

/*

============
 1   85
 2   90
 3   91
 4   92
 5   93
 6   86
 7   91
 8   85
 9   80
10   79
============
�ڷḦ �����ؼ� �����Ͻðڽ��ϱ�? (y/n) y

 ������ �ڷ��� ��ȣ�� (1~10)?3

============
 1   85
 2   90
 3   92
 4   93
 5   86
 6   91
 7   85
 8   80
 9   79
============
�ڷḦ �����ؼ� �����Ͻðڽ��ϱ�? (y/n) y

 ������ �ڷ��� ��ȣ�� (1~9)?5

============
 1   85
 2   90
 3   92
 4   93
 5   91
 6   85
 7   80
 8   79
============
�ڷḦ �����ؼ� �����Ͻðڽ��ϱ�? (y/n) y

 ������ �ڷ��� ��ȣ�� (1~8)?8

============
 1   85
 2   90
 3   92
 4   93
 5   91
 6   85
 7   80
============
�ڷḦ �����ؼ� �����Ͻðڽ��ϱ�? (y/n) n
����Ϸ��� �ƹ� Ű�� �����ʽÿ� . . .
*/
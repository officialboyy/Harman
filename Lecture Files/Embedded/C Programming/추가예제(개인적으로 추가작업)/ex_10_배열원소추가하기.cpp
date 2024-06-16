/*	10. ������
	�迭�� ����� �ڷ� �� �� ����ڰ� ���ϴ� ���� �迭�� �߰��ϱ�
*/
	
#include <stdio.h>

#define MAX 10							// �迭�� �ִ� ũ��

void output(int data[]);				// �迭 ���� ���
void insertion(int data[], int new_data, int target);// �迭�� �ڷ� �߰�

int size = 3;							// �迭�� ����� ���� ���� ����, ���� ������ ����, ���α׷� ���Ǹ� ���� 3���� �ʱ�ȭ��
	
int main()
{
	int d[MAX] = {10, 20, 30};			// �迭 �ڷ�, 3���� ������ �ʱ�ȭ ��
	int position, value;				// �迭�� �߰��� ��ġ, �߰��� ��
	char reply;

	do
	{		
		output(d);					// ���� �迭�� ���� ǥ��

		if (size == MAX)
		{
			printf("���̻� �߰��� ���� �����ϴ�.\n");
			break;
		}
				
		printf("�ڷḦ �߰��Ͻðڽ��ϱ�? (y/n) "); 
				
		fflush(stdin);				// ���� target �Է½� ���� <enter>Ű�� ���ۿ� �����ִٰ� 
									// ��ٷ� reply�� ����Ǵ� ���� ���� ���� ���۸� ���
		scanf("%c", &reply);

		if (reply == 'n' || reply == 'N')
			break;		
					
		while (1)					// ���� ��ȣ�� ��ȿ�� �˻�
		{
			printf("\n �߰��� �ڷ��� ��ġ�� (1~%d)?", size+1); 
			scanf("%d", &position);
		
			if (position < 1 || position > size+1)
					printf("�߸� �����ϼ̽��ϴ�.\n");
			else
				break;
		} 
		printf("\n �߰��� �ڷ��� ����? "); 
		scanf("%d", &value);

		insertion(d, value, position-1);		// �� �߰� �Լ� ȣ��
		
	} while (1);	

	return 0;
}

// data �迭�� data[target] ���ҷ� new_data ���� �߰��ϱ�
void insertion(int data[], int new_data, int target)
{
	int *current, i;
	// current�� ����Ű�� ���� �ٷ� ���� �迭 ���� ���� current�� ����Ű�� ������ �̵���Ű��, �� ��ĭ�� �ڷ� �б�
	for (current = &data[size]; current>&data[target] ; current--)
	{
		*current = *(current-1);
	}
	*current = new_data;			// �߰����� �迭 ���� ��ҿ� ����
	
	size++;							// �迭 �ڷ�� 1 ����
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

=
============
 1   10
 2   20
 3   30
============
�ڷḦ �߰��Ͻðڽ��ϱ�? (y/n) y

 �߰��� �ڷ��� ��ġ�� (1~4)?4

 �߰��� �ڷ��� ����? 40

============
 1   10
 2   20
 3   30
 4   40
============
�ڷḦ �߰��Ͻðڽ��ϱ�? (y/n) y

 �߰��� �ڷ��� ��ġ�� (1~5)?2

 �߰��� �ڷ��� ����? 15

============
 1   10
 2   15
 3   20
 4   30
 5   40
============
�ڷḦ �߰��Ͻðڽ��ϱ�? (y/n) n
����Ϸ��� �ƹ� Ű�� �����ʽÿ� . . .
*/
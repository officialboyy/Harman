#include <stdio.h>
#define SIZE 5

int main()
{	
	int i, repeat, temp, b[SIZE] = {1, 2, 3, 5, 4};
	char swap;				// �̿� �� ������ ���� ��ȯ�� ���� �ִ� ���� �˷��ִ� ����

	// ���� ���� ����
	for (repeat=1; repeat<SIZE; repeat++) 
	{
		swap = 'N';			// �� ���� ���� ��ȯ�� �߻����� ���� ���·� �ʱ�ȭ
		for (i=0; i<SIZE-repeat; i++) 
		{
			if (b[i] > b[i+1]) 		
			{
				temp = b[i];	
				b[i] = b[i+1];
				b[i+1] = temp;

				swap = 'Y';	// �� ���� ���� ��ȯ�� �߻��� ���·� ����
			}
		}
		if (swap == 'N')	// �� ���� ���� ��ȯ�� �߻��� ���� ���� ���� �Ϸ� ���¶��
			break;			// ���� �۾��� ������
	}

	// ���ĵ� ����� ����ϱ�
	printf("\n ���� �� �迭: ");
	for(i=0; i<SIZE; i++)
		printf("%4d", b[i]);	
	printf("\n\n");

	return 0;
}
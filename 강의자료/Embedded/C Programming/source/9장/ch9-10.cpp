#include <stdio.h>

void find_PW();
void find_ID();

char title[10] = "Quiz";		// ���Ӹ�

static int count_service;		// �� ���� ��û Ƚ�� 

int main()
{	
	int service;				// ����ڰ� ��û�� ���� ��ȣ
	
	do
	{
		printf("\n <<< 1. ID ã�� 2. PW ã�� 3. �����ϱ� >>> \n");
		printf(" ���ϴ� ���� ��ȣ�� �Է��ϼ���(1~3) ");
		scanf("%d", &service);

		switch (service)
		{
			case 1: find_ID(); break;
			case 2: find_PW();					
		}
	} while (service != 3);		// 3. �����ϱ⸦ �������� �ʴ� �� ��� �ݺ��ϱ�

	return 0;
}

// ���̵� ã�� ���� �Լ�
void find_ID()
{
	static int count_ID;		// �Լ��� ȣ�� Ƚ���� ����

	count_ID++;					// find_ID �Լ��� ȣ��� ������ 1�� ����
	count_service++;			// ��ü ���� ��û Ƚ���� 1 ����

	printf("\n %s ���� �湮 �� ", title);
	printf("�� ��ü ���� ��û %d�� �� %dȸ° ID ã�� ��û�Դϴ�. \n", 
				count_service, count_ID);
}

// ��й�ȣ ã�� ���� �Լ�
void find_PW()
{
	static int count_PW;		// �� �Լ��� ȣ�� Ƚ���� �����ϴ� ���� ���� ���� ����

	count_PW++;					// find_PW �Լ��� ȣ��� ������ 1�� ����
	count_service++;			// ��ü ���� ��û Ƚ���� 1 ����

	printf("\n %s ���� �湮 �� ", title);
	printf("�� ��ü ���� ��û %d�� �� %dȸ° PW ã�� ��û�Դϴ�. \n", 
				count_service, count_PW);
}
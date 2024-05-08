#include <stdio.h>
#include <stdlib.h>		// exit, system �Լ��� ���� ��� ����
#include <conio.h>		// getch �Լ��� ���� ��� ����
#define PASS 1			// ��й�ȣ�� ��ġ�� ���� ��ȯ �� 1�� ��ũ�� ����� ����
#define FAIL 0			// ��й�ȣ�� �ٸ� ���� ��ȯ �� 0�� ��ũ�� ����� ����

void display_menu();	// ���� ��� ǥ��
int check_PW();			// ��й�ȣ Ȯ�� ����
void check_balance();	// �ܾ� ��ȸ ����
void deposit();			// �Ա� ����
void withdraw();		// ��� ����

int balance;			// ������ ���� �ܾ��� �����ϴ� ���� ����

int main()
{		
	int service;		// ����ڰ� ���ϴ� ���� ��ȣ

	printf("�츮 �ý����� �湮�� �ּż� �����մϴ�.");

	// ����ڰ� �׸��α⸦ ������ �ʴ� �� ���񽺸� ��� �����ϱ�
	do
	{
		display_menu();			// ����ڿ��� �����ϴ� ���� ��� ǥ��
		printf("���ϴ� ���񽺸� �����ϼ���. "); 
		scanf("%d", &service);	// ����ڰ� ���ϴ� ���� ��ȣ �Է¹ޱ� 
		
		switch (service)
		{
			case 1: check_balance(); break;	// �ܾ� ��ȸ
			case 2: deposit(); break;		// �Ա� ó��
			case 3: withdraw(); break;		// ��� ó��
			case 4: exit(0);				// ���α׷� ����
		}

		/* ����ڰ� ���� ��� ȭ���� Ȯ���� �� 
		   �ƹ� Ű�� ������ ���� ȭ���� ����� �� ȭ�鿡�� �ٽ� �����ϱ� */
		printf("\n��� ���񽺸� ���Ͻø� �ƹ�Ű�� ��������.");
		getch();
		system("cls");
	} while (service != 4);		// 4. �׸��α⸦ �������� �ʴ� �� ��� �ݺ��ϱ�

	return 0;
}

// �ܾ� ��ȸ ���� �Լ�
void check_balance()
{
	if (check_PW() == PASS)
		printf("\n���� �ܾ�: %d�� \n", balance);
}

// �Ա� ���� �Լ�
void deposit()
{
	int amount;
	
	printf("\n�Ա��Ͻ� �ݾ���? "); scanf("%d", &amount);

	balance += amount;
	printf("\n�Ա� �� ���� �ܾ�: %d��\n", balance);
}

// ��� ���� �Լ�
void withdraw()
{
	int amount;
	
	if (check_PW() == PASS)
	{
		printf("����Ͻ� �ݾ���? "); scanf("%d", &amount);
		if (balance < amount)
			printf("\n�ܾ��� �����մϴ�. ���� �ܾ� %d�� \n", balance);
		else
		{
			balance -= amount;
			printf("\n��� �� ���� �ܾ�: %d�� \n", balance);
		}
	}
}

// ������� ��й�ȣ�� �ý��� ��й�ȣ�� ���� ��ġ ���� ��ȯ�ϱ�
int check_PW()
{
	static int count = 0;	// �� �Լ����� �߻��� ��й�ȣ ���� Ƚ���� �����ϴ� ���� ���� ����
	int system_PW = 1111;	// ������ �ý��� ���� ��й�ȣ
	int limit = 3;			// ��й�ȣ ���� ���� Ƚ��
	int input_PW;			// ����ڰ� �Է��� ��й�ȣ
	
	printf("\n�ý��� ��й�ȣ�� �Է��ϼ���.");
	scanf("%d", &input_PW);

	if (input_PW == system_PW)	// ��й�ȣ�� �´� ���
		return PASS;
	else						// ��й�ȣ�� Ʋ�� ��� 
	{
		count++;				// ��й�ȣ ���� �߻� Ƚ���� 1����
		if (count == limit)		// ��й�ȣ ������ 3ȸ �߻��� ���
		{
			printf("��й�ȣ ���� 3ȸ �߻�! \n");
			printf("�ź����� ������ ���񽺼��͸� �湮�ϼ���. \n");
			exit(0);			// ���α׷� ���� ����
		}
		else					// ��й�ȣ ������ �߻������� ���� �߻��� ���� 3ȸ�� �ƴ� ���
		{
			printf("��й�ȣ�� Ʋ�Ƚ��ϴ�. �� %dȸ ����!\n", count);
			return FAIL;
		}
	}
}

void display_menu()
{
	printf("\n\n");
	printf("==================\n");
	printf("== 1. �ܾ� ��ȸ ==\n");
	printf("== 2. �Ա�      ==\n");
	printf("== 3. ���      ==\n");
	printf("== 4. �׸��ϱ�  ==\n");
	printf("==================\n");
}

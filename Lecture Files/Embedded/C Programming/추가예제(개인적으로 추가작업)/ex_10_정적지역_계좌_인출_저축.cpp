/*	9. ������ ���� ������ ���� �Ⱓ
	������ ����, ���� �ݺ� ���� ���� �� �����, ������� �����ϰ� ���� �ܾ׵� ǥ���ϱ�
*/

#include <stdio.h>

void save(int amount);		// amount ��ŭ ����
void withdraw(int amount);	// amount ��ŭ ����
void print_balance();		// ���� �ܾ� ���

int balance = 0;			// ���� ���� �ܾ�, ���� ����

int main()
{
	int amount, reply;

	do
	{
		printf("\n");
		printf("1. ���� \n");
		printf("2. ���� \n");
		printf("3. ���� \n");
		printf(">> ���ϴ� �޴���? "); scanf("%d", &reply);

		switch (reply)
		{
		case 1: printf("\n�󸶸� �����Ͻðڽ��ϱ�? )"); scanf("%d", &amount);
				save(amount);
				print_balance();
				break;
		case 2: printf("\n�󸶸� �����Ͻðڽ��ϱ�? )"); scanf("%d", &amount);
				withdraw(amount);
				print_balance();
				break;
		case 3: return 0;
		}

	} while(reply != 3);
		
	return 0;
}

void save(int amount)
{
	static int total;			// ���ݱ����� �� ������� �����ϱ� ���� ���� ���� ����
	
	balance = balance + amount;
	total += amount;
	printf("���ݱ��� ��������� %d�Դϴ�.\n", total);
}

void withdraw(int amount)
{
	static int total;			// ���ݱ����� �� ������� �����ϱ� ���� ���� ���� ����
	
	balance = balance - amount;
	total += amount;
	printf("���ݱ��� ��������� %d�Դϴ�.\n", total);
}

void print_balance()
{
	printf("\n���� �ܾ��� %d�Դϴ�.\n", balance);
}

/*

1. ����
2. ����
3. ����
>> ���ϴ� �޴���? 1

�󸶸� �����Ͻðڽ��ϱ�? )20000
���ݱ��� ��������� 20000�Դϴ�.

���� �ܾ��� 20000�Դϴ�.

1. ����
2. ����
3. ����
>> ���ϴ� �޴���? 1

�󸶸� �����Ͻðڽ��ϱ�? )30000
���ݱ��� ��������� 50000�Դϴ�.

���� �ܾ��� 50000�Դϴ�.

1. ����
2. ����
3. ����
>> ���ϴ� �޴���? 2

�󸶸� �����Ͻðڽ��ϱ�? )30000
���ݱ��� ��������� 30000�Դϴ�.

���� �ܾ��� 20000�Դϴ�.

1. ����
2. ����
3. ����
>> ���ϴ� �޴���? 1

�󸶸� �����Ͻðڽ��ϱ�? )70000
���ݱ��� ��������� 120000�Դϴ�.

���� �ܾ��� 90000�Դϴ�.

1. ����
2. ����
3. ����
>> ���ϴ� �޴���? 3
����Ϸ��� �ƹ� Ű�� �����ʽÿ� . . .
*/

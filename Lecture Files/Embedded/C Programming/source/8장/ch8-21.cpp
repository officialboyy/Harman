#include <stdio.h>
#include <stdlib.h>				// rand, srand �Լ��� ���� ��� ����
#include <time.h> 				// time �Լ��� ���� ��� ����

int main()
{
	int begin = 1, end = 100;	// ��ǻ�Ͱ� ���� ���� ����
	int count = 0;				// �� ������ �õ� Ƚ��
	int computer, user;			// ��ǻ�Ͱ� ���� ��, ����ڰ� ������ ��

	srand(time(NULL)); 			// ���� �ð��� rand �Լ��� ����� �����ϱ�

	computer = rand() % (end - begin + 1) + 1; // ��ǻ�Ͱ� ����� �� ����

	printf("\n>> ��ǻ�Ͱ� ���� ���� ������ �����Դϴ�. \n");		
	printf("\n============================================\n");

	do
	{
		printf("%3d ~ %3d ���� ���Դϴ�. ���ϱ��? ", begin, end);
		scanf("%d", &user);			

		count++;				// �� ������ �õ� Ƚ���� 1����
		
		// ������� ���� ���� ���� ������ ǥ���� ���� ���� ���� �����ϱ�
		if (user > computer)
			end = user - 1;	
		else if (user < computer)
			begin = user + 1;		
		
	} while (user != computer);	// ����ڰ� ������ ���� Ʋ���� �ٽ� �ݺ�

	printf("============================================\n");
	printf ("\n ��ǻ�Ͱ� ���� %d�� %d�� ���� �������ϴ�.", computer, count);
	
	return 0;
}

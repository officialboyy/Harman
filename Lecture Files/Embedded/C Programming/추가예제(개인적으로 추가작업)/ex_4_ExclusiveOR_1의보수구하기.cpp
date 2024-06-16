/*	4. ������
	Exclusive OR ������ ^�� �̿� 1�� ���� ���ϱ�
*/

#include <stdio.h>		// printf

int main() 
{
	int n, check, complement;

	printf("1�� ������ ���� ������? ");
	scanf("%d", &n);
	check = 0xFFFF;				// ��� ��Ʈ�� 1
	complement = n ^ check;		// exclusive or ������ ���� check�� ��Ʈ�� ������ 1�̹Ƿ� n�� ��Ʈ�� 1�� �����ϸ� 0, 0���� �ٸ��ٸ� 1�� ��
	
	printf("%04X ^ %04X = %04X \n", n, check, complement);	// %04X�� 16������ 4�ڸ� ����̵� ���� ���ڸ��� 0���� ǥ���ϱ�
	printf("%04X�� 1�� ���� = %04X \n", n, complement);

	return 0;
}

/*
1�� ������ ���� ������? 8
0008 ^ FFFF = FFF7
0008�� 1�� ���� = FFF7
����Ϸ��� �ƹ� Ű�� �����ʽÿ� . . .
*/

/*
1�� ������ ���� ������? 0
0000 ^ FFFF = FFFF
0000�� 1�� ���� = FFFF
����Ϸ��� �ƹ� Ű�� �����ʽÿ� . . .
*/
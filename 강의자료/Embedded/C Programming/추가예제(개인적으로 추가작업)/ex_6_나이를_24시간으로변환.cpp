/*	6. ��ũ��
	���̸� �Է¹޾Ƽ� �λ��ð� ����ϴ� ���α׷�(��ռ��� 80���� 24�ð����� ��)
	���� : �����ϱ� û���̴�, �賭������
*/

#include <stdio.h>
#define LIFEHOUR(age) ((age * 18) / 60)		// �λ��ð��� "��" ���
#define LIFEMINUTE(age) ((age * 18) % 60)	// �λ��ð��� "��" ���

int main()
{
	int age;

	printf("���� : ");
	scanf("%d", &age);

	printf("�λ��ð� : %d�� %d��\n", LIFEHOUR(age), LIFEMINUTE(age));
	
	return 0;
}

/*
������

���� : 21
�λ��ð� : 6�� 18��
*/
#include <stdio.h>

int main()
{
	int gender, married, army, plus, children;

	plus = 0;									// �������� ���� 0���� �ʱ�ȭ

	printf("���� (��:1, ��:2) ? ");				// ������ ����
	scanf("%d", &gender);

	if (gender == 1)							// ������ ����� ó�� �κ�
	{
		printf("�� ���� (��:1, �ƴϿ�:2) ? ");	// �� ���� ���θ� ����
		scanf("%d", &army);

		if (army == 1)
		{
			plus++;								// �� �����ڶ�� +1

			printf("��ȥ (��:1, �ƴϿ�:2) ? ");	// �����ڶ�� ��ȥ ���θ� ����
			scanf("%d", &married);
			if (married == 1)
			{
				plus++;							// �� �����ڸ鼭 ��ȥ�ڶ�� +1
			}
		}
	}
	else										// ������ ����� ó�� �κ�
	{
		printf("��ȥ (��:1, �ƴϿ�:2) ? ");		// ��ȥ ���θ� ����
		scanf("%d", &married);

		if (married == 1)
		{
			plus++;								// ��ȥ�ڶ�� +1

			printf("�ڳ����? ");
			scanf("%d", &children);
			if (children == 1)
			{
				plus++;							// �ڳడ 1���̶�� +1
			}
			else if (children >= 2)
			{
				plus += 2;						// �ڳడ �� �̻��̶�� +2
			}
		}
	}

	printf("\n>> �� �������� %d���Դϴ�.", plus);

	return 0;
}
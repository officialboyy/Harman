#include <stdio.h>

int find_larger(int first, int second);		// �Լ��� ���� ����

int main()
{
	int max, score[5] = {10, 8, 9, 7, 8};

	max = find_larger(score[3], score[4]);  // 4°, 5° ���Ҹ� ����

	printf(" score[3]=%d�� score[4]=%d �� ū ���� %d \n", score[3], score[4], max);

	return 0;
}

// �� ���� �� ū ���� ��ȯ�ϴ� �Լ�
int find_larger(int first, int second)
{
	if (first > second)
		return first;
	else
		return second;
}
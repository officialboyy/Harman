#include <stdio.h>

int main()
{
	int i;
	double area = 100, target = 1; // ���� �簢���� ����, ���� ����

	for (i=1; ;i++)
	{
		area = area / 2;
		printf("%2d�� ������ ���� ���� : %6.2lf \n", i, area);
		if (area < target)
			break;
	}
	return 0;
}
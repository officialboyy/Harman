/* 
	2. ������ �ڷ���
	�غ��� ���̰� 5�̰�, ���̰� 4�� �簢���� ���̿� �ѷ��� ����ϴ� ���α׷��� �ۼ��Ͻÿ�. 
*/

#include <stdio.h>	// printf

int main()
{
	int width = 5;
	int height = 4;

	printf("�غ�: %d, ����: %d\n", width, height);
	printf("�簢���� ���̴� %d, �ѷ��� %d.\n", width*height, (width+height)*2);

	return 0;
}

/*
�غ�: 5, ����: 4
�簢���� ���̴� 20, �ѷ��� 18.
����Ϸ��� �ƹ� Ű�� �����ʽÿ� . . .
*/

/*	6. ��ũ��
	#undef�� �̿��Ͽ� ��ũ�λ���� ��ȭ��Ŵ���ν� '*' ����ϱ�
*/

#include <stdio.h>
#define SIZE 5
#define PRINT(i) for(i = 0; i < SIZE; i++) printf("*");\
		printf("\n");	

int main()
{
	int i = 0;

	PRINT(i); // '*' 5�� ���

	#undef SIZE
	#define SIZE 10

	PRINT(i); // '*' 10�� ���

	#undef SIZE
	#define SIZE 15

	PRINT(i); // '*' 15�� ���

	return 0;
}

/*
������

*****
**********
***************

*/
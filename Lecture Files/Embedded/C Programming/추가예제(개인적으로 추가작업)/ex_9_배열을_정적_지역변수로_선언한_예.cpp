/*	9. ���� ���� ����
	�迭�� ���� ���� ������ �������� ���� ���� ������ �������� ���� ��
*/

#include <stdio.h>

void static_array_init( void );
void automatic_array_init( void );

int main()
{
	printf( "1��° ȣ��:\n" );

	static_array_init();
	automatic_array_init();

	printf( "\n\n2��° ȣ��:\n" );
	static_array_init();
	automatic_array_init();

	return 0;
}

//�迭�� ���� �������� ������ �Լ�
void static_array_init( void )
{
	static int a[3]; //��� ���Ұ� 0���� �ʱ�ȭ
	int i;

	printf( "\nstatic_array_init�Լ��� �ʱ� �迭 ��:\n" );
	for ( i = 0; i <= 2; i++ )
		printf( "array1[%d]=%d ", i, a[ i ] );

	printf( "\nstatic_array_init�Լ��� 5�� ������ �迭 ��:\n" );
	for ( i = 0; i <= 2; i++ )
		printf( "array1[%d]=%d ", i, a[ i ] += 5 );
	printf("\n");
}

//�迭�� ���������� ������ �Լ�
void automatic_array_init( void )
{
	int a[ 3 ] = { 1, 2, 3 }, i;
	printf( "\n\nautomatic_array_init�Լ��� �ʱ� �迭 ��:\n" );          
	for ( i = 0; i <= 2; i++ )
		printf("array1[%d]=%d ", i, a[ i ] );

	printf( "\nautomatic_array_init�Լ��� 5�� ������ �迭 ��::\n" );
	for ( i = 0; i <= 2; i++ )
		printf( "array1[%d]=%d ", i, a[ i ] += 5 );
	printf("\n");
}


/*
1��° ȣ��:

static_array_init�Լ��� �ʱ� �迭 ��:
array1[0]=0 array1[1]=0 array1[2]=0
static_array_init�Լ��� 5�� ������ �迭 ��:
array1[0]=5 array1[1]=5 array1[2]=5


automatic_array_init�Լ��� �ʱ� �迭 ��:
array1[0]=1 array1[1]=2 array1[2]=3
automatic_array_init�Լ��� 5�� ������ �迭 ��::
array1[0]=6 array1[1]=7 array1[2]=8


2��° ȣ��:

static_array_init�Լ��� �ʱ� �迭 ��:
array1[0]=5 array1[1]=5 array1[2]=5
static_array_init�Լ��� 5�� ������ �迭 ��:
array1[0]=10 array1[1]=10 array1[2]=10


automatic_array_init�Լ��� �ʱ� �迭 ��:
array1[0]=1 array1[1]=2 array1[2]=3
automatic_array_init�Լ��� 5�� ������ �迭 ��::
array1[0]=6 array1[1]=7 array1[2]=8
����Ϸ��� �ƹ� Ű�� �����ʽÿ� . . .
*/
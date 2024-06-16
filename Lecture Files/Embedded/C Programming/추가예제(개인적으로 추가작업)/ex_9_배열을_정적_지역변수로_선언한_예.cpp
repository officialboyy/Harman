/*	9. 정적 지역 변수
	배열을 정적 지역 변수로 선언했을 때와 지역 변수로 선언했을 때의 비교
*/

#include <stdio.h>

void static_array_init( void );
void automatic_array_init( void );

int main()
{
	printf( "1번째 호출:\n" );

	static_array_init();
	automatic_array_init();

	printf( "\n\n2번째 호출:\n" );
	static_array_init();
	automatic_array_init();

	return 0;
}

//배열을 정적 지역변수 선언한 함수
void static_array_init( void )
{
	static int a[3]; //모든 원소가 0으로 초기화
	int i;

	printf( "\nstatic_array_init함수의 초기 배열 값:\n" );
	for ( i = 0; i <= 2; i++ )
		printf( "array1[%d]=%d ", i, a[ i ] );

	printf( "\nstatic_array_init함수의 5씩 증가한 배열 값:\n" );
	for ( i = 0; i <= 2; i++ )
		printf( "array1[%d]=%d ", i, a[ i ] += 5 );
	printf("\n");
}

//배열을 지역변수로 선언한 함수
void automatic_array_init( void )
{
	int a[ 3 ] = { 1, 2, 3 }, i;
	printf( "\n\nautomatic_array_init함수의 초기 배열 값:\n" );          
	for ( i = 0; i <= 2; i++ )
		printf("array1[%d]=%d ", i, a[ i ] );

	printf( "\nautomatic_array_init함수의 5씩 증가한 배열 값::\n" );
	for ( i = 0; i <= 2; i++ )
		printf( "array1[%d]=%d ", i, a[ i ] += 5 );
	printf("\n");
}


/*
1번째 호출:

static_array_init함수의 초기 배열 값:
array1[0]=0 array1[1]=0 array1[2]=0
static_array_init함수의 5씩 증가한 배열 값:
array1[0]=5 array1[1]=5 array1[2]=5


automatic_array_init함수의 초기 배열 값:
array1[0]=1 array1[1]=2 array1[2]=3
automatic_array_init함수의 5씩 증가한 배열 값::
array1[0]=6 array1[1]=7 array1[2]=8


2번째 호출:

static_array_init함수의 초기 배열 값:
array1[0]=5 array1[1]=5 array1[2]=5
static_array_init함수의 5씩 증가한 배열 값:
array1[0]=10 array1[1]=10 array1[2]=10


automatic_array_init함수의 초기 배열 값:
array1[0]=1 array1[1]=2 array1[2]=3
automatic_array_init함수의 5씩 증가한 배열 값::
array1[0]=6 array1[1]=7 array1[2]=8
계속하려면 아무 키나 누르십시오 . . .
*/
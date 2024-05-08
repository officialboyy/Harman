/*  10. 포인터
    배열을 포인터로 전달하여 함수에서 배열 원소들을 역순으로 변경하기
*/

#include <stdio.h>
#define N 5

void reverse(int *p);
void print_array(int *p);

int main()
{
	int x[N] = {3, 7, 5, 9, 1}; 
	
	printf("원본 배열 : ");
	print_array(x);

	reverse(x);		// 역순으로 변환하기

	printf("역순 배열 : ");
	print_array(x);

	return 0;
}

void reverse(int *p)
{
	int i, temp;

	// 대칭되는 원소를 서로 교환하여 역순으로 만들기
	for (i=0; i<N/2; i++)
	{
		// *(p+N-i-1)는 *(p+i)와 대칭되는 원소로 두 원소를 교환
		temp=*(p+i);
		*(p+i) = *(p+N-i-1); // p[i] = p[N-i-1];와 동일
		*(p+N-i-1) = temp;
	} 
}

void print_array(int *p) 
{
	int i;

	for (i=0; i<N; i++) 
		printf("%5d",*(p+i)); //배열을 출력
	printf("\n");
}

/*
원본 배열 :     3    7    5    9    1
역순 배열 :     1    9    5    7    3
계속하려면 아무 키나 누르십시오 . . .
*/
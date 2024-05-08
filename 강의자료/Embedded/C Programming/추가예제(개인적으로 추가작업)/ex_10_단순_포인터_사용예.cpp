/*	10. 포인터
	int, double, char 형 포인터 변수의 단순 사용 예
*/

#include <stdio.h>

int main() 
{
	char ch,  *ch_ptr;
	double d_n, *d_ptr;
	int i_n,  *i_ptr;

	// 일반 변수에 자료 입력
	ch = 'A';
	d_n = 2.6;
	i_n = 10;
	
	// 포인터 변수에 자료가 있는 주소 저장 -> 위의 변수를 가리키게 함
	ch_ptr = &ch;
	d_ptr = &d_n;
	i_ptr = &i_n;

	// 각 변수의 주소와 포인터 변수의 내용이 동일함
	printf("\n&ch  => %u \tch_ptr => %u", &ch, ch_ptr);
	printf("\n&d_n => %u \td_ptr  => %u", &d_n, d_ptr);
	printf("\n&i_n => %u \ti_ptr  => %u \n", &i_n, i_ptr);

	
	// 간접 참조를 통한 변수 내용 출력
	printf("\n포인터를 이용한 문자 출력 %c", *ch_ptr);
	printf("\n포인터를 이용한 실수 출력 %lf", *d_ptr);
	printf("\n포인터를 이용한 정수 출력 %d",  *i_ptr);
	
	return 0;
}

/*
&ch  => 4652603         ch_ptr => 4652603
&d_n => 4652572         d_ptr  => 4652572
&i_n => 4652548         i_ptr  => 4652548

포인터를 이용한 문자 출력 A
포인터를 이용한 실수 출력 2.600000
포인터를 이용한 정수 출력 10계속하려면 아무 키나 누르십시오 . . .
*/
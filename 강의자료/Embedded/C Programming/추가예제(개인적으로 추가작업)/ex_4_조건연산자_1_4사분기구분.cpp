/*	4. 연산자
	조건연산자를 이용하여 임의의 달을 입력 받아 1~4분기 중 해당 분기를 출력하기
*/

#include <stdio.h>		// printf, scanf

int main()
{
	int month;
	
	printf("1~4분기를 판별할 달은? ");
	scanf("%d", &month);
	
	month<=6 ? 
		month <= 3? printf("1사분기"): printf("2사분기") :	// 6월 미만인 경우 다시 ?로 1,2 사분기 구분
		month <= 9? printf("3사분기"): printf("4사분기") ;	// 6월 다음인 경우 다시 ?로 3,4 사분기 구분
			
	return 0;
}


/*
1~4분기를 판별할 달은? 4
2사분기계속하려면 아무 키나 누르십시오 . . .
*/

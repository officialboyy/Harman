/* 
	5. 제어문
	if문을 이용하여 세 정수를 입력 받아 가장 큰 수를 출력하기
*/

#include <stdio.h>

int main()
{
	int a, b, c;
	int max;
	
	printf("세 정수를 빈칸으로 구분하여 입력하시오.");
	scanf("%d %d %d", &a, &b, &c);
	
	if(a>b)
	{
		if(a>c)
			max = a;
		else
			max = c;
	}
	else
	{
		if(b>c)
			max = b;
		else
			max = c;
	}

	printf("입력한 수 중에 가장 큰 수는 %d입니다.\n", max);
		
	return 0;
}


/*
세 정수를 빈칸으로 구분하여 입력하시오.10 20 30
입력한 수 중에 가장 큰 수는 30입니다.
계속하려면 아무 키나 누르십시오 . . .
*/

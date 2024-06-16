/*	5. 제어문
	2차방정식 근 구하기
*/

#include <stdio.h>	// printf, scanf
#include <math.h>	// pow, sqrt

int main()
{
	int a, b, c;	// 2방정식 2차, 1차 계수, 상수
	double D;		// 판별식값
	double root1, root2;

	printf(" ax^2 + bx + c=0의 근을 구하는 프로그램입니다.");
	printf("\n 다음을 입력해주세요.\n\n"); 

	printf("a는?");	scanf("%d", &a);
	printf("b는?");	scanf("%d", &b);
	printf("c는?");	scanf("%d", &c);

	// pow 함수의 첫 인수는 실수형이어야 하므로 b를 int 형으로 캐스팅해야 한다.
	// 아래의 문장 대신 D = b*b - 4*a*c;를 사용해도 된다. 	
	D = pow((double)b, 2)- 4*a*c;

	// 2차 방정식 출력 및 판별식 값 출력하기
	printf("\n 2차 방정식 %dx^2%+dx%+d = 0 ", a, b, c);
	
	/* %+d 변환명세 대신 if문으로 식을 표현해도 된다.
	printf("\n 2차 방정식 %dx ", a);
	if (b >= 0) 
		printf("+ %dx", b);
	else
		printf("- %dx", -b);
	
	if (c >= 0) 
		printf("+ %d = 0 ", c);
	else
		printf("- %d = 0", -c);
	*/

	printf("\n 판별식 D = %.1lf \n", D);

	// 판별식에 따라 두 실근, 중근, 허근을 구하여 출력하기
	if(D > 0)
	{
		root1 = (-b + sqrt(D)) / (2*a);
		root2 = (-b - sqrt(D)) / (2*a);
		printf(" 두 실근은 %.2lf, %.2lf 입니다.\n", root1, root2);
	}
	else if(D == 0)
	{
		root1 = -b / (2*a);
		printf(" 중근은 %.2lf 입니다. \n", root1);
	}
	else
		printf(" 허근을 갖습니다.\n");

	return 0;
} 
/* 
 ax^2 + bx + c=0의 근을 구하는 프로그램입니다.
 다음을 입력해주세요.

a는?3
b는?9
c는?2

 2차 방정식 3x^2+9x+2 = 0
 판별식 D = 57.0
 두 실근은 -0.24, -2.76 입니다.
계속하려면 아무 키나 누르십시오 . . .
*/
  
/*
 ax^2 + bx + c=0의 근을 구하는 프로그램입니다.
 다음을 입력해주세요.

a는?2
b는?4
c는?2

 2차 방정식 2x^2+4x+2 = 0
 판별식 D = 0.0
 중근은 -1.00 입니다.
계속하려면 아무 키나 누르십시오 . . .
*/

/*
 ax^2 + bx + c=0의 근을 구하는 프로그램입니다.
 다음을 입력해주세요.

a는?3
b는?-2
c는?6

 2차 방정식 3x^2-2x+6 = 0
 판별식 D = -68.0
 허근을 갖습니다.
계속하려면 아무 키나 누르십시오 . . .
*/


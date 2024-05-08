/*	6. 매크로
	2차방정식의 판별식을 매크로 함수로 작성하여 근 구하기
*/

#include <stdio.h>	// print, scanf
#include <math.h>	// sqrt에 필요

#define D(a, b, c) b*b-4*a*c	// 매크로 함수 정의

int  main()
{
	int a, b, c;
	double root1, root2;

	printf("\n ax^2 + bx + c=0의 근을 구하는 프로그램입니다.");
	printf("\n 다음을 입력해주세요.\n\n"); 

	printf("a는?");	scanf("%d", &a);
	printf("b는?");	scanf("%d", &b);
	printf("c는?");	scanf("%d", &c);

	// det = D(a, b, c);를 추가하여 활용하는 것이 간단하나 매크로 함수 사용을 위해 직접 매크로 함수를 사용함
	printf("2차 방정식 %dx^2 %+dx %+d = 0 의 판별식 값은 %d입니다.\n ", a, b, c, D(a, b, c));

	if (D(a, b, c)> 0)
	{
		root1 = (-b + sqrt((double)D(a, b, c))) / (2*a);	// sqrt(A)는 A의 제곱근을 구해준다. 
		root2 = (-b - sqrt((double)D(a, b, c))) / (2*a);	// #include <math.h>가 필요
		printf("두 실근은 %.2lf, %.2lf 입니다.\n", root1, root2);
	}
	else if (D(a, b, c) == 0)
	{
		root1 = -b / (2*a);
		printf("중근은 %.2lf 입니다. \n", root1);
	}
	else
		printf("허근을 갖습니다.\n");

	return 0;
} 
/*

ax^2 + bx + c=0의 근을 구하는 프로그램입니다.
다음을 입력해주세요.

a는?3
b는?-2
c는?6
2차 방정식 3x^2 -2x +6 = 0 은 허근을 갖습니다.
계속하려면 아무 키나 누르십시오 . . .


ax^2 + bx + c=0의 근을 구하는 프로그램입니다.
다음을 입력해주세요.

a는?3
b는?9
c는?2
2차 방정식 3x^2 +9x +2 = 0 의 두 실근은 -0.24, -2.76 입니다.
계속하려면 아무 키나 누르십시오 . . .
*/


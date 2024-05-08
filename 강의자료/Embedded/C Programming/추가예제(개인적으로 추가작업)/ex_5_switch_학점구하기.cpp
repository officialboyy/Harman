/*	5. 제어문
	switch 문을 이용 입력한 등급에 대한 학점을 출력하기
*/

#include <stdio.h>		// printf

int main()
{
	char ch1, ch2;
	double grade;
	
	printf("등급은? (A+, A0, B+, ..., F) "); scanf("%c%c", &ch1, &ch2);	// F입력 후 엔터키를 입력한 경우 ch2엔 엔터키가 입력된다.

	switch (ch1)
	{
	case 'A': 
	case 'a': if (ch2 == '+')
				  grade = 4.5;
			  else 
				  grade = 4.0;
			  break;				
	case 'B':
	case 'b':if (ch2 == '+')
				  grade = 4.5;
			  else 
				  grade = 4.0;
			  break;	
	case 'D':
	case 'd': if (ch2 == '+')
				  grade = 4.5;
			  else 
				  grade = 4.0;
			  break;	
	case 'F':
	case 'f': grade = 0;
	}

	printf("%c", ch1);
	if (ch2 == '+'|| ch2 == '0')		// A 다음에 곧바로 엔터키를 입력했거나 F와 엔터키 입력한 경우 둘 째 문자를 출력하지 않기
		printf("%c", ch2);
	printf(" : %.1lf \n", grade);

	return 0;
}

/*
등급은? (A+, A0, B+, ..., F) A+
A+ : 4.5
계속하려면 아무 키나 누르십시오 . . .
*/

/*
등급은? (A+, A0, B+, ..., F) B
B : 3.0
계속하려면 아무 키나 누르십시오 . . .
*/

/*	11. 구조체
	분수를 구조체에 저장하여 분수의 합을 계산하기
*/

#include<stdio.h> 

typedef struct 
{ 
	int numerator; 
	int denominator; 

} fraction; 

fraction sum(fraction, fraction); 

int main() 
{ 
	fraction f1, f2;	// 분수1, 2
	fraction result;

	printf("분수1을 입력하세요(분자 분모):"); 
	scanf("%d%d",&f1.numerator,&f1.denominator); 
	printf("분수2를 입력하세요(분자 분모):"); 
	scanf("%d%d",&f2.numerator,&f2.denominator); 

	result = sum(f1, f2);	// 분수의 합

	// 결과 출력
	printf("결과=%d/%d\n",result.numerator,result.denominator);   

	return 0; 
} 

fraction sum(fraction f1, fraction f2) 
{ 
	fraction result=
		{(f1.numerator * f2.denominator) + (f2.numerator * f1.denominator), f1.denominator * f2.denominator}; 

	return result; 
} 

/*

분수1을 입력하세요(분자 분모):1 2
분수2를 입력하세요(분자 분모):1 3
결과=5/6
계속하려면 아무 키나 누르십시오 . . .

*/

/*	2. 자료형
	체질량지수(BMI:Body Mass Index) 구하기
	BMI = (몸무게kg)/(키m)²
*/

#include <stdio.h>		// printf
	
int main() 
{
	double height, weight;	// 입력 데이터 키, 몸무게
	double bmi;				// 출력 데이터 체질량지수

	weight = 70;
	height = 175/100.0;		// 정수/정수는 정수이므로 100.0으로 나누어 m단위로 변환

	bmi = weight/(height*height);

	printf("BMI = %lf\n", bmi);

	return 0;
}

/*
BMI = 22.857143
계속하려면 아무 키나 누르십시오 . . .
*/
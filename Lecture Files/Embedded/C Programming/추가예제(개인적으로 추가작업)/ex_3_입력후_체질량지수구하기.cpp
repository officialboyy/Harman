/*	3. 입출력
	키와 몸무게을 입력받아 체질량지수(BMI:Body Mass Index) 구하기
	BMI = (몸무게kg)/(키m)²
*/

#include <stdio.h>		// printf
	
int main() 
{
	double height, weight;	// 입력 데이터 키, 몸무게
	double bmi;				// 출력 데이터 체질량지수

	printf("몸무게(kg) : ");
	scanf("%lf", &weight);

	printf("키(cm) : ");
	scanf("%lf", &height);
	height = height/100;		// m 단위로 변환

	bmi = weight/(height*height);

	printf("몸무게 : %.1lf kg \n", weight);
	printf("키 : %.1lf cm \n", height*100);
	printf("BMI: %.2lf \n", bmi);

	return 0;
}

/*
몸무게(kg) : 70.5
키(cm) : 178.3
몸무게 : 70.5 kg
키 : 178.3 cm
BMI: 22.18
계속하려면 아무 키나 누르십시오 . . .
*/

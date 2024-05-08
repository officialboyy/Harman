/*	5. 제어문
	키, 몸무게 입력 후 표준체중 구한 후 차이(절대치) 출력하기
*/

#include <stdio.h>		// printf

int main()
{
	double height, weight;
	double dif, std_weight;
  
	printf("\n키는?");
	scanf("%lf", &height);
	printf("몸무게는?");
	scanf("%lf", &weight);

	std_weight = (height - 100) * 0.9;	// 표준 체중 구하기
	
	dif = std_weight - weight;
	if (dif < 0 )						// 절대치 구하기
		dif = -dif;
	
	printf("나의 키 : %.1lf \n", height);
	printf("나의 몸무게 : %.1lf \n", weight);
	printf("키가 %.1lfcm인 사람의 표준체중 : %.1lfkg \n", height, std_weight);
	printf("표준체중과의 차이 : %.1lfkg \n", dif);

	return 0;
}
/* 실행 결과 

키는?180
몸무게는?75.5
나의 키 : 180.0
나의 몸무게 : 75.5
키가 180.0cm인 사람의 표준체중 : 72.0kg
표준체중과의 차이 : 3.5kg
계속하려면 아무 키나 누르십시오 . . .
*/
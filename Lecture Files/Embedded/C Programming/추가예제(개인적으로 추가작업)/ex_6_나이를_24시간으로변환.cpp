/*	6. 매크로
	나이를 입력받아서 인생시계 계산하는 프로그램(평균수명 80세를 24시간으로 함)
	참고 : 아프니까 청춘이다, 김난도지음
*/

#include <stdio.h>
#define LIFEHOUR(age) ((age * 18) / 60)		// 인생시계의 "시" 계산
#define LIFEMINUTE(age) ((age * 18) % 60)	// 인생시계의 "분" 계산

int main()
{
	int age;

	printf("나이 : ");
	scanf("%d", &age);

	printf("인생시계 : %d시 %d분\n", LIFEHOUR(age), LIFEMINUTE(age));
	
	return 0;
}

/*
실행결과

나이 : 21
인생시계 : 6시 18분
*/
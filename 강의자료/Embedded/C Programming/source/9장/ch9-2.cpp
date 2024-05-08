#include <stdio.h>
#define N 5

double compute_ave(int ary[N]);

int main()
{
	int i;
	int pass = 0, sum = 0;					// 합격자 수, 합격자 점수의 합
	int score[N] = {93, 82, 49, 55, 75};	// N명의 점수

	// 전체 학생의 평균 구하기
	printf("전체 평균: %.1lf \n", compute_ave(score));

	// 60점 이상 합격자의 평균 구하기
	for (i=0; i<N; i++)  
	{
		if (score[i] >= 60)    
		{
			sum += score[i];	// 60점 이상일 때만 sum에 점수 누적
			pass++;				// 60점 이상인 학생의 수를 1 증가
		}
	}
	printf("합격자의 평균: %.1lf \n", (double) sum /pass);

	return 0;
}

// 배열의 평균을 구하는 함수
double compute_ave(int ary[N])
{
	int i, sum = 0;

	for (i=0; i<N; i++)
		sum += ary[i];

	return (double)sum / N;
}

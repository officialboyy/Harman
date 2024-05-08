#include <stdio.h>
#include <math.h> // sqrt, pow 함수를 위한 헤더 파일
#define N 5

// 함수의 원형 선언
double compute_S(int arr[]);
double compute_avg(int arr[]);

int main()
{
	int i, kor[N] = {90, 89, 47, 78, 90};
	int music[N] = {99, 98, 86, 75, 100};

	// 배열 내용 출력하기
	printf("======================\n");
	printf("    번호  국어 음악   \n");
	printf("======================\n");
	for (i=0; i<N; i++)
		printf("   %3d번 %4d %4d \n", i+1, kor[i], music[i]);
	printf("======================\n");
	
	// 과목별 평균과 표준편차 출력하기
	printf ("평균:    %5.1lf %5.1lf\n", 
                        compute_avg(kor), compute_avg(music));
	printf ("표준편차:%5.1lf %5.1lf\n\n", 
                        compute_S(kor), compute_S(music));

	return 0;
}

// 배열의 표준편차를 구하는 함수
double compute_S(int arr[])
{
	int i;
	double sum, avg;

	// arr 배열의 평균을 구하기 위해 compute_avg 함수를 호출하기
	avg = compute_avg(arr);

	// arr 배열의 표준편차 구하기
	sum = 0;
	for (i=0; i<N; i++)
		sum = sum + pow(arr[i]-avg, 2);

	return sqrt(sum / N);
}

// 배열의 평균을 구하는 함수
double compute_avg(int arr[])
{
	int i, sum = 0;

	for (i=0; i<N; i++)
		sum = sum + arr[i];
	
	return (double)sum / N;
}
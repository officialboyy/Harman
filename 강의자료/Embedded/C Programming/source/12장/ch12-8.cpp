#include <stdio.h>			// fopen, fscanf, fprintf, fclose 함수를 위한 헤더 파일
#include <stdlib.h>			// eixt 함수를 위한 헤더 파일
#define MAX 100				// 배열 원소의 최대수

int main()
{
	FILE * fp;
	
	int n[MAX], size, random, pass, i, temp;

	fp = fopen("rand.txt", "r");		// 파일을 읽기 모드로 열기
	if (fp == NULL)						// 파일 열기 에러 처리
	{
		printf("파일 열기 에러! "); 	exit(1); 
	}

	// 파일에서 난수를 읽은 후 성공했다면 n 배열에 저장하기를 반복
	size = 0;							// 파일에서 읽은 난수의 수
	while ( fscanf(fp, "%d", &random) != EOF) 
	{ 
		n[size] = random;				// 파일에서 읽은 난수를 배열 원소로 저장
		size++;							// 파일에서 읽은 난수의 수를 1증가
	}
	fclose(fp);							// 파일 닫기
	
	for (pass=1; pass<size; pass++)		// n 배열을 오름차순 정렬하기(버블 정렬)
		for (i=0; i<size-1; i++)
		{
			if (n[i] > n[i+1])
			{
				temp = n[i];
				n[i] = n[i+1];
				n[i+1] = temp;
			}
		}

	// n 배열을 정렬한 결과를 파일에 쓰기
	fp = fopen("sort.txt", "w");
	if (fp == NULL)
	{
		printf("파일 열기 에러! ");	exit(1); 
	}

	for (i=0; i<size; i++)
		fprintf(fp, "%4d \n", n[i]);		
	fclose(fp);							// 파일 닫기

	return 0;
}


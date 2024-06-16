#include <stdio.h>				// fopen, fscanf, fclose, feof 함수를 위한 헤더 파일
#include <stdlib.h>				// exit 함수를 위한 헤더 파일

int main() 
{ 
	FILE * fp;					// 파일 포인터 선언
	int age;

	fp = fopen("age.txt", "r");	// 파일을 읽기 모드로 열기
	if (fp == NULL)				// 파일 열기 에러 처리
	{
		printf("파일 열기 에러!\n"); exit(1); 
	}

	// 파일에 저장된 모든 나이를 읽어서 모니터에 출력하기
	fscanf(fp, "%d", &age);		// 일단 파일에서 정수(나이) 읽기를 시도
	while (!feof(fp))			// 아직 파일의 끝을 지나지 않았다면 반복하기
	{ 		
		printf("%2d \n", age);	// 파일에서 읽은 정수(나이)를 모니터로 출력하기
		fscanf(fp, "%d", &age);	// 파일에서 다음 정수(나이) 읽기를 시도
	}

	fclose(fp);					// fp에 연결된 파일 닫기

	return 0;
} 


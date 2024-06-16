#include <stdio.h>

void find_PW();
void find_ID();

int main()
{	
	int service;						// 사용자가 요청한 서비스 번호 저장

	do
	{
		printf("\n <<< 1. ID 찾기 2. PW 찾기 3. 종료하기 >>> \n");
		printf(" 원하는 서비스 번호를 입력하세요(1~3) ");
		scanf("%d", &service);

		switch (service)
		{
			case 1: find_ID(); break;	// 아이디 찾기 서비스 진행
			case 2: find_PW();			// 비밀번호 찾기 서비스 진행
		}
	} while (service != 3);				// 3. 종료하기를 선택하지 않는 한 계속 반복하기

	return 0;
}

// 아이디 찾기 서비스 함수
void find_ID()
{
	static int count_ID = 0;			// 이 함수의 호출 횟수 저장

	count_ID++;							// find_ID 함수가 호출될 때마다 1씩 증가
	printf("\n 총 %d회째 ID 찾기 요청입니다. \n", count_ID);
}

// 비밀번호 찾기 서비스 함수
void find_PW()
{
	int count_PW = 0;					// 자동(지역) 변수

	count_PW++; 
	printf("\n 총 %d회째 비밀번호 찾기 요청입니다. \n", count_PW);
}

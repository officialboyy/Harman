#include <stdio.h>

void find_PW();
void find_ID();

char title[10] = "Quiz";		// 게임명

static int count_service;		// 총 서비스 요청 횟수 

int main()
{	
	int service;				// 사용자가 요청한 서비스 번호
	
	do
	{
		printf("\n <<< 1. ID 찾기 2. PW 찾기 3. 종료하기 >>> \n");
		printf(" 원하는 서비스 번호를 입력하세요(1~3) ");
		scanf("%d", &service);

		switch (service)
		{
			case 1: find_ID(); break;
			case 2: find_PW();					
		}
	} while (service != 3);		// 3. 종료하기를 선택하지 않는 한 계속 반복하기

	return 0;
}

// 아이디 찾기 서비스 함수
void find_ID()
{
	static int count_ID;		// 함수의 호출 횟수를 저장

	count_ID++;					// find_ID 함수가 호출될 때마다 1씩 증가
	count_service++;			// 전체 서비스 요청 횟수를 1 증가

	printf("\n %s 게임 방문 중 ", title);
	printf("총 전체 서비스 요청 %d번 중 %d회째 ID 찾기 요청입니다. \n", 
				count_service, count_ID);
}

// 비밀번호 찾기 서비스 함수
void find_PW()
{
	static int count_PW;		// 이 함수의 호출 횟수를 저장하는 정적 지역 변수 선언

	count_PW++;					// find_PW 함수가 호출될 때마다 1씩 증가
	count_service++;			// 전체 서비스 요청 횟수를 1 증가

	printf("\n %s 게임 방문 중 ", title);
	printf("총 전체 서비스 요청 %d번 중 %d회째 PW 찾기 요청입니다. \n", 
				count_service, count_PW);
}
/*
	5. 매크로
	대도시인지 판별하기
	대도시 조건 : 	1. 수도이거나 2. 인구가 20만 이상이고 총 세입이 1,720,000,000이상
	입력 : 수도, 인구, 일인당 납세금액
*/

#include <stdio.h>

#define TAXS 1720000000		// 총 세입
#define CITIZENS 200000		// 인구

int main()
{        
	char capital;		// 수도
	int citizens;		// 인구
	double tax;			// 일인당 납세금액

	printf("수도입니까?(y/n) "); scanf("%c", &capital);
	
	if (capital == 'y')
		printf("대도시입니다 \n");
	else 
	{	// 수도가 아니라고 할 때만 질문하기
		printf("인구는? "); scanf("%d", &citizens);
		printf("일인당 납세액은? "); scanf("%lf", &tax); 
	
		if (citizens >= CITIZENS && tax*12*citizens >= TAXS)
			printf("대도시 입니다.\n");
		else
			printf("대도시가 아닙니다.\n");
	}

	return 0;
}
/*
수도입니까?(y/n) n
인구는? 200000
일인당 납세액은? 880
대도시 입니다.
계속하려면 아무 키나 누르십시오 . . .
*/

/*
수도입니까?(y/n) y
대도시입니다
계속하려면 아무 키나 누르십시오 . . .
*/


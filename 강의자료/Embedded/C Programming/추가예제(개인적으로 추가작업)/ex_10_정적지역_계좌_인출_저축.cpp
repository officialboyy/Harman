/*	9. 변수의 참조 영역과 지속 기간
	계좌의 인출, 저축 반복 과정 동안 총 인출액, 저축액을 누적하고 계좌 잔액도 표시하기
*/

#include <stdio.h>

void save(int amount);		// amount 만큼 저축
void withdraw(int amount);	// amount 만큼 인출
void print_balance();		// 계좌 잔액 출력

int balance = 0;			// 계좌 현재 잔액, 전역 변수

int main()
{
	int amount, reply;

	do
	{
		printf("\n");
		printf("1. 저축 \n");
		printf("2. 인출 \n");
		printf("3. 종료 \n");
		printf(">> 원하는 메뉴는? "); scanf("%d", &reply);

		switch (reply)
		{
		case 1: printf("\n얼마를 저축하시겠습니까? )"); scanf("%d", &amount);
				save(amount);
				print_balance();
				break;
		case 2: printf("\n얼마를 인출하시겠습니까? )"); scanf("%d", &amount);
				withdraw(amount);
				print_balance();
				break;
		case 3: return 0;
		}

	} while(reply != 3);
		
	return 0;
}

void save(int amount)
{
	static int total;			// 지금까지의 총 저축액을 누적하기 위한 정적 지역 변수
	
	balance = balance + amount;
	total += amount;
	printf("지금까지 총저축액은 %d입니다.\n", total);
}

void withdraw(int amount)
{
	static int total;			// 지금까지의 총 인출액을 누적하기 위한 정적 지역 변수
	
	balance = balance - amount;
	total += amount;
	printf("지금까지 총인출액은 %d입니다.\n", total);
}

void print_balance()
{
	printf("\n현재 잔액은 %d입니다.\n", balance);
}

/*

1. 저축
2. 인출
3. 종료
>> 원하는 메뉴는? 1

얼마를 저축하시겠습니까? )20000
지금까지 총저축액은 20000입니다.

현재 잔액은 20000입니다.

1. 저축
2. 인출
3. 종료
>> 원하는 메뉴는? 1

얼마를 저축하시겠습니까? )30000
지금까지 총저축액은 50000입니다.

현재 잔액은 50000입니다.

1. 저축
2. 인출
3. 종료
>> 원하는 메뉴는? 2

얼마를 인출하시겠습니까? )30000
지금까지 총인출액은 30000입니다.

현재 잔액은 20000입니다.

1. 저축
2. 인출
3. 종료
>> 원하는 메뉴는? 1

얼마를 저축하시겠습니까? )70000
지금까지 총저축액은 120000입니다.

현재 잔액은 90000입니다.

1. 저축
2. 인출
3. 종료
>> 원하는 메뉴는? 3
계속하려면 아무 키나 누르십시오 . . .
*/

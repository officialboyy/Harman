/*	9. 참조영역
	빈 배열에 자료를 추가하되 정렬이 되도록 저장하기
	배열과 배열에 실제 저장된 자료의 수를 전역으로 선언하기
*/
	
#include <stdio.h>

#define MAX 10							// 배열의 최대 크기

void output();							// 배열 내용 출력
void insertion(int new_data);			// 배열에 자료 추가

int size = 3;							// 배열에 저장된 실제 값의 개수, 전역 변수로 선언, 프로그램 편의를 위해 3으로 초기화함
int d[MAX] = {10, 20, 30};				// 모든 함수에서 사용하는 배열을 전역으로 선언, 3개의 값으로 초기화 함

int main()
{
	
	int position, value;				// 배열에 추가할 위치, 추가할 값
	char reply;

	do
	{		
		output();						// 현재 배열의 상태 표시

		if (size == MAX)
		{
			printf("더이상 추가할 곳이 없습니다.\n");
			break;
		}
				
		printf("자료를 추가하시겠습니까? (y/n) "); 
				
		fflush(stdin);				// 이전 target 입력시 누른 <enter>키가 버퍼에 남아있다가 
									// 곧바로 reply에 저장되는 것을 막기 위해 버퍼를 비움
		scanf("%c", &reply);

		if (reply == 'n' || reply == 'N')
			break;		
					
		printf("\n 추가할 자료의 값은? "); 
		scanf("%d", &value);

		insertion(value);			// 값 추가 함수 호출
		
	} while (1);	

	return 0;
}

// d 배열에 new_data 값을 추가하되 정렬이 유지되게 하기
void insertion(int new_data)
{
	int target, j;

	// 새로 추가할 값보다 크거나 같은 최초의 값이 저장된 배열 원소의 첨자 찾기
	target = 0;
	while ((new_data > d[target]) && (target<size))
		target++;
	
	// 삽입될 자리 d[target]이후의 원래 값들을 한 칸씩 뒤로 미루기
	for (j=size; j>target; j--)
		d[j] = d[j-1];

	// 새 값을 배열에 넣기
	d[target] = new_data;	
	size++;						// 배열의 실제 자료 수 1 증가
}

// 배열 내용 출력 함수
void output()
{
	int i;
	
	printf("\n============\n");
	for (i=0; i<size; i++)
		printf("%2d  %3d \n", i+1, d[i]);	
	printf("============\n");
}

/*

============
 1   10
 2   20
 3   30
============
자료를 추가하시겠습니까? (y/n) y

 추가할 자료의 값은? 15
============
 1   10
 2   15
 3   20
 4   30
============
자료를 추가하시겠습니까? (y/n) y

 추가할 자료의 값은? 50
============
 1   10
 2   15
 3   20
 4   30
 5   50
============
자료를 추가하시겠습니까? (y/n) n
계속하려면 아무 키나 누르십시오 . . .
*/
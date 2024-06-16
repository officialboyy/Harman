/*	10. 포인터
	배열에 저장된 자료 값 중 사용자가 원하는 값을 배열에 추가하기
*/
	
#include <stdio.h>

#define MAX 10							// 배열의 최대 크기

void output(int data[]);				// 배열 내용 출력
void insertion(int data[], int new_data, int target);// 배열에 자료 추가

int size = 3;							// 배열에 저장된 실제 값의 개수, 전역 변수로 선언, 프로그램 편의를 위해 3으로 초기화함
	
int main()
{
	int d[MAX] = {10, 20, 30};			// 배열 자료, 3개의 값으로 초기화 함
	int position, value;				// 배열에 추가할 위치, 추가할 값
	char reply;

	do
	{		
		output(d);					// 현재 배열의 상태 표시

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
					
		while (1)					// 제거 번호의 유효성 검사
		{
			printf("\n 추가할 자료의 위치는 (1~%d)?", size+1); 
			scanf("%d", &position);
		
			if (position < 1 || position > size+1)
					printf("잘못 선택하셨습니다.\n");
			else
				break;
		} 
		printf("\n 추가할 자료의 값은? "); 
		scanf("%d", &value);

		insertion(d, value, position-1);		// 값 추가 함수 호출
		
	} while (1);	

	return 0;
}

// data 배열에 data[target] 원소로 new_data 값을 추가하기
void insertion(int data[], int new_data, int target)
{
	int *current, i;
	// current가 가리키는 곳에 바로 앞의 배열 원소 값을 current가 가리키는 곳으로 이동시키기, 즉 한칸씩 뒤로 밀기
	for (current = &data[size]; current>&data[target] ; current--)
	{
		*current = *(current-1);
	}
	*current = new_data;			// 추가값을 배열 지정 장소에 대입
	
	size++;							// 배열 자료수 1 증가
}


// 배열 내용 출력 함수
void output(int data[])
{
	int i;
	
	printf("\n============\n");
	for (i=0; i<size; i++)
		printf("%2d  %3d \n", i+1, data[i]);	
	printf("============\n");
}

/*

=
============
 1   10
 2   20
 3   30
============
자료를 추가하시겠습니까? (y/n) y

 추가할 자료의 위치는 (1~4)?4

 추가할 자료의 값은? 40

============
 1   10
 2   20
 3   30
 4   40
============
자료를 추가하시겠습니까? (y/n) y

 추가할 자료의 위치는 (1~5)?2

 추가할 자료의 값은? 15

============
 1   10
 2   15
 3   20
 4   30
 5   40
============
자료를 추가하시겠습니까? (y/n) n
계속하려면 아무 키나 누르십시오 . . .
*/
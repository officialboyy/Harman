/*	10. 포인터
	배열에 저장된 자료 값 중 사용자가 원하는 값을 포인터를 이용하여 제거하기
*/
	
#include <stdio.h>

#define MAX 10							// 배열의 최대 크기

void output(int data[]);				// 배열 내용 출력
void deletion(int data[], int target);	// 배열 자료 제거

int size = MAX;							// 배열에 저장된 실제 값의 개수, 전역 변수로 선언
	
int main()
{
	int d[MAX] = {85, 90, 91, 92, 93, 86, 91, 85, 80, 79};	// 배열 자료
	int position;
	char reply;

	do
	{		
		if (size == 0)
		{
			printf("더이상 제거할 자료가 없습니다.\n");
			break;
		}

		output(d);					// 현재 배열의 상태 표시
		printf("자료를 선택해서 제거하시겠습니까? (y/n) "); 
		
		fflush(stdin);				// 이전 target 입력시 누른 <enter>키가 버퍼에 남아있다가 
									// 곧바로 reply에 저장되는 것을 막기 위해 버퍼를 비움
		scanf("%c", &reply);

		if (reply == 'n' || reply == 'N')
			break;		
					
		while (1)					// 제거 번호의 유효성 검사
		{
			printf("\n 제거할 자료의 번호는 (1~%d)?", size); 
			scanf("%d", &position);
		
			if (position < 1 || position > size)
					printf("잘못 선택하셨습니다.\n");
			else
				break;
		} 

		deletion(d, position-1);		// 값 제거 함수 호출

		size--;						// 배열의 실제 자료 수 1 감소
	} while (1);
	

	return 0;
}

// data 배열에서 data[target] 원소를 제거하기
void deletion(int data[], int target)
{
	int *current;

	current = &data[target];		// 제거할 배열 원소를 current 포인터가 가리키게 함
	
	// current가 가리키는 곳으로 current 바로 뒤의 배열 원소 값을 이동하기, 즉 한칸씩 앞으로 당기기
	for (current = &data[target]; current<&data[size-1]; current++)
	{
		*current = *(current + 1);	// current가 가리키는 곳 다음 원소의 값을 current가 가리키는 곳으로 이동하기
	}
	for (current = &data[size-1]; current<&data[MAX]; current++)
	{
		*current = -1;				// 배열 끝에 유효하지 않은 데이터임을 표시하기 위해 -1을 대입
	}

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

============
 1   85
 2   90
 3   91
 4   92
 5   93
 6   86
 7   91
 8   85
 9   80
10   79
============
자료를 선택해서 제거하시겠습니까? (y/n) y

 제거할 자료의 번호는 (1~10)?3

============
 1   85
 2   90
 3   92
 4   93
 5   86
 6   91
 7   85
 8   80
 9   79
============
자료를 선택해서 제거하시겠습니까? (y/n) y

 제거할 자료의 번호는 (1~9)?5

============
 1   85
 2   90
 3   92
 4   93
 5   91
 6   85
 7   80
 8   79
============
자료를 선택해서 제거하시겠습니까? (y/n) y

 제거할 자료의 번호는 (1~8)?8

============
 1   85
 2   90
 3   92
 4   93
 5   91
 6   85
 7   80
============
자료를 선택해서 제거하시겠습니까? (y/n) n
계속하려면 아무 키나 누르십시오 . . .
*/
#include <stdio.h>
#define N 5

struct person 					// 구조체 정의
{
	char name[7], gender[3];	// 이름, 성별
	int age;					// 나이
};

int main()
{
	int i;	
	struct person *ptr;			// ptr을 person형 구조체를 가리키는 포인터로 선언
	
	// N개의 구조체 원소를 갖는 배열 선언과 초기화
	struct person user[N] = { {"나태희", "여"}, {"유현빈", "남"},
	               	{"나원빈", "남"}, {"문건영", "여"}, {"소지법", "남"} }; 

	// ptr 포인터가 차례대로 다음 원소를 가리키게 한 후 사용자의 나이를 입력받기
	ptr = user;					// ptr이 user 배열을 가리키게 하기
	for (i=0; i<N; i++)
	{
		// user[i]의 age 멤버의 값을 입력받기
		printf("%s의 나이는? ", (*ptr).name);
		scanf("%d", &(*ptr).age);
		
		ptr++;					// ptr이 user 배열의 다음 원소를 가리키게 함 즉 user[i+1]을 가리킴
	}

	// ptr 포인터가 차례대로 다음 원소를 가리키게 한 후 구조체의 정보를 출력하기
	printf("\n 이름   성별	나이 \n");
	printf("======================\n");
	ptr = user;					// 현재 마지막 원소를 가리키는 ptr을 다시 첫 원소를 가리키게 하기
	for (i=0; i<N; i++)
	{
		// 현재 ptr은 user[i]를 가리키므로 ptr을 이용하여 배열 원소의 멤버를 출력할 수 있다.
		printf("%s\t %s\t %d\n", ptr->name, ptr->gender, ptr->age);

		ptr++;					// ptr이 user 배열의 다음 원소를 가리키게 함
	}
	printf("======================\n\n");
	
	return 0;
}


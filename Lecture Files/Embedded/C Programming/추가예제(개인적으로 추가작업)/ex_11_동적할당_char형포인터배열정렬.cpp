/*	11. 구조체
	char형 포인터 배열과 각 포인터 배열 원소의 동적 할당, 문자열 입력, 정렬, 출력
	([프로그램 10-16] char형 포인터 배열을 이용한 문자열 저장 및 정렬을 수정한 것)
*/

#include <stdio.h>
#include <string.h>						// strcmp
#include <stdlib.h>						// malloc

#define NAME_LEN 30						// 이름 최대 길이

int main()
{
	// char형 포인터 배열을 가리킬 포인터 gold 선언, gold는 char형 포인터 배열의 시작위치를 가리키는 포인터므로 char **
	char** gold;				
	
	char temp_str[NAME_LEN];	// 입력된 문자열을 저장할 배열
	char * temp;				// 문자열 주소를 임시로 저장할 포인터
	int size, i, j;				// 배열에 저장된 문자열의 수
	
	// char형 포인터 배열 gold의 원소수를 size에 입력받기
	printf("저장할 이름 개수는? "); scanf("%d", &size);

	// gold에 char형 포인터(char *)를 size개 저장할 동적 배열 메모리 할당받기
	gold = (char **) malloc(sizeof(char*) * size);	

	// 배열에 문자열 입력하기
	for (i=0; i<size; i++)				
	{
		printf("%d번째 이름은? ", i+1);	
		scanf("%s", &temp_str); // gets(temp_str);
	
		// 입력된 이름의 실제 길이를 이용하여 gold[i]에 문자열 저장할 동적 메모리 할당받기
		gold[i] = (char *) malloc(sizeof(char) * strlen(temp_str+1));
		strcpy(gold[i], temp_str);		// 동적 메모리에 입력된 이름을 복사하기		
	}	
	
	// 교환 정렬을 이용하여 이름을 가나다순으로 정렬하기
	for (i=0; i<size-1; i++)
		for (j=i+1; j<size; j++)
			if (strcmp(gold[i], gold[j]) > 0)
			{
				// 문자열의 시작주소를 저장한 gold[i]와 gold[j]를 교환
				temp = gold[i];
				gold[i] = gold[j];
				gold[j] = temp;
			}

	printf("** 금메달 리스트 : ");	
	for (i=0; i<size; i++)				// 정렬 전 배열 내용 출력하기
		printf("%s, ", gold[i]);
	printf("\b\b **\n\n");				// \b를 이용하여 마지막 이름 뒤의 , 지우기

	return 0;
}

/*
저장할 이름 개수는? 5
1번째 이름은? 한빛
2번째 이름은? 성춘향
3번째 이름은? 이몽룡
4번째 이름은? 사공민국
5번째 이름은? 황해
** 금메달 리스트 : 사공민국, 성춘향, 이몽룡, 한빛, 황해 **

계속하려면 아무 키나 누르십시오 . . .
*/
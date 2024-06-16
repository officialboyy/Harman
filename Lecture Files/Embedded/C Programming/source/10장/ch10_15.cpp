//[프로그램 10-15] char형 2차원 배열을 이용한 문자열 저장 및 정렬 (ch10-15.cpp)
#include <stdio.h>
#include <string.h>						// strcmp, strcpy 함수를 위한 헤더 파일
#define SIZE 5									// 배열의 원소수 
 
int main()
{
	char silver[SIZE][10] = {"나태희", "유빈", "나원빈", "문건영", "소지법"};
	char temp[10];							// 문자열 주소를 임시로 저장할 포인터
	int pass, i;
	
	printf("** 은메달 리스트 : "); 	
	for (i=0; i<SIZE; i++)				// 정렬 전 배열 내용 출력하기
		printf("%s, ", silver[i]);
	printf("\b\b **\n\n");			// \b를 이용하여 마지막 이름 뒤의 , 지우기

	//silver[i] 문자열이 silver[i+1]보다 뒤에 나오는 문자열이라면 0보다 큰 값이 반환된다.

	// 버블 정렬을 이용하여 이름을 가나다순으로 정렬하기
	for (pass=1; pass<SIZE; pass++)
		for (i=0; i<SIZE-pass; i++)
			if (strcmp(silver[i], silver[i+1]) > 0)

	//두 문자열의 내용을 교환하기
			{
				strcpy(temp, silver[i]);
				strcpy(silver[i], silver[i+1]);
				strcpy(silver[i+1], temp);
			}
	
	printf("** 정렬한 리스트 : ");	
	for (i=0; i<SIZE; i++)				// 정렬 후 배열 내용 출력하기
		printf("%s, ", silver[i]);
	printf("\b\b **\n");				// \b를 이용하여 마지막 이름 뒤의 , 지우기

	return 0;
}


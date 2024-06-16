//[프로그램 10-13] char형 포인터를 인수로 전달하는 예 (ch10-13.cpp)
#include <stdio.h>
#include <string.h>		// strlen 함수를 위한 헤더 파일

void print(char *string);

//i가 1씩 감소하므로 출력을 시작하는 문자의 위치가 한 칸씩 당겨진다.
int main()
{
	char *s = "C-Language";
	int i;

	// s 문자열의 (i+1)번째 문자부터 끝까지 출력하기를 반복하기
	for (i=strlen(s); i>=0; i--)
		print(s+i);

	//전달되는 s+i는 주소이므로 string은 주소를 저장하는 포인터 변수여야 한다.

	return 0;
}

// string이 가리키는 곳부터 문자열 끝까지 출력하는 함수
void print(char *string) 
{
	printf("%s\n", string);
}


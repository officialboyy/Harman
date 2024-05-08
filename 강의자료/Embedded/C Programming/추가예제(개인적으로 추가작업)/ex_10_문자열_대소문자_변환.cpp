/*	10. 포인터
	입력받은 문자열의 대/소문자를 바꾸기
*/

#include <stdio.h>
#include <ctype.h>	// toupper와 tolower 함수를 위한 헤더파일
#include <string.h>	// strlen 함수를 위한 헤더파일

int main()
{
	char rawString[100];
	char *p;

	printf("문자열을 입력하세요 : ");
	gets(rawString);

	p = rawString;

	while (*p != '\0')			// 문자열의 끝이 아니라면
	{
		if (isalpha(*p))		// 영어 알파벳이라면
		{
			if (islower(*p))	// 소문자 -> 대문자
				*p = toupper(*p);
			else				// 대문자 -> 소문자
				*p = tolower(*p);
		}

		p++;					// 다음 문자로 이동
	}
		
	printf("변환 결과 : %s\n", rawString);	

	return 0;
}

/*
실행결과

문자열을 입력하세요 : i LOve yoU..!
변환 결과 : I loVE YOu..!
*/
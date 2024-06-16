/*	12. 파일 입출력
	fread/fwrite 함수를 이용 파일 복사하기
*/

#include <stdio.h>		
#include <stdlib.h>			// exit

#define MAX_SIZE 9			// 버퍼 크기
#define MAX_NAME 50			// 파일명 최대 길이

int main()
{
	char buf[MAX_SIZE];
	int end;
	char src[MAX_NAME], dst[MAX_NAME];	// 원본 파일명, 복사본 파일명
	FILE *fp_w, *fp_r;

	fputs("원본 이름: ", stdout);
	gets(src);

	fputs("복사본 이름: ", stdout);
	gets(dst);

	fp_r = fopen(src, "rb");			// 이진 파일을 읽기 모드로 열기
	fp_w = fopen(dst, "wb");			// 이진 파일을 쓰기 모드로 열기

	if (fp_r == NULL)
	{
		puts("원본 파일 열기 실패!");
		exit(1);
	}
	if (fp_w == NULL)
	{
		puts("복사본 파일 만들기 실패!");
		exit(1);
	}
	
	// 파일에서 읽은 문자 수가 0보다 크다면, 읽은 문자 수만큼 파일에 쓰기
	while ( (end = fread(buf, sizeof(char), sizeof(buf), fp_r)) > 0)	
	{
		fwrite(buf, sizeof(char), end, fp_w);
	}
	
	fclose(fp_r);
	fclose(fp_w);
	puts("복사완료");	
	
	return 0;
}

/*	그림 파일 복사하기 예
원본 이름: 펭귄.jpg
복사본 이름: 펭귄_복사본.jpg
복사완료
계속하려면 아무 키나 누르십시오 . . .
*/

/*	단순 텍스트 파일 복사하기 예
원본 이름: blank.txt
복사본 이름: blank_copy.txt
복사완료
계속하려면 아무 키나 누르십시오 . . .
*/

#include <stdio.h> 				// fgetc, fputc, fopen, fclose 함수를 위한 헤더 파일
#include <stdlib.h>				// exit 함수를 위한 헤더 파일

int main() 
{ 
	FILE * fp1, * fp2;			// 읽기용, 쓰기용 파일 포인터
	char ch;				

	// "blank.txt" 파일을 읽기 모드로 열기
	fp1 = fopen("blank.txt", "r");	
	if (fp1 == NULL)			// 파일 열기 에러 처리
	{
		printf(" %s란 파일이 없습니다. \n", "blank.txt"); exit(1);	
	} 

	// 결과 파일을 쓰기 모드로 열기
	fp2 = fopen("no_blank.txt", "w");
	if (fp2 == NULL)			// 파일 열기 에러 처리
	{
		printf(" %s란 파일을 만들지 못했습니다. \n", "no_blank.txt"); exit(1);	
	} 

	// 파일의 끝에 도달하지 않아서 ch에 저장된 값이 EOF가 아니라면 복사본에 쓰기를 반복
	while ((ch = fgetc(fp1)) != EOF)
		if (ch != ' ')
			fputc(ch, fp2);		// 복사본 파일에 읽은 문자 쓰기

	fclose(fp1); fclose(fp2);	// 파일 닫기
	
	return 0;
} 

/* "blank.txt" 파일 내용
Twinkle, Twinkle, little star. 
How I wonder what you are. 
Up above the world so high, 
like a diamond in the sky. 
Twinkle, Twinkle, little star. 
How I wonder what you are!

*/

/* "no_blank.txt" 파일 내용
Twinkle,Twinkle,littlestar.
HowIwonderwhatyouare.
Upabovetheworldsohigh,
likeadiamondinthesky.
Twinkle,Twinkle,littlestar.
HowIwonderwhatyouare!
*/


/*	12. 파일 입출력
    텍스트 파일에서 문자, 어절, 행, 공백 행 수 구하기
*/

#include <stdio.h>
#include <stdlib.h>

int count_chs(FILE *f);
int count_words(FILE *f);
int count_lines(FILE *f);
int count_blank_lines(FILE *f);

int main()
{
	char filename[50];
	FILE *f;

	printf("파일 이름을 입력하세요: ");
	scanf("%s", filename); 

	if (!(f = fopen(filename, "r"))) 
	{
		printf("파일을 열 수 없습니다...");
		exit(1);
	}
	
	printf("문자 수     : %12d\n", count_chs(f));
	printf("어절 수     : %12d\n", count_words(f));
	printf("행   수     : %12d\n", count_lines(f));
	printf("공백 행 수  : %12d\n", count_blank_lines(f));

	fclose(f);

	return 0;
}

// 문자 수 구하는 함수
int count_chs(FILE *f)
{
	char ch;
	int nch = 0;

	rewind(f); // 파일 처음으로 이동
	while ((ch=fgetc(f)) != EOF)
	{
		if (ch != '\n')
			nch++;
	}

	return nch;
}

// 어절 수 구하는 함수
int count_words(FILE *f)
{
	char ch;
	int nword = 0;

	rewind(f);	// 파일 처음으로 이동
	while ((ch=fgetc(f)) != EOF)
	{
		if (ch==' ' || ch=='\t' || ch=='\n') // 공백, 탭, 개행 문자이면 어절.
			nword++;
	} 

	return nword;
}

// 개행문자 수 구하는 함수
int count_lines(FILE *f)
{
	char ch;
	int nline = 0;
	
	rewind(f);	// 파일 처음으로 이동
	while((ch=fgetc(f))!=EOF){

		if(ch=='\n') //개행문자 이면 행 수 증가
			nline++;

	} 

	return nline;
}

// 공백 행 수 구하는 함수
int count_blank_lines(FILE *f)
{
	char ch;
	char prech;
	int bline=0;

	rewind(f);	// 파일 처음으로 이동
	while((ch=fgetc(f))!=EOF){
		if(ch=='\n' && prech=='\n')	// 연속으로 개행 문자가 나오면 공백 행
			bline++;
		prech=ch;
	} 

	return bline;
}



/*
파일 이름을 입력하세요: ex_12_파일_문자_어절_행_공백행수_구하기.cpp
문자 수     :         1665
어절 수     :          425
행   수     :          112
공백 행 수  :           23
계속하려면 아무 키나 누르십시오 . . .
*/


#include <stdio.h>
#include <string.h>		// strlen, strcpy 함수를 위한 헤더 파일
#include <stdlib.h>		// malloc, free, eixt 함수를 위한 헤더 파일

struct book_info
{
	int year;			// 출판년도
	char *title;		// 도서명	
};
typedef struct book_info BOOK;	

int main()
{
 	BOOK *books;		// 도서 정보를 저장할 동적 배열을 가리킬 포인터
	int size, i;		// 정보를 입력받을 도서 권수 
	char temp[101];		// 입력된 도서명을 저장할 임시 저장소

	do					// 도서 권수 입력(1이상의 값 입력받기)
	{
		printf("정보를 입력할 도서 권수 : "); scanf("%d", &size); 
		if (size <= 0)
			printf("에러 : 권수를 잘못 입력하였습니다. 다시 입력하세요 ");
	} while (size <= 0);

 	// 도서 권수만큼 정보를 저장할 기억장소 할당받기
	books = (BOOK*) malloc(sizeof(BOOK)*size); // 구조체 배열을 위한 동적 할당
	if (books == NULL)
	{
		puts("에러 : 메모리 할당 실패로 프로그램을 종료합니다.");
		exit(1);		// 프로그램 실행 중단
	 }
 
 	// size권의 도서 정보 입력
	for (i=0; i<size; i++)
	{
  		printf("%d) 도서 이름 : ", i+1); 
		fflush(stdin); // gets에서 새로 입력받도록 입력용 버퍼 비우기 
		gets(temp); 
		
		// 문자열을 위한 동적 할당
		books[i].title = (char*) malloc(sizeof(char)*(strlen(temp)+1));
 		if (books[i].title == NULL)
		{
			puts("에러 : 메모리 할당 실패로 프로그램을 종료합니다.");
			exit(1);	// 프로그램 실행 중단
 		}
		// 임시 저장소에 입력한 도서명을 실제 title 멤버에 복사하기	
		strcpy(books[i].title, temp);
	
  		printf("   출판년도 : "); 
		scanf("%d", &(books[i].year));
	}
	
 	// books 배열에 저장된 size권의 도서 정보 출력	
	printf("\n >> 도서 정보 목록 << \n");
	printf("\n 순번 도서명 출판년도  ");
	printf("\n =====================\n");
 	for (i=0; i<size; i++)
	{
  		printf("%3d %-12s %4d\n", i+1, books[i].title, books[i].year);
 	}
	printf(" =====================\n");
	
	// char형 배열 멤버 title에 할당된 동적 기억장소 해제하기
	for (i=0; i<size; i++)
  		free(books[i].title);
	free(books);		// 구조체 배열을 위한 동적 할당 기억장소 해제

 	return 0;
}
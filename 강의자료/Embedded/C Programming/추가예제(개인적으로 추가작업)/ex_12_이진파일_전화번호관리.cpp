/*	12. 파일 입출력
 이진 파일 입출력 함수 read, write를 사용하여 전화번호를 추가, 삭제. 
*/

#include <stdio.h>				// scanf, printf 함수를 위한 헤더 파일
#include <string.h>				// strcmp 함수를 위한 헤더 파일
#include <conio.h>				// getch 함수를 위한 헤더 파일
#include <stdlib.h>				// system 함수를 위한 헤더 파일
#define MAX 50					// 구조체 배열에 저장할 수 있는 최대 원소 수

struct phone					// 구조체 정의
{	
	 char name[9];				// 이름
	 char no[14];				// 전화번호
};

// 프로그램에서 사용하는 함수의 원형 선언
void add(struct phone book[]);				// 새 개인 정보 등록
void output_list(struct phone book[]);		// 전체 개인 정보 출력
void remove(struct phone book[]);			// 특정 개인 정보 제거
int find_index(struct phone book[], char *name);	// 구조체 배열에서 특정 이름에 해당하는 배열원소 첨자 구하기
void load(struct phone book[]);
void save(struct phone book[]);
void reset(struct phone book[]);

int size;								// 배열에 저장된 개인 정보(구조체) 수, 전역 변수로 선언
char db_name[] = "phonebook.db";

int main()
{
	struct phone book[MAX];				// 구조체 배열 선언
	int menu;

	load(book);
	do  
	{	
		// 화면에 메뉴 표시
		printf("       전화번호 관리       \n\n");
		printf(" 1. 보기  2. 등록  3. 삭제 4. 초기화 9. 끝내기\n\n");
		printf("       메뉴 선택 [ ]\b\b"); scanf("%d", &menu);
		fflush(stdin);

		switch (menu) 							// 메뉴 선택에 따라 함수 호출하기
		{ 			
			case 1: output_list(book); break;	// 전체 개인 정보 출력
			case 2: add(book); break;			// 새 개인 정보 추가
			case 3: remove(book); break;		// 특정 개인 정보 제거
			case 4: reset(book); break;
			case 9: return 0;					// 프로그램 실행 끝내기
			default: printf("\n메뉴를 잘못 선택하였습니다.\n\n");
		}

		// 사용자가 화면의 결과를 확인한 후 아무키나 누르면 계속하기
		printf("\n >> 계속하려면 아무키나 누르세요."); getch();
		system("cls");						// 현재 화면 지우기
	} while (menu != 9);					// 4. 끝내기를 선택하지 않는 한 반복하기
	
	return 0;
}

// 새 개인 정보를 입력받아 추가하는 함수
void add(struct phone book[])
{
	if (size < MAX)							// 개인 정보를 추가할 수 있는 경우
	{
		printf("  등록할 이름? "); gets(book[size].name);
		printf("  전화번호? "); gets(book[size].no); 
		printf("  %s 정보 등록 완료! \n ", book[size].name);

		size++;	// 배열에 저장한 개인 정보 수를 1증가(전역변수)
		save(book);
	}
	else
		printf("현재 최대 %d명의 정보가 등록되어 있어 추가가 불가능합니다. ", MAX);
}

// 구조체 배열 book에 저장된 개인 정보를 출력하는 함수
void output_list(struct phone book[])
{
	int i, j;
	struct phone temp;

	printf("	<< 전화번호목록(이름순) >> \n");
	for (i=0; i<size-1; i++)
		for(j=i; j<size; j++)
			if(strcmp(book[i].name, book[j].name)>0) {
				temp = book[i];
				book[i] = book[j];
				book[j] = temp;
			}
	for (i=0; i<size; i++)
		printf(" %-8s   %-13s \n", book[i].name, book[i].no);	// 배열 원소 즉 구조체 출력하기
}

// 구조체 배열 book에서 이름이 name인 개인의 정보를 제거하는 함수
void remove(struct phone book[])
{
	int i, index;
	char name[20];
	
	printf("\n 삭제할 이름? ");  gets(name);

	index = find_index(book, name);		// 삭제할 이름과 같은 개인 정보가 저장된 배열 원소의 첨자 구하기
	
	if (index == -1)
		printf("%s는 등록된 이름이 아닙니다. \n", name);
	else
	{
		for (i=index; i<size-1; i++)
		{
			book[i] = book[i+1];
		}
		size--;	
		save(book);
	}
}

void reset(struct phone book[]) 
{
	char y_n;
	printf("\n모두 삭제하시겠습니까?(y/n) : ");
	scanf("%c", &y_n);
	if(y_n=='y') {
		size = 0;
		save(book);
	}
}

// 구조체 배열 book에서 이름이 name인 구조체 원소의 배열 첨자를 구하는 함수
int find_index(struct phone book[], char *name)
{
	int i;
		
	for (i=0; i<size; i++)
		if (strcmp(book[i].name, name) == 0)	// 동일인을 찾은 경우
		{
			return i;				
		}

	return -1;									// 동일인을 찾지 못한 경우
}

//파일로 부터 레코드를 read하여 구조체 배열 book에 로드
void load(struct phone book[]) {
	FILE *db = fopen(db_name, "rb");
	int position;

	if(db==NULL)
		return;
	
	//레코드 크기를 계산
	fseek(db, 0, SEEK_END);
	position = ftell(db);
	size = position/sizeof(struct phone); 

	//커서를 파일의 처름으로.
	rewind(db);

	//size만큼의 레크드를 read
	fread(book, sizeof(struct phone)*size, 1, db);
	fclose(db);
}

//구조체 배열 book을 파일에 저장
void save(struct phone book[]) {
	FILE *db = fopen(db_name, "wb");

	//size
	fwrite(book, sizeof(struct phone)*size, 1, db);
	fclose(db);
}

/*

          전화번호 관리

 1. 보기  2. 등록  3. 삭제 4. 초기화 9. 끝내기

       메뉴 선택 [2]
  등록할 이름? 나태희
  전화번호? 010-2201-3212
  나태희 정보 등록 완료!

 >> 계속하려면 아무키나 누르세요.

           전화번호 관리

 1. 보기  2. 등록  3. 삭제 4. 초기화 9. 끝내기

       메뉴 선택 [1]
        << 전화번호목록(이름순) >>
 나태희     010-2201-3212

 >> 계속하려면 아무키나 누르세요.



        전화번호 관리

 1. 보기  2. 등록  3. 삭제 4. 초기화 9. 끝내기

       메뉴 선택 [3]

 삭제할 이름? 나태희

 >> 계속하려면 아무키나 누르세요.


       전화번호 관리

 1. 보기  2. 등록  3. 삭제 4. 초기화 9. 끝내기

       메뉴 선택 [1]
        << 전화번호목록(이름순) >>

 >> 계속하려면 아무키나 누르세요.
*/
      
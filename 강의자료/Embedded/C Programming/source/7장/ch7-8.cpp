#include <stdio.h>

int main()
{
	char university[11], name[10]; // 문자열을 저장할 배열
	char std_no[9];

	// 사용자의 정보를 입력받기
	printf("학교명은? ");
	scanf("%s", university);

	printf("학번은? ");
	scanf("%s", std_no);
	fflush(stdin);
	printf("이름은? ");
	gets(name);	// 빈 칸이 포함된 이름도 입력받을 수 있도록 gets 함수를 이용

	printf("=================================\n");
	printf("%s %c%c학번 %s \n", 
                            university, std_no[2], std_no[3], name);

	printf("=================================\n");

	return 0;
}

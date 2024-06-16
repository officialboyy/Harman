/*	11. 구조체
	학생의 학번, 중간, 기말 점수를 저장한 구조체 배열에서 학번으로 점수 조회하기
*/

#include <stdio.h>		// printf, scanf
#include <string.h>		// strcmp

#define SIZE 7          // 인원수
#define ID_LEN 7		// 학번길이

struct std_info			// 구조체 정의
{  
	char id[ID_LEN];		// 학번(최대 6개+널 문자) 저장 배열 멤버
	int  mid;			// 중간 점수	
	int  final;			// 기말 점수
};

int main()
{
	// 구조체 배열 선언 및 초기화
	struct std_info std[SIZE] = {{"131008", 85, 92}, {"121022", 89, 91},{"141125", 78, 82}, 
									{"111307", 98, 97}, {"101639", 87, 90}, {"141052", 79, 89},{"130785", 89, 93}};	
	int item, score, i;	
	char user_id[ID_LEN];		// 사용자가 입력할 학번

	/* 학생의 정보 입력 
	printf(">> 학생의 정보(학번, 중간, 기말)을 입력하세요. << \n");
	for (i=0; i<SIZE; i++)  
	{ 
		printf("%d번째 학생: ", i+1);
		scanf("%s %d %d", 
               std[i].id, &std[i].mid, &std[i].final);	
	} 
	*/
	
	printf("점수를 조회할 학번은? "); scanf("%s", &user_id);
		
	// 입력 점수 이상인 점수만 출력하기
	printf("\n------------------\n");
	printf("  학번  중간 기말 ");
	printf("\n------------------\n");
	for (i=0; i<SIZE; i++)
	{
		if (strcmp(std[i].id, user_id) == 0)
		{
			printf(" %s %3d  %3d \n", std[i].id, std[i].mid, std[i].final); 
			break;
		}		
	} 
	
	// 배열에 없는 학번 입력시 메시지 출력하기
	if (i == SIZE) 
		printf("입력한 학번은 없습니다. \n");

	return 0;
}
/*
점수를 조회할 학번은? 101639

------------------
  학번  중간 기말
------------------
 101639  87   90
계속하려면 아무 키나 누르십시오 . . .
*/

/*
점수를 조회할 학번은? 141055

------------------
  학번  중간 기말
------------------
입력한 학번은 없습니다.
계속하려면 아무 키나 누르십시오 . . .
*/

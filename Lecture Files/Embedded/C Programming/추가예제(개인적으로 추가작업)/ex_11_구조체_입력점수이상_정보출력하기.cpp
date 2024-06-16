/*	11. 구조체
	학생의 학번, 중간, 기말 점수를 저장한 구조체 배열에서 사용자가 입력한 점수보다 높은 점수의 개수를 구하기
*/

#include <stdio.h>
#define SIZE 7          // 인원수
#define ID_LEN 7		// 학번 길이

struct std_info			// 구조체 정의
{  
	char id[ID_LEN];	// 학번(최대 6개+널 문자) 저장 배열 멤버
	int  mid;			// 중간 점수	
	int  final;			// 기말 점수
};

int main()
{
	// 구조체 배열 선언 및 초기화
	struct std_info std[SIZE] = {{"131008", 85, 92}, {"121022", 89, 91},{"141125", 78, 82}, 
									{"111307", 98, 97}, {"101639", 87, 90}, {"141052", 79, 89},{"130785", 89, 93}};	
	int item, score, i;	

	/* 학생의 정보 입력 
	printf(">> 학생의 정보(학번, 중간, 기말)을 입력하세요. << \n");
	for (i=0; i<SIZE; i++)  
	{ 
		printf("%d번째 학생: ", i+1);
		scanf("%s %d %d", 
               std[i].id, &std[i].mid, &std[i].final);	
	} 
	*/
	
	printf("어떤 점수에 대해 검색할까요? (1. 중간 2. 기말) "); scanf("%d", &item);
	printf("몇 점 이상을 검색할까요? "); scanf("%d", &score);
	
	// 입력 점수 이상인 점수만 출력하기
	printf("\n------------------\n");
	printf("  %d점 이상인 점수", score);
	printf("\n------------------\n");
	for (i=0; i<SIZE; i++)
	{
		switch (item)
		{
		case 1:	if (std[i].mid >= score)
					printf("\t%d \n", std[i].mid); 
				break;
		case 2:	if (std[i].final >= score)
					printf("\t%d \n", std[i].final); 
				break;
		}
	} 
	printf("------------------\n");

	return 0;
}

/*
어떤 점수에 대해 검색할까요? (1. 중간 2. 기말) 1
몇 점 이상을 검색할까요? 80

------------------
  80점 이상인 점수
------------------
        85
        89
        98
        87
        89
------------------
계속하려면 아무 키나 누르십시오 . . .
*/

// 입력받은 10개 데이터의 E(aX+b)를 구하는 프로그램
// 소수점 2번째 자리까지 출력

#include <stdio.h>
#define SIZE 10

void calcMean(int *data, double *mean);	// 입력받은 data의 평균
void calcChangedMean(double mean, int a, int b, double *changedMean);	// 입력받은 계수에 따른 평균

int main()
{
	int sample[SIZE];
	double mean, changedMean;
	int a, b;
	int i;

	printf("%d개의 정수값의 데이터를 입력해주세요.\n", SIZE);

	// data의 입력
	for(i = 0; i < SIZE; i++)
	{
		printf("%d번째 : ", i + 1);
		scanf("%d", &sample[i]);		
	}	
	
	
	calcMean(sample, &mean);

	printf("a와 b의 값을 입력해주세요.\n");
	scanf("%d%d", &a, &b);
	
	calcChangedMean(mean, a, b, &changedMean);

	printf("E(X) = %.2f, E(%dX + %d) = %.2f\n", mean, a, b, changedMean);
	
	return 0;
}


void calcMean(int *data, double *mean)
{
	int sum = 0;
	int i;

	for(i = 0; i < SIZE; i++)
	{
		sum = sum + *(data + i);
	}

	*mean = (double) sum / SIZE;
}

void calcChangedMean(double mean, int a, int b, double *changedMean)
{
	*changedMean = a * mean + b;
}

/* 실행결과


10개의 정수값의 데이터를 입력해주세요.

1번째 : 5
2번째 : 68
3번째 : 3
4번째 : -4
5번째 : 8
6번째 : 5
7번째 : 95
8번째 : 1
9번째 : 0
10번째 : -15

a와 b의 값을 입력해주세요.
-2 10

E(X) = 16.60, E(-2X + 10) = -23.20

*/

#include <stdio.h>
#include <string.h>
#define N 9

void search(char *engDic[], char *korDic[], char *word);

int main()
{
	char *sentence[N] = {"Man", "often", "becomes", "what", "he", "belives", "himself", "to", "be"};
	char *engDic[N] = {"be", "become", "belive", "he", "himself", "man", "often", "to", "what"};
	char *korDic[N] = {"~이다", "~이 되다", "~를 믿다", "그", "그자신", "사람", "종종", "to부정사", "무엇"};
	char word[10];

	int i;

	// 문장 출력
	printf("Sentence : ");

	for (i=0; i<N; i++)		
	{
		if(sentence[i] != NULL)
		{
			printf("%s ", sentence[i]);
		}
	}
	printf("\b.\n");

	// 영단어 입력 , 뜻 출력
	do
	{
		printf("Search : ");
		gets(word);

		search(engDic, korDic, word);

	} while(strcmp(word, "q") != 0);		// 'q'가 입력되면 프로그램 종료

	return 0;
}

void search(char *engDic[], char *korDic[], char *word)
{
	int matchSuccess = 0;
	int i;

	if (strcmp(word, "q"))					// (strcmp(word, "q") != 0)
	{
		for (i=0; i<N; i++)					// Dictionary 검색
		{
			if (!strcmp(word, engDic[i]))	// strcmp(word, engDic[i]) == 0)
			{
				printf("Mean : %s\n", korDic[i]);
				matchSuccess = 1;
			}
		}

		if (!matchSuccess)	// Dictionary에 matching되는 단어가 없을 경우 (matchSuccess == 0)
		{
			printf("Mean : Failed\n");
		}
	}
}

/* 실행결과

Sentence : Man often becomes what he belives himself to be .

Search : often
Mean : 종종
Search : hiself
Mean : Failed
Search : himself
Mean : 그자신
Search : q
계속하려면 아무 키나 누르십시오 . . .

*/
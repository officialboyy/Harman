// �Է¹��� 10�� �������� E(aX+b)�� ���ϴ� ���α׷�
// �Ҽ��� 2��° �ڸ����� ���

#include <stdio.h>
#define SIZE 10

void calcMean(int *data, double *mean);	// �Է¹��� data�� ���
void calcChangedMean(double mean, int a, int b, double *changedMean);	// �Է¹��� ����� ���� ���

int main()
{
	int sample[SIZE];
	double mean, changedMean;
	int a, b;
	int i;

	printf("%d���� �������� �����͸� �Է����ּ���.\n", SIZE);

	// data�� �Է�
	for(i = 0; i < SIZE; i++)
	{
		printf("%d��° : ", i + 1);
		scanf("%d", &sample[i]);		
	}	
	
	
	calcMean(sample, &mean);

	printf("a�� b�� ���� �Է����ּ���.\n");
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

/* ������


10���� �������� �����͸� �Է����ּ���.

1��° : 5
2��° : 68
3��° : 3
4��° : -4
5��° : 8
6��° : 5
7��° : 95
8��° : 1
9��° : 0
10��° : -15

a�� b�� ���� �Է����ּ���.
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
	char *korDic[N] = {"~�̴�", "~�� �Ǵ�", "~�� �ϴ�", "��", "���ڽ�", "���", "����", "to������", "����"};
	char word[10];

	int i;

	// ���� ���
	printf("Sentence : ");

	for (i=0; i<N; i++)		
	{
		if(sentence[i] != NULL)
		{
			printf("%s ", sentence[i]);
		}
	}
	printf("\b.\n");

	// ���ܾ� �Է� , �� ���
	do
	{
		printf("Search : ");
		gets(word);

		search(engDic, korDic, word);

	} while(strcmp(word, "q") != 0);		// 'q'�� �ԷµǸ� ���α׷� ����

	return 0;
}

void search(char *engDic[], char *korDic[], char *word)
{
	int matchSuccess = 0;
	int i;

	if (strcmp(word, "q"))					// (strcmp(word, "q") != 0)
	{
		for (i=0; i<N; i++)					// Dictionary �˻�
		{
			if (!strcmp(word, engDic[i]))	// strcmp(word, engDic[i]) == 0)
			{
				printf("Mean : %s\n", korDic[i]);
				matchSuccess = 1;
			}
		}

		if (!matchSuccess)	// Dictionary�� matching�Ǵ� �ܾ ���� ��� (matchSuccess == 0)
		{
			printf("Mean : Failed\n");
		}
	}
}

/* ������

Sentence : Man often becomes what he belives himself to be .

Search : often
Mean : ����
Search : hiself
Mean : Failed
Search : himself
Mean : ���ڽ�
Search : q
����Ϸ��� �ƹ� Ű�� �����ʽÿ� . . .

*/
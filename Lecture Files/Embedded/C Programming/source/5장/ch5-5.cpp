#include <stdio.h>

int main()
{
	int kor, music, art;
	double avg;

	printf("���� ���� �̼� ������?");
	scanf("%d %d %d", &kor, &music, &art);

	avg = (double)(kor + music + art)/3;

	printf("===================================== \n");
	printf("���� \t���� \t�̼� \t��� \t���\n");
	printf("------------------------------------- \n");
	printf("%3d \t%3d \t%3d \t%6.2lf ", kor, music, art, avg);
	if (avg >= 70)
		printf("\t���\n");
	else
		printf("\tŻ��\n");
	printf("===================================== \n");

	return 0;
}
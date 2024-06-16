#include <stdio.h>
#include <math.h> // sqrt, pow �Լ��� ���� ��� ����
#define N 5

// �Լ��� ���� ����
double compute_S(int arr[]);
double compute_avg(int arr[]);

int main()
{
	int i, kor[N] = {90, 89, 47, 78, 90};
	int music[N] = {99, 98, 86, 75, 100};

	// �迭 ���� ����ϱ�
	printf("======================\n");
	printf("    ��ȣ  ���� ����   \n");
	printf("======================\n");
	for (i=0; i<N; i++)
		printf("   %3d�� %4d %4d \n", i+1, kor[i], music[i]);
	printf("======================\n");
	
	// ���� ��հ� ǥ������ ����ϱ�
	printf ("���:    %5.1lf %5.1lf\n", 
                        compute_avg(kor), compute_avg(music));
	printf ("ǥ������:%5.1lf %5.1lf\n\n", 
                        compute_S(kor), compute_S(music));

	return 0;
}

// �迭�� ǥ�������� ���ϴ� �Լ�
double compute_S(int arr[])
{
	int i;
	double sum, avg;

	// arr �迭�� ����� ���ϱ� ���� compute_avg �Լ��� ȣ���ϱ�
	avg = compute_avg(arr);

	// arr �迭�� ǥ������ ���ϱ�
	sum = 0;
	for (i=0; i<N; i++)
		sum = sum + pow(arr[i]-avg, 2);

	return sqrt(sum / N);
}

// �迭�� ����� ���ϴ� �Լ�
double compute_avg(int arr[])
{
	int i, sum = 0;

	for (i=0; i<N; i++)
		sum = sum + arr[i];
	
	return (double)sum / N;
}
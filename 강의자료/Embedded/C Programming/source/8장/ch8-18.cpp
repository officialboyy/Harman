#include <stdio.h>

double array_avg(int arr[], int n);			// �Լ��� ���� ����

int main()
{
	int pen[4] = {4500, 5370, 4920, 6090};
	int monthly_stock[12] = {505, 409, 389, 257, 450, 501,
                                 500, 621, 480, 350, 389, 250};
	double average;

	average = array_avg(pen, 4);			// �� ��� �Ǹż� ���ϱ�
	printf("�� ��� �Ǹż�: %.1lf \n", average);
	average = array_avg(monthly_stock, 12); // �� ��� ��� ���ϱ�
	printf("��� ���: %.1lf \n", average);

	return 0;
}
 
// �迭 ���Ұ� n�� �ִ� arr �迭�� ����� ���ϴ� �Լ�
double array_avg(int arr[], int n)
{
	int i, sum=0;

	for (i=0; i<n; i++)	
		sum = sum + arr[i];

	return (double)sum / n; 
}

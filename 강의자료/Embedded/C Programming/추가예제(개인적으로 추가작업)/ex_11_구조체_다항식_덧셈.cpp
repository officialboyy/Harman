/*	11. ����ü
	���׽��� ����ü�� ǥ���ϰ� �� ���׽��� ������ ���ϱ�
*/

#include <stdio.h>

#define MAX(a,b) ((a>b)?a:b)
#define MAX_DEGREE 50			//�ִ� ����

typedef struct					// ����ü polynomial ����
{
    int degree;                 // ���׽��� ������ ������ ����
	float coef[MAX_DEGREE];		// ���׽��� �� ���� ����� ������ 1���� �迭
} polynomial;

polynomial add_poly(polynomial A, polynomial B);
void print_poly(polynomial P);

int main()
{
	polynomial A={3, {4,3,5,0}};	// ���׽� A�� �ʱ�ȭ
	polynomial B={4, {3,1,0,2,1}};	// ���׽� B�� �ʱ�ȭ

	polynomial C;

	C = add_poly(A,B);				// ���׽� A, B�� ���� ������ �����ϱ� ���� add_poly �Լ� ȣ�� 

	printf("\n A(x)=");  print_poly(A);     // ���׽� A ���
	printf("\n B(x)=");  print_poly(B);     // ���׽� B ���
	printf("\n C(x)=");  print_poly(C);     // ���׽� C ���

	return 0;
}

 
polynomial add_poly(polynomial A, polynomial B)
{
	polynomial C;              // ���׽� ������ ��� ���׽��� ������ polynomial ����ü ���� ����
	int A_index=0, B_index=0, C_index=0;
	int A_degree=A.degree, B_degree=B.degree;
	C.degree=MAX(A.degree, B.degree);

	while (A_index<=A.degree && B_index<=B.degree)
	{
	   if(A_degree > B_degree)
	   {
 		 C.coef[C_index++] = A.coef[A_index++];
 		 A_degree--;
	   }
	   else if (A_degree == B_degree)
	   {
 		 C.coef[C_index++]=A.coef[A_index++]+B.coef[B_index++];
 		 A_degree--;
 		 B_degree--;
	   }
	   else
	   {
		 C.coef[C_index++] = B.coef[B_index++];
 		 B_degree--;
	   }
	}

	return C;			// ���׽� ������ ��� ���׽� C�� ��ȯ
}

void print_poly(polynomial P)
{
	int i, degree;
	degree = P.degree;

	for (i=0; i<=P.degree; i++)
 		printf("%3.0fx^%d", P.coef[i], degree--);
	printf("\n");
}



/*
 A(x)=  4x^3  3x^2  5x^1  0x^0

 B(x)=  3x^4  1x^3  0x^2  2x^1  1x^0

 C(x)=  3x^4  5x^3  3x^2  7x^1  1x^0

*/
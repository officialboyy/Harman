#include <stdio.h>  

int main()
{
  int a1, a2, a3;			// ������ ������ int�� ���� ����

  a1 = 10;
  a2 = 20;
  a3 = a1 + a2;				// a1�� a2�� ����� ���� ���� ����� a3�� ����

  printf("a1 = %d, a2 = %d, a3 = %d\n", a1, a2, a3);

  a3 = a2 / 2;				// a2�� ����� ���� 2�� ���� ��(��)�� �ٽ� a3�� ����

  printf("a1 = %d, a2 = %d, a3 = %d\n", a1, a2, a3);

  return 0;
}

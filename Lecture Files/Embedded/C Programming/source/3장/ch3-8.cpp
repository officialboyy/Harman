#include <stdio.h>  

int main()
{
  char name[10];// �̸�(�ִ� 10���� ���ڸ� ������ �迭)
  int year;		 // �г�
  double GPA, score;	// ����, ����  

  // �л��� ���� �Է�
  printf("�̸���? "); gets(name);
  printf("�� �г�? "); scanf("%d", &year);
  printf("%d�г� ������? ", year); scanf("%lf", &GPA);
  
  // ������ 100�� ������ ������ ��ȯ
  score = (GPA * 100) / 4.5;
  
  // ó�� ��� ���
  printf("\n------------------------------\n");
  printf("  �̸�    �г�   ���� (����)");
  printf("\n------------------------------\n");
  printf("%-10s %d %7.1lf (%5.1lf) ", name, year, GPA, score);
  printf("\n------------------------------\n");

  return 0;
}

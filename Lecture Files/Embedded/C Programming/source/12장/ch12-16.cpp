#include <stdio.h>				// fread, fopen, fclose �Լ��� ���� ��� ����
#include <stdlib.h>				// exit �Լ��� ���� ��� ����

struct person					// ����ü ����
{
  char name[7], gender[3];		// �̸�, ����
  int age;						// ����
};
typedef struct person PERSON;	// �ڷ��� ������

int main()
{
  PERSON user;					// ����� ������ ������ ����ü ���� ����
  FILE * fp;

  fp = fopen("user.bin", "rb");	// �б� ���� ���� ���� ����
  if (fp == NULL)
  {
     printf("���� ���� ����!\n"); exit(1);
  }

  puts("-------------------------------------");
  puts("    �̸�         ����        ����  ");
  puts("-------------------------------------");

  // ���Ͽ��� ��� 1���� ����� �о��ٸ� ��� �ݺ��ϱ�
  while (fread(&user, sizeof(PERSON), 1, fp) == 1)
     printf("%10s %10s %10d\n", user.name, user.gender, user.age);
  
  puts("-------------------------------------");
  fclose(fp);					// ���� �ݱ�

  return 0;
}
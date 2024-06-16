#include <stdio.h>				// fwrite, fflush �Լ��� ���� ��� ����
#include <stdlib.h>				// exit �Լ��� ���� ��� ����
#define SIZE 3					// ������ �Է��� ����� ��

struct person					// ����ü ����
{
  char name[7], gender[3];		// �̸�, ����
  int age;						// ����
};
typedef struct person PERSON;	// �ڷ��� ������

int main()
{
  int i;
  PERSON user;							// ����� ������ ������ ����ü ���� ����
  FILE * fp = fopen("user.bin", "wb");	// ���� ���� ���� ���� ����

  if (fp == NULL)						// ���� ���� ���� ó��
  {
     printf("���� ���� ����! \n"); exit(1);
  }

  // SIZE���� ����� ������ Ű���忡�� �Է¹޾� ���� ���Ͽ� ����ϱ�
  printf(">> ����� ������ �Է� �Է��ϼ���.(%d��)", SIZE);
  for (i=0; i<SIZE; i++)
  {
     printf("\n%d. �̸� : ", i+1); gets(user.name);
     printf("   ���� : "); gets(user.gender);
     printf("   ���� : "); scanf("%d", &user.age);
     
     // user�� ����� ����� ���� �� PERSON�� ����ü �� ���� ���Ͽ� ����
     fwrite(&user, sizeof(PERSON), 1, fp); 
     fflush(stdin);		// ���� gets �Է��� ���� ǥ�� �Է� ��ġ�� ���� ����
  }
  fclose(fp);
  printf("\n== ���� ��� �Ϸ� ==\n");

  return 0;
}


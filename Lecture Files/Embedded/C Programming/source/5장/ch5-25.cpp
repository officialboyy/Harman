#include <stdio.h>
#include <conio.h>
#include <stdlib.h>

int main()
{
  int i, j;

  for (i=1; i<10000; i++)		// �ִ� 10000�� ���
   {
     for (j=1; j<=10; j++)		// �� �࿡ '*' 10�� ���
     {
       if (_kbhit()) goto end;	// ����ڰ� Ű���带 ������ 21������ �̵�
       printf("*");
     }
     printf("\n");
   }
   printf("\n���α׷��� �����մϴ�!\n");
   exit(0);
 
 end : 
   printf("\nŰ���带 �������ϴ�!\n");
  
   return 0;
 
 }

#include <stdio.h>

int main()
{
   int i, n, cnt, sum;

   sum = 0; // �� ��
   cnt = 1; // �Էµ� ���� ���� ����
   for (i=1; cnt<=5; i++) // ���� ���� 5���� �Է¹��� ������ �ݺ�
 	{
        printf("\n���� ���� n�� �Է��ϼ���. ");
        scanf("%d", &n);
  
        if (n <= 0)     // ����� ���ϱ� ���� 0���ϸ� ���� �� �ݺ����� �����ϱ�
          continue;
  
        cnt++;
 	   printf("���ݱ����� �� %2d + %2d = ", sum , n);
 	   sum += n;
 	   printf("%2d \n", sum); 
     }
     
     return 0;

 
 }

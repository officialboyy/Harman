#include <stdio.h>

int main()
{
   int i, n, cnt, sum;

   sum = 0; // 총 합
   cnt = 1; // 입력된 양의 정수 개수
   for (i=1; cnt<=5; i++) // 양의 정수 5개를 입력받을 때까지 반복
 	{
        printf("\n양의 정수 n을 입력하세요. ");
        scanf("%d", &n);
  
        if (n <= 0)     // 양수만 더하기 위해 0이하면 다음 번 반복으로 진행하기
          continue;
  
        cnt++;
 	   printf("지금까지의 합 %2d + %2d = ", sum , n);
 	   sum += n;
 	   printf("%2d \n", sum); 
     }
     
     return 0;

 
 }

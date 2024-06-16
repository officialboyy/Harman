/*	4. 연산자
	다음 조건을 만족하는 프로그램 작성하기
	- 원금과 예치기간을 년 단위로 입력받아 만기시 단리이자와 복리이자의 총금액을 각각 출력
	- 년 단위 단리이자 = 원금 * 이율(4.5%) * 년(예치기간)
	- 년 단위 복리이자 = 원금 * (1+이율4.5%)^년(예치기간)-원금
	- a의 b제곱은 함수 pow(a, b) 이용, #include <math.h>가 필요
*/

#include <stdio.h>
#include <math.h>

int main()
{
	double money, simple, compound, danhap, compound_sum, simple_sum;
   
	printf("원금을 입력하세요 : ");
	scanf("%lf", &money);
 
	printf("예치기간을 입력하세요 : ");
	scanf("%lf", &simple_sum);
   
	simple = money * 0.045 * simple_sum;
	compound = money * pow(1 + 0.045, simple_sum) - money;
	danhap = simple + money;
	compound_sum = compound + money;
 
	printf("\n단리이자= %.0lf원, 총금액=%.0lf원\n", simple, danhap);
	printf("복리이자= %.0lf원, 총금액=%.0lf원\n", compound, compound_sum);

	return 0;
}

/*실행결과

원금을 입력하세요 : 1000000
우예치기간을 입력하세요 : 5

단리이자= 225000원, 총금액=1225000원
복리이자= 246182원, 총금액=1246182원
계속하려면 아무 키나 누르십시오 . . .

*/


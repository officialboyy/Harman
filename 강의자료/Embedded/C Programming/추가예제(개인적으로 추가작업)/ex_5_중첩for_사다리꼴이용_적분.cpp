/*	5. 제어문
	사다리꼴의 합을 이용한 적분 프로그램
*/

#include <stdio.h>			// printf, scanf
#include <math.h>			// pow

int main()
{
	int n, i;				// 적분 구간의 등분수 즉 사다리꼴의 개수
	double dx, f_x1, f_x2;	// 사다리꼴의 가로, 사다리꼴의 왼쪽 높이, 오른쪽 높이
	double x1, x2, area;	// 사다리꼴의 왼쪽 x좌표, 사다리꼴의 오른쪽 x좌표, 사다리꼴의 면적
	double a, b,integral;	// 적분 구간 시작, 적분 구간 끝, 적분 근사치	

	printf("적분구간 (a, b) 입력하기 \n");
	printf("시작값 a는? ");	scanf("%d", &a);
	printf("끝값 b는? ");	scanf("%d", &b);
	printf("적분구간 (%.1lf, %.1lf)의 등분수는? ", a, b);	scanf("%d", &n);

	printf("f(x)의 [%.1lf, %.1lf] 구간의 적분 근사치 \n", a, b);

	for (n=100; n<=1000 ; n+=100)	// 등분수를 바꿔가며 근차시 비교하기
	{		
		dx = (b-a)/n;
		
		integral = 0;			// 적분 근사치 변수의 초기화
		for (i=1; i<=n; i++) 
		{
			x = a+(i-1)*dx;		// 변해가는 x 좌표 구하기
			x2= x+dx;
			f_x = pow(x, 2) + x/2;		// 해당 x 좌표에서의 함수 값(사각형 높이)
			f_x2= pow(x2, 2) + x2/2;
			area = (f_x +f_x2)* dx /2;	// 사각형의 면적
			integral += area;	// 현재 사각형 면적을 근사치에 누적
		}

		printf("%5d 등분 : %7.3lf \n", n, integral);				
	}
	printf("f(x)의 [%.1lf, %.1lf] 구간을 %d등분했을 때 적분 근사치 \n", a, b, n, integral);

}
/*
f(x)의 [1.0, 10.0] 구간의 적분 근사치
  100 등분 : 357.762
  200 등분 : 357.753
  300 등분 : 357.751
  400 등분 : 357.751
  500 등분 : 357.750
  600 등분 : 357.750
  700 등분 : 357.750
  800 등분 : 357.750
  900 등분 : 357.750
 1000 등분 : 357.750
Press any key to continue
*/
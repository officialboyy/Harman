/* 
	2. 변수와 자료형
	적도 반지름이 약 6,378,000m인 지구의 면적을 구하기
*/

#include <stdio.h>	// printf

int main()
{
	int radius, circum;
	double pi = 3.1415;	
	double area;			// 둘레가 int형 자료값으 최댓값을 초과하므로 double 형에 구해야 함
	
	radius = 6378000;		// 지구의 반지름
	area = pi * radius * radius;
	circum = 2 * pi * radius;
	
	printf("반지름: %d m \n", radius);
	printf("둘  레: %d m \n", circum);
	printf("면  적: %.1lf m²\n", area);	

	return 0;
}


/*
반지름: 6378000 m
둘  레: 40072974 m
면  적: 127792714086000.0 m²
계속하려면 아무 키나 누르십시오 . . .
*/

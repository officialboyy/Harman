/*	2. 자료형
	두 날짜 2013년 12월 25일부터 2013년 7월 7일까지 며칠이 지났는지를 구하기
*/

#include <stdio.h>			// printf

int main()
{
	int days;				// 지난 일 수 저장 변수
	int yy1=1900, mm1=12, dd1=25;		// 시작 날짜의 년, 월, 일 저장 변수
	int yy2=, mm2, dd2;		// 마지막 날짜의 년, 월, 일 저장 변수

	printf("달력 출력 프로그래밍\n");
	printf("▶출력할 달력의 연도는?");	scanf("%d", &year);
	printf("▶출력할 달력의 월은?");	scanf("%d", &month);

	sum=0;
	if (year >= 1995)
	{
		for(i=1995; i<year ; i++){                
			sum+=daysInYear(i);
		}
		for(i=1; i<month ;i++){
			sum+=endOfMonth(year, i);
		}                
		blank=sum%7;	// printf("%d, %d \n", sum, blank);		
	}
	else // 기준일 이전 달력의 경우 
	{
		for(i=year+1; i<1995 ; i++){                
			sum+=daysInYear(i);        
		}

		for(i=month; i<=12 ; i++){
			sum+=endOfMonth(year, i);
		}
		blank=(7-sum%7)%7;	// printf("%d, %d \n", sum, blank);	
	}

	// 달력 출력하기
	printf("\n%d년 %d월\n",year,month);
	printf("\n====================================================\n");
	printf("일\t월\t화\t수\t목\t금\t토\n");

	for(i=1; i<=blank; i++)                        
		printf("\t");               

	for(i=1; i<=endOfMonth(year, month); i++){
		printf("%2d\t",i);
		if((blank+i)%7==0)                
			printf("\n");       
	}
	printf("\n====================================================\n");
}

// 가인수 yy년도의 윤년 여부를 리턴하는 함수
int leapYear(int yy)
{
	if(yy%400==0 || yy%100!=0 && yy%4==0)
		return 1;
	else 
		return 0;
}

// 가인수 yy년의 총 일수를 리턴하는 함수, 운년 조사를 위해 leapYear()함수를 이용함
int daysInYear(int yy)
{
	if (leapYear(yy))
		return 366;
	else
		return 365;
} 

// 가인수 yy년 mm월의 마지막일을 리턴하는 함수
int endOfMonth(int yy, int mm)
{
	if (mm==4 || mm==6 || mm==9 || mm==11)	
		return 30;
	else if(mm==2){
		if(leapYear(yy))
			return 29;
		else                        
			return 28;
	}
	else
		return 31;
}


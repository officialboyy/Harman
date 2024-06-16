#include <stdio.h>
#include <windows.h> 
#include <math.h> 
#include <process.h>

#define PI 3.14159

void gotoxy(int x, int y) 
{ 
	COORD Cur; 
	Cur.X=x; 
	Cur.Y=y; 
	SetConsoleCursorPosition(GetStdHandle(STD_OUTPUT_HANDLE),Cur); 
}

struct point {
	int x_coord, y_coord;
	
	void init(int x, int y)	{
		x_coord= x;
		y_coord= y;
	}

	void draw()
	{
		gotoxy(x_coord, y_coord);
		printf("*");
		//printf(" '*' ; 출력이 한꺼번에 나중에 나옴
		//printf("*");
	}
};

point sin_point;
int x_base=0, y_base=10, x, y;
double radian=PI/180;

void main( )
{ 
	int answer;
	double value;
	printf(" 다음중에서 선택하세요;");
	printf(" 1. sin() 곡선");
	printf(" 2. cos() 곡선 ");
	printf("  원하는 번호 :");
	scanf("%d", &answer);
	system("cls");
	gotoxy(x_base, y_base);
	printf("------------------------------------------------------------------------------");
	for(int i=0; i<=79; i++)
	{	
		x = x_base++;
		if (answer ==1)
			 value=sin((i*15)*radian);
		else if (answer ==2)
			 value=cos((i*15)*radian);

		value *=10;
		if (((int)(value * 10)%10) >=5) 
			value=((int)(value * 10)/10) +1;
		else 
			value=(int)(value + 0.5) ;
		y = y_base+(value);
		
		sin_point.init(x, y);
		sin_point.draw();		
	}
	gotoxy(10,22);
}
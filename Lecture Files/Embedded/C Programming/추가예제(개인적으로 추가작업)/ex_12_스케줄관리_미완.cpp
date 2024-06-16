#include "game.c"
#include <math.h>

//���а��� �Լ� 
void integrate();
void gotoxy(int, int );
void coodPixture(int, int );
double makeVal( int , int , int , int );
//������ ���� �Լ� 
void schedualMan();
void seeCalendar();
int leapYear(int );
int checkMaxDay( int ,int );
void makeCalender( int, int );
void inputSche(struct schedule*);
void showSche(int, int);
void deleteSche(int, int, int);
void modifySche(int, int, int, int, int, char *);

int main()
{
	char ch;

	do{
		system( "cls" );
		printf( "---------------------------------------\n" );
	    printf( "1. �����ϱ�\n2. ������ ����\n3. ������ ����\n4. ���α׷������ϱ�\n" );
		printf( "---------------------------------------\n" );
		printf( "���ϴ� �޴��� �����ϼ���: " );
		scanf( "%c" , &ch );

		switch( ch ){
		case '1':
			integrate();
			break;
		case '2':	
			schedualMan();
			break;
		case '3':
			ShowMenu();
			break;			
		}

	}while( ch != '4' );

}

//�����ϱ�=====================================================================================
void integrate()
{
	//���� ���� 
	int a , b, i;
	int n, row, col;
	char ch;
	double dx , x, area, f_x;
	double integral = 0;

	coodPixture( 8, 5 ); //��ǥ��׸��� 

	for( x = 0 ; x < 55 ; x++ ) //�Լ� �׸��� 
	{
		f_x = pow( x,2 ) - ( 50 * x ) + 250;
		row = 5 + x;
		col = 8 - f_x/31;
		if( ( col >= 0) && ( col <= 20 ) )
		{
			gotoxy( row , col);
			printf( "." ); 
		}
	}

	//���� ���� �Է¹ޱ� 
	gotoxy( 0, 0);
	printf( "f(x) = x2 - 50x +250�Դϴ�.");
	gotoxy( 0, 20);
	printf( "���й��� a,b�� �Է��ϼ���.\n" );
	fflush(stdin);
	scanf( "%d,%d" , &a ,&b);
	
	
	printf( "���л�� n�� �Է��ϼ���.\nn: " );
	scanf( "%d" , &n );
	
	//���й��� ĥ�ϱ�  
	for( x = a ; x <= b ; x++ )
	{
		f_x = pow( x,2 ) - ( 50 * x ) + 250;
		f_x = f_x /31;
		if( f_x >= 0 )
		{
			for(i =8 - f_x ; i = 8; i++ )
			{
				gotoxy( x+5, i );
				printf( "*" );
			}
		}
		else
			for( i = 8 ; i <= 8 - f_x ; i++ )
			{
				gotoxy( x+5, i );
				printf( "*" );
			}
	}
	
	integral = makeVal( a, b, n , area );
	
	//����ϱ� 
	gotoxy( 0 , 24 );
	printf( "a���� b������ n����ؼ� ������ ����� %6.2f �Դϴ�.\n" , integral );

	ch = getch();
}
double makeVal( int a, int b, int n , int area )
{
	int i ;
	double dx,x,f_x,integral_f;
	dx = ( b - a ) / (double) n;
	integral_f = 0;
	for( i = 1 ; i <= n ; i++ )
	{
		x = a + ( dx * (i-1) ); 
		f_x =pow( x,2 ) - ( 50 * x ) + 250;
		area = f_x  * dx;
		integral_f += area;
	}
	return integral_f;
}

//��ǥ�� �׸��� 
void coodPixture(int col, int row)
{
	int i , j ;
	gotoxy( 0 , col );
	printf( "   ��������������������������������������������������������" );
                
	for( i = 0 ; i < 20 ; i++ )
	{
		gotoxy( 5 , i ); 
		printf( "��" );
	}
}


//������ ����==================================================================================
struct schedule{
	int year;
	int month;
	int day;
	int hour;
	int minute;
	char impor[100];
};

void schedualMan()
{
	char ch;
	struct schedule myschedule;
	FILE *fp;
	fp = fopen("schedule.txt","r");

	if( fp == NULL )
		fp = fopen("schedule.txt","w");
	fclose(fp);

	do{
		system( "cls" );
		printf( "---------------------------------------\n" );
	    printf( "1.�޷º���\n2.�ʱ�ȭ������ ���ư���\n" );
		printf( "---------------------------------------\n" );
		printf( "���ϴ� �޴��� �����ϼ���: " );
		scanf( "%c" , &ch );

		switch( ch )
		{
		case '1':
			seeCalendar();
			break;
		case '2':	
			break;
							
		}

	}while( ch != '2' );
	
	
}
//������ �Է��ϱ� 
/*
struct schedule{
	int year;
	int month;
	int day;
	int hour;
	int minute;
	char impor[100];
};
*/
void inputSche(	struct schedule *mys)
{
	FILE *fp = fopen("schedule.txt","a");

	printf( "\n������ �Է��ϱ�\n" );
	printf( "��¥(��:��:��(ex)10/02:03)):  " );
	scanf( "%d/%d:%d" , &mys->day, &mys->hour, &mys->minute);
	fflush(stdin);
	printf( "������ ���� : ");
	gets( mys->impor );
	fflush(stdin);

	fprintf( fp, "%d %d %d %d %d %s\n" , mys->year, mys->month, mys->day ,mys->hour, mys->minute ,mys->impor);
	fclose(fp);
}
//�޷º���=======
void seeCalendar()
{
	int year,month;
	int i;
	char ch,sel1 = ' ';

	system("cls");
	printf( "�������ϴ� �޷��� �⵵�� ���� �Է��Ͻÿ�.\n�⵵: " );
	scanf( "%d" , &year );
	printf(  "��: " );
	scanf( "%d" , &month );

	makeCalender( year, month );

//	printf( "\n�޷������� ���Ͻø� 'c'�� �����ð�, �޷��� �׸� ���÷��� 'q'�� ��������. " );
//	getch(ch);
	//----------------------------------------
	while(sel1 != 'q' && sel1 != 'Q')
	{
		sel1 = getch();
		if( sel1 <= 0 )
		{
			system("cls");
			sel1 = getch();
			switch( sel1 )
			{
			case LEFT:
				if( ( month > 1 ) && ( month <= 12 ) )
					month--;
				else if( month == 1 )
				{
					year--;
					month = 12;
				}
				makeCalender( year, month );
				break;
			case RIGHT:
				if( ( month >= 1 ) && ( month < 12 ) )
					month++;
				else if( month == 12 )
				{
					year++;
					month = 1;
				}
				makeCalender( year, month );
				break;
			case UP:
				year--;
				makeCalender( year, month );
				break;
			case DOWN:
				year++;
				makeCalender( year, month );
				break;
			default :
				break;
			}
		}
		else
		{
			switch( sel1 )
			{
			case 'c':
			case 'C':
				{
					struct schedule myschedule;
					myschedule.year = year;
					myschedule.month = month;
					inputSche(&myschedule);

					//�޷� �ٽ� �׸��� 
					system("cls");
					makeCalender( year, month );
				}
				break;

			case 'D':
			case 'd':
				{
					int num;
					printf("\n���� �������� ��ȣ�� ���ÿ� : ");
					fflush(stdin);
					scanf("%d",&num);
					fflush(stdin);
					deleteSche(year, month, num);

					//�޷� �ٽ� �׸��� 
					system("cls");
					makeCalender( year, month );
				}
				break;
			case 'M':
			case 'm':
				{
					int hour;
					int min;
					char imfo[100] = {0};
					int num;

					printf("\n������ �������� ��ȣ�� ���ÿ� : ");	
					fflush(stdin);
					scanf("%d",&num);
					fflush(stdin);
					printf( "�ð�(��:��(ex)02:03)):  " );
					scanf( "%d:%d" , &hour, &min);
					fflush(stdin);
					printf( "������ ���� : ");
					gets( imfo );
					fflush(stdin);
					modifySche(year, month, num, hour, min, imfo);

					//�޷� �ٽ� �׸��� 
					system("cls");
					makeCalender( year, month );
				}
				break;
			}
		}
	}
}

void modifySche(int yy, int mm, int num, int hour, int min, char *info)
{
	FILE *fp = fopen("schedule.txt","r");
	int dataCnt = 0;
	struct schedule mys;
	struct schedule *pMys;
	int delNum = 1;
	int i;

	//delete inputdata count
	while( feof(fp) == 0 )
	{
		fscanf( fp, "%d %d %d %d %d", &mys.year, &mys.month, &mys.day ,&mys.hour, &mys.minute);
		fflush(stdin);
		fgets(mys.impor,100,fp);
		fscanf( fp,"\n");
		dataCnt++;
	}
	fclose(fp);

	//���Ͽ��� ����� ����Ÿ �޸𸮿� �����ϱ�
	fp = fopen("schedule.txt","r");
	pMys =(schedule *) malloc(sizeof(struct schedule) * dataCnt);
	dataCnt = 0;
	while( feof(fp) == 0 )
	{
		fscanf( fp, "%d %d %d %d %d", &pMys[dataCnt].year, &pMys[dataCnt].month, &pMys[dataCnt].day ,&pMys[dataCnt].hour, &pMys[dataCnt].minute);
		fflush(stdin);
		fgets(pMys[dataCnt].impor,100,fp);
		fscanf( fp,"\n");
		dataCnt++;
	}
	fclose(fp);

	//���Ͽ� ������ ����Ÿ �ٽ� ����
	i = 0;
	fp = fopen("schedule.txt","w");
	if( fp != NULL )
	{
		while( dataCnt != i )
		{
			if( pMys[i].year == yy && pMys[i].month == mm )
			{
				if( delNum != num )
					fprintf( fp, "%d %d %d %d %d %s\n" , pMys[i].year, pMys[i].month, pMys[i].day ,pMys[i].hour, pMys[i].minute ,pMys[i].impor);
				else
					fprintf( fp, "%d %d %d %d %d %s\n" , pMys[i].year, pMys[i].month, pMys[i].day ,hour, min ,info);

				delNum++;
			}
			else
				fprintf( fp, "%d %d %d %d %d %s\n" , pMys[i].year, pMys[i].month, pMys[i].day ,hour, min ,info);

			i++;
		}
	}

	fclose(fp);
}

void deleteSche(int yy, int mm, int num)
{
	FILE *fp = fopen("schedule.txt","r");
	int dataCnt = 0;
	struct schedule mys;
	struct schedule *pMys;
	int delNum = 1;
	int i;

	//delete inputdata count
	while( feof(fp) == 0 )
	{
		fscanf( fp, "%d %d %d %d %d", &mys.year, &mys.month, &mys.day ,&mys.hour, &mys.minute);
		fflush(stdin);
		fgets(mys.impor,100,fp);
		fscanf( fp,"\n");
		dataCnt++;
	}
	fclose(fp);

	//���Ͽ��� ����� ����Ÿ �޸𸮿� �����ϱ�
	fp = fopen("schedule.txt","r");
	pMys = (schedule *) malloc(sizeof(struct schedule) * dataCnt);
	dataCnt = 0;
	while( feof(fp) == 0 )
	{
		fscanf( fp, "%d %d %d %d %d", &pMys[dataCnt].year, &pMys[dataCnt].month, &pMys[dataCnt].day ,&pMys[dataCnt].hour, &pMys[dataCnt].minute);
		fflush(stdin);
		fgets(pMys[dataCnt].impor,100,fp);
		fscanf( fp,"\n");
		dataCnt++;
	}
	fclose(fp);

	//���Ͽ� ������ ����Ÿ �ٽ� ����
	i = 0;
	fp = fopen("schedule.txt","w");
	if( fp != NULL )
	{
		while( dataCnt != i )
		{
			if( pMys[i].year == yy && pMys[i].month == mm )
			{
				if( delNum != num )
					fprintf( fp, "%d %d %d %d %d %s\n" , pMys[i].year, pMys[i].month, pMys[i].day ,pMys[i].hour, pMys[i].minute ,pMys[i].impor);
				delNum++;
			}
			else
				fprintf( fp, "%d %d %d %d %d %s\n" , pMys[i].year, pMys[i].month, pMys[i].day ,pMys[i].hour, pMys[i].minute ,pMys[i].impor);

			i++;
		}
	}

	fclose(fp);
}

//���� üũ 
int leapYear(int year)
{
	if(( year % 4 == 0 && year != 0 ) || year % 400 == 0 )
		return 1;
	else 
		return 0;
}
//maxDayüũ 
int checkMaxDay( int year,int month )
{
	switch( month )
		{
		case 1:
		case 3:
		case 5:
		case 7:
		case 8:
		case 10:
		case 12:
			return 31;
			break;
		case 4:
		case 6:
		case 9:
		case 11:
			return 30;
			break;
		case 2:
			if(leapYear(year))
				return 29;
			else
				return 28;
			break;
		}
}

void makeCalender( int year, int month )
{
	int totalDay = 0;
	int maxDay;
	int checkLine = 0;
	int i;

	system( "cls" );
	printf( "%d�� %d��\n" , year, month );
	for( i = 1900 ; i < year ; i++ )//1900����� ������������ �� �ϼ� 
	{
		if( leapYear(i) )
			totalDay += 366;
		else
			totalDay += 365;
	}
	for( i = 1 ; i < month ; i++ )//������ �ٷ� ���ޱ��� �� �ϼ� 
	{
		maxDay = checkMaxDay( year, i );
		totalDay += maxDay;
	}

	//�޷¸���� 
	printf( " �� �� ȭ �� �� �� �� \n" );
	for( i = 0 ; i < totalDay % 7 ; i++ )
	{
		printf ( "   " ); 
		checkLine++;
	}
	maxDay = checkMaxDay( year, month);
	for( i = 1 ; i <= maxDay ; i++ )
	{
		if( checkLine % 7 == 0 )
			printf( "\n" );
		printf( "%3d" , i );
		checkLine++;
	}

	showSche( year, month );
}

void showSche(int yy, int mm)
{
	FILE *fp = fopen("schedule.txt","r");
	struct schedule mys;
	int i = 1;

	if( fp != NULL )
	{
		gotoxy(0,8);
		printf("-------<< ������ >>-------\n");
		while( feof(fp) == 0 )
		{
			fscanf( fp, "%d %d %d %d %d", &mys.year, &mys.month, &mys.day ,&mys.hour, &mys.minute);
			fflush(stdin);
			fgets(mys.impor,100,fp);
			fscanf( fp,"\n");
			if( mys.year == yy && mys.month == mm )
			{
				printf("%d) %2d.%2d�� %2d:%2d  %s",i ,mys.month, mys.day, mys.hour, mys.minute, mys.impor);
				i++;
			}
		}
		printf("--------------------------\n");
		printf("�Է��ϱ�(c), �����ϱ�(q), �����(d), �����ϱ�(m)" ); 
	}
}
/*	12. 파일
	영화정보를 파일에서 읽어와서 각 랭킹별로 파일로 출력하기 "ex_12_영화정보_정렬후_파일로출력하기.cpp" 프로그램 확장
*/

#include <stdio.h>
#include <conio.h>
#include <string.h>
#include <stdlib.h>

 
struct Movie{
 char title[30];
 char director[15];
 char actor[15];
 int year;
 int audience;
};
 
void Output(struct Movie *, int);
void Sort(struct Movie *, int, int);
void Fileout(struct Movie *, int);

int main()
{
	struct Movie m[10];
	FILE *fp1;
	
	fp1=fopen("movie_r.txt","r");
	if(fp1==NULL){
		printf("파일 열기 실패\n");
		exit(1);
	}

 int n=sizeof(m)/sizeof(Movie), i;
 int type=-1;

 for(i=0; i<n;i++)
	 fscanf(fp1, "%s%s%s%d%d", m[i].title, m[i].director,m[i].actor, &m[i].year, &m[i].audience);
 fclose(fp1);

   puts("---------------------------------------------------------");
    puts("           제목       감독   주연배우  개봉연도  관객수  ");
    puts("---------------------------------------------------------");
    for(i=0;i<n;i++)
        printf("%20s%10s%10s%6d년%7d만명\n", m[i].title, m[i].director,m[i].actor, m[i].year, m[i].audience);
	puts("---------------------------------------------------------");
    fflush(stdin);
	
	puts("역대한국영화랭킹10위 알아보기 !!");
	puts("To continue press any key !!");
    getchar();

 while(type!=0)
 {
	 system("cls");   
	 puts("         ***   역대 한국 영화 랭킹 10위     ***       ");
	 puts("******************************Sort Type *********************************");
	 puts("\t< 0. 종료 1. 제목 2. 감독 3. 주연배우 4. 개봉연도 5. 관객수 >");
	 puts("**************************************************************************");
	 printf("\t\t\t\t\t\t\t\t[   ] \b\b\b\b");
	 scanf("%d", &type);
	 if(type==0) break;
	 if(type>5) continue;
	 Sort(m, n, type);
	 Output(m, n); 
 }
 
 puts("Good bye ~!");
 getchar();
 
 return 0;
}

 void Output(struct Movie *m, int n)
{
	int i;

	puts("------------------------------------------------------------------");
	puts("           제목       감독      주연배우    개봉연도    관객수  ");
	puts("------------------------------------------------------------------");

	for(i=0; i<n; i++)
		printf(" %-20s %-10s %-10s %6d(년) %6d(만) \n", m[i].title, m[i].director, m[i].actor, m[i].year, m[i].audience );
	
	fflush(stdin);
	puts("To continue press any key !!");
	getchar();
 }

 void Sort(struct Movie *m, int n, int type)
{
	int i, j;
	Movie tmp;

	for(i=0; i<n-1; i++)
	{
		for(j=i+1; j<n; j++)
		{
			switch(type)
			{
				case 1 :if(strcmp(m[i].title , m[j].title )>0)
							{
							 tmp = m[i];
							 m[i] = m[j];
							 m[j] = tmp;
							} break;
				case 2 : if(strcmp(m[i].director , m[j].director)>0)
							 {
								 tmp = m[i];
								 m[i] = m[j];
								 m[j] = tmp;
							} break;
				case 3 : if(strcmp(m[i].actor , m[j].actor )>0)
							 {
								 tmp = m[i];
								 m[i] = m[j];
								 m[j] = tmp;
							} break; 
				case 4 : if(m[i].year > m[j].year)
							 {
								 tmp = m[i];
								 m[i] = m[j];
								 m[j] = tmp;
							} break;
				case 5 : if(m[i].audience > m[j].audience)
							{
								 tmp = m[i];
								 m[i] = m[j];
								 m[j] = tmp;
							} break;
					}  
			}
	}
	Fileout(m, n);
 }

 void Fileout(struct Movie *m, int n)
{
	int i;
	
	FILE *fp=fopen("movie.txt", "a");

	if(fp == NULL)
		puts("파일 오픈 실패");
	else
	{
		 fputs("-----------------------------------------------------------\n", fp);
		 fputs("           제목       감독   주연배우  개봉연도   관객수 \n ", fp);
		 fputs("-----------------------------------------------------------\n", fp);

		 for(i=0; i<n; i++)
		 {
			 fprintf(fp,"%-18s %-10s %-10s %6d(년) %6d(만)\n", m[i].title, m[i].director, m[i].actor, m[i].year, m[i].audience );
		 }
	}
	fclose(fp);
}
	  

 /* 실행결과
 ---------------------------------------------------------
           제목       감독   주연배우  개봉연도  관객수
---------------------------------------------------------
    "태극기휘날리며"  "강제규"  "장동건"  2003년   1174만명
            "해운대"  "윤제균"  "설경구"  2009년   1139만명
        "과속스켄들"  "강형철"  "차태현"  2008년    828만명
            "실미도"  "강우석"  "설경구"  2003년   1108만명
              "괴물"  "봉준호"  "송강호"  2006년   1301만명
          "국가대표"  "김용화"  "하정우"  2009년    844만명
          "왕의남자"  "이준익"  "감우성"  2005년   1230만명
              "디워"  "심형래"  "제이슨"  2007년    842만명
            "도둑들"  "최동훈"  "김윤석"  2012년   1302만명
   "광해-왕이된남자"  "추창민"  "이병헌"  2012년   1060만명
---------------------------------------------------------
역대한국영화랭킹10위 알아보기 !!
To continue press any key !!


          ***   역대 한국 영화 랭킹 10위     ***
******************************Sort Type *********************************
        < 0. 종료 1. 제목 2. 감독 3. 주연배우 4. 개봉연도 5. 관객수 >
**************************************************************************
                                                                [ 3 ]
------------------------------------------------------------------
           제목       감독      주연배우    개봉연도    관객수
------------------------------------------------------------------
 "왕의남자"           "이준익"   "감우성"     2005(년)   1230(만)
 "도둑들"             "최동훈"   "김윤석"     2012(년)   1302(만)
 "실미도"             "강우석"   "설경구"     2003(년)   1108(만)
 "해운대"             "윤제균"   "설경구"     2009(년)   1139(만)
 "괴물"               "봉준호"   "송강호"     2006(년)   1301(만)
 "광해-왕이된남자"    "추창민"   "이병헌"     2012(년)   1060(만)
 "태극기휘날리며"     "강제규"   "장동건"     2003(년)   1174(만)
 "디워"               "심형래"   "제이슨"     2007(년)    842(만)
 "과속스켄들"         "강형철"   "차태현"     2008(년)    828(만)
 "국가대표"           "김용화"   "하정우"     2009(년)    844(만)
To continue press any key !!


         ***   역대 한국 영화 랭킹 10위     ***
******************************Sort Type *********************************
        < 0. 종료 1. 제목 2. 감독 3. 주연배우 4. 개봉연도 5. 관객수 >
**************************************************************************
                                                                [ 0 ]
Good bye ~!
계속하려면 아무 키나 누르십시오 . . .

*/


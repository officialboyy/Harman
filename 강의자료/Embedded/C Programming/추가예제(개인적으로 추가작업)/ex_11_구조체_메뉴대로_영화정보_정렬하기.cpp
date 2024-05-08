/*	11. 구조체
	우리나라에서 개봉된 영화중에서 1-10위권에 있는 영화들을
	"0. 종료 1. 제목 2. 감독 3. 주연배우 4. 개봉연도 5. 관객수" 중 입력에 번호에 따라 정렬하여 출력하기
*/

#include <stdio.h>
#include <conio.h>
#include <string.h>
#include <stdlib.h>

struct Movie
{
    char title[30];
    char director[15];
    char actor[15];
    int year;
    int audience;
};
 
int Display(Movie*, int);
void Sort(Movie*, int, int);
void Bubble_Sort(Movie*, int, int);

int main()
{   
     Movie m[10]= { 
		 {"태극기휘날리며","강제규","장동건",2003, 1174}, 
		 {"해운대","윤제균","설경구",2009, 1139}, 
		 {"과속스켄들","강형철","차태현",2008, 828}, 
		 {"실미도","강우석","설경구",2003, 1108},  
		 {"괴물","봉준호","송강호",2006, 1301}, 
		 {"국가대표","김용화","하정우",2009, 844}, 
		 {"왕의남자","이준익","감우성",2005, 1230},  
		 {"디워","심형래","제이슨",2007, 842},  
		 {"도둑들", "최동훈", "김윤석", 2012, 1302}, 
		 {"광해, 왕이된 남자", " 추창민", "이병헌", 2012, 1060}
	 };

    int r, n;
    n = sizeof(m) / sizeof(Movie);
    while(1) {
        r = Display(m, n);
        if (r == 0) return 0;
    }
}

 
int Display(Movie* m, int n)
{
    int i;
    system("cls");
    puts("******************************Sort Type *********************************");
    puts("\t< 0. 종료 1. 제목 2. 감독 3. 주연배우 4. 개봉연도 5. 관객수 >");
    puts("**************************************************************************");
    printf("\t\t\t\t\t\t\t\t[   ] \b\b\b\b");
 
    scanf("%d", &i);
 
    switch(i)
    {
    case 0:
        puts("Good bye ~!");
        getchar();
        return 0;
    case 1:
        Sort(m, n, i);
        break;
    case 2:
        Sort(m, n, i);
        break;
    case 3:
        Sort(m,n, i);
        break;
    case 4:
        Bubble_Sort(m,n, i);
        break;
    case 5:
        Bubble_Sort(m,n, i);
        break;
    }
    puts("---------------------------------------------------------");
    puts("         ***   역대 한국 영화 랭킹 10위     ***       ");
    puts("---------------------------------------------------------");
    puts("      제목        감독  주연배우  개봉연도   관객수  ");
    puts("---------------------------------------------------------");
    for(i=0;i<n;i++)
        printf("%20s%8s%8s%8d년%8d만명\n", m[i].title, m[i].director,m[i].actor, m[i].year, m[i].audience);
	puts("---------------------------------------------------------");
    fflush(stdin);
	puts("To continue press any key !!");
    getchar();
}
 
void Sort(Movie* m, int n, int type)
{
    Movie tmp;
    int i,j,chk;
 
    for(i=0;i<n-1;i++)
        for(j=i+1;j<n;j++)
        {
            switch(type)
            {
            case 1:
                if (strcmp(m[i].title,m[j].title) > 0)
                {
                    tmp = m[i];
                    m[i] = m[j];
                    m[j] = tmp;
                }
                break;
            case 2:
                if (strcmp(m[i].director, m[j].director)> 0)
                {
                    tmp = m[i];
                    m[i] = m[j];
                    m[j] = tmp;
                }
                break;
            case 3:
                if (strcmp(m[i].actor, m[j].actor)> 0)
                {
                    tmp = m[i];
                    m[i] = m[j];
                    m[j] = tmp;
                }
                break;
            }
        }
}
 
void Bubble_Sort(Movie* m, int n, int type)
{
    Movie tmp;
    int i,j;

 
    for(i=0;i<n-1;i++)
        for(j=0;j<n-1-i;j++)
        {
            switch(type)
            {
            case 4:
                if (m[j].year > m[j+1].year)
                {
                    tmp = m[j];
                    m[j] = m[j+1];
                    m[j+1] = tmp;
                }
                break;
            case 5:
                if (m[j].audience > m[j+1].audience)
                {
                    tmp = m[j];
                    m[j] = m[j+1];
                    m[j+1] = tmp;
                }
                break;
            }
        }
}

/* 실행결과

******************************Sort Type *********************************
        < 0. 종료 1. 제목 2. 감독 3. 주연배우 4. 개봉연도 5. 관객수 >
**************************************************************************
                                                                [ 1 ]
---------------------------------------------------------
         ***   역대 한국 영화 랭킹 10위     ***
---------------------------------------------------------
      제목        감독  주연배우  개봉연도   관객수
---------------------------------------------------------
          과속스켄들  강형철  차태현    2008년     828만명
   광해, 왕이된 남자  추창민  이병헌    2012년    1060만명
                괴물  봉준호  송강호    2006년    1301만명
            국가대표  김용화  하정우    2009년     844만명
              도둑들  최동훈  김윤석    2012년    1302만명
                디워  심형래  제이슨    2007년     842만명
              실미도  강우석  설경구    2003년    1108만명
            왕의남자  이준익  감우성    2005년    1230만명
      태극기휘날리며  강제규  장동건    2003년    1174만명
              해운대  윤제균  설경구    2009년    1139만명
---------------------------------------------------------
To continue press any key !!

*/
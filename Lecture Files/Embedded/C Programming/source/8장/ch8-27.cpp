#include <stdio.h>
#include <conio.h>		// getch 함수를 위한 헤더 파일
#include <process.h>	// system 함수를 위한 헤더 파일

int main()
{
	printf("별이 반짝이는 횟수를 맞추는 게임입니다. 아무키나 누르면 시작합니다.");
	getch();			// 어떤 키를 누를 때까지 중지하기 
	
	system("cls");		// 현재 화면에 표시된 모든 내용 지우기
	
	printf("지금부터 화면을 잘 보고 별의 반짝임 횟수를 맞추세요.");

	return 0;
}

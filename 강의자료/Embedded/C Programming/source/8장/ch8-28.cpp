#include <stdio.h>
#include <windows.h>	// system, Sleep 함수를 위한 헤더 파일

int main()
{
	printf("3초가 지나면 화면이 지워집니다.");

	Sleep(3000);		// 3000밀리초 동안 즉 3초 동안 실행을 중지한 후 계속 실행하기

	system("cls");		// 현재 화면 지우기
	printf("3초가 지났습니다.\n");

	return 0;
}

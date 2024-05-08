#include <stdio.h>

int main()
{
	int line, star;


	for (line=1; line<=5; line++)
	{
		for (star=1; star<=5; star++)
			printf("*");
		printf("\n"); // '*****' 출력 후 행 바꾸기
	}

	return 0;
}
#include <stdio.h>

void print_title();
void print_information(void);

int main()
{
	print_title();	
	print_information();

	return 0;
}

// ���� ���� ���
void print_title()	
{
	printf("=============================\n");
	printf("==    C ���α׷��� ����    ==\n");
	printf("== ���� �Լ� �׷��� �׸��� ==\n");
	printf("=============================\n");
}

// ���� ���� ����ϱ�
void print_information(void)	
{
	printf("\n\n");
	printf("%30s \n", "���Ѵ��б�");
	printf("%30s \n", "IT�к�");
	printf("%30s \n", "ȫ�浿");
}

/* 11. ����ü
	�����Ϳ� �����Ҹ� �����Ҵ� �� �� ���ڿ��� �Է��� �� ��ȯ�ϱ�
*/

#include <stdio.h>		// printf, scanf
#include <stdlib.h>		// malloc

#define MAX 20			// ���ڿ��� �ִ� ����

int main() 
{
	char *ptr1, *ptr2, *temp;
	
	// ���� �Ҵ�
	ptr1 = (char *) malloc(sizeof(char)*MAX);
	ptr2 = (char *) malloc(sizeof(char)*MAX);

	
	// ���ڿ� �Է�
	printf("ù ��° ���б� �̸���? "); scanf("%s", ptr1);
	printf("�� ��° ���б� �̸���? "); scanf("%s", ptr2);

	// �� ���ڿ��� ����Ű�� �����͸� ��ȯ
	temp = ptr1;
	ptr1 = ptr2;
	ptr2 = temp;

	printf("\n\n>> �� ���ڿ� ��ȯ �� \n");
	printf("ù ��° ���б� �̸��� %-s \n", ptr1);
	printf("�� ��° ���б� �̸��� %-s \n", ptr2);

	return 0;
}
/*
ù ��° ���б� �̸���? �츮���б�
�� ��° ���б� �̸���? �ڸ��ƴ��б�

>> �� ���ڿ� ��ȯ �� 
ù ��° ���б� �̸��� �ڸ��ƴ��б�
�� ��° ���б� �̸��� �츮���б�
����Ϸ��� �ƹ� Ű�� �����ʽÿ� . . .
*/
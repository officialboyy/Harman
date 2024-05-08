/*	11. ����ü
	char�� ������ �迭�� �� ������ �迭 ������ ���� �Ҵ�, ���ڿ� �Է�, ����, ���
	([���α׷� 10-16] char�� ������ �迭�� �̿��� ���ڿ� ���� �� ������ ������ ��)
*/

#include <stdio.h>
#include <string.h>						// strcmp
#include <stdlib.h>						// malloc

#define NAME_LEN 30						// �̸� �ִ� ����

int main()
{
	// char�� ������ �迭�� ����ų ������ gold ����, gold�� char�� ������ �迭�� ������ġ�� ����Ű�� �����͹Ƿ� char **
	char** gold;				
	
	char temp_str[NAME_LEN];	// �Էµ� ���ڿ��� ������ �迭
	char * temp;				// ���ڿ� �ּҸ� �ӽ÷� ������ ������
	int size, i, j;				// �迭�� ����� ���ڿ��� ��
	
	// char�� ������ �迭 gold�� ���Ҽ��� size�� �Է¹ޱ�
	printf("������ �̸� ������? "); scanf("%d", &size);

	// gold�� char�� ������(char *)�� size�� ������ ���� �迭 �޸� �Ҵ�ޱ�
	gold = (char **) malloc(sizeof(char*) * size);	

	// �迭�� ���ڿ� �Է��ϱ�
	for (i=0; i<size; i++)				
	{
		printf("%d��° �̸���? ", i+1);	
		scanf("%s", &temp_str); // gets(temp_str);
	
		// �Էµ� �̸��� ���� ���̸� �̿��Ͽ� gold[i]�� ���ڿ� ������ ���� �޸� �Ҵ�ޱ�
		gold[i] = (char *) malloc(sizeof(char) * strlen(temp_str+1));
		strcpy(gold[i], temp_str);		// ���� �޸𸮿� �Էµ� �̸��� �����ϱ�		
	}	
	
	// ��ȯ ������ �̿��Ͽ� �̸��� �����ټ����� �����ϱ�
	for (i=0; i<size-1; i++)
		for (j=i+1; j<size; j++)
			if (strcmp(gold[i], gold[j]) > 0)
			{
				// ���ڿ��� �����ּҸ� ������ gold[i]�� gold[j]�� ��ȯ
				temp = gold[i];
				gold[i] = gold[j];
				gold[j] = temp;
			}

	printf("** �ݸ޴� ����Ʈ : ");	
	for (i=0; i<size; i++)				// ���� �� �迭 ���� ����ϱ�
		printf("%s, ", gold[i]);
	printf("\b\b **\n\n");				// \b�� �̿��Ͽ� ������ �̸� ���� , �����

	return 0;
}

/*
������ �̸� ������? 5
1��° �̸���? �Ѻ�
2��° �̸���? ������
3��° �̸���? �̸���
4��° �̸���? ����α�
5��° �̸���? Ȳ��
** �ݸ޴� ����Ʈ : ����α�, ������, �̸���, �Ѻ�, Ȳ�� **

����Ϸ��� �ƹ� Ű�� �����ʽÿ� . . .
*/
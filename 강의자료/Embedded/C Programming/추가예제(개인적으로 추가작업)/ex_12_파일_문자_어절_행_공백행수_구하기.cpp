/*	12. ���� �����
    �ؽ�Ʈ ���Ͽ��� ����, ����, ��, ���� �� �� ���ϱ�
*/

#include <stdio.h>
#include <stdlib.h>

int count_chs(FILE *f);
int count_words(FILE *f);
int count_lines(FILE *f);
int count_blank_lines(FILE *f);

int main()
{
	char filename[50];
	FILE *f;

	printf("���� �̸��� �Է��ϼ���: ");
	scanf("%s", filename); 

	if (!(f = fopen(filename, "r"))) 
	{
		printf("������ �� �� �����ϴ�...");
		exit(1);
	}
	
	printf("���� ��     : %12d\n", count_chs(f));
	printf("���� ��     : %12d\n", count_words(f));
	printf("��   ��     : %12d\n", count_lines(f));
	printf("���� �� ��  : %12d\n", count_blank_lines(f));

	fclose(f);

	return 0;
}

// ���� �� ���ϴ� �Լ�
int count_chs(FILE *f)
{
	char ch;
	int nch = 0;

	rewind(f); // ���� ó������ �̵�
	while ((ch=fgetc(f)) != EOF)
	{
		if (ch != '\n')
			nch++;
	}

	return nch;
}

// ���� �� ���ϴ� �Լ�
int count_words(FILE *f)
{
	char ch;
	int nword = 0;

	rewind(f);	// ���� ó������ �̵�
	while ((ch=fgetc(f)) != EOF)
	{
		if (ch==' ' || ch=='\t' || ch=='\n') // ����, ��, ���� �����̸� ����.
			nword++;
	} 

	return nword;
}

// ���๮�� �� ���ϴ� �Լ�
int count_lines(FILE *f)
{
	char ch;
	int nline = 0;
	
	rewind(f);	// ���� ó������ �̵�
	while((ch=fgetc(f))!=EOF){

		if(ch=='\n') //���๮�� �̸� �� �� ����
			nline++;

	} 

	return nline;
}

// ���� �� �� ���ϴ� �Լ�
int count_blank_lines(FILE *f)
{
	char ch;
	char prech;
	int bline=0;

	rewind(f);	// ���� ó������ �̵�
	while((ch=fgetc(f))!=EOF){
		if(ch=='\n' && prech=='\n')	// �������� ���� ���ڰ� ������ ���� ��
			bline++;
		prech=ch;
	} 

	return bline;
}



/*
���� �̸��� �Է��ϼ���: ex_12_����_����_����_��_�������_���ϱ�.cpp
���� ��     :         1665
���� ��     :          425
��   ��     :          112
���� �� ��  :           23
����Ϸ��� �ƹ� Ű�� �����ʽÿ� . . .
*/

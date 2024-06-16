/*	12. ���� �����
	fread/fwrite �Լ��� �̿� ���� �����ϱ�
*/

#include <stdio.h>		
#include <stdlib.h>			// exit

#define MAX_SIZE 9			// ���� ũ��
#define MAX_NAME 50			// ���ϸ� �ִ� ����

int main()
{
	char buf[MAX_SIZE];
	int end;
	char src[MAX_NAME], dst[MAX_NAME];	// ���� ���ϸ�, ���纻 ���ϸ�
	FILE *fp_w, *fp_r;

	fputs("���� �̸�: ", stdout);
	gets(src);

	fputs("���纻 �̸�: ", stdout);
	gets(dst);

	fp_r = fopen(src, "rb");			// ���� ������ �б� ���� ����
	fp_w = fopen(dst, "wb");			// ���� ������ ���� ���� ����

	if (fp_r == NULL)
	{
		puts("���� ���� ���� ����!");
		exit(1);
	}
	if (fp_w == NULL)
	{
		puts("���纻 ���� ����� ����!");
		exit(1);
	}
	
	// ���Ͽ��� ���� ���� ���� 0���� ũ�ٸ�, ���� ���� ����ŭ ���Ͽ� ����
	while ( (end = fread(buf, sizeof(char), sizeof(buf), fp_r)) > 0)	
	{
		fwrite(buf, sizeof(char), end, fp_w);
	}
	
	fclose(fp_r);
	fclose(fp_w);
	puts("����Ϸ�");	
	
	return 0;
}

/*	�׸� ���� �����ϱ� ��
���� �̸�: ���.jpg
���纻 �̸�: ���_���纻.jpg
����Ϸ�
����Ϸ��� �ƹ� Ű�� �����ʽÿ� . . .
*/

/*	�ܼ� �ؽ�Ʈ ���� �����ϱ� ��
���� �̸�: blank.txt
���纻 �̸�: blank_copy.txt
����Ϸ�
����Ϸ��� �ƹ� Ű�� �����ʽÿ� . . .
*/

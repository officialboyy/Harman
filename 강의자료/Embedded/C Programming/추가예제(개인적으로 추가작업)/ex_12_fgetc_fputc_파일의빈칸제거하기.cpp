#include <stdio.h> 				// fgetc, fputc, fopen, fclose �Լ��� ���� ��� ����
#include <stdlib.h>				// exit �Լ��� ���� ��� ����

int main() 
{ 
	FILE * fp1, * fp2;			// �б��, ����� ���� ������
	char ch;				

	// "blank.txt" ������ �б� ���� ����
	fp1 = fopen("blank.txt", "r");	
	if (fp1 == NULL)			// ���� ���� ���� ó��
	{
		printf(" %s�� ������ �����ϴ�. \n", "blank.txt"); exit(1);	
	} 

	// ��� ������ ���� ���� ����
	fp2 = fopen("no_blank.txt", "w");
	if (fp2 == NULL)			// ���� ���� ���� ó��
	{
		printf(" %s�� ������ ������ ���߽��ϴ�. \n", "no_blank.txt"); exit(1);	
	} 

	// ������ ���� �������� �ʾƼ� ch�� ����� ���� EOF�� �ƴ϶�� ���纻�� ���⸦ �ݺ�
	while ((ch = fgetc(fp1)) != EOF)
		if (ch != ' ')
			fputc(ch, fp2);		// ���纻 ���Ͽ� ���� ���� ����

	fclose(fp1); fclose(fp2);	// ���� �ݱ�
	
	return 0;
} 

/* "blank.txt" ���� ����
Twinkle, Twinkle, little star. 
How I wonder what you are. 
Up above the world so high, 
like a diamond in the sky. 
Twinkle, Twinkle, little star. 
How I wonder what you are!

*/

/* "no_blank.txt" ���� ����
Twinkle,Twinkle,littlestar.
HowIwonderwhatyouare.
Upabovetheworldsohigh,
likeadiamondinthesky.
Twinkle,Twinkle,littlestar.
HowIwonderwhatyouare!
*/


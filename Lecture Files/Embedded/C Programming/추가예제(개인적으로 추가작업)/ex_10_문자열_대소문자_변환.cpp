/*	10. ������
	�Է¹��� ���ڿ��� ��/�ҹ��ڸ� �ٲٱ�
*/

#include <stdio.h>
#include <ctype.h>	// toupper�� tolower �Լ��� ���� �������
#include <string.h>	// strlen �Լ��� ���� �������

int main()
{
	char rawString[100];
	char *p;

	printf("���ڿ��� �Է��ϼ��� : ");
	gets(rawString);

	p = rawString;

	while (*p != '\0')			// ���ڿ��� ���� �ƴ϶��
	{
		if (isalpha(*p))		// ���� ���ĺ��̶��
		{
			if (islower(*p))	// �ҹ��� -> �빮��
				*p = toupper(*p);
			else				// �빮�� -> �ҹ���
				*p = tolower(*p);
		}

		p++;					// ���� ���ڷ� �̵�
	}
		
	printf("��ȯ ��� : %s\n", rawString);	

	return 0;
}

/*
������

���ڿ��� �Է��ϼ��� : i LOve yoU..!
��ȯ ��� : I loVE YOu..!
*/
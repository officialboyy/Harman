#include <stdio.h>		// fopen, fscanf, fprintf, fclose, EOF, printf�� ��� ���� 
#include <stdlib.h>		// exit �Լ��� ���� ��� ���� 

int main()
{ 
	int no, sales;	
	FILE * fpr, * fpw;	// �б��, ����� ���� ������ ����
	
	fpr = fopen("sales_report.txt", "r");	// �Ǹ� ���� ������ �б������ ����
	if (fpr == NULL)						// ���� ���� ���� ó��
	{
		printf("���� ���� ����! \n"); exit(1);
	} 

	fpw = fopen("good.txt", "w");			// ����� ��� ������ ��������� ����
	if (fpw == NULL)						// ���� ���� ���� ó��
	{
		printf("���� ���� ����! \n"); exit(1);
	} 

	// ��� ������ ���Ͽ� ����
	fprintf(fpw, "  �ǸŽ��� ����� \n\n");
	fprintf(fpw, " ------------------- \n");
	fprintf(fpw, "  �����ȣ  �Ǹż� \n");
	fprintf(fpw, " ------------------- \n");
	
	// ���Ͽ��� �б⸦ �����ߴٸ� �Ǹż��� 30���� Ŭ ���� ����� ��� ���Ͽ� �����ϱ�
	while (fscanf(fpr, "%d %d", &no, &sales) != EOF)
	{		
		if (sales > 30)
		{
			fprintf(fpw, "   %5d %5d�� \n", no, sales);
			// printf("   %5d %5d�� \n", no, sales); ����ͷ� ��� Ȯ�ο�
		}
	}
	fprintf(fpw, " ------------------- \n");

	fclose(fpr); fclose(fpw);				// ���� �ݱ�	
	printf(" ����� ��� ������ �����߽��ϴ�. \n");

	return 0;
}


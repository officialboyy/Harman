#include <stdio.h>			// fseek, rewind, ftell�� ���� ��� ����
#include <stdlib.h>			// exit�� ���� ��� ����

typedef struct person		// ����ü ����
{
	char name[7];
	char gender[3];
	int age;
} PERSON;					// ����ü struct person�� PERSON���� ������

int main()
{
	FILE * fp;
	PERSON user;
	int size, position, i, no;	

	fp = fopen("user.bin", "r+b");		// �б�/���� ���� ���� ���� ����
	if (fp == NULL)						// ���� ���� ���� ó��
	{
		printf("���� ���� ����! \n"); exit(1);
	} 
	
	// ���Ͽ� ����� ����ü ������ ������ ���ϱ� ���� ���� ��ġ ������ ������ �̿��ϱ�
	fseek(fp, 0, SEEK_END);				// (���� �� ��ġ+0)���� �̵��ϱ�
	position = ftell(fp);				// �� ��ġ�� position�� �����ϱ�
	size = position / sizeof(PERSON);	// PERSON ũ���� ��� ���� ���ϱ�

	// ������ ������ �о ����Ϳ� ����ϱ�
	puts("------------------------");
	puts(" ��ȣ �̸�   ����  ����  ");
	puts("------------------------");
	rewind(fp);							// ������ ���� ��ġ�� �̵�
	for (i=0; i<size; i++)
	{
		fread(&user, sizeof(PERSON), 1, fp);
		printf("%3d  %-8s %-3s %4d\n", i+1, user.name, user.gender, user.age);
	}
	puts("------------------------");

	// ������ ������ ��ȣ�� ���� ������ �Է¹ޱ�
	printf("������ ������ ������� ��ȣ��? "); scanf("%d", &no); 
	if ( (no < 1) || (no > size))		// �߸��� ��ȣ ó��
	{
		printf("��ȣ�� ������ �߸��Ǿ� �����մϴ�.\n"); exit(1);
	}
	printf("\n�̸� : "); scanf("%s", user.name);
	printf("���� : "); scanf("%s", user.gender);
	printf("���� : "); scanf("%d", &user.age);

	// ���� ��ġ �����ڸ� no��° ����� ���� ���� ��ġ�� �̵��� �� �� ������ ���Ͽ� ����
	fseek(fp, sizeof(PERSON) * (no-1), SEEK_SET); 
	fwrite(&user, sizeof(PERSON), 1, fp);

	fclose(fp);
	printf("\n���� ������ �Ϸ�Ǿ����ϴ�. \n");

	return 0;
}
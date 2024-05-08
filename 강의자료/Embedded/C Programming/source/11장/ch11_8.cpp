#include <stdio.h>
#define SIZE 100				// �迭�� ũ�� ����

struct person					// ����ü ����
{
	char name[7], gender[3];	// �̸�, ����
	int age;					// ����
};

// �Լ��� ���� ����
void input(struct person ptr[]);
void print(struct person *ptr);

int count; // ������ �Էµ� ��ü ����� ���μ� ���� ���� ����, �ڵ����� 0���� �ʱ�ȭ��

int main()
{
	struct person user[SIZE];	 // ���Ұ� SIZE���� ����ü �迭 user ����
	
	printf("�ִ� %d���� ����� ������ �Է¹ް� ����մϴ�. \n", SIZE);
	input(user);                // ����� ������ �迭�� �Է��ϱ�
	print(user);                // �迭�� ����� ����� ������ ����ϱ�

	return 0;
}
// ���޵� �迭�� ����� ������ �Է��ϴ� �Լ�
void input(struct person ptr[]) 
{
	int reply;

	do
	{
		// user[i]�� �� ����� ����� ������ �Է��ϱ�
		printf("%2d. �̸���? ", count+1); scanf("%s", ptr[count].name);
		printf("    ������(�� �Ǵ� ��)? "); scanf("%s", ptr[count].gender);
		printf("    ���̴�? "); scanf("%d", &ptr[count].age);
		
		count++;				// �迭�� �Է��� ����� ���� 1�����ϱ�

		// ���ݱ��� �Է��� ����� ���� �迭 ���Ҽ��� ���ٸ� �Է��� �׸��α�
		if (count == SIZE)    
		{
			printf("�� �̻� ����� ������ �Է��� ������ �����ϴ�.");
			break;
		}

		// ����� ������ �Է� ���θ� ����
		printf("    ��� �Է��Ϸ��� 1, �׸��Ϸ��� 0�� �Է��ϼ���. ");
		scanf("%d", &reply);
	} while (reply != 0);		// �׸��ϱ⸦ ������ �ʴ´ٸ� �ٽ� �ݺ��ϱ�
}

// �迭�� ������ ������ ���޹޾� �迭 ������ ����ϴ� �Լ�
void print(struct person *ptr) 
{
	int i;

	printf("\n �̸�   ����	���� \n");
	printf("======================\n");
	for (i=0; i<count; i++)
	{
		printf("%s\t %s\t %d\n", 
                        (ptr+i)->name, (ptr+i)->gender, (ptr+i)->age);
	}
	printf("======================\n");
}


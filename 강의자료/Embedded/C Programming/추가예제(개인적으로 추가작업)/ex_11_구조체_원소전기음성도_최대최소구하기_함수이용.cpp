/*	11. ����ü
	���Ҹ�� ���ڰ� ���ڸ� ������� ������ ������� ���ڷ� ��Ÿ�� ���� �������� ����ü�� �����Ͽ� 
	�ִ�, �ּ� ���� ������ ���� ���� ���� ����ϱ�
*/

#include <stdio.h>

#define SIZE 7				// ���� ��
#define LENGTH 4 			// ���Ҹ� ����

struct negativity			// ����ü ����
{  
	char name[LENGTH];		// ���Ҹ�
	double elec;			// ���� ������	
};

void print_array(struct negativity e[]);			// �迭 ���� ����ϱ�
struct negativity find_max(struct negativity e[]);	// �ִ� ���� ������ ������ ���� ���ϱ�
struct negativity find_min(struct negativity e[]);	// �ּ� ���� ������ ������ ���� ���ϱ�

int main()
{
	// ����ü �迭 ���� �� �ʱ�ȭ
	struct negativity element[SIZE] = {{"Na", 0.9}, {"Ca", 1.1}, {"K", 0.8}, 
									{"H", 2.1}, {"C", 2.5}, {"O", 3.5}, {"F", 4.0}};	
	struct negativity max, min;		// ���� �������� �ְ��� ���� ����, ������ ���� ����
	int item, score, i;	

	max = find_max(element);		// �ִ� ���� ������ �迭 ���� ���ϱ�
	min = find_min(element);		// �ּ� ���� ������ �迭 ���� ���ϱ�
	
	// ��� ���
	print_array(element);
	printf("\n-----------------\n");
	printf("\n �ְ� ���� ������ ���� ");
	printf("   %-3s    %.1lf ", max.name,max.elec); 
	printf("\n ���� ���� ������ ���� ");
	printf("   %-3s    %.1lf ", min.name, min.elec); 


	return 0;
}

void print_array(struct negativity e[])
{
	int i;
	
	// �� ������ ���� ���
	printf("\n-----------------");
	printf("\n���Ҹ� ����������");
	printf("\n-----------------");
	for (i=0; i<SIZE; i++)
	{
		printf("\n   %-3s  %.1lf ", e[i].name, e[i].elec); 				
	} 
}

struct negativity find_max(struct negativity e[])
{
	int i;
	struct negativity max;
	 
	max = e[0];
	for (i=0; i<SIZE; i++)
		if (max.elec < e[i].elec)
			max = e[i];

	return max;
}

struct negativity find_min(struct negativity e[])
{
	int i;
	struct negativity min;
	 
	min = e[0];
	for (i=0; i<SIZE; i++)
		if (min.elec > e[i].elec)
			min = e[i];

	return min;
}

/*

-----------------
���Ҹ� ����������
-----------------
   Na   0.9
   Ca   1.1
   K    0.8
   H    2.1
   C    2.5
   O    3.5
   F    4.0
-----------------

 �ְ� ���� ������ ����    F      4.0
 ���� ���� ������ ����    K      0.8 ����Ϸ��� �ƹ� Ű�� �����ʽÿ� . . .
 */
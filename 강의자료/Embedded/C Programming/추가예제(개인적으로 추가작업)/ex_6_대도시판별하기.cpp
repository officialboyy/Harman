/*
	5. ��ũ��
	�뵵������ �Ǻ��ϱ�
	�뵵�� ���� : 	1. �����̰ų� 2. �α��� 20�� �̻��̰� �� ������ 1,720,000,000�̻�
	�Է� : ����, �α�, ���δ� �����ݾ�
*/

#include <stdio.h>

#define TAXS 1720000000		// �� ����
#define CITIZENS 200000		// �α�

int main()
{        
	char capital;		// ����
	int citizens;		// �α�
	double tax;			// ���δ� �����ݾ�

	printf("�����Դϱ�?(y/n) "); scanf("%c", &capital);
	
	if (capital == 'y')
		printf("�뵵���Դϴ� \n");
	else 
	{	// ������ �ƴ϶�� �� ���� �����ϱ�
		printf("�α���? "); scanf("%d", &citizens);
		printf("���δ� ��������? "); scanf("%lf", &tax); 
	
		if (citizens >= CITIZENS && tax*12*citizens >= TAXS)
			printf("�뵵�� �Դϴ�.\n");
		else
			printf("�뵵�ð� �ƴմϴ�.\n");
	}

	return 0;
}
/*
�����Դϱ�?(y/n) n
�α���? 200000
���δ� ��������? 880
�뵵�� �Դϴ�.
����Ϸ��� �ƹ� Ű�� �����ʽÿ� . . .
*/

/*
�����Դϱ�?(y/n) y
�뵵���Դϴ�
����Ϸ��� �ƹ� Ű�� �����ʽÿ� . . .
*/


/*	11. ����ü
	�м��� ����ü�� �����Ͽ� �м��� ���� ����ϱ�
*/

#include<stdio.h> 

typedef struct 
{ 
	int numerator; 
	int denominator; 

} fraction; 

fraction sum(fraction, fraction); 

int main() 
{ 
	fraction f1, f2;	// �м�1, 2
	fraction result;

	printf("�м�1�� �Է��ϼ���(���� �и�):"); 
	scanf("%d%d",&f1.numerator,&f1.denominator); 
	printf("�м�2�� �Է��ϼ���(���� �и�):"); 
	scanf("%d%d",&f2.numerator,&f2.denominator); 

	result = sum(f1, f2);	// �м��� ��

	// ��� ���
	printf("���=%d/%d\n",result.numerator,result.denominator);   

	return 0; 
} 

fraction sum(fraction f1, fraction f2) 
{ 
	fraction result=
		{(f1.numerator * f2.denominator) + (f2.numerator * f1.denominator), f1.denominator * f2.denominator}; 

	return result; 
} 

/*

�м�1�� �Է��ϼ���(���� �и�):1 2
�м�2�� �Է��ϼ���(���� �и�):1 3
���=5/6
����Ϸ��� �ƹ� Ű�� �����ʽÿ� . . .

*/

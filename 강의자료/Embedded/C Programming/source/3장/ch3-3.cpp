#include <stdio.h> 

int main()
{
  int age;
  char gender;
  double height;

  // �ڷ� �Է� �ޱ�
  printf("������? (���ڶ�� M ���ڶ�� F) ");
  scanf("%c", &gender);
  printf("���̴�? ");
  scanf("%d", &age);
  printf("Ű��? ");
  scanf("%lf", &height);
 
  // ��� ����ϱ�
  printf("\n============\n");
  printf("����: %c\n", gender);  
  printf("����: %d��\n", age);
  printf("Ű: %.1lfcm\n", height);

  return 0;
}

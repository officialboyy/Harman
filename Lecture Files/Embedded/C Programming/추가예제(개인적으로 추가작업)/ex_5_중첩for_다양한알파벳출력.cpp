/*	5. ��� 
	���ĺ� ����ϱ�
*/
 
#include <stdio.h>		// printf

void main()
{ 
	char ch1, ch2, blank;
	int i;	

	for(ch1='z'; ch1 >='a'; ch1--) 
	{
		// �պκ��� ��ĭ ���
		for (blank='a'; blank<ch1; blank++)
			putchar(' ');
		
		// ��ĭ�ڿ� ���ĺ� ���: ���� for���� ����� �� blank���� ch1�� ���� ���ڰ� ����ְԵ��ϴ�.
		for (ch2=ch1; ch2<= 'z'; ch2++)
			putchar(ch2);		
		
		putchar('\n');		// �ٹٲٱ�
	}

	for(ch1='A'; ch1 <='Z'; ch1++) 
	{
		// ��ĭ�ڿ� ���ĺ� ���: ���� for���� ����� �� blank���� ch1�� ���� ���ڰ� ����ְԵ��ϴ�.
		for (ch2='A'; ch2<= ch1; ch2++)
			printf("%c",ch2);
		
		printf("\n");		// �ٹٲٱ�
	}
}

/*
                         z
                        yz
                       xyz
                      wxyz
                     vwxyz
                    uvwxyz
                   tuvwxyz
                  stuvwxyz
                 rstuvwxyz
                qrstuvwxyz
               pqrstuvwxyz
              opqrstuvwxyz
             nopqrstuvwxyz
            mnopqrstuvwxyz
           lmnopqrstuvwxyz
          klmnopqrstuvwxyz
         jklmnopqrstuvwxyz
        ijklmnopqrstuvwxyz
       hijklmnopqrstuvwxyz
      ghijklmnopqrstuvwxyz
     fghijklmnopqrstuvwxyz
    efghijklmnopqrstuvwxyz
   defghijklmnopqrstuvwxyz
  cdefghijklmnopqrstuvwxyz
 bcdefghijklmnopqrstuvwxyz
abcdefghijklmnopqrstuvwxyz
A
AB
ABC
ABCD
ABCDE
ABCDEF
ABCDEFG
ABCDEFGH
ABCDEFGHI
ABCDEFGHIJ
ABCDEFGHIJK
ABCDEFGHIJKL
ABCDEFGHIJKLM
ABCDEFGHIJKLMN
ABCDEFGHIJKLMNO
ABCDEFGHIJKLMNOP
ABCDEFGHIJKLMNOPQ
ABCDEFGHIJKLMNOPQR
ABCDEFGHIJKLMNOPQRS
ABCDEFGHIJKLMNOPQRST
ABCDEFGHIJKLMNOPQRSTU
ABCDEFGHIJKLMNOPQRSTUV
ABCDEFGHIJKLMNOPQRSTUVW
ABCDEFGHIJKLMNOPQRSTUVWX
ABCDEFGHIJKLMNOPQRSTUVWXY
ABCDEFGHIJKLMNOPQRSTUVWXYZ
����Ϸ��� �ƹ� Ű�� �����ʽÿ� . . .
*/
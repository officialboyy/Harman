/*	5. 제어문 
	알파벳 출력하기
*/
 
#include <stdio.h>		// printf

void main()
{ 
	char ch1, ch2, blank;
	int i;	

	for(ch1='z'; ch1 >='a'; ch1--) 
	{
		// 앞부분의 빈칸 출력
		for (blank='a'; blank<ch1; blank++)
			putchar(' ');
		
		// 빈칸뒤에 알파벳 출력: 앞의 for문을 벗어났을 때 blank에는 ch1과 같은 문자가 들어있게도니다.
		for (ch2=ch1; ch2<= 'z'; ch2++)
			putchar(ch2);		
		
		putchar('\n');		// 줄바꾸기
	}

	for(ch1='A'; ch1 <='Z'; ch1++) 
	{
		// 빈칸뒤에 알파벳 출력: 앞의 for문을 벗어났을 때 blank에는 ch1과 같은 문자가 들어있게도니다.
		for (ch2='A'; ch2<= ch1; ch2++)
			printf("%c",ch2);
		
		printf("\n");		// 줄바꾸기
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
계속하려면 아무 키나 누르십시오 . . .
*/
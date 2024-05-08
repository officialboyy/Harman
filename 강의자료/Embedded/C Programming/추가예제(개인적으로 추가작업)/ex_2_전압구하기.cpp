/*	2. 자료형
	전압 구하기
	구리의 고유저항, 반지름, 길이를 이용하여 최소 전압 구하기	
*/

#include <stdio.h>					// printf

int main()
{       
	double length = 2;				// 2 Miter
	double diameter = 0.001;		// 1 mm
	double resistivity = 1.78E-8;	// 구리의 고유 저항
	double area = (diameter * diameter / 4) * 3.14;
	double resistance = resistivity * ( length / area); // 저항
	
	double current = 2;				// 1A (Ampere)
        
	printf("저항 : %e Ohm(옴) \n", resistance);
    
	printf("%f 암페어가 흐르기 위해서 %e 볼트가 필요\n", current, ( resistance * current )); 

	return 0;
}

/*
저항 : 4.535032e-002 Ohm(옴)
2.000000 암페어가 흐르기 위해서 9.070064e-002 볼트가 필요
*/
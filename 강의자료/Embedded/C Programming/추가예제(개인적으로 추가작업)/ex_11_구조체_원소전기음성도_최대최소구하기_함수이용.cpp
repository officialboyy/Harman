/*	11. 구조체
	원소명과 원자가 전자를 끌어당기는 정도를 상대적인 숫자로 나타낸 전기 음성도를 구조체에 저장하여 
	최대, 최소 전기 음성도 가진 원소 정보 출력하기
*/

#include <stdio.h>

#define SIZE 7				// 원소 수
#define LENGTH 4 			// 원소명 길이

struct negativity			// 구조체 정의
{  
	char name[LENGTH];		// 원소명
	double elec;			// 전기 음성도	
};

void print_array(struct negativity e[]);			// 배열 내용 출력하기
struct negativity find_max(struct negativity e[]);	// 최대 전기 음성도 원소의 정보 구하기
struct negativity find_min(struct negativity e[]);	// 최소 전기 음성도 원소의 정보 구하기

int main()
{
	// 구조체 배열 선언 및 초기화
	struct negativity element[SIZE] = {{"Na", 0.9}, {"Ca", 1.1}, {"K", 0.8}, 
									{"H", 2.1}, {"C", 2.5}, {"O", 3.5}, {"F", 4.0}};	
	struct negativity max, min;		// 전기 음성도가 최고인 원소 정보, 최저인 원소 정보
	int item, score, i;	

	max = find_max(element);		// 최대 전기 음성도 배열 원소 구하기
	min = find_min(element);		// 최소 전기 음성도 배열 원소 구하기
	
	// 결과 출력
	print_array(element);
	printf("\n-----------------\n");
	printf("\n 최고 전기 음성도 원소 ");
	printf("   %-3s    %.1lf ", max.name,max.elec); 
	printf("\n 최저 전기 음성도 원소 ");
	printf("   %-3s    %.1lf ", min.name, min.elec); 


	return 0;
}

void print_array(struct negativity e[])
{
	int i;
	
	// 각 원소의 정보 출력
	printf("\n-----------------");
	printf("\n원소명 전기음성도");
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
원소명 전기음성도
-----------------
   Na   0.9
   Ca   1.1
   K    0.8
   H    2.1
   C    2.5
   O    3.5
   F    4.0
-----------------

 최고 전기 음성도 원소    F      4.0
 최저 전기 음성도 원소    K      0.8 계속하려면 아무 키나 누르십시오 . . .
 */
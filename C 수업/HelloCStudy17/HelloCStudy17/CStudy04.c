#include<stdio.h>
#include"Mystructs.h"
int main()
{
	//학생 1명인 경우
	StudentScore s1 = { .kor = 100,.eng = 0,.math = 50 };
	//학생 3명인 경우
	StudentScore students[3]
		= { {.kor = 100,.eng = 10,.math = 90},
	{.kor = 100,.eng = 100,.math = 90} ,
	{.kor = 100,.eng = 100,.math = 100} };

	students[0].kor = 50;
	printf("%d %d %d", 
		students[0].kor, students[1].kor, students[2].kor);

	return 0;
}
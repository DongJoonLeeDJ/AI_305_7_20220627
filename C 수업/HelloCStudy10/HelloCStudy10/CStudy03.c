#include<stdio.h>
#include"mytest.h"
#include"yourtest.h"
void test(); //원형(반환형 매개변수 형태)
int number = 10; //전역변수
int main()
{
	test();
	mytest(); //mytest.h에서 읽어온 함수
	yourTypeTest(10);
}
void test() //정의
{
	printf("함수 테스트.");
}





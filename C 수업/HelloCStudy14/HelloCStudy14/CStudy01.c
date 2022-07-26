#include<stdio.h>
int main()
{
	int a = 10;
	//포인터 : 변수가 어디에 저장됐는지 위치 저장하는 것
	int* ptr = &a;
	//ptr이 가리키는 곳(=a)의 값을 증가
	(*ptr)++;
	(*(&a))++; //&a가 가리키는 곳(=a)의 값 증가
	printf("a=%d\n", a); //a=12
	return 0;
}
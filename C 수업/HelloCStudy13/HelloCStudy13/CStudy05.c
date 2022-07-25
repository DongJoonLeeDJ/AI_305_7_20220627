//포인터
//변수의 주소(=위치)를 저장하는 타입
#include<stdio.h>
void changeValue(int* p, int v)
{
	*p = v; //p가 가리키고 있는 값을
}			//v로 바꾼다.
void no_changeValue(int p, int v)
{
	//이 안에 있는 값은 바뀌지만
	//main이나 이 함수를 호출한 부분의
	//변수는 그대로이다.
	//왜냐면 p는 이 함수 안에서만 존재하기 
	//때문이다.
	p = v; 
}			
int main()
{
	int ex = 10;
	int* exptr = &ex;
	//int*는 int타입 변수의 위치를 
	//저장

	changeValue(exptr, 100);
	printf("ex=%d\n", ex);
	changeValue(&ex, 500);
	printf("ex=%d\n", ex);


	//이게 어디에 쓰이냐면
	//함수의 매개변수로 주로 쓰임
	//scanf나 swap 함수 등...
	return 0;
}
#include<stdio.h>
int main()
{
	int a = 10;
	//lld = long long 타입
	//&a = a의 주소(변수 a가 메모리 상에서
	//어느 위치에 있는지 표시해줌)
	printf("%d, %lld", a, &a);
	//&a 값은 프로그램 시작할 때마다 값이 바뀜
	//이 프로그램이 꺼지면 a가 사라지고
	//켜지면 다시 메모리 할당해야 하는 데
	//그 때 그 때 다른 곳에 할당함
	//왜냐면 해당 위치는 컴퓨터가
	//이미 쓰고 있을 수도 있다.

	//포인터 : 변수의 주소를 저장하고
	//변수의 타입별로 다양한 포인터가 있다.
	int* ptr_a = &a;
	int * ptr_a2 = &a;
	int *ptr_a3 = &a;

	int aa = 100;//정수 저장
	int* ptr_aa = &aa; //정수 변수의 주소를 저장

	scanf_s("%d", ptr_aa);
	printf("aa=%d\n", aa);


	//ptr_aa라는 포인터가 가리키는 그 위치로
	//가서
	//그 녀석의 값을 바꾼다.
	*ptr_aa = 0;
	printf("%d", *ptr_aa);
	//포인터가 가리키는 위치에 가서
	//그 위치에 저장되어 있는 값을 보여준다. 

	
	double b = 3.14;
	double* b_ptr = &b;


	return 0;
}
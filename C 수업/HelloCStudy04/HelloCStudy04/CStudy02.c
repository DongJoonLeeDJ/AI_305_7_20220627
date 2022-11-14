//증감 연산자
#include<stdio.h>
int main()
{
	int a = 5;

	a++; //a=a+1;   a+=1;
	++a;
	a--;
	--a;

	printf("%d\n", ++a);
	printf("%d\n", a++);
	printf("%d\n", a);

	int b = a++ + ++a;
	printf("b=%d, a=%d\n", b,a);
	//16,9를 찍고 싶다면...

	a = 7;
	a++;
	int c = a + a;
	a++;
	printf("c=%d, a=%d\n", c, a);


	return 0;
}
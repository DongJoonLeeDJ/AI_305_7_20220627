#include<stdio.h>
//1. no_changeValue가 
//아무 효과가 없는 것을 확인해보세요.
void no_changeValue(int a, int b)
{
	a = b;
}
int main()
{
	int a = 3;
	no_changeValue(a, 300);
	printf("a=%d\n", a);
	return 0;
}
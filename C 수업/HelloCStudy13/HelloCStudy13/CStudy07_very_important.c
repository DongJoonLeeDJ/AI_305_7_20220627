#include<stdio.h>
void swap(int* pa, int* pb)
{
	int temp = *pa;
	*pa = *pb;
	*pb = temp;
}
int main()
{
	int a = 3;
	int b = 5;
	swap(&a, &b);
	printf("%d %d", a, b); // 5 3 Ãâ·Â
	return 0;
}
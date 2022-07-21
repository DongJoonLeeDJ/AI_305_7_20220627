#include<stdio.h>
int a; int b;
void g_swap()
{
	int temp = a;
	a = b;
	b = temp;
}
void swap(int* a, int* b)
{
	int temp = *a;
	*a = *b;
	*b = temp;
}
int main()
{
	printf("숫자 2개 입력");
	scanf_s("%d %d", &a, &b);
	printf("%d %d\n", a, b);
	int temp = a;
	a = b;
	b = temp;
	printf("%d %d\n", a, b);
	g_swap();
	printf("%d %d\n", a, b);

	int num1, num2;
	printf("num1, num2에 값 넣기");
	scanf_s("%d %d", &num1, &num2);
	swap(&num1, &num2); //num1과 num2의 주소지를 넘겨줌
	printf("%d %d\n", num1, num2);

	return 0;
}
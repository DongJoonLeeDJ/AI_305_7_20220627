#include<stdio.h>
//1. no_changeValue�� 
//�ƹ� ȿ���� ���� ���� Ȯ���غ�����.
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
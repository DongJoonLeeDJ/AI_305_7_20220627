#include<stdio.h>
int main()
{
	//scanf�� printf�� �Լ�
	
	int result = printf("�ȳ��ϼ���");
	printf("\n%d\n", result);
	int n, m;
	int a = scanf_s("%d", &n);
	int b = scanf_s("%d %d", &n, &m);
	result = printf("%d %d", n, m);
	printf("\nresult=%d, a=%d, b=%d\n", 
		result,a,b);
	//void
	return 0;
}
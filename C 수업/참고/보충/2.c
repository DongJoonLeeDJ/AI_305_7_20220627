#include<stdio.h>
int main()
{
	int n;
	scanf_s("%d", &n);
	if (n < 0)
		n *= -1;
	if (n < 10) //�� �ڸ�
		printf("10�̸�");
	else if (n < 100) //�� �ڸ�
		printf("100 �̸�");
	else
		printf("�� ū ����");


	return 0;
}
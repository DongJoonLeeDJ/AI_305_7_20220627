#include<stdio.h>
int main()
{
	//6��
	int num;
	printf("���ڸ� �Է��ϼ���.");
	scanf_s("%d", &num);
	if (num < 0)
	{
		printf("����!!!\n");
	}
	else if (num == 0) 
	{
		printf("num�� 0!!!\n");
	}
	else
	{
		//int abc = 0;

		if (num % 2 == 0)
			printf("¦!\n");
		else
			printf("Ȧ!\n");
	}
	//int abc = 100;

	//////////
	if (num < 0)
		printf("����!\n");
	else if (num == 0)
		printf("0\n");
	else if (num > 0 && num % 2 == 0)
		printf("¦!\n");
	else if (num > 0 && num % 2 != 0)
		printf("Ȧ!\n");
	///

	//7��
	printf("������ 5�� ����ϱ�\n");
	for (int i = 1; i < 10; i++)
		printf("5 x %d = %d\n", i, 5 * i);

	//8��
	printf("�� ��?");
	int n;
	scanf_s("%d", &n);
	for (int i = 1; i < 10; i++)
		printf("%d x %d = %d\n", n, i, n * i);

	//9��
	//2~9�ܱ���
	for (int n = 2; n < 10; n++) 
	{
		for (int i = 1; i < 10; i++)
			printf("%d x %d = %d\n", n, i, n * i);
	}

	//10�� ����
	//1���� n������ ���� ���ϵ�, �Ʒ��� ���� ��¾���� ����.
	int sum = 0;
	printf("����� ���ұ��?");
	scanf_s("%d", &n);
	printf("1");
	sum = 1;
	for (int i = 2; i <= n; i++)
	{
		sum += i; //�� ����
		printf("+%d", i); //�޽��� ���
	}
	printf("=%d\n", sum);

	return 0;
}
#include<stdio.h>
int main()
{
	//1��
	//1���� 100������ �� ���ϱ�

	int sum = 0;
	for (int i = 1; i <= 100; i++)
		sum += i;
	printf("1���� 100������ ���� %d�Դϴ�.\n",sum);

	//2��
	//1���� 100������ ��, 3�� ���
	sum = 0; //sum�� �ʱ�ȭ ���ش�.
	for (int i = 1; i <= 100; i++) 
	{
		if (i % 3 == 0)
			sum += i;
	}
	printf("1~100������ ��(3�� �����) : %d\n", sum);
	
	//3��
	//1���� n������ ��
	printf("����� ���ұ��( 10������ ����)\n");
	int n;
	scanf_s("%d", &n);
	sum = 1; //0���� �ʱ�ȭ�ϸ� �� �ȴ�.
	for (int i = 1; i <= n; i++)
		sum *= i;
	printf("1���� %d������ �� : %d\n", n, sum);

	//4��
	int floor; //4~7�� �� ���� ������
	printf("�� ��?");
	scanf_s("%d", &floor);
	for (int i = 0; i < floor; i++)
	{
		for (int j = 0; j < i + 1; j++)
			printf("*");
		printf("\n");
	}

	//����� �� �� �� �ݺ������� �Ѵ�.
	for (int i = 0; i < floor; i++)
	{
		for (int j = 0; j < floor - i - 1; j++)
			printf(" ");
		for (int j = 0; j < i + 1; j++)
			printf("*");
		printf("\n");
	}

	//2n+1 ��Ģ = 1 3 5 7 9 ������ ����
	//����� ������ �پ��
	for (int i = 0; i < floor; i++)
	{
		for (int j = 0; j < floor - i - 1; j++)
			printf(" ");
		for (int j = 0; j < 2*i + 1; j++)
			printf("*");
		printf("\n");
	}
	//7��
	for (int i = 0; i < floor; i++)
	{
		for (int j = 0; j < floor - i - 1; j++)
			printf(" ");
		for (int j = 0; j < 2 * i + 1; j++)
			printf("*");
		printf("\n");
	}
	for (int i = 0; i < floor - 1; i++)
	{
		//���Ⱑ ���� ����
		for (int j = 0; j < i + 1; j++)
			printf(" ");
		//���� ���� ����
		for (int j = 0; j < (2 * (floor-i-1)) - 1; j++)
			printf("*");
		printf("\n");
	}


	return 0;
}
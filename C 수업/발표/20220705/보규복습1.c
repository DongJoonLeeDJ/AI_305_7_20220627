#include<stdio.h>
int main()
{
	//1. ���� a�� b�� c�� ���� �Է¹ް�, a���� b������ ���� ���ϵ�, c�� ��� �κ���
	//�����ϰ� ���� ���� ��.
	if (0)
	{
		int a, b, c;
		printf("a,b,c�� ���� �Է�");
		scanf_s("%d %d %d", &a, &b, &c);

		int sum;
		sum = 0;
		for (int i = a; i <= b; i++)
		{
			if (i % c == 0)
				continue;

				sum += i;
		}

		printf("sum=%d\n", sum);
	}
	//���� 1
	if (0)
	{
		int age;
		printf("����̴�?\n");
		scanf_s("%d", &age);

		switch (age / 10)
		{
		case 0:
			if (age > 0)
				printf("����\n");
			else
				printf("������");
			break;
		case 1:
			printf("�޽�\n");
			break;
		case 2:
			printf("û��\n");
			break;
		case 3:
			printf("���߷�\n");
			break;
		case 4:
			printf("������\n");
			break;

		default:
			printf("������\n");
			break;
		}
	}
		//����2
		if (1)
		{

		double hac;
		printf("�� �����̼���\n");
		scanf_s("%lf", &hac);

		if (hac < 0)
			printf("����");
		else 
		{
			if (hac < 1)
				printf("f");
			else if (hac < 2)
				printf("d");
			else if (hac < 3)
				printf("c");
			else if (hac < 4)
				printf("b");
			else if (hac < 4.5)
				printf("a");
			else if (hac == 4.5)
				printf("a+");
			else
				printf("����");
			

			




		}


		}
	



	return 0;
}
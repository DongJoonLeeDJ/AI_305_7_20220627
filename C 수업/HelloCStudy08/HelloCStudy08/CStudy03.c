#include<stdio.h>
int main()
{
	//�������� ����   ���� ��ȣ
	//1                1
	//2~7              2
	//8~19             3
	//20~37            4
	//36~61            5
	//1 7 19 37 61
	//max = max+(6*count)
	int input;
	scanf_s("%d", &input);
	int max = 1; //������ȣ
	int count = 0;//�׷��ȣ
	while (1)
	{
		//�׷��� �þ�鼭 �ִ� ����
		max = max + (6 * count);
		if (max < input)
		{
			count++;
			continue;
		}
		else
			printf("%d��/�� %d�� �׷�\n",
				input, count+1);
		break;
	}


	return 0;
}
#include<stdio.h>
int main()
{
	printf("1�� ���̰� �� ���̴�?");
	int age=10;
	scanf_s("%d", &age);
	if (age < 0) 
	{
		printf("����\n");
	}
	else
	{
		age /= 10; //age = age/10 //34 -> 3

		switch (age)
		{
			case 0: //0~9
				printf("��������\n");
				break;
			case 1://10~19
				printf("�޽ĸԴ� ģ����\n");
				break;
			case 2://20~29
				printf("û��\n");
				break;
			case 3://30~39
				printf("���߷�\n");
				break;
			case 4://40~49
				printf("������\n");
				break;
			default://50~ ���Ѵ�...
				printf("������\n");
				break;
		}
	}

	printf("2�� ���� �Է�");
	double score;
	scanf_s("%lf", &score);
	if (score < 0)
		printf("����");
	else if (score < 1.0)
		printf("F");
	else if (score >= 1.0 && score < 2.0)
		printf("D");
	else if (score < 3.0)
		printf("C");
	else if (score < 4.0)
		printf("B");
	else if (score < 4.5)
		printf("A");
	else if (score == 4.5)
		printf("A+");
	else
		printf("����");
	printf("\n");


	return 0;
}
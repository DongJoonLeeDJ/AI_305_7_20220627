#include<stdio.h>
int main()
{
	//1��
	printf("�ȳ��ϼ���. �� �̸��� �̵����Դϴ�.\n");

	//2��
	int age;
	printf("�Է� : ");
	scanf_s("%d", &age);
	printf("�� ���̴� %d���Դϴ�.\n", age);

	//3��
	//a^2 + b^2 = c^2�̴�.
	//3,4�Է��ϸ� 25�� ������ �ȴ�.
	int a, b;
	printf("�Է�1: ");
	scanf_s("%d", &a);
	printf("�Է�2: ");
	scanf_s("%d", &b);
	printf("��� : %d\n", (a * a) + (b * b));

	//4��
	//���ڸ� �л��� �̸�
	char name[100];
	printf("�� �ڸ� �л��� �̸���?\n");
	rewind(stdin);
	//scanf_s("%s", name, sizeof(name)); //space�� ©��
	gets(name); 
	printf("�� �� �ڸ� �л��� �̸��� %s�Դϴ�.\n", name);

	//5��
	double dollar;
	printf("�Է� : ");
	scanf_s("%lf", &dollar);
	printf("��� : %lf KRW\n", dollar * 1298.89);


	return 0;
}
#include<stdio.h>
int main()
{
	int age;
	printf("�� ���̿���?");
	scanf_s("%d", &age);
	age < 20 ? printf("����\n") : printf("����");

	//������ ���� �߰� ����� ���� ���� �ʹٸ� ��� �ؾ��ұ��?
	//���׿����ڸ� ��ø�� ��Ų��.
	age < 20 ? 
		( age < 0 ? printf("����") : printf("����") )
		: printf("����");

	printf("\n���ڸ� �Է����ּ���.");
	int number;
	scanf_s("%d", &number);

	number > 0 ? printf("\n���\n") 
		: (number==0 ? printf("\n0\n") : printf("\n����\n"));

	return 0;
}
#include<stdio.h>
int main()
{
	int a = 10;
	int* ptr_a = &a;
	*ptr_a = 11; //���� a�� ���� �ٲ�
	printf("%d\n", *ptr_a); //���� a�� ����� ���� ��µ�
	printf("%d\n", a);

	//scanf�� ���� '�Լ�'���� ����
	//��뷮�� �����͸� ����ų �� ����

	//���࿡ �ϳ��� ������ �̿��ؼ� 10����
	//������ ����Ű�� �ʹٸ�???
	int numbers[10];
	//������ �����ʹ� �ٸ���
	//numbers���� 10���� ������ ������ �� �ִ�.

	//�迭
	//�׷��� �� �迭�� �������� ����
	//�� numbers ��ü�� 10���� �� �������� ����
	//10ĭ¥�� �޸𸮰� �ְ�, �� �޸��� ��������
	//numbers�� ������
	for (int i = 1; i <= 10; i++)
		numbers[i - 1] = i;

	for (int i = 0; i < 10; i++)
		printf("%d", numbers[i]);
	printf("\n");
	int* ptr = numbers;

	for (int i = 0; i < 10; i++)
	{
		ptr[i] = i * 10;
		printf("tetst....\n");
	}

	for (int i = 0; i < 10; i++)
		printf("%d", numbers[i]);


	return 0;
}
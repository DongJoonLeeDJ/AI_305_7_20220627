#include<stdio.h>
int main()
{
	//�ݺ���
	//for while do while�� �ִ� ��
	//���� ��ǥ���� �� for

	//�̵��� �������̶�� ������
	//10�� ����ϰ� �ʹٸ�...?

	for (int i = 0; i < 10; i++)
	{
		printf("�̵��� ������\n");
	}

	int count = 0;
	//count ���� 10�� ����
	while (count < 10)
	{
		printf("count=%d\n", count);
		count++;
	}

	//while �ȿ� �ִ� ������ �����̴���
	//������ 1���� ������
	//����� ���� count�� 10�̶� �� ��ȣ������
	//����
	do
	{
		printf("count=%d", count);
	} while (count<10);

	return 0;
}
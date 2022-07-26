#include<stdio.h>

//void��� return; ���ų�
//��������
//int, double, char ���̶��
//�ݵ�� return�� ����� ��
//�����ϰ� return �� ���
//�����ϰų� �̻��� ������ �� ���� �ִ� ��
//�� ������ �𸣰ڰ�... ��ư
//int �տ� �������� �ݵ�� return ����;
//����� ��



int gugudan_sum() //��ȯ
{
	int sum = 0;
	for (int i = 2; i <= 9; i++)
	{
		for (int j = 1; j <= 9; j++)
			sum += (i * j);
	}
	return sum;
}

void q2_dan_print(int dan) //���
{
	for (int i = 1; i <= 9; i++)
		printf("%d x %d = %d\n", dan, i, dan * i);
}
void swap(int* a, int* b)
{
	int temp = *a;
	*a = *b;
	*b = temp;
}
void q3_gugu_gob(int s, int e)//���
{
	//s�� �� ũ�ٸ�
	//1. �� �ȿ��� �׳� ���ǹ� �Ἥ �ٲ��ش�.
	//2. swap �Լ� ���� �ٲ۴�.

	if (s > e) //1��
		swap(&s, &e); //�Լ��ȿ��� �� �ٸ� �Լ� ȣ�� ��

	for (int i = 2; i <= 9; i++)
	{
		for (int j = s; j <= e; j++)
		{
			printf("%d x %d = %d\n", i, j, i * j);
		}
	}
}
int q4_gugudan_sum(int s, int e) //��ȯ
{
	//s�� �� ũ�ٸ�
	//1. �� �ȿ��� �׳� ���ǹ� �Ἥ �ٲ��ش�.
	//2. swap �Լ� ���� �ٲ۴�.
	if (s > e)  //2��
	{
		int temp = s;
		s = e;
		e = temp;
	}
	int sum = 0;
	for (int i = s; i <= e; i++)
	{
		for (int j = 1; j <= 9; j++)
		{
			printf("%d x %d = %d\n", i, j, i * j);
			sum += (i * j);
		}
	}
	return sum;
}

int main()
{
	printf("q1 : %d", gugudan_sum());
	int dan;
	printf("\nq2\n");
	scanf_s("%d", &dan);
	q2_dan_print(dan);
	printf("\nq3 x����� x����� �ұ��?");
	int start, end;
	scanf_s("%d %d", &start, &end);
	q3_gugu_gob(start, end);
	printf("�� �ܺ��� �� ��?\n");
	int start_dan, end_dan;
	scanf_s("%d %d", &start_dan, &end_dan);
	int result = q4_gugudan_sum(start_dan, end_dan);
	printf("4�� ��� : %d\n", result);
	return 0;
}
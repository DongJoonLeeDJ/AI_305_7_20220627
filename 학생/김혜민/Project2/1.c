#include <stdio.h>

void enterKey() //�� �� ��� �͸� �Ѵ�.
{
	printf("\n");
}
void printPowerNumber(int n) //�Ű������� ����
{							//���ڸ� �����ؼ� ���
	printf("%d", n * n);
}
void printNumber(int n) //�Ű������� ����
{					    //���ڸ� ���
	printf("%d", n);
}
int inputNum() //���ڸ� �Է¹���
{
	int n;
	printf("���� �Է��ؿ�\n");
	scanf_s("%d", &n);
	return n;
}
//�Ű������� ��ȯ�� �� �� �ִ� ��
int PowerNum(int n, int p) //n: ����, p:���� ��
{
	if (p <= 0) //���� ������ ���� ����
		return 1;
	else if (p == 1)
		return n;
	else {
		int num = n;
		for (int i = 0; i < p-1; i++)
			n *= num;
	}
	return n;
}

int main()
{
	//int n;
	printPowerNumber(inputNum());
	enterKey();
	int n = inputNum();
	int p = inputNum();
	printNumber(PowerNum(n, p));
	return 0;
}
#include<stdio.h>
void enterKey() //�� �� ��� �͸� �Ѵ�
{
	printf("\n");
}
void printPowerNumber(int n) //�Ű������� ���� ���ڸ� �����ؼ� ���
{
	printf("%d", n * n);
}
int inputNum() //���ڸ� �Է¹���
{
	int n;
	printf("���� �Է��ϼ���\n");
	scanf_s("%d", &n);
	return n;
}

//�Ű������� ��ȯ�� �� �� �ִ� ��
int PowerNum(int n, int p) //n: ����, p: ���� ��
{
	if (p <= 0) // ���� ������ ���� �� ����� ��
		return 1;
	else if (p == 1)
		return n;
	else
	{
		int num = n;
		for (int i = 1; i < p ; i++) //p-1 ������� 
			n *= num;
	}
	return n;
}

//2��
void printNumber(int n)
{
	printf("%d", n);
	//printf("%d", PowerNum(2,2));  XXXXXXX
}

int main()
{
	int num = inputNum(); //���ڸ� ���� �Է� �޾ƾ߰���
	printPowerNumber(num);
	enterKey(); //�� �� ���� ȣ��
	printPowerNumber(inputNum());
	enterKey();
	printf("���� 2���� ���ؼ� �Է¹ް� ����غ�\n\n");
	

	// 1��
	// 
	// ȣ���غ���
	enterKey(); 
	enterKey(); 

	printPowerNumber(3);
	enterKey();

	int mynum = inputNum();
	int result = PowerNum(mynum, 3);
	printf("%d�� 3���� %d�̴�.\n", mynum, result);
	enterKey();

	//2��
	printNumber(result);
	enterKey();

	//3��
	printNumber(PowerNum(inputNum(), 2));
	enterKey();

	//4��
	int a = inputNum();
	int b = inputNum();
	//printf("���� �ΰ� �Է��ϼ���.");
	//scanf_s("%d %d", &a, &b);
	//printNumber(PowerNum(inputNum(),inputNum()));
	printNumber(PowerNum(a, b));


	return 0;
}
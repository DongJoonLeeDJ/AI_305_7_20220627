#include<stdio.h>
// �Լ� : �ڵ并ġ
// �̸� ����� �� �ڵ� ���
// ���� �ȿ��ٰ� �� ��� �Ǵ� �����������
// ���� ������ �ִ��� �����ϰ� �ϱ� ���ؼ� 
// �Լ���� ���� �������.

//�Լ� 4���� ����
//��ȯ��(return)�� �Ű�����(parameter, argument)
//  X                 X
//  O                 X
//  X                 O
//  O                 O

//�Լ��� ���Ǹ� �����Ѵ�.
//Ȥ�� �Լ� ����
void enterKey() //�� �� ��� �͸� �Ѵ�.
{
	printf("\n");
}
void printPowerNumber(int n) //�Ű������� ����
{							//���ڸ� �����ؼ� ���
	printf("%d", n * n);
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

//2�� ����
//�Լ� ����
void printNumber(int n)
{
	printf("%d", n);
}
int main()
{
	if (0)
	{
# pragma region �����ð��� ���� �� ��

		int num = inputNum();
		printPowerNumber(num);
		enterKey(); //�� �� ���
		printPowerNumber(inputNum());
		enterKey();
		printf("���� 2���� ���ؼ� �Է¹ް� ����غ�\n");
		printf("%d", PowerNum(inputNum(), inputNum())); //�̰� �� ��.


#pragma endregion


	}
	
	//ȣ���غ���(1��)
	enterKey(); //�� �� ��� ȣ��
	printPowerNumber(3); //���� ���
	enterKey();
	int mynum = inputNum();
	int result = PowerNum(mynum, 3); //������ ���

	//2�� - ���ο� �Լ� ���� �׽�Ʈ�� �غ�
	enterKey();
	printNumber(result); // ȣ��
	enterKey();

	//3��
	//�Է��� ���� ��ȯ - inputNum()
	//PowerNum - �Է��� ������ p���� ���
	//�� ����� ȭ�鿡 �Ѹ�
	printNumber(PowerNum(inputNum(),2));

	//4��
	int num = inputNum();
	int power = inputNum();
	printNumber(PowerNum(num, power));

	
	return 0;
}
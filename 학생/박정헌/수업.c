#include<stdio.h>
void enterKey() {
	printf("\n");
}

void printPowerNumber(int n) {
	printf("%d", n * n);

}

int inputNum() {
	int n;
	printf("���� �Է� : ");
	scanf_s("%d", &n);
	return n;
}
int PowerNum(int n, int p) //n: ����, p:���� ��
{
	if (p <= 0) //���� ������ ���� ����
		return 1;
	else if (p == 1)
		return n;
	else {
		int num = n;
		for (int i = 0; i < p - 1; i++) {
			n *= num;
		}
	}
	return n;
}
//2��
void printNumber(int i) {
	printf("%d", i);
}

int main()
{
	//1��
	printf("1������");
	enterKey();

	int num = inputNum();
	printPowerNumber(num);
	enterKey();                   //�� �� ���
	printPowerNumber(inputNum());
	enterKey();
	printf("���� 2���� ���ؼ� �Է¹ް� ���");
	enterKey();
	int a = inputNum(); 
	int b = inputNum();
	PowerNum(a, b);
	printf("%d", PowerNum(a, b));

	//2��
	enterKey();
	printf("2������");
	enterKey();
	printNumber(2);

	//3��
	enterKey();
	printf("3������");
	enterKey();
	printNumber(PowerNum(3, 4));

	//4��
	enterKey();
	a = inputNum();
	b = inputNum();
	enterKey();
	printNumber(PowerNum(a, b));



	


	return 0;
}
#include<stdio.h>
#include<stdlib.h>//atoi�� ���� ����. �Ĺݺο� �ʿ���
int main()
{
	//4��
	int x, b;
	printf("x�� b��?\n");
	//2�� �̻��� �� �Է��ϱ�
	scanf_s("%d %d", &x, &b);
	//�� �ٿ� 2���� ���� �� �Էµ�

	int a;
	printf("a��?");
	scanf_s("%d", &a);
	//(x+a)(x+b) = x^2 + (a+b)x + (a*b)
	printf("(%d+%d)(%d+%d)=%d\n",
		x,a,x,b,(x+a)*(x+b)   );
	printf("x^2+(a+b)x+(a*b)=%d\n",
		(x * x) + ((a + b) * x) + (a * b));
	
	//5��
	printf("ù��°�� �ι�° ���ڸ� �Է��ϼ���.");
	int num1, num2;
	scanf_s("%d,%d", &num1, &num2);
	//scanf_s���� ���⸦ �̿��ؼ� ���� ��
	//�Է� ����������, �޸�(,)�� �̿��ص� �ȴ�.
	printf("%d\n", num1 * (num2 % 10));//472*5
	printf("%d\n", num1 * ((num2 / 10) % 10) );//472*8
	printf("%d\n", num1 * (num2 / 100));//472*3
	printf("%d\n", num1 * num2);

	//�ι�° ���
	//�ƽ�Ű�ڵ� �̿��ϴ� ���
	printf("�ι�° ���ڸ� �ٽ� �Է��غ���.");
	char number[4];
	rewind(stdin);
	gets(number);

	printf("%d,%d,%d,%d\n", 
		num1*(number[2]-'0'),
		num1*(number[1]-'0'),
		num1*(number[0]-'0'),
			num1*atoi(number) );
	//atoi -> ���ڿ��� ���ڷ� �ٲ��ִ� ���

	return 0;
}
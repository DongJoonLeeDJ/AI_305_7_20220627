#include <stdio.h>

void enterKey() //한 줄 띄는 것만 한다.
{
	printf("\n");
}
void printPowerNumber(int n) //매개변수로 받은
{							//숫자를 제곱해서 출력
	printf("%d", n * n);
}
void printNumber(int n) //매개변수로 받은
{					    //숫자를 출력
	printf("%d", n);
}
int inputNum() //숫자를 입력받음
{
	int n;
	printf("숫자 입력해요\n");
	scanf_s("%d", &n);
	return n;
}
//매개변수랑 반환값 둘 다 있는 것
int PowerNum(int n, int p) //n: 숫자, p:제곱 수
{
	if (p <= 0) //음수 제곱은 하지 말자
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
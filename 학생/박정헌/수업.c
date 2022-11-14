#include<stdio.h>
void enterKey() {
	printf("\n");
}

void printPowerNumber(int n) {
	printf("%d", n * n);

}

int inputNum() {
	int n;
	printf("숫자 입력 : ");
	scanf_s("%d", &n);
	return n;
}
int PowerNum(int n, int p) //n: 숫자, p:제곱 수
{
	if (p <= 0) //음수 제곱은 하지 말자
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
//2번
void printNumber(int i) {
	printf("%d", i);
}

int main()
{
	//1번
	printf("1번문제");
	enterKey();

	int num = inputNum();
	printPowerNumber(num);
	enterKey();                   //한 줄 띄기
	printPowerNumber(inputNum());
	enterKey();
	printf("숫자 2개에 대해서 입력받고 출력");
	enterKey();
	int a = inputNum(); 
	int b = inputNum();
	PowerNum(a, b);
	printf("%d", PowerNum(a, b));

	//2번
	enterKey();
	printf("2번문제");
	enterKey();
	printNumber(2);

	//3번
	enterKey();
	printf("3번문제");
	enterKey();
	printNumber(PowerNum(3, 4));

	//4번
	enterKey();
	a = inputNum();
	b = inputNum();
	enterKey();
	printNumber(PowerNum(a, b));



	


	return 0;
}
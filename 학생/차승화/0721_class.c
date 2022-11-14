#include<stdio.h>
void enterKey() //한 줄 띄는 것만 한다
{
	printf("\n");
}
void printPowerNumber(int n) //매개변수로 받은 숫자를 제곱해서 출력
{
	printf("%d", n * n);
}
int inputNum() //숫자를 입력받음
{
	int n;
	printf("숫자 입력하세요\n");
	scanf_s("%d", &n);
	return n;
}

//매개변수랑 반환값 둘 다 있는 것
int PowerNum(int n, int p) //n: 숫자, p: 제곱 수
{
	if (p <= 0) // 음수 제곱은 따로 안 쓰기로 함
		return 1;
	else if (p == 1)
		return n;
	else
	{
		int num = n;
		for (int i = 1; i < p ; i++) //p-1 해줘야함 
			n *= num;
	}
	return n;
}

//2번
void printNumber(int n)
{
	printf("%d", n);
	//printf("%d", PowerNum(2,2));  XXXXXXX
}

int main()
{
	int num = inputNum(); //숫자를 먼저 입력 받아야겠죠
	printPowerNumber(num);
	enterKey(); //한 줄 띄우기 호출
	printPowerNumber(inputNum());
	enterKey();
	printf("숫자 2개에 대해서 입력받고 출력해봄\n\n");
	

	// 1번
	// 
	// 호출해보기
	enterKey(); 
	enterKey(); 

	printPowerNumber(3);
	enterKey();

	int mynum = inputNum();
	int result = PowerNum(mynum, 3);
	printf("%d의 3승은 %d이다.\n", mynum, result);
	enterKey();

	//2번
	printNumber(result);
	enterKey();

	//3번
	printNumber(PowerNum(inputNum(), 2));
	enterKey();

	//4번
	int a = inputNum();
	int b = inputNum();
	//printf("숫자 두개 입력하세요.");
	//scanf_s("%d %d", &a, &b);
	//printNumber(PowerNum(inputNum(),inputNum()));
	printNumber(PowerNum(a, b));


	return 0;
}
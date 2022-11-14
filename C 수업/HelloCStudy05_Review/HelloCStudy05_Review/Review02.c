#include<stdio.h>
int main()
{
	//6번
	int num;
	printf("숫자를 입력하세요.");
	scanf_s("%d", &num);
	if (num < 0)
	{
		printf("음수!!!\n");
	}
	else if (num == 0) 
	{
		printf("num은 0!!!\n");
	}
	else
	{
		//int abc = 0;

		if (num % 2 == 0)
			printf("짝!\n");
		else
			printf("홀!\n");
	}
	//int abc = 100;

	//////////
	if (num < 0)
		printf("음수!\n");
	else if (num == 0)
		printf("0\n");
	else if (num > 0 && num % 2 == 0)
		printf("짝!\n");
	else if (num > 0 && num % 2 != 0)
		printf("홀!\n");
	///

	//7번
	printf("구구단 5단 출력하기\n");
	for (int i = 1; i < 10; i++)
		printf("5 x %d = %d\n", i, 5 * i);

	//8번
	printf("몇 단?");
	int n;
	scanf_s("%d", &n);
	for (int i = 1; i < 10; i++)
		printf("%d x %d = %d\n", n, i, n * i);

	//9번
	//2~9단까지
	for (int n = 2; n < 10; n++) 
	{
		for (int i = 1; i < 10; i++)
			printf("%d x %d = %d\n", n, i, n * i);
	}

	//10번 문제
	//1부터 n까지의 합을 구하되, 아래와 같은 출력양식을 쓴다.
	int sum = 0;
	printf("몇까지 더할까요?");
	scanf_s("%d", &n);
	printf("1");
	sum = 1;
	for (int i = 2; i <= n; i++)
	{
		sum += i; //값 누적
		printf("+%d", i); //메시지 출력
	}
	printf("=%d\n", sum);

	return 0;
}
#include<stdio.h>
int main()
{
	//1번
	//1부터 100까지의 합 구하기

	int sum = 0;
	for (int i = 1; i <= 100; i++)
		sum += i;
	printf("1부터 100까지의 합은 %d입니다.\n",sum);

	//2번
	//1부터 100까지의 합, 3의 배수
	sum = 0; //sum을 초기화 해준다.
	for (int i = 1; i <= 100; i++) 
	{
		if (i % 3 == 0)
			sum += i;
	}
	printf("1~100까지의 합(3의 배수만) : %d\n", sum);
	
	//3번
	//1부터 n까지의 합
	printf("몇까지 곱할까요( 10까지만 적자)\n");
	int n;
	scanf_s("%d", &n);
	sum = 1; //0으로 초기화하면 안 된다.
	for (int i = 1; i <= n; i++)
		sum *= i;
	printf("1부터 %d까지의 곱 : %d\n", n, sum);

	//4번
	int floor; //4~7번 이 변수 쓸거임
	printf("몇 층?");
	scanf_s("%d", &floor);
	for (int i = 0; i < floor; i++)
	{
		for (int j = 0; j < i + 1; j++)
			printf("*");
		printf("\n");
	}

	//띄어쓰기랑 별 둘 다 반복문으로 한다.
	for (int i = 0; i < floor; i++)
	{
		for (int j = 0; j < floor - i - 1; j++)
			printf(" ");
		for (int j = 0; j < i + 1; j++)
			printf("*");
		printf("\n");
	}

	//2n+1 법칙 = 1 3 5 7 9 수열을 따름
	//띄어쓰기는 갈수록 줄어듦
	for (int i = 0; i < floor; i++)
	{
		for (int j = 0; j < floor - i - 1; j++)
			printf(" ");
		for (int j = 0; j < 2*i + 1; j++)
			printf("*");
		printf("\n");
	}
	//7번
	for (int i = 0; i < floor; i++)
	{
		for (int j = 0; j < floor - i - 1; j++)
			printf(" ");
		for (int j = 0; j < 2 * i + 1; j++)
			printf("*");
		printf("\n");
	}
	for (int i = 0; i < floor - 1; i++)
	{
		//띄어쓰기가 점점 증가
		for (int j = 0; j < i + 1; j++)
			printf(" ");
		//별은 점점 감소
		for (int j = 0; j < (2 * (floor-i-1)) - 1; j++)
			printf("*");
		printf("\n");
	}


	return 0;
}
#include<stdio.h>
int main()
{

	if (0)
	{


		//1. 팩토리얼 출력
		printf("몇 팩토리얼?");
		int fact;
		scanf_s("%d", &fact);
		printf("%d!=%d", fact, fact);
		//ex: fact가 5라면
		//i는 4부터 1까지
		for (int i = fact - 1; i > 0; i--)
		{
			printf("x%d", i);
		}

		//2. n 부터 m까지의 합 (if문 줘서 m이 작으면
		//에러메시지 출력할 수도 있고
		//아니면 그 변수의 값을 바꿔줄 수도 있다.
		//변수의 값을 바꿔주는 걸 해보고...
		//3번에선 에러메시지 출력하는 걸 해보자.
		int n, m;
		printf("\nn와 m 입력하세요.");
		scanf_s("%d %d", &n, &m);
		if (n > m) //n이 더 클 경우 둘의 값을 서로 바꿈
		{
			int temp = m;
			m = n;
			n = temp;
		}
		int sum = 0;
		for (int i = n; i <= m; i++)
			sum += i;

		printf("%d부터 %d까지의 합은 %d이다.\n", n, m, sum);

		//3. n 부터 m 까지의 합(단 짝수만) -> n이 m보다 클 경우
		//오류 처리하기
		printf("n? m? 입력");
		scanf_s("%d %d", &n, &m);
		if (n > m)
		{
			printf("첫번째가 두번째보다 커서 합 못 구함!\n");
		}
		else
		{
			sum = 0;
			for (int i = n; i <= m; i++)
			{
				if (i % 2 != 0)
					continue; //짝수인 경우에만 sum에 값 누적 가능

				sum += i;
			}
			printf("%d부터 %d까지의 합은 %d이다.\n", n, m, sum);
		}

		//4번
		while (1)
		{
			int input;
			printf("입력");
			scanf_s("%d", &input);
			if (input <= 0)
				break;
			printf("제곱값 : %d\n", input * input);
		}
		printf("4번 종료됨 \n");

		//do while은 지금처럼 input이 0이어서
		//while 조건을 만족하지 못 해도 무조건 한 번은 실행한다.
		//즉 무한루프를 돌거나 안 돌거나 처음에 값은 무조건
		//받아야 한다면 do while을 쓴다.
		int input = 0;
		do
		{
			printf("숫자 입력해");
			scanf_s("%d", &input);
			printf("%d", input * input);
		} while (input > 0);


	}

	int N;
	printf("입력");
	scanf_s("%d", &N);
	for (int i = 0; i < 2 * N; i++)//행 부분
	{
		int onOffSwitch = i;
		for (int j = 0; j < N; j++) 
		{
			if (onOffSwitch % 2 == 0)
				printf("*");
			else
				printf(" ");
			onOffSwitch++;
		}
		printf("\n"); //한 줄 출력하고 한 줄 띄는 것
	}


	return 0;
}
/*
1. 변수 a와 b와 c의 값을 입력받고, 
a부터 b까지의 합을 구하되, c의 배수 부분은
제외하고 합을 구할 것.
이 값을 main에 반환하는 함수 작성하기
(못하겠다면 그냥 main에 먼저 짜보기)
*/
int sum_a_to_b(int a, int b, int c)
{

	int sum = 0;
	for (int i = a; i <= b; i++)
	{
		if (i % c != 0) //c의 배수 제외  
			sum += i;
		//sum = sum + i;
	}
	return sum;
}
#include<stdio.h>
int main()
{

	int a, b, c;
	printf("a,b,c 값을 입력하세요.");
	scanf_s("%d %d %d", &a, &b, &c);

	printf("%d부터 %d까지의 합(%d 배수 제외)\n",
		a,b,c);
	int result = sum_a_to_b(a, b, c);
	printf("결과 : %d\n", result);




	return 0;
}
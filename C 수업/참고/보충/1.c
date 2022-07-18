#include<stdio.h>
int main()
{
	/*
	1. 입력한 숫자가 0미만이면 "음수" 그게 아니라면 "정상"
이라는 메시지를  출력해보세요.
(삼항 연산자랑 IF문)
	*/
	//입력한 숫자에 따라서 음수 혹은 정상 출력
	int num;
	scanf_s("%d", &num);
	//1 삼항 연산자
	num < 0 ? printf("음수\n") : printf("정상\n");
	//2 if문
	if (num < 0)
	{
		printf("음수!!!");
		printf("~~~~");
	}
	else
		printf("정상!!!");
	return 0;
}
#include<stdio.h>
int main()
{
	int n;
	scanf_s("%d", &n);
	if (n < 0)
		n *= -1;
	if (n < 10) //한 자리
		printf("10미만");
	else if (n < 100) //두 자리
		printf("100 미만");
	else
		printf("꽤 큰 숫자");


	return 0;
}
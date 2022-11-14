#include<stdio.h>
int main()
{

	//3. 피타고라스의 법칙 피타고라스의 법칙 결과 출력하기 (a^2 + b^2 = c^2 에서의 c^2 값 출력하면 됨)
	//입력1: 3
	//입력2 : 4
	//출력 : 25

	int a, b;
	printf("a는? b는?\n");
	scanf_s("%d %d", &a, &b);
	printf("피타고라스의 법칙은 a^2(%d) + b^2(%d) = c^2(%d) 입니다. \n", a * a, b * b, a * a + b * b);


	

	return 0;
}
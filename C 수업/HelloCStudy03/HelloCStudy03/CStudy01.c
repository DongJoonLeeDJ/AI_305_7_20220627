#include<stdio.h>
#include<stdlib.h>//atoi를 쓰기 위함. 후반부에 필요함
int main()
{
	//4번
	int x, b;
	printf("x와 b는?\n");
	//2개 이상의 값 입력하기
	scanf_s("%d %d", &x, &b);
	//한 줄에 2개의 변수 값 입력됨

	int a;
	printf("a는?");
	scanf_s("%d", &a);
	//(x+a)(x+b) = x^2 + (a+b)x + (a*b)
	printf("(%d+%d)(%d+%d)=%d\n",
		x,a,x,b,(x+a)*(x+b)   );
	printf("x^2+(a+b)x+(a*b)=%d\n",
		(x * x) + ((a + b) * x) + (a * b));
	
	//5번
	printf("첫번째와 두번째 숫자를 입력하세요.");
	int num1, num2;
	scanf_s("%d,%d", &num1, &num2);
	//scanf_s에서 띄어쓰기를 이용해서 여러 개
	//입력 가능하지만, 콤마(,)를 이용해도 된다.
	printf("%d\n", num1 * (num2 % 10));//472*5
	printf("%d\n", num1 * ((num2 / 10) % 10) );//472*8
	printf("%d\n", num1 * (num2 / 100));//472*3
	printf("%d\n", num1 * num2);

	//두번째 방법
	//아스키코드 이용하는 방법
	printf("두번째 숫자만 다시 입력해봐요.");
	char number[4];
	rewind(stdin);
	gets(number);

	printf("%d,%d,%d,%d\n", 
		num1*(number[2]-'0'),
		num1*(number[1]-'0'),
		num1*(number[0]-'0'),
			num1*atoi(number) );
	//atoi -> 문자열을 숫자로 바꿔주는 기능

	return 0;
}
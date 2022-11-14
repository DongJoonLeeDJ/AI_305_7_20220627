#include<stdio.h>
void printMySelf() //선언
{
	printf("안녕하세요.\n");
	printf("이동준입니다.\n");
	printf("반갑습니다.\n");
	printf("저는 프로그래밍 교사입니다.\n");
}
//제곱은 제곱인데, 0이나 음수면 그냥 0 반환함
int MathPower(int num) //선언
{
	if (num <= 0)
		return 0;

	return num * num;
}
char calcul() //두 개의 숫자를 함수 안에서 입력받음
{			  //그 것에 대한 연산 결과에 따라 - 0 + 글자 반환함
	printf("첫 번째 숫자 입력해보세요.");
	int num1;
	scanf_s("%d", &num1);
	printf("두 번째 숫자 입력해보세요.");
	int num2;
	scanf_s("%d", &num2);
	int result = num2 - num1;
	if (result < 0)
		return '-';
	else if (result == 0)
		return '0';
	else
		return '+';
}
void calcul_sign(int num1, int num2)
{
	int result = num2 - num1;
	if (result < 0)
		printf("기호는 -입니다.\n");
	else if (result == 0)
		printf("기호는 0입니다.\n");
	else
		printf("기호는 +입니다.\n");
}
int main()
{
	printMySelf(); //호출
	int result = MathPower(5);
	printf("5의 제곱은 %d입니다.\n", result);
	printf("3의 제곱은 %d입니다.\n", MathPower(3));
	result = MathPower(-7);
	printf("result = %d\n", result);

	char sign = calcul();
	printf("기호는 %c입니다.\n", sign);


	int n1, n2; //입력을 main에서 하고 있다....
	printf("첫번째수?");
	scanf_s("%d", &n1);
	printf("두번째수?");
	scanf_s("%d", &n2);
	calcul_sign(n1, n2); //n1, n2 받아서 계산해서 출력해줌

	calcul_sign(30, 30);


	return 0;
}

#include<stdio.h>
// 함수 : 코드뭉치
// 미리 만들어 둔 코드 덩어리
// 메인 안에다가 다 적어도 되는 내용들이지만
// 메인 안쪽을 최대한 심플하게 하기 위해서 
// 함수라는 것을 만들었다.

//함수 4가지 형태
//반환형(return)과 매개변수(parameter, argument)
//  X                 X
//  O                 X
//  X                 O
//  O                 O

//함수의 정의를 선언한다.
//혹은 함수 선언
void enterKey() //한 줄 띄는 것만 한다.
{
	printf("\n");
}
void printPowerNumber(int n) //매개변수로 받은
{							//숫자를 제곱해서 출력
	printf("%d", n * n);
}
int inputNum() //숫자를 입력받음
{
	int n;
	printf("숫자 입력해요\n");
	scanf_s("%d", &n);
	return n;
}
//매개변수랑 반환값 둘 다 있는 것
int PowerNum(int n, int p) //n: 숫자, p:제곱 수
{
	if (p <= 0) //음수 제곱은 하지 말자
		return 1;
	else if (p == 1)
		return n;
	else {
		int num = n;
		for (int i = 0; i < p-1; i++)
			n *= num;
	}
	return n;
}

//2번 문제
//함수 선언
void printNumber(int n)
{
	printf("%d", n);
}
int main()
{
	if (0)
	{
# pragma region 수업시간에 같이 한 거

		int num = inputNum();
		printPowerNumber(num);
		enterKey(); //한 줄 띄기
		printPowerNumber(inputNum());
		enterKey();
		printf("숫자 2개에 대해서 입력받고 출력해봄\n");
		printf("%d", PowerNum(inputNum(), inputNum())); //이거 안 됨.


#pragma endregion


	}
	
	//호출해보기(1번)
	enterKey(); //한 줄 띄기 호출
	printPowerNumber(3); //제곱 출력
	enterKey();
	int mynum = inputNum();
	int result = PowerNum(mynum, 3); //세제곱 출력

	//2번 - 새로운 함수 만들어서 테스트도 해봄
	enterKey();
	printNumber(result); // 호출
	enterKey();

	//3번
	//입력한 숫자 반환 - inputNum()
	//PowerNum - 입력한 숫자의 p제곱 출력
	//그 결과를 화면에 뿌림
	printNumber(PowerNum(inputNum(),2));

	//4번
	int num = inputNum();
	int power = inputNum();
	printNumber(PowerNum(num, power));

	
	return 0;
}
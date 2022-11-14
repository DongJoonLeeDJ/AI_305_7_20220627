#include<stdio.h>
int main()
{
	//정수
	int age = 10; //제일 많이 씀
	long long bigValue = 9999999999;
	short smallValue = 5;
	//실수
	double pi_value = 3.1415;//많이씀
	float myPi = 3.14;
	char MyInitial = 'L';
	//age값과 nowYear 값에 따라 출력 값이 바뀜
	int nowYear = 2022;
	printf("nowYear=%d\n", nowYear);
	printf("내가 태어난 연도는 %d입니다.\n",
		nowYear +1 -age);
	printf("원주율 값은 %f입니다.\n", pi_value);

	//변수를 통해서 값을 입력받아보자.
	//내가 입력한 숫자의 제곱값을 구해보자.

	int input;
	printf("숫자 입력해주세요.");
	scanf_s("%d", &input);
	printf("그 숫자의 제곱은 %d입니다.\n", input*input);
	int result = input * input;
	printf("답 : %d\n", result);



	
	

	return 0;
}
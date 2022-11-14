#include<stdio.h>
int main()
{
	int numbers[6]= {0, }; //6개의 숫자를 저장
	//{0, }; <- 0으로 초기화
	char mbti[5] = "INFJ"; //5개의 문자를 저장. 단 마지막 글자는 '\0'(NULL)
	
	int* ptr_n = numbers;
	char* m = mbti;
	
	*m = 'E'; //*mbti = 'E'; //mbti[0] ='E';  m[0] = 'E';
	*ptr_n = 100; //numbers[0]=100; ptr_n[0]=100;

	printf("%d %d %d %d %d %d\n", numbers[0], numbers[1], numbers[2], numbers[3], numbers[4], numbers[5]);

	printf("%s", mbti); //INFJ -> INTP

	//참고로 배열에 값 넣는 방법 2번째
	//1번째는 ptr+1 이런식으로 넣었음

	scanf_s("%d", &numbers[1]); //2번째 방법 -> 이걸 쫌더 잘씀
	scanf_s("%d", numbers + 2); //1번째 방법
	printf("%d %d %d %d %d %d\n", numbers[0], numbers[1], numbers[2], numbers[3], numbers[4], numbers[5]);

	rewind(stdin);
	gets(m); //문자열 입력도 됨.
	printf("%s", mbti); //INFJ -> INTP
	printf("%s", m); //INFJ -> INTP


	char mytest[100] = "안녕하세요."; //6글자.   12~13
	char test2[150];
	//mytest = test2; //포인터 상수라서 다른 데 못 가리킴

	//ptrptr은 포인터변수이므로 다른 데 가리킬 수 있음
	char* ptrptr = test2;
	ptrptr = mytest;

	int i = 0;
	double count = 0;
	for (i = 0; mytest[i] != NULL; i++)
	{
		if (mytest[i] > 127 || mytest[i] < 0)
		{
			count += 0.5;
		}
		else
		{
			count += 1;
		}
	}
	printf("글자수 : %d", (int)count);

	return 0;
}
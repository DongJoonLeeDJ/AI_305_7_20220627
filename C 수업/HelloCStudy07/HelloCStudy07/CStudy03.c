#include<stdio.h>
int main()
{
	//반복문
	//for while do while이 있는 데
	//가장 대표적인 건 for

	//이동준 선생님이라는 문장을
	//10번 출력하고 싶다면...?

	for (int i = 0; i < 10; i++)
	{
		printf("이동준 선생님\n");
	}

	int count = 0;
	//count 값을 10번 찍음
	while (count < 10)
	{
		printf("count=%d\n", count);
		count++;
	}

	//while 안에 있는 조건이 거짓이더라도
	//무조건 1번은 수행함
	//참고로 현재 count는 10이라서 저 괄호조건은
	//거짓
	do
	{
		printf("count=%d", count);
	} while (count<10);

	return 0;
}
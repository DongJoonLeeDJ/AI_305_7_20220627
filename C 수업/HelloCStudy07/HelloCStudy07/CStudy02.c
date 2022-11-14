#include<stdio.h>
int main()
{
	//출력
	int number;
	//입력
	printf("숫자 입력하세요.");
	scanf_s("%d", &number); 
	//number 변수의 주소(위치)에 접근
	//그리고 그 안에 들어갈 값을 집어넣음
	printf("number=%d\n", number);
	//조건문
	if (number > 0)
	{
		printf("number는 양수에요.\n");
	}
	else if (number == 0) //else if나 else 없이
	{					//if만 있는 경우도 있다.
		printf("number는 0.\n");

	}
	else //음수... 0도 아니고 0을 넘지도 않음
	{
		printf("number는 음수에요\n");
	}

	return 0;
}
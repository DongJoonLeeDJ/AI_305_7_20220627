#include<stdio.h>
int main()
{
	int age;
	printf("몇 살이에요?");
	scanf_s("%d", &age);
	age < 20 ? printf("아이\n") : printf("성인");

	//음수에 대한 추가 경우의 수를 적고 싶다면 어떻게 해야할까요?
	//삼항연산자를 중첩을 시킨다.
	age < 20 ? 
		( age < 0 ? printf("음수") : printf("아이") )
		: printf("성인");

	printf("\n숫자를 입력해주세요.");
	int number;
	scanf_s("%d", &number);

	number > 0 ? printf("\n양수\n") 
		: (number==0 ? printf("\n0\n") : printf("\n음수\n"));

	return 0;
}
//4. 태어난 연도를 입력하고 나이를 리턴하는 함수
#include<stdio.h>
int calcAge()
{
	int year;
	printf("몇년도 태어남?");
	scanf_s("%d", &year);
	return 2023 - year;//한국식 나이
}
int main()
{
	int age = calcAge();
	printf("내 나이는 %d살입니다.\n", age);
	return 0;
}
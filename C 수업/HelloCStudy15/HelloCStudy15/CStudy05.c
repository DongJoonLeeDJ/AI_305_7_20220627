//5. 태어난 연도를 매개변수로 받고 나이 리턴하는 함수 
#include<stdio.h>
int calculAge(int y)
{
	return 2023 - y;
}
int main()
{
	int year;
	printf("몇년생?");
	scanf_s("%d", &year);
	printf("내 나이는 %d살입니다.\n", calculAge(year));
	return 0;
}
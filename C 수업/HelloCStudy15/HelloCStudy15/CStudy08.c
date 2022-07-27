//1. 내가 태어난 연도를 매개변수로 받고 무슨띠인지
//문자열을 리턴하세요.
#include<stdio.h>
char* outputThee(int year)
{
	switch (year % 12)
	{
	case 0:
		return "원숭이";
	case 1:
		return "닭";
	case 2:
		return "개";
	case 3:
		return "돼지";
	case 4:
		return "쥐";
	case 5:
		return "소";
	case 6:
		return "호랑이";
	case 7:
		return "토끼";
	case 8:
		return "용";
	case 9:
		return "뱀";
	case 10:
		return "말";
	case 11:
		return "양";
	default:
		return "오류";
	}
}
char* moreEasyThee(int year)
{
	year %= 12;
	//2차원배열쓴다.
	char thees[12][10]
		= { "원숭이","닭","개","돼지",
	"쥐","소","호랑이","토끼",
	"용","뱀","말","양" };
	return thees[year];
}
int main()
{
	int year;
	printf("몇년생인가요");
	scanf_s("%d", &year);
	printf("%s\n", outputThee(year));
	printf("%s\n", moreEasyThee(year));
	return 0;
}
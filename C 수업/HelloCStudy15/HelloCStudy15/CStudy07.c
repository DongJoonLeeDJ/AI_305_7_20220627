//1. 내가 태어난 연도를 매개변수로 받고 무슨띠인지
//문자열을 리턴하세요.
#include<stdio.h>
int main()
{
	char thee[10];// = "monkey";
	int year;
	printf("몇년생인가요");
	scanf_s("%d", &year);
	switch (year%12)
	{
	case 0:
		//thee = "원숭이";
		strcpy(thee, "원숭이");//thee에 원숭이라는
		break;                 //문자열을 집어넣음
	case 1:
		strcpy(thee, "닭");
		break;
	case 2:
		strcpy(thee, "개");
		break;
	case 3:
		strcpy(thee, "돼지");
		break;
	case 4:
		strcpy(thee, "쥐");
		break;
	case 5:
		strcpy(thee, "소");
		break;
	case 6:
		strcpy(thee, "호랑이");
		break;
	case 7:
		strcpy(thee, "토끼");
		break;
	case 8:
		strcpy(thee, "용");
		break;
	case 9:
		strcpy(thee, "뱀");
		break;
	case 10:
		strcpy(thee, "말");
		break;
	case 11:
		strcpy(thee, "양");
		break;
	default:
		printf("fault");
		return -1; //코드를 종료시켜버림
	}
	printf("%s", thee);
	return 0;
}
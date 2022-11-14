#include<stdio.h>
int main()
{
	printf("1번 나이가 몇 살이니?");
	int age=10;
	scanf_s("%d", &age);
	if (age < 0) 
	{
		printf("음수\n");
	}
	else
	{
		age /= 10; //age = age/10 //34 -> 3

		switch (age)
		{
			case 0: //0~9
				printf("응애응애\n");
				break;
			case 1://10~19
				printf("급식먹는 친구들\n");
				break;
			case 2://20~29
				printf("청춘\n");
				break;
			case 3://30~39
				printf("일잘러\n");
				break;
			case 4://40~49
				printf("관리자\n");
				break;
			default://50~ 무한대...
				printf("멋쟁이\n");
				break;
		}
	}

	printf("2번 학점 입력");
	double score;
	scanf_s("%lf", &score);
	if (score < 0)
		printf("퇴학");
	else if (score < 1.0)
		printf("F");
	else if (score >= 1.0 && score < 2.0)
		printf("D");
	else if (score < 3.0)
		printf("C");
	else if (score < 4.0)
		printf("B");
	else if (score < 4.5)
		printf("A");
	else if (score == 4.5)
		printf("A+");
	else
		printf("교수");
	printf("\n");


	return 0;
}
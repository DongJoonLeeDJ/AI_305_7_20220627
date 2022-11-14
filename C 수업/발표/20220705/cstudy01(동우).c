#include<stdio.h>
int main()
{
	//1번 문제 
	printf("\n나이는 ?\n");
	int age;
	scanf_s("%d", &age);

	if (age >= 0 && age <= 9)
		printf("응에응애");
	else if (age < 0)
		printf("음수");
	else
	{
		if ( age<20 && age>=10 )
			printf("급식먹는 친구들");
		else if (age>=20 && age<30)
			printf("청춘");
		else if (age>=30 && age<40)
		    printf("일잘러");
		else if (age>=40 && age<50)
			printf("관리자");
		else
			printf("멋쟁이");
	
	}


	
	// 2번문제
	// 학점을 입력받고 그에 따라서 결과 출력하기

	printf("\n너의 학점은?\n");
    double score;
	scanf_s("%f", &score);

	if (score < 1.0)
		printf("퇴학");
	else if (score > 4.5)
		printf("교수");
	
	



		



















	return 0;
}
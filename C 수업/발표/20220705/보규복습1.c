#include<stdio.h>
int main()
{
	//1. 변수 a와 b와 c의 값을 입력받고, a부터 b까지의 합을 구하되, c의 배수 부분은
	//제외하고 합을 구할 것.
	if (0)
	{
		int a, b, c;
		printf("a,b,c를 각각 입력");
		scanf_s("%d %d %d", &a, &b, &c);

		int sum;
		sum = 0;
		for (int i = a; i <= b; i++)
		{
			if (i % c == 0)
				continue;

				sum += i;
		}

		printf("sum=%d\n", sum);
	}
	//문제 1
	if (0)
	{
		int age;
		printf("몇살이니?\n");
		scanf_s("%d", &age);

		switch (age / 10)
		{
		case 0:
			if (age > 0)
				printf("응애\n");
			else
				printf("멋쟁이");
			break;
		case 1:
			printf("급식\n");
			break;
		case 2:
			printf("청춘\n");
			break;
		case 3:
			printf("일잘러\n");
			break;
		case 4:
			printf("관리자\n");
			break;

		default:
			printf("멋쟁이\n");
			break;
		}
	}
		//문제2
		if (1)
		{

		double hac;
		printf("몇 학점이세요\n");
		scanf_s("%lf", &hac);

		if (hac < 0)
			printf("퇴학");
		else 
		{
			if (hac < 1)
				printf("f");
			else if (hac < 2)
				printf("d");
			else if (hac < 3)
				printf("c");
			else if (hac < 4)
				printf("b");
			else if (hac < 4.5)
				printf("a");
			else if (hac == 4.5)
				printf("a+");
			else
				printf("교수");
			

			




		}


		}
	



	return 0;
}
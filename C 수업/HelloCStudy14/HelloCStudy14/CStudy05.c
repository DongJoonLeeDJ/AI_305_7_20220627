#include<stdio.h>

//void라면 return; 적거나
//생략가능
//int, double, char 등이라면
//반드시 return을 적어야 함
//깜빡하고 return 안 적어도
//동작하거나 이상한 동작을 할 수도 있는 데
//그 원인은 모르겠고... 여튼
//int 앞에 적었으면 반드시 return 정수;
//적어야 함



int gugudan_sum() //반환
{
	int sum = 0;
	for (int i = 2; i <= 9; i++)
	{
		for (int j = 1; j <= 9; j++)
			sum += (i * j);
	}
	return sum;
}

void q2_dan_print(int dan) //출력
{
	for (int i = 1; i <= 9; i++)
		printf("%d x %d = %d\n", dan, i, dan * i);
}
void swap(int* a, int* b)
{
	int temp = *a;
	*a = *b;
	*b = temp;
}
void q3_gugu_gob(int s, int e)//출력
{
	//s가 더 크다면
	//1. 이 안에서 그냥 조건문 써서 바꿔준다.
	//2. swap 함수 만들어서 바꾼다.

	if (s > e) //1번
		swap(&s, &e); //함수안에서 또 다른 함수 호출 됨

	for (int i = 2; i <= 9; i++)
	{
		for (int j = s; j <= e; j++)
		{
			printf("%d x %d = %d\n", i, j, i * j);
		}
	}
}
int q4_gugudan_sum(int s, int e) //반환
{
	//s가 더 크다면
	//1. 이 안에서 그냥 조건문 써서 바꿔준다.
	//2. swap 함수 만들어서 바꾼다.
	if (s > e)  //2번
	{
		int temp = s;
		s = e;
		e = temp;
	}
	int sum = 0;
	for (int i = s; i <= e; i++)
	{
		for (int j = 1; j <= 9; j++)
		{
			printf("%d x %d = %d\n", i, j, i * j);
			sum += (i * j);
		}
	}
	return sum;
}

int main()
{
	printf("q1 : %d", gugudan_sum());
	int dan;
	printf("\nq2\n");
	scanf_s("%d", &dan);
	q2_dan_print(dan);
	printf("\nq3 x몇부터 x몇까지 할까요?");
	int start, end;
	scanf_s("%d %d", &start, &end);
	q3_gugu_gob(start, end);
	printf("몇 단부터 몇 단?\n");
	int start_dan, end_dan;
	scanf_s("%d %d", &start_dan, &end_dan);
	int result = q4_gugudan_sum(start_dan, end_dan);
	printf("4번 결과 : %d\n", result);
	return 0;
}
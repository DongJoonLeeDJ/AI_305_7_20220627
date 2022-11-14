#include<stdio.h>
int main()
{
	int a = 10;
	int* ptr_a = &a;
	*ptr_a = 11; //변수 a의 값이 바뀜
	printf("%d\n", *ptr_a); //변수 a에 저장된 것이 출력됨
	printf("%d\n", a);

	//scanf와 같은 '함수'에서 쓰임
	//대용량의 데이터를 가리킬 때 쓰임

	//만약에 하나의 변수를 이용해서 10개의
	//정수를 가리키고 싶다면???
	int numbers[10];
	//기존의 변수와는 다르게
	//numbers에는 10개의 변수를 저장할 수 있다.

	//배열
	//그런데 이 배열도 포인터의 일종
	//즉 numbers 자체가 10개를 다 저장하지 않음
	//10칸짜리 메모리가 있고, 그 메모리의 시작점만
	//numbers가 저장함
	for (int i = 1; i <= 10; i++)
		numbers[i - 1] = i;

	for (int i = 0; i < 10; i++)
		printf("%d", numbers[i]);
	printf("\n");
	int* ptr = numbers;

	for (int i = 0; i < 10; i++)
	{
		ptr[i] = i * 10;
		printf("tetst....\n");
	}

	for (int i = 0; i < 10; i++)
		printf("%d", numbers[i]);


	return 0;
}
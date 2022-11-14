#include<stdio.h>
void swap(int aa, int bb)
{
	int temp = aa;
	aa = bb;
	bb = temp;
}

int main()
{
	int a = 100;
	int b = 20;

	swap(a, b);

	printf("\n%d %d\n", a, b);

	a = 50;
	int ages2[10] = {30, 20, 31, 21, 25, 23, 34, 50, 41, 22};
	ages2[5] = 500;

	for (int i = 0; i < 10; i++)
		printf("%d ", ages2[i]);
	
	printf("\n%d\n", *ages2);

	printf("\n%d\n", ages2);


	int* ptra = &a;
	*ptra = 1000; //a=1000;
	printf("%d\n", ptra); //위치
	printf("%d\n", *ptra); //알맹이
	printf("%d\n", a); //알맹이

	int* ptr = ages2;

	printf("%d %d %d\n", *ptr+1, *ages2, ages2[0]);
	printf("%d %d %d\n", *ptr, *ages2, ages2[0]);
	printf("%d %d %d\n", *(ptr+1), *(ages2+1), ages2[1]);

	int age[10];
	age[0] = 100;
	for (int i = 1; i < 10; i++)
		age[i] = i * 10;

	for (int i = 0; i < 10; i++)
		printf("%d ", age[i]);

	ptr = age;
	for (int i = 0; i < 10; i++)
		*(ptr + i) = i * i;
	printf("\n");
	for (int i = 0; i < 10; i++)
		printf("%d ", age[i]);


	char* name = "장혜정";
	char name2[7] = "박지호"; //char 변수 배열
	char alphabet = 'A';

	//int 배열
	//int값 여러 개 관리하는 거 처럼
	//char 배열(=문자열)은 char 여러 글자 관리하는 것
	gets(name2); //칸 정보 있음(7칸. 마지막 칸은 \0)
	printf("%s", name2);
	//gets(name);// 칸 정보 없음
	//scanf_s("%s", name, sizeof(name));

	printf("%s", &alphabet);


	//age = 10칸 짜리
	//10칸 짜리 메모리의 시작 위치
	//이 10칸짜리 메모리는 1칸당 4byte(type이 int니까)
	printf("\nsizeof age = %d\n", sizeof(age));
	printf("\nsizeof name2 = %d\n", sizeof(name2));//1칸당 1byte

	int age_length = sizeof(age) / sizeof(int);
	printf("\n 길이 : %d \n", age_length);




	return 0;
}
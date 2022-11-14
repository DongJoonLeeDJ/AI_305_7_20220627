#include<stdio.h>
int main()
{
	//1번
	printf("안녕하세요. 제 이름은 이동준입니다.\n");

	//2번
	int age;
	printf("입력 : ");
	scanf_s("%d", &age);
	printf("내 나이는 %d살입니다.\n", age);

	//3번
	//a^2 + b^2 = c^2이다.
	//3,4입력하면 25가 나오면 된다.
	int a, b;
	printf("입력1: ");
	scanf_s("%d", &a);
	printf("입력2: ");
	scanf_s("%d", &b);
	printf("출력 : %d\n", (a * a) + (b * b));

	//4번
	//옆자리 학생의 이름
	char name[100];
	printf("옆 자리 학생의 이름은?\n");
	rewind(stdin);
	//scanf_s("%s", name, sizeof(name)); //space바 짤림
	gets(name); 
	printf("내 옆 자리 학생의 이름은 %s입니다.\n", name);

	//5번
	double dollar;
	printf("입력 : ");
	scanf_s("%lf", &dollar);
	printf("출력 : %lf KRW\n", dollar * 1298.89);


	return 0;
}
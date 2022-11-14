#include<stdio.h>
int main()
{
	printf("몇 초인가요?(1번)");
	int sec;
	scanf_s("%d", &sec);
	//123->2분3초
	//분을 구할 땐 나누기(/),
	//초를 구할 땐 나머지(%)

	printf("%d분 %d초\n", sec/60, sec%60);

	printf("2x+b의 해 구하기(2번)\n");
	printf("x는?");
	int x, b;//정수 변수 x와 b 선언
	scanf_s("%d", &x);
	printf("b는?");
	scanf_s("%d", &b);
	printf("2x+b=%d\n", (2 * x) + b);

	//3번
	//기분정보, mbti, 혈액형, 키, 나이 입력받고
	//출력하기

	printf("기분은?");
	rewind(stdin);//char 입력받기 전이므로 rewind
	//char feel = getchar();
	char feel;
	scanf_s("%c", &feel, 1);
	printf("mbti?");
	rewind(stdin);
	char mbti[5];
	scanf_s("%s", mbti, sizeof(mbti));
	printf("혈액형?");
	rewind(stdin);
	char bType[10];
	gets(bType);

	//double 타입 변수에 값을
	//넣을 때 lf로 하기
	//출력도... lf로 하세요(엘에프)
	//출력은 f로 해도 되긴 한데...
	//double 타입은 long float이므로
	//lf가 맞다.
	//f를 일괄되게 쓰고 싶다면
	//float을 하면 된다.
	//근데 통상적으로 실수는 double씀
	double cm;
	printf("키는?");
	scanf_s("%lf", &cm);

	printf("나이는?");
	int age;
	scanf_s("%d", &age);

	printf("저의 기분은 %c입니다. 제 mbti는 %s이고, 혈액형은 %s입니다. 제 키는 %.2lf이며, 나이는 %d살입니다.\n",
		feel,mbti,bType,cm,age);


	return 0;
}
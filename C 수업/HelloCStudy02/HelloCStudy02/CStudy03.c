#include<stdio.h>
int main()
{
	//문자 입력 2가지 방법이 있음.

	char c;
	printf("내 기분은 오늘 +? -? 0?\n");
	scanf_s("%c", &c, 1);
	printf("오늘 내 기분은 %c입니다.\n", c);
	rewind(stdin); //버퍼 공간 청소
	scanf_s("%c", &c, 1);
	printf("c = %c\n", c);
	rewind(stdin);
	printf("내 이름의 첫글자는?");
	c = getchar(); //1글자만 입력받는 거
	printf("%c\n", c);
	printf("내 이름의 끝글자는?");
	rewind(stdin);
	c = getchar();
	printf("%c\n", c);


	//배열을 안 배웠지만...
	char name[100]; //name변수는 100byte 저장가능
	//문자열 입력받을 때 넉넉하게 범위 지정하면 됨
	//만약 딱 맞게 지정하고 싶다면
	//입력하고자 하는 byte+1 만큼 지정해줘야 함
	//ex. 한글 3글자 입력할 경우엔 [7]
	//영어 10글자 입력할 경우엔 [11]
	//java, c#, c++에선 string이라는 자료형이
	//있지만 c는 그런 거 없다.
	//이걸 제대로 이해하려고 하면 배열,포인터를
	//모두 배워야 함... 일단 우린 간단하게
	//입력 및 출력하는 법만 배우자.

	printf("이름은?");
	scanf_s("%s", name, sizeof(name));
	printf("내 이름은 %s입니다.\n", name);
	rewind(stdin); //문자열도 마찬가지로
	//다음에 또 입력받을 땐 rewind해줘야 함
	char mbti[100];
	printf("mbti?");
	gets(mbti); //통상적으로 많이 쓰임
	//scanf_s에선 space bar가 짤림
	printf("내 mbti는 %s입니다.\n", mbti);
	

	printf("혈액형?\n");
	char bType[2];
	gets(bType);
	printf("%s", bType); //최대 2글자니까 [3]이 맞다.

	

	return 0;
}
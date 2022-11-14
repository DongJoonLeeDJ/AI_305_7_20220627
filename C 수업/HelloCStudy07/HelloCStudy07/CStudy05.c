#include<stdio.h>
int main()
{
	
	//문자(따옴표 안에 있음 '')와 문자열
	//문자열 - 쌍따옴표("") 안에 있음. 문장 혹은 string이라고 함
	char c = 'A';
	char mbti[5];// = "ISTP";//NULL 혹은 '\0'
	char* m = mbti;
	char bType[3];
	bType[0] = 'A';
	bType[1] = 'B'; //bTyep에 AB라고 쓴 거
	bType[2] = NULL; //혹은 '\0' 넣기
	char bloodType[3] = "AB";
	char name[7] = "이동준";
	char mbti2[100] = "ENTP"; //생각하기 귀찮으면 넉넉하게 잡기
	printf("%s", bType);
	//문자열 입력받기
	printf("\nmbti는?\n");
	gets(mbti);
	printf("%s", mbti);
	//문자 입력받기
	printf("알파벳 하나 입력해보기");
	//rewind(stdin);//문자나 문자열을 입력받을 때
	//위에서 뭔가 입력받은 게 있으면 반드시 추가해 줘야 하는 코드
	//엔터키(\n)이 버퍼라는 메모리에 남아 있어서
	//그걸 반드시 삭제해줘야 한다.
	c = getchar();
	printf("%s %c", mbti, c);
	printf("다시 문자 입력");
	//rewind 안 넣으니까 엔터키가 getchar에 들어가버림
	//단!!! 직전에 입력받을 때 썼던 코드가 gets라면
	//필요없음
	//대신 scanf거나 getchar일 경우엔 rewind가 필요
	//숫자만 입력받을거라면 rewind 안 써도 되고, 문자나
	//문자열을 입력받을 땐 써야 함
	rewind(stdin);
	c = getchar();
	printf("c=%c\n", c);

	rewind(stdin);
	printf("aaa");
	char ch;
	char ch2;
	char myname[100];
	gets(myname);
	ch = getchar();

	
	return 0;
}